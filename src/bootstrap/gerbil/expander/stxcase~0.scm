(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1783939350)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp196337 (list gx#expander::t))
            (__tmp196336 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp196337
         '(id depth)
         __tmp196336
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args196333%_
        (apply make-instance gx#syntax-pattern::t _%$args196333%_)))
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
      (lambda (_%self196319%_ _%stx196320%_)
        (let ((_%self196323%_ _%self196319%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx196320%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx195786%_)
        (letrec ((_%generate195788%_
                  (lambda (_%e196028%_)
                    (letrec ((_%BUG196030%_
                              (lambda (_%q196195%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx195786%_
                                         _%e196028%_
                                         _%q196195%_))))
                             (_%local-pattern-e196031%_
                              (lambda (_%pat196193%_)
                                (let ((__tmp196338
                                       (##structure-ref
                                        _%pat196193%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp196338))))
                             (_%getvar196032%_
                              (lambda (_%q196190%_ _%vars196191%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q196190%_
                                   _%vars196191%_
                                   _%BUG196030%_))))
                             (_%getarg196033%_
                              (lambda (_%arg196156%_ _%vars196157%_)
                                (let* ((_%$%arg196158196165%_ _%arg196156%_)
                                       (_%$%E196160196169%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg196158196165%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K196161196178%_
                                        (lambda (_%e196172%_ _%tag196173%_)
                                          (let ((_%$e196175%_ _%tag196173%_))
                                            (if (eq? 'ref _%$e196175%_)
                                                (_%getvar196032%_
                                                 _%e196172%_
                                                 _%vars196157%_)
                                                (if (eq? 'pattern _%$e196175%_)
                                                    (_%local-pattern-e196031%_
                                                     _%e196172%_)
                                                    (_%BUG196030%_
                                                     _%arg196156%_)))))))
                                  (if (pair? _%$%arg196158196165%_)
                                      (let ((_%$%hd196162196181%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg196158196165%_)))
                                            (_%$%tl196163196183%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg196158196165%_))))
                                        (let* ((_%tag196186%_
                                                _%$%hd196162196181%_)
                                               (_%e196188%_
                                                _%$%tl196163196183%_))
                                          (_%$%K196161196178%_
                                           _%e196188%_
                                           _%tag196186%_)))
                                      (_%$%E196160196169%_))))))
                      (let _%recur196035%_ ((_%e196037%_ _%e196028%_)
                                            (_%vars196038%_ '()))
                        (let* ((_%$%e196039196046%_ _%e196037%_)
                               (_%$%E196041196050%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e196039196046%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K196042196144%_
                                (lambda (_%body196053%_ _%tag196054%_)
                                  (let ((_%$e196056%_ _%tag196054%_))
                                    (if (eq? 'datum _%$e196056%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body196053%_))
                                        (if (eq? 'term _%$e196056%_)
                                            (let ((_%id196059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body196053%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id196059%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks196062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id196059%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks196062%_)
                                                        (let ((__tmp196339
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body196053%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp196339))
                (let ((__tmp196341
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body196053%_)))
                      (__tmp196340
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body196053%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp196341
                   __tmp196340
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id196059%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body196053%_))
                                                      (_%BUG196030%_
                                                       _%e196037%_))))
                                            (if (eq? 'pattern _%$e196056%_)
                                                (_%local-pattern-e196031%_
                                                 _%body196053%_)
                                                (if (eq? 'ref _%$e196056%_)
                                                    (_%getvar196032%_
                                                     _%body196053%_
                                                     _%vars196038%_)
                                                    (if (eq? 'cons
                                                             _%$e196056%_)
                                                        (let ((__tmp196343
                                                               (_%recur196035%_
                                                                (car _%body196053%_)
                                                                _%vars196038%_))
                                                              (__tmp196342
                                                               (_%recur196035%_
                                                                (cdr _%body196053%_)
                                                                _%vars196038%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp196343
                                                           __tmp196342))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e196056%_)
                    (let ((__tmp196344
                           (_%recur196035%_ _%body196053%_ _%vars196038%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp196344))
                    (if (eq? 'box _%$e196056%_)
                        (let ((__tmp196345
                               (_%recur196035%_
                                _%body196053%_
                                _%vars196038%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp196345))
                        (if (eq? 'splice _%$e196056%_)
                            (let* ((_%$%body196065196076%_ _%body196053%_)
                                   (_%$%E196067196080%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body196065196076%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K196068196118%_
                                    (lambda (_%args196083%_
                                             _%iv196084%_
                                             _%hd196085%_
                                             _%depth196086%_)
                                      (let* ((_%targets196092%_
                                              (map (lambda (_%$%g196087196089%_)
                                                     (_%getarg196033%_
                                                      _%$%g196087196089%_
                                                      _%vars196038%_))
                                                   _%args196083%_))
                                             (_%fold-in196094%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args196083%_)))
                                             (_%fold-out196096%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args196098%_
                                              (let ((__tmp196346
                                                     (cons _%fold-out196096%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp196346
                                                 _%fold-in196094%_)))
                                             (_%lambda-body196115%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth196086%_ '1))
                                                  (let ((_%r-args196106%_
                                                         (map (lambda (_%arg196100%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg196100%_)))
                      _%args196083%_))
                (_%r-vars196107%_
                 (let ((__tmp196347
                        (lambda (_%arg196102%_ _%var196103%_ _%r196104%_)
                          (cons (cons (cdr _%arg196102%_) _%var196103%_)
                                _%r196104%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp196347
                    _%vars196038%_
                    _%args196083%_
                    _%fold-in196094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur196035%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth196086%_ '1))
                         (cons _%hd196085%_
                               (cons (cons 'var _%fold-out196096%_)
                                     _%r-args196106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars196107%_))
                                                  (let* ((_%hd-vars196113%_
                                                          (let ((__tmp196348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg196109%_ _%var196110%_ _%r196111%_)
                           (cons (cons (cdr _%arg196109%_) _%var196110%_)
                                 _%r196111%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp196348
                     _%vars196038%_
                     _%args196083%_
                     _%fold-in196094%_)))
                 (__tmp196349
                  (_%recur196035%_ _%hd196085%_ _%hd-vars196113%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp196349
                                                     _%fold-out196096%_)))))
                                        (let ((__tmp196353
                                               (if (let ((__tmp196354
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets196092%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp196354 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets196092%_))
                                                   '#!void))
                                              (__tmp196350
                                               (let ((__tmp196352
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args196098%_
                                                         _%lambda-body196115%_)))
                                                     (__tmp196351
                                                      (_%recur196035%_
                                                       _%iv196084%_
                                                       _%vars196038%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp196352
                                                  __tmp196351
                                                  _%targets196092%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp196353
                                           __tmp196350))))))
                              (if (pair? _%$%body196065196076%_)
                                  (let ((_%$%hd196069196121%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body196065196076%_)))
                                        (_%$%tl196070196123%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body196065196076%_))))
                                    (let ((_%depth196126%_
                                           _%$%hd196069196121%_))
                                      (if (pair? _%$%tl196070196123%_)
                                          (let ((_%$%hd196071196128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl196070196123%_)))
                                                (_%$%tl196072196130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl196070196123%_))))
                                            (let ((_%hd196133%_
                                                   _%$%hd196071196128%_))
                                              (if (pair? _%$%tl196072196130%_)
                                                  (let ((_%$%hd196073196135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl196072196130%_)))
                                                        (_%$%tl196074196137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl196072196130%_))))
                                                    (let* ((_%iv196140%_
                                                            _%$%hd196073196135%_)
                                                           (_%args196142%_
                                                            _%$%tl196074196137%_))
                                                      (_%$%K196068196118%_
                                                       _%args196142%_
                                                       _%iv196140%_
                                                       _%hd196133%_
                                                       _%depth196126%_)))
                                                  (_%$%E196067196080%_))))
                                          (_%$%E196067196080%_))))
                                  (_%$%E196067196080%_)))
                            (if (eq? 'var _%$e196056%_)
                                _%body196053%_
                                (_%BUG196030%_ _%e196037%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e196039196046%_)
                              (let ((_%$%hd196043196147%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e196039196046%_)))
                                    (_%$%tl196044196149%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e196039196046%_))))
                                (let* ((_%tag196152%_ _%$%hd196043196147%_)
                                       (_%body196154%_ _%$%tl196044196149%_))
                                  (_%$%K196042196144%_
                                   _%body196154%_
                                   _%tag196152%_)))
                              (_%$%E196041196050%_)))))))
                 (_%parse195789%_
                  (lambda (_%e195830%_)
                    (letrec ((_%make-cons195832%_
                              (lambda (_%hd196020%_ _%tl196021%_)
                                (let ((_g196355_ _%hd196020%_)
                                      (_g196357_ _%tl196021%_))
                                  (begin
                                    (let ((_g196356_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196355_)
                                                 (##values-length _g196355_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196356_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196356_)))
                                    (let ((_g196358_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196357_)
                                                 (##values-length _g196357_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196358_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196358_)))
                                    (let ((_%hd-e196023%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196355_ 0)))
                                          (_%hd-vars196024%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196355_ 1))))
                                      (let ((_%tl-e196025%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196357_ 0)))
                                            (_%tl-vars196026%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196357_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e196023%_
                                                            _%tl-e196025%_))
                                                (append _%hd-vars196024%_
                                                        _%tl-vars196026%_))))))))
                             (_%make-splice195833%_
                              (lambda (_%where195956%_
                                       _%depth195957%_
                                       _%hd195958%_
                                       _%tl195959%_)
                                (let ((_g196359_ _%hd195958%_)
                                      (_g196361_ _%tl195959%_))
                                  (begin
                                    (let ((_g196360_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196359_)
                                                 (##values-length _g196359_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196360_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196360_)))
                                    (let ((_g196362_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196361_)
                                                 (##values-length _g196361_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196362_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196362_)))
                                    (let ((_%hd-e195961%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196359_ 0)))
                                          (_%hd-vars195962%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196359_ 1))))
                                      (let ((_%tl-e195963%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196361_ 0)))
                                            (_%tl-vars195964%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196361_ 1))))
                                        (let _%lp195966%_ ((_%rest195968%_
                                                            _%hd-vars195962%_)
                                                           (_%targets195969%_
                                                            '())
                                                           (_%vars195970%_
                                                            _%tl-vars195964%_))
                                          (let* ((_%$%rest195971195981%_
                                                  _%rest195968%_)
                                                 (_%$%else195973195989%_
                                                  (lambda ()
                                                    (if (null? _%targets195969%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx195786%_
                                                           _%where195956%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth195957%_
                                    (cons _%hd-e195961%_
                                          (cons _%tl-e195963%_
                                                _%targets195969%_))))
                        _%vars195970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K195975196001%_
                                                  (lambda (_%rest195992%_
                                                           _%hd-pat195993%_
                                                           _%hd-depth*195994%_)
                                                    (let ((_%hd-depth195996%_
                                                           (fx- _%hd-depth*195994%_
                                                                _%depth195957%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth195996%_))
                                                          (_%lp195966%_
                                                           _%rest195992%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat195993%_)
                         _%targets195969%_)
                   (cons (cons _%hd-depth195996%_ _%hd-pat195993%_)
                         _%vars195970%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth195996%_))
                      (_%lp195966%_
                       _%rest195992%_
                       (cons (cons 'pattern _%hd-pat195993%_)
                             _%targets195969%_)
                       _%vars195970%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx195786%_
                         _%where195956%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest195971195981%_)
                                                (let ((_%$%hd195976196004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest195971195981%_)))
                                                      (_%$%tl195977196006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest195971195981%_))))
                                                  (if (pair? _%$%hd195976196004%_)
                                                      (let ((_%$%hd195978196009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd195976196004%_)))
                    (_%$%tl195979196011%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd195976196004%_))))
                (let* ((_%hd-depth*196014%_ _%$%hd195978196009%_)
                       (_%hd-pat196016%_ _%$%tl195979196011%_)
                       (_%rest196018%_ _%$%tl195977196006%_))
                  (_%$%K195975196001%_
                   _%rest196018%_
                   _%hd-pat196016%_
                   _%hd-depth*196014%_)))
              (_%$%else195973195989%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else195973195989%_))))))))))
                             (_%recur195834%_
                              (lambda (_%e195839%_ _%is-e?195840%_)
                                (if (_%is-e?195840%_ _%e195839%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx195786%_))
                                    (if (gx#syntax-local-pattern? _%e195839%_)
                                        (let* ((_%pat195844%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e195839%_)))
                                               (_%depth195846%_
                                                (##structure-ref
                                                 _%pat195844%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth195846%_)
                                              (values (cons 'ref _%pat195844%_)
                                                      (cons (cons _%depth195846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat195844%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat195844%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e195839%_))
                                            (values (cons 'term _%e195839%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e195839%_))
                                                (let* ((_%$%e195850195857%_
                                                        _%e195839%_)
                                                       (_%$%E195852195861%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e195850195857%_))))
                                                       (_%$%E195851195943%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e195850195857%_))
                      (let ((_%$%e195853195865%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e195850195857%_))))
                        (let ((_%$%hd195854195868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195853195865%_)))
                              (_%$%tl195855195870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195853195865%_))))
                          (let* ((_%hd195873%_ _%$%hd195854195868%_)
                                 (_%rest195875%_ _%$%tl195855195870%_))
                            (if (_%is-e?195840%_ _%hd195873%_)
                                (let* ((_%$%e195876195883%_ _%rest195875%_)
                                       (_%$%E195878195887%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx195786%_
                                             _%e195839%_))))
                                       (_%$%E195877195901%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e195876195883%_))
                                              (let ((_%$%e195879195891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e195876195883%_))))
                                                (let ((_%$%hd195880195894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e195879195891%_)))
                                                      (_%$%tl195881195896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e195879195891%_))))
                                                  (let ((_%rest195899%_
                                                         _%$%hd195880195894%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl195881195896%_))
                                                        (_%recur195834%_
                                                         _%rest195899%_
                                                         false)
                                                        (_%$%E195878195887%_)))))
                                              (_%$%E195878195887%_)))))
                                  (_%$%E195877195901%_))
                                (let _%lp195905%_ ((_%rest195907%_
                                                    _%rest195875%_)
                                                   (_%depth195908%_ '0))
                                  (let* ((_%$%e195909195916%_ _%rest195907%_)
                                         (_%$%E195911195920%_
                                          (lambda ()
                                            (if (fxpositive? _%depth195908%_)
                                                (_%make-splice195833%_
                                                 _%e195839%_
                                                 _%depth195908%_
                                                 (_%recur195834%_
                                                  _%hd195873%_
                                                  _%is-e?195840%_)
                                                 (_%recur195834%_
                                                  _%rest195907%_
                                                  _%is-e?195840%_))
                                                (_%make-cons195832%_
                                                 (_%recur195834%_
                                                  _%hd195873%_
                                                  _%is-e?195840%_)
                                                 (_%recur195834%_
                                                  _%rest195907%_
                                                  _%is-e?195840%_)))))
                                         (_%$%E195910195939%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e195909195916%_))
                                                (let ((_%$%e195912195924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e195909195916%_))))
                                                  (let ((_%$%hd195913195927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e195912195924%_)))
                                                        (_%$%tl195914195929%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e195912195924%_))))
                                                    (let* ((_%rest-hd195932%_
                                                            _%$%hd195913195927%_)
                                                           (_%rest-tl195934%_
                                                            _%$%tl195914195929%_))
                                                      (if (_%is-e?195840%_
                                                           _%rest-hd195932%_)
                                                          (_%lp195905%_
                                                           _%rest-tl195934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth195908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth195908%_)
                      (_%make-splice195833%_
                       _%e195839%_
                       _%depth195908%_
                       (_%recur195834%_ _%hd195873%_ _%is-e?195840%_)
                       (_%recur195834%_ _%rest195907%_ _%is-e?195840%_))
                      (_%make-cons195832%_
                       (_%recur195834%_ _%hd195873%_ _%is-e?195840%_)
                       (_%recur195834%_ _%rest195907%_ _%is-e?195840%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E195911195920%_)))))
                                    (_%$%E195910195939%_)))))))
                      (_%$%E195852195861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195851195943%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e195839%_))
                                                    (let ((_g196363_
                                                           (_%recur195834%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e195839%_)))
                    _%is-e?195840%_)))
              (begin
                (let ((_g196364_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g196363_)
                             (##values-length _g196363_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g196364_ 2)))
                      (error "Context expects 2 values" _g196364_)))
                (let ((_%e195948%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g196363_ 0)))
                      (_%vars195949%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g196363_ 1))))
                  (values (cons 'vector _%e195948%_) _%vars195949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e195839%_))
                                                        (let ((_g196365_
                                                               (_%recur195834%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e195839%_)))
                        _%is-e?195840%_)))
                  (begin
                    (let ((_g196366_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g196365_)
                                 (##values-length _g196365_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g196366_ 2)))
                          (error "Context expects 2 values" _g196366_)))
                    (let ((_%e195952%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g196365_ 0)))
                          (_%vars195953%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g196365_ 1))))
                      (values (cons 'box _%e195952%_) _%vars195953%_))))
                (values (cons 'datum _%e195839%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g196367_
                             (_%recur195834%_ _%e195830%_ gx#ellipsis?)))
                        (begin
                          (let ((_g196368_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g196367_)
                                       (##values-length _g196367_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g196368_ 2)))
                                (error "Context expects 2 values" _g196368_)))
                          (let ((_%tree195836%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g196367_ 0)))
                                (_%vars195837%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g196367_ 1))))
                            (if (null? _%vars195837%_)
                                _%tree195836%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx195786%_
                                   _%vars195837%_))))))))))
          (let* ((_%$%e195790195800%_ _%stx195786%_)
                 (_%$%E195792195804%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx195786%_))))
                 (_%$%E195791195826%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e195790195800%_))
                        (let ((_%$%e195793195808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e195790195800%_))))
                          (let ((_%$%hd195794195811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195793195808%_)))
                                (_%$%tl195795195813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195793195808%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl195795195813%_))
                                (let ((_%$%e195796195816%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl195795195813%_))))
                                  (let ((_%$%hd195797195819%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195796195816%_)))
                                        (_%$%tl195798195821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195796195816%_))))
                                    (let ((_%form195824%_
                                           _%$%hd195797195819%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl195798195821%_))
                                          (let ((__tmp196370
                                                 (_%generate195788%_
                                                  (_%parse195789%_
                                                   _%form195824%_)))
                                                (__tmp196369
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx195786%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp196370
                                             __tmp196369))
                                          (_%$%E195792195804%_)))))
                                (_%$%E195792195804%_))))
                        (_%$%E195792195804%_)))))
            (_%$%E195791195826%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx195035%_
               _%identifier=?195036%_
               _%unwrap-e195037%_
               _%wrap-e195038%_)
        (letrec ((_%generate-bindings195040%_
                  (lambda (_%target195650%_
                           _%ids195651%_
                           _%clauses195652%_
                           _%clause-ids195653%_
                           _%E195654%_)
                    (letrec ((_%generate1195656%_
                              (lambda (_%clause195753%_
                                       _%clause-id195754%_
                                       _%E195755%_)
                                (cons (cons _%clause-id195754%_ '())
                                      (cons (let ((__tmp196372
                                                   (cons _%target195650%_ '()))
                                                  (__tmp196371
                                                   (_%generate-clause195042%_
                                                    _%target195650%_
                                                    _%ids195651%_
                                                    _%clause195753%_
                                                    _%E195755%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp196372
                                               __tmp196371))
                                            '())))))
                      (let _%lp195658%_ ((_%rest195660%_ _%clauses195652%_)
                                         (_%rest-ids195661%_
                                          _%clause-ids195653%_)
                                         (_%bindings195662%_ '()))
                        (let* ((_%$%rest195663195671%_ _%rest195660%_)
                               (_%$%else195665195679%_
                                (lambda () _%bindings195662%_))
                               (_%$%K195667195741%_
                                (lambda (_%rest195682%_ _%clause195683%_)
                                  (let* ((_%$%rest-ids195684195691%_
                                          _%rest-ids195661%_)
                                         (_%$%E195686195695%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids195684195691%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K195687195729%_
                                          (lambda (_%rest-ids195698%_
                                                   _%clause-id195699%_)
                                            (let* ((_%$%rest-ids195700195708%_
                                                    _%rest-ids195698%_)
                                                   (_%$%else195702195716%_
                                                    (lambda ()
                                                      (cons (_%generate1195656%_
                                                             _%clause195683%_
                                                             _%clause-id195699%_
                                                             _%E195654%_)
                                                            _%bindings195662%_)))
                                                   (_%$%K195704195721%_
                                                    (lambda (_%next-clause-id195719%_)
                                                      (_%lp195658%_
                                                       _%rest195682%_
                                                       _%rest-ids195698%_
                                                       (cons (_%generate1195656%_
                                                              _%clause195683%_
                                                              _%clause-id195699%_
                                                              _%next-clause-id195719%_)
                                                             _%bindings195662%_)))))
                                              (if (pair? _%$%rest-ids195700195708%_)
                                                  (let* ((_%$%hd195705195724%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids195700195708%_)))
                                                         (_%next-clause-id195727%_
                                                          _%$%hd195705195724%_))
                                                    (_%$%K195704195721%_
                                                     _%next-clause-id195727%_))
                                                  (_%$%else195702195716%_))))))
                                    (if (pair? _%$%rest-ids195684195691%_)
                                        (let ((_%$%hd195688195732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids195684195691%_)))
                                              (_%$%tl195689195734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids195684195691%_))))
                                          (let* ((_%clause-id195737%_
                                                  _%$%hd195688195732%_)
                                                 (_%rest-ids195739%_
                                                  _%$%tl195689195734%_))
                                            (_%$%K195687195729%_
                                             _%rest-ids195739%_
                                             _%clause-id195737%_)))
                                        (_%$%E195686195695%_))))))
                          (if (pair? _%$%rest195663195671%_)
                              (let ((_%$%hd195668195744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest195663195671%_)))
                                    (_%$%tl195669195746%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest195663195671%_))))
                                (let* ((_%clause195749%_ _%$%hd195668195744%_)
                                       (_%rest195751%_ _%$%tl195669195746%_))
                                  (_%$%K195667195741%_
                                   _%rest195751%_
                                   _%clause195749%_)))
                              (_%$%else195665195679%_)))))))
                 (_%generate-body195041%_
                  (lambda (_%bindings195610%_ _%body195611%_)
                    (let _%recur195613%_ ((_%rest195615%_ _%bindings195610%_))
                      (let* ((_%$%rest195616195624%_ _%rest195615%_)
                             (_%$%else195618195632%_
                              (lambda () _%body195611%_))
                             (_%$%K195620195638%_
                              (lambda (_%rest195635%_ _%hd195636%_)
                                (let ((__tmp196374 (cons _%hd195636%_ '()))
                                      (__tmp196373
                                       (_%recur195613%_ _%rest195635%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp196374
                                   __tmp196373)))))
                        (if (pair? _%$%rest195616195624%_)
                            (let ((_%$%hd195621195641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest195616195624%_)))
                                  (_%$%tl195622195643%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest195616195624%_))))
                              (let* ((_%hd195646%_ _%$%hd195621195641%_)
                                     (_%rest195648%_ _%$%tl195622195643%_))
                                (_%$%K195620195638%_
                                 _%rest195648%_
                                 _%hd195646%_)))
                            (_%$%else195618195632%_))))))
                 (_%generate-clause195042%_
                  (lambda (_%target195473%_
                           _%ids195474%_
                           _%clause195475%_
                           _%E195476%_)
                    (letrec ((_%generate1195478%_
                              (lambda (_%hd195565%_
                                       _%fender195566%_
                                       _%body195567%_)
                                (let ((_g196375_
                                       (_%parse-clause195044%_
                                        _%hd195565%_
                                        _%ids195474%_)))
                                  (begin
                                    (let ((_g196376_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196375_)
                                                 (##values-length _g196375_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196376_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196376_)))
                                    (let ((_%e195569%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196375_ 0)))
                                          (_%mvars195570%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196375_ 1))))
                                      (let* ((_%pvars195572%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars195570%_))))
                                             (_%E195574%_
                                              (cons _%E195476%_
                                                    (cons _%target195473%_
                                                          '())))
                                             (_%K195607%_
                                              (let ((__tmp196377
                                                     (let ((__tmp196379
                                                            (map (lambda (_%mvar195576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar195577%_)
                           (let* ((_%$%mvar195578195585%_ _%mvar195576%_)
                                  (_%$%E195580195589%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar195578195585%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K195581195595%_
                                   (lambda (_%depth195592%_ _%id195593%_)
                                     (cons _%id195593%_
                                           (cons (let ((__tmp196381
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id195593%_)))
                                                       (__tmp196380
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar195577%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp196381
                                                    __tmp196380
                                                    _%depth195592%_))
                                                 '())))))
                             (if (pair? _%$%mvar195578195585%_)
                                 (let ((_%$%hd195582195598%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar195578195585%_)))
                                       (_%$%tl195583195600%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar195578195585%_))))
                                   (let* ((_%id195603%_ _%$%hd195582195598%_)
                                          (_%depth195605%_
                                           _%$%tl195583195600%_))
                                     (_%$%K195581195595%_
                                      _%depth195605%_
                                      _%id195603%_)))
                                 (_%$%E195580195589%_))))
                         _%mvars195570%_
                         _%pvars195572%_))
                   (__tmp196378
                    (if (eq? _%fender195566%_ '#t)
                        _%body195567%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender195566%_
                           _%body195567%_
                           _%E195574%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp196379 __tmp196378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars195572%_
                                                 __tmp196377))))
                                        (_%generate-match195043%_
                                         _%hd195565%_
                                         _%target195473%_
                                         _%e195569%_
                                         _%mvars195570%_
                                         _%K195607%_
                                         _%E195574%_))))))))
                      (let* ((_%$%e195479195499%_ _%clause195475%_)
                             (_%$%E195488195503%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e195479195499%_))))
                             (_%$%E195481195537%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e195479195499%_))
                                    (let ((_%$%e195489195507%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e195479195499%_))))
                                      (let ((_%$%hd195490195510%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e195489195507%_)))
                                            (_%$%tl195491195512%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e195489195507%_))))
                                        (let ((_%hd195515%_
                                               _%$%hd195490195510%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl195491195512%_))
                                              (let ((_%$%e195492195517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl195491195512%_))))
                                                (let ((_%$%hd195493195520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e195492195517%_)))
                                                      (_%$%tl195494195522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e195492195517%_))))
                                                  (let ((_%fender195525%_
                                                         _%$%hd195493195520%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl195494195522%_))
                                                        (let ((_%$%e195495195527%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl195494195522%_))))
                  (let ((_%$%hd195496195530%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e195495195527%_)))
                        (_%$%tl195497195532%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e195495195527%_))))
                    (let ((_%body195535%_ _%$%hd195496195530%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl195497195532%_))
                          (_%generate1195478%_
                           _%hd195515%_
                           _%fender195525%_
                           _%body195535%_)
                          (_%$%E195488195503%_)))))
                (_%$%E195488195503%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195488195503%_)))))
                                    (_%$%E195488195503%_))))
                             (_%$%E195480195561%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e195479195499%_))
                                    (let ((_%$%e195482195541%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e195479195499%_))))
                                      (let ((_%$%hd195483195544%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e195482195541%_)))
                                            (_%$%tl195484195546%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e195482195541%_))))
                                        (let ((_%hd195549%_
                                               _%$%hd195483195544%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl195484195546%_))
                                              (let ((_%$%e195485195551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl195484195546%_))))
                                                (let ((_%$%hd195486195554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e195485195551%_)))
                                                      (_%$%tl195487195556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e195485195551%_))))
                                                  (let ((_%body195559%_
                                                         _%$%hd195486195554%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl195487195556%_))
                                                        (_%generate1195478%_
                                                         _%hd195549%_
                                                         '#t
                                                         _%body195559%_)
                                                        (_%$%E195481195537%_)))))
                                              (_%$%E195481195537%_)))))
                                    (_%$%E195481195537%_)))))
                        (_%$%E195480195561%_)))))
                 (_%generate-match195043%_
                  (lambda (_%where195222%_
                           _%target195223%_
                           _%hd195224%_
                           _%mvars195225%_
                           _%K195226%_
                           _%E195227%_)
                    (letrec ((_%BUG195229%_
                              (lambda (_%q195471%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx195035%_
                                         _%hd195224%_
                                         _%q195471%_))))
                             (_%recur195230%_
                              (lambda (_%e195321%_
                                       _%vars195322%_
                                       _%target195323%_
                                       _%E195324%_
                                       _%k195325%_)
                                (let* ((_%$%e195326195333%_ _%e195321%_)
                                       (_%$%E195328195337%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e195326195333%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K195329195459%_
                                        (lambda (_%body195340%_ _%tag195341%_)
                                          (let ((_%$e195343%_ _%tag195341%_))
                                            (if (eq? 'any _%$e195343%_)
                                                (_%k195325%_ _%vars195322%_)
                                                (if (eq? 'id _%$e195343%_)
                                                    (let ((__tmp196386
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target195323%_)))
                                                          (__tmp196382
                                                           (let ((__tmp196384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp196385
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e195038%_
                                    _%body195340%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?195036%_
                             __tmp196385
                             _%target195323%_)))
                         (__tmp196383 (_%k195325%_ _%vars195322%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp196384 __tmp196383 _%E195324%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp196386 __tmp196382 _%E195324%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e195343%_)
                                                        (_%k195325%_
                                                         (cons (cons _%body195340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target195323%_)
                       _%vars195322%_))
                (if (eq? 'cons _%$e195343%_)
                    (let ((_%$e195346%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd195347%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl195348%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp196392
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target195323%_)))
                            (__tmp196387
                             (let ((__tmp196391
                                    (cons (cons (cons _%$e195346%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e195037%_
                                                         _%target195323%_))
                                                      '()))
                                          '()))
                                   (__tmp196388
                                    (let ((__tmp196390
                                           (cons (cons (cons _%$hd195347%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e195346%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl195348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e195346%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp196389
                                           (let* ((_%$%body195349195356%_
                                                   _%body195340%_)
                                                  (_%$%E195351195360%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body195349195356%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K195352195368%_
                                                   (lambda (_%tl195363%_
                                                            _%hd195364%_)
                                                     (_%recur195230%_
                                                      _%hd195364%_
                                                      _%vars195322%_
                                                      _%$hd195347%_
                                                      _%E195324%_
                                                      (lambda (_%vars195366%_)
                                                        (_%recur195230%_
                                                         _%tl195363%_
                                                         _%vars195366%_
                                                         _%$tl195348%_
                                                         _%E195324%_
                                                         _%k195325%_))))))
                                             (if (pair? _%$%body195349195356%_)
                                                 (let ((_%$%hd195353195371%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body195349195356%_)))
                                                       (_%$%tl195354195373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body195349195356%_))))
                                                   (let* ((_%hd195376%_
                                                           _%$%hd195353195371%_)
                                                          (_%tl195378%_
                                                           _%$%tl195354195373%_))
                                                     (_%$%K195352195368%_
                                                      _%tl195378%_
                                                      _%hd195376%_)))
                                                 (_%$%E195351195360%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp196390
                                       __tmp196389))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp196391
                                __tmp196388))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp196392
                         __tmp196387
                         _%E195324%_)))
                    (if (eq? 'splice _%$e195343%_)
                        (let* ((_%$%body195379195386%_ _%body195340%_)
                               (_%$%E195381195390%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body195379195386%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K195382195441%_
                                (lambda (_%tl195393%_ _%hd195394%_)
                                  (let* ((_%rlen195396%_
                                          (_%splice-rlen195231%_ _%tl195393%_))
                                         (_%$target195398%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd195400%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl195402%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp195404%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e195406%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd195408%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl195410%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars195412%_
                                          (_%splice-vars195232%_ _%hd195394%_))
                                         (_%lvars195414%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars195412%_)))
                                         (_%tlvars195416%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars195412%_)))
                                         (_%linit195420%_
                                          (map (lambda (_%var195418%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars195414%_)))
                                    (letrec ((_%make-loop195423%_
                                              (lambda (_%vars195427%_)
                                                (let ((__tmp196394
                                                       (cons (cons (cons _%$lp195404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp196407
                                        (cons _%$hd195400%_ _%lvars195414%_))
                                       (__tmp196395
                                        (let ((__tmp196406
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd195400%_)))
                                              (__tmp196400
                                               (let ((__tmp196405
                                                      (cons (cons (cons _%$lp-e195406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e195037%_
                                   _%$hd195400%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196401
                                                      (let ((__tmp196404
                                                             (cons (cons (cons _%$lp-hd195408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e195406%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl195410%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e195406%_))
                                             '()))
                                 '())))
                    (__tmp196402
                     (_%recur195230%_
                      _%hd195394%_
                      '()
                      _%$lp-hd195408%_
                      _%E195324%_
                      (lambda (_%hdvars195429%_)
                        (cons _%$lp195404%_
                              (cons _%$lp-tl195410%_
                                    (map (lambda (_%svar195431%_
                                                  _%lvar195432%_)
                                           (let ((__tmp196403
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar195431%_
                                                     _%hdvars195429%_
                                                     _%BUG195229%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp196403
                                              _%lvar195432%_)))
                                         _%svars195412%_
                                         _%lvars195414%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp196404 __tmp196402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp196405
                                                  __tmp196401)))
                                              (__tmp196396
                                               (let ((__tmp196399
                                                      (map (lambda (_%lvar195434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar195435%_)
                     (cons (cons _%tlvar195435%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar195434%_))
                                 '())))
                   _%lvars195414%_
                   _%tlvars195416%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196397
                                                      (_%k195325%_
                                                       (let ((__tmp196398
                                                              (lambda (_%svar195437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar195438%_
                               _%r195439%_)
                        (cons (cons _%svar195437%_ _%tlvar195438%_)
                              _%r195439%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp196398
                  _%vars195427%_
                  _%svars195412%_
                  _%tlvars195416%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp196399
                                                  __tmp196397))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp196406
                                           __tmp196400
                                           __tmp196396))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp196407
                                    __tmp196395))
                                 '()))
                     '()))
              (__tmp196393
               (cons _%$lp195404%_ (cons _%$target195398%_ _%linit195420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp196394
                                                   __tmp196393)))))
                                      (let ((_%body195425%_
                                             (let ((__tmp196409
                                                    (cons (cons (cons _%$target195398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl195402%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target195323%_
                                 _%rlen195396%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp196408
                                                    (_%recur195230%_
                                                     _%tl195393%_
                                                     _%vars195322%_
                                                     _%$tl195402%_
                                                     _%E195324%_
                                                     _%make-loop195423%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp196409
                                                __tmp196408))))
                                        (let ((__tmp196413
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target195323%_)))
                                              (__tmp196410
                                               (if (zero? _%rlen195396%_)
                                                   _%body195425%_
                                                   (let ((__tmp196411
                                                          (let ((__tmp196412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target195323%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp196412 _%rlen195396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp196411
                                                      _%body195425%_
                                                      _%E195324%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp196413
                                           __tmp196410
                                           _%E195324%_))))))))
                          (if (pair? _%$%body195379195386%_)
                              (let ((_%$%hd195383195444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body195379195386%_)))
                                    (_%$%tl195384195446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body195379195386%_))))
                                (let* ((_%hd195449%_ _%$%hd195383195444%_)
                                       (_%tl195451%_ _%$%tl195384195446%_))
                                  (_%$%K195382195441%_
                                   _%tl195451%_
                                   _%hd195449%_)))
                              (_%$%E195381195390%_)))
                        (if (eq? 'null _%$e195343%_)
                            (let ((__tmp196415
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target195323%_)))
                                  (__tmp196414 (_%k195325%_ _%vars195322%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp196415
                               __tmp196414
                               _%E195324%_))
                            (if (eq? 'vector _%$e195343%_)
                                (let ((_%$e195453%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp196420
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target195323%_)))
                                        (__tmp196416
                                         (let ((__tmp196418
                                                (cons (cons (cons _%$e195453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp196419
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e195037%_
                                    _%target195323%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp196419))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp196417
                                                (_%recur195230%_
                                                 _%body195340%_
                                                 _%vars195322%_
                                                 _%$e195453%_
                                                 _%E195324%_
                                                 _%k195325%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp196418
                                            __tmp196417))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp196420
                                     __tmp196416
                                     _%E195324%_)))
                                (if (eq? 'box _%$e195343%_)
                                    (let ((_%$e195455%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp196425
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target195323%_)))
                                            (__tmp196421
                                             (let ((__tmp196423
                                                    (cons (cons (cons _%$e195455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp196424
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e195037%_
                                        _%target195323%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp196424))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp196422
                                                    (_%recur195230%_
                                                     _%body195340%_
                                                     _%vars195322%_
                                                     _%$e195455%_
                                                     _%E195324%_
                                                     _%k195325%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp196423
                                                __tmp196422))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp196425
                                         __tmp196421
                                         _%E195324%_)))
                                    (if (eq? 'datum _%$e195343%_)
                                        (let ((_%$e195457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp196431
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target195323%_)))
                                                (__tmp196426
                                                 (let ((__tmp196430
                                                        (cons (cons (cons _%$e195457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target195323%_))
                                  '()))
                      '()))
               (__tmp196427
                (let ((__tmp196429
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e195457%_ _%body195340%_)))
                      (__tmp196428 (_%k195325%_ _%vars195322%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp196429 __tmp196428 _%E195324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp196430
                                                    __tmp196427))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp196431
                                             __tmp196426
                                             _%E195324%_)))
                                        (_%BUG195229%_
                                         _%e195321%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e195326195333%_)
                                      (let ((_%$%hd195330195462%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e195326195333%_)))
                                            (_%$%tl195331195464%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e195326195333%_))))
                                        (let* ((_%tag195467%_
                                                _%$%hd195330195462%_)
                                               (_%body195469%_
                                                _%$%tl195331195464%_))
                                          (_%$%K195329195459%_
                                           _%body195469%_
                                           _%tag195467%_)))
                                      (_%$%E195328195337%_)))))
                             (_%splice-rlen195231%_
                              (lambda (_%e195283%_)
                                (let _%lp195285%_ ((_%e195287%_ _%e195283%_)
                                                   (_%n195288%_ '0))
                                  (let* ((_%$%e195289195296%_ _%e195287%_)
                                         (_%$%E195291195300%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e195289195296%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K195292195309%_
                                          (lambda (_%body195303%_
                                                   _%tag195304%_)
                                            (let ((_%$e195306%_ _%tag195304%_))
                                              (if (eq? 'splice _%$e195306%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx195035%_
                                                     _%where195222%_))
                                                  (if (eq? 'cons _%$e195306%_)
                                                      (_%lp195285%_
                                                       (cdr _%body195303%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n195288%_
                                                                '1)))
                                                      _%n195288%_))))))
                                    (if (pair? _%$%e195289195296%_)
                                        (let ((_%$%hd195293195312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e195289195296%_)))
                                              (_%$%tl195294195314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e195289195296%_))))
                                          (let* ((_%tag195317%_
                                                  _%$%hd195293195312%_)
                                                 (_%body195319%_
                                                  _%$%tl195294195314%_))
                                            (_%$%K195292195309%_
                                             _%body195319%_
                                             _%tag195317%_)))
                                        (_%$%E195291195300%_))))))
                             (_%splice-vars195232%_
                              (lambda (_%e195239%_)
                                (let _%recur195241%_ ((_%e195243%_ _%e195239%_)
                                                      (_%vars195244%_ '()))
                                  (let* ((_%$%e195245195252%_ _%e195243%_)
                                         (_%$%E195247195256%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e195245195252%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K195248195271%_
                                          (lambda (_%body195259%_
                                                   _%tag195260%_)
                                            (let ((_%$e195262%_ _%tag195260%_))
                                              (if (eq? 'var _%$e195262%_)
                                                  (cons _%body195259%_
                                                        _%vars195244%_)
                                                  (if (or (eq? 'cons
                                                               _%$e195262%_)
                                                          (eq? 'splice
                                                               _%$e195262%_))
                                                      (_%recur195241%_
                                                       (cdr _%body195259%_)
                                                       (_%recur195241%_
                                                        (car _%body195259%_)
                                                        _%vars195244%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e195262%_)
                      (eq? 'box _%$e195262%_))
                  (_%recur195241%_ _%body195259%_ _%vars195244%_)
                  _%vars195244%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e195245195252%_)
                                        (let ((_%$%hd195249195274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e195245195252%_)))
                                              (_%$%tl195250195276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e195245195252%_))))
                                          (let* ((_%tag195279%_
                                                  _%$%hd195249195274%_)
                                                 (_%body195281%_
                                                  _%$%tl195250195276%_))
                                            (_%$%K195248195271%_
                                             _%body195281%_
                                             _%tag195279%_)))
                                        (_%$%E195247195256%_))))))
                             (_%make-body195233%_
                              (lambda (_%vars195235%_)
                                (cons _%K195226%_
                                      (map (lambda (_%mvar195237%_)
                                             (let ((__tmp196432
                                                    (car _%mvar195237%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp196432
                                                _%vars195235%_
                                                _%BUG195229%_)))
                                           _%mvars195225%_)))))
                      (_%recur195230%_
                       _%hd195224%_
                       '()
                       _%target195223%_
                       _%E195227%_
                       _%make-body195233%_))))
                 (_%parse-clause195044%_
                  (lambda (_%hd195116%_ _%ids195117%_)
                    (let _%recur195119%_ ((_%e195121%_ _%hd195116%_)
                                          (_%vars195122%_ '())
                                          (_%depth195123%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e195121%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e195121%_))
                              (values '(any) _%vars195122%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e195121%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx195035%_
                                     _%hd195116%_))
                                  (if (let ((__tmp196433
                                             (lambda (_%id195128%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e195121%_
                                                  _%id195128%_)))))
                                        (declare (not safe))
                                        (__find __tmp196433 _%ids195117%_))
                                      (values (cons 'id _%e195121%_)
                                              _%vars195122%_)
                                      (if (let ((__tmp196434
                                                 (lambda (_%var195131%_)
                                                   (let ((__tmp196435
                                                          (car _%var195131%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e195121%_
                                                      __tmp196435)))))
                                            (declare (not safe))
                                            (__find __tmp196434
                                                    _%vars195122%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx195035%_
                                             _%e195121%_))
                                          (values (cons 'var _%e195121%_)
                                                  (cons (cons _%e195121%_
                                                              _%depth195123%_)
                                                        _%vars195122%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e195121%_))
                              (let* ((_%$%e195135195142%_ _%e195121%_)
                                     (_%$%E195137195146%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e195135195142%_))))
                                     (_%$%E195136195207%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e195135195142%_))
                                            (let ((_%$%e195138195150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e195135195142%_))))
                                              (let ((_%$%hd195139195153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e195138195150%_)))
                                                    (_%$%tl195140195155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e195138195150%_))))
                                                (let* ((_%hd195158%_
                                                        _%$%hd195139195153%_)
                                                       (_%rest195160%_
                                                        _%$%tl195140195155%_)
                                                       (_%make-pair195175%_
                                                        (lambda (_%tag195162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd195163%_
                         _%tl195164%_)
                  (let* ((_%hd-depth195166%_
                          (if (eq? _%tag195162%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth195123%_ '1))
                              _%depth195123%_))
                         (_g196436_
                          (_%recur195119%_
                           _%hd195163%_
                           _%vars195122%_
                           _%hd-depth195166%_)))
                    (begin
                      (let ((_g196437_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g196436_)
                                   (##values-length _g196436_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g196437_ 2)))
                            (error "Context expects 2 values" _g196437_)))
                      (let ((_%hd195168%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g196436_ 0)))
                            (_%vars195169%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g196436_ 1))))
                        (let ((_g196438_
                               (_%recur195119%_
                                _%tl195164%_
                                _%vars195169%_
                                _%depth195123%_)))
                          (begin
                            (let ((_g196439_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g196438_)
                                         (##values-length _g196438_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g196439_ 2)))
                                  (error "Context expects 2 values"
                                         _g196439_)))
                            (let ((_%tl195171%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g196438_ 0)))
                                  (_%vars195172%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g196438_ 1))))
                              (values (cons _%tag195162%_
                                            (cons _%hd195168%_ _%tl195171%_))
                                      _%vars195172%_)))))))))
               (_%$%e195176195183%_ _%rest195160%_)
               (_%$%E195178195187%_
                (lambda ()
                  (_%make-pair195175%_ 'cons _%hd195158%_ _%rest195160%_)))
               (_%$%E195177195203%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e195176195183%_))
                      (let ((_%$%e195179195191%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e195176195183%_))))
                        (let ((_%$%hd195180195194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195179195191%_)))
                              (_%$%tl195181195196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195179195191%_))))
                          (let* ((_%rest-hd195199%_ _%$%hd195180195194%_)
                                 (_%rest-tl195201%_ _%$%tl195181195196%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd195199%_))
                                (_%make-pair195175%_
                                 'splice
                                 _%hd195158%_
                                 _%rest-tl195201%_)
                                (_%make-pair195175%_
                                 'cons
                                 _%hd195158%_
                                 _%rest195160%_)))))
                      (_%$%E195178195187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195177195203%_))))
                                            (_%$%E195137195146%_)))))
                                (_%$%E195136195207%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e195121%_))
                                  (values '(null) _%vars195122%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e195121%_))
                                      (let ((_g196440_
                                             (_%recur195119%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e195121%_)))
                                              _%vars195122%_
                                              _%depth195123%_)))
                                        (begin
                                          (let ((_g196441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196440_)
                                                       (##values-length
                                                        _g196440_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196441_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196441_)))
                                          (let ((_%e195213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196440_ 0)))
                                                (_%vars195214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196440_
                                                    1))))
                                            (values (cons 'vector _%e195213%_)
                                                    _%vars195214%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e195121%_))
                                          (let ((_g196442_
                                                 (_%recur195119%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e195121%_)))
                                                  _%vars195122%_
                                                  _%depth195123%_)))
                                            (begin
                                              (let ((_g196443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g196442_)
                                                           (##values-length
                                                            _g196442_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g196443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g196443_)))
                                              (let ((_%e195217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g196442_
                                                        0)))
                                                    (_%vars195218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g196442_
                                                        1))))
                                                (values (cons 'box _%e195217%_)
                                                        _%vars195218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e195121%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e195121%_)))
                                                      _%vars195122%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx195035%_
                                                 _%e195121%_))))))))))))
          (let* ((_%$%e195045195058%_ _%stx195035%_)
                 (_%$%E195047195062%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e195045195058%_))))
                 (_%$%E195046195112%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e195045195058%_))
                        (let ((_%$%e195048195066%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e195045195058%_))))
                          (let ((_%$%hd195049195069%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195048195066%_)))
                                (_%$%tl195050195071%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195048195066%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl195050195071%_))
                                (let ((_%$%e195051195074%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl195050195071%_))))
                                  (let ((_%$%hd195052195077%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195051195074%_)))
                                        (_%$%tl195053195079%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195051195074%_))))
                                    (let ((_%expr195082%_
                                           _%$%hd195052195077%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl195053195079%_))
                                          (let ((_%$%e195054195084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl195053195079%_))))
                                            (let ((_%$%hd195055195087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e195054195084%_)))
                                                  (_%$%tl195056195089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e195054195084%_))))
                                              (let* ((_%ids195092%_
                                                      _%$%hd195055195087%_)
                                                     (_%clauses195094%_
                                                      _%$%tl195056195089%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids195092%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses195094%_))
                                                        (let* ((_%ids195099%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids195092%_)))
                       (_%clauses195101%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses195094%_)))
                       (_%clause-ids195103%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses195101%_)))
                       (_%E195105%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target195107%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first195109%_
                        (if (null? _%clauses195101%_)
                            _%E195105%_
                            (car _%clause-ids195103%_))))
                  (let ((__tmp196445
                         (let ((__tmp196446
                                (let ((__tmp196448
                                       (let ((__tmp196450
                                              (cons (cons (cons _%E195105%_
                                                                '())
                                                          (cons (let ((__tmp196452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target195107%_ '()))
                              (__tmp196451
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target195107%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp196452 __tmp196451))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp196449
                                              (_%generate-body195041%_
                                               (_%generate-bindings195040%_
                                                _%target195107%_
                                                _%ids195099%_
                                                _%clauses195101%_
                                                _%clause-ids195103%_
                                                _%E195105%_)
                                               (cons _%first195109%_
                                                     (cons _%expr195082%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp196450
                                          __tmp196449)))
                                      (__tmp196447
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx195035%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp196448
                                   __tmp196447))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp196446)))
                        (__tmp196444
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx195035%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp196445 __tmp196444)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx195035%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx195035%_
                                                       _%ids195092%_))))))
                                          (_%$%E195047195062%_)))))
                                (_%$%E195047195062%_))))
                        (_%$%E195047195062%_)))))
            (_%$%E195046195112%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx195760%_)
        (let* ((_%identifier=?195762%_ 'free-identifier=?)
               (_%unwrap-e195764%_ 'syntax-e)
               (_%wrap-e195766%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx195760%_
           _%identifier=?195762%_
           _%unwrap-e195764%_
           _%wrap-e195766%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx195768%_ _%identifier=?195769%_)
        (let* ((_%unwrap-e195771%_ 'syntax-e) (_%wrap-e195773%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx195768%_
           _%identifier=?195769%_
           _%unwrap-e195771%_
           _%wrap-e195773%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx195775%_ _%identifier=?195776%_ _%unwrap-e195777%_)
        (let ((_%wrap-e195779%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx195775%_
           _%identifier=?195776%_
           _%unwrap-e195777%_
           _%wrap-e195779%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g196453_
        (let ((_g196454_ (let () (declare (not safe)) (##length _g196453_))))
          (cond ((let () (declare (not safe)) (##fx= _g196454_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g196453_))
                ((let () (declare (not safe)) (##fx= _g196454_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g196453_))
                ((let () (declare (not safe)) (##fx= _g196454_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g196453_))
                ((let () (declare (not safe)) (##fx= _g196454_ 4))
                 (apply gx#macro-expand-syntax-case__% _g196453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g196453_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx195032%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx195032%_))
            (let ((__tmp196455
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx195032%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp196455 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd194990%_ . _%rest194991%_)
        (let ((_%len194993%_ (length _%hd194990%_)))
          (let _%lp194995%_ ((_%rest194997%_ _%rest194991%_))
            (let* ((_%$%rest194998195006%_ _%rest194997%_)
                   (_%$%else195000195014%_ (lambda () '#!void))
                   (_%$%K195002195020%_
                    (lambda (_%rest195017%_ _%hd195018%_)
                      (if (let ((__tmp196456 (length _%hd195018%_)))
                            (declare (not safe))
                            (##fx= _%len194993%_ __tmp196456))
                          (_%lp194995%_ _%rest195017%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd195018%_))))))
              (if (pair? _%$%rest194998195006%_)
                  (let ((_%$%hd195003195023%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest194998195006%_)))
                        (_%$%tl195004195025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest194998195006%_))))
                    (let* ((_%hd195028%_ _%$%hd195003195023%_)
                           (_%rest195030%_ _%$%tl195004195025%_))
                      (_%$%K195002195020%_ _%rest195030%_ _%hd195028%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx194940%_ _%n194941%_)
        (let _%lp194943%_ ((_%rest194946%_ _%stx194940%_) (_%r194948%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest194946%_))
              (let* ((_%$%g194950194957%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest194946%_)))
                     (_%$%E194952194961%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g194950194957%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K194953194968%_
                      (lambda (_%rest194964%_ _%hd194965%_)
                        (_%lp194943%_
                         _%rest194964%_
                         (cons _%hd194965%_ _%r194948%_)))))
                (if (pair? _%$%g194950194957%_)
                    (let ((_%$%hd194954194971%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g194950194957%_)))
                          (_%$%tl194955194973%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g194950194957%_))))
                      (let* ((_%hd194976%_ _%$%hd194954194971%_)
                             (_%rest194978%_ _%$%tl194955194973%_))
                        (_%$%K194953194968%_ _%rest194978%_ _%hd194976%_)))
                    (_%$%E194952194961%_)))
              (let _%lp194980%_ ((_%n194982%_ _%n194941%_)
                                 (_%l194983%_ _%r194948%_)
                                 (_%r194985%_ _%rest194946%_))
                (if (null? _%l194983%_)
                    (values _%l194983%_ _%r194985%_)
                    (if (fxpositive? _%n194982%_)
                        (_%lp194980%_
                         (let () (declare (not safe)) (##fx- _%n194982%_ '1))
                         (cdr _%l194983%_)
                         (cons (car _%l194983%_) _%r194985%_))
                        (values (reverse! _%l194983%_) _%r194985%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx194890%_ _%n194891%_)
        (let _%lp194893%_ ((_%rest194896%_ _%stx194890%_) (_%r194898%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest194896%_))
              (let* ((_%$%g194900194907%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest194896%_)))
                     (_%$%E194902194911%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g194900194907%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K194903194918%_
                      (lambda (_%rest194914%_ _%hd194915%_)
                        (_%lp194893%_
                         _%rest194914%_
                         (cons _%hd194915%_ _%r194898%_)))))
                (if (pair? _%$%g194900194907%_)
                    (let ((_%$%hd194904194921%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g194900194907%_)))
                          (_%$%tl194905194923%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g194900194907%_))))
                      (let* ((_%hd194926%_ _%$%hd194904194921%_)
                             (_%rest194928%_ _%$%tl194905194923%_))
                        (_%$%K194903194918%_ _%rest194928%_ _%hd194926%_)))
                    (_%$%E194902194911%_)))
              (let _%lp194930%_ ((_%n194932%_ _%n194891%_)
                                 (_%l194933%_ _%r194898%_)
                                 (_%r194935%_ _%rest194896%_))
                (if (null? _%l194933%_)
                    (vector _%l194933%_ _%r194935%_)
                    (if (fxpositive? _%n194932%_)
                        (_%lp194930%_
                         (let () (declare (not safe)) (##fx- _%n194932%_ '1))
                         (cdr _%l194933%_)
                         (cons (car _%l194933%_) _%r194935%_))
                        (vector (reverse! _%l194933%_) _%r194935%_))))))))))
