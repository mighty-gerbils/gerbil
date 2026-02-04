(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770243151)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp155329 (list gx#expander::t))
            (__tmp155328 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp155329
         '(id depth)
         __tmp155328
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args155325%_
        (apply make-instance gx#syntax-pattern::t _%$args155325%_)))
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
      (lambda (_%self155311%_ _%stx155312%_)
        (let ((_%self155315%_ _%self155311%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx155312%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx154778%_)
        (letrec ((_%generate154780%_
                  (lambda (_%e155020%_)
                    (letrec ((_%BUG155022%_
                              (lambda (_%q155187%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx154778%_
                                         _%e155020%_
                                         _%q155187%_))))
                             (_%local-pattern-e155023%_
                              (lambda (_%pat155185%_)
                                (let ((__tmp155330
                                       (##structure-ref
                                        _%pat155185%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp155330))))
                             (_%getvar155024%_
                              (lambda (_%q155182%_ _%vars155183%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q155182%_
                                   _%vars155183%_
                                   _%BUG155022%_))))
                             (_%getarg155025%_
                              (lambda (_%arg155148%_ _%vars155149%_)
                                (let* ((_%arg155150155157%_ _%arg155148%_)
                                       (_%E155152155161%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg155150155157%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K155153155170%_
                                        (lambda (_%e155164%_ _%tag155165%_)
                                          (let ((_%$e155167%_ _%tag155165%_))
                                            (if (eq? 'ref _%$e155167%_)
                                                (_%getvar155024%_
                                                 _%e155164%_
                                                 _%vars155149%_)
                                                (if (eq? 'pattern _%$e155167%_)
                                                    (_%local-pattern-e155023%_
                                                     _%e155164%_)
                                                    (_%BUG155022%_
                                                     _%arg155148%_)))))))
                                  (if (pair? _%arg155150155157%_)
                                      (let ((_%hd155154155173%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg155150155157%_)))
                                            (_%tl155155155175%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg155150155157%_))))
                                        (let* ((_%tag155178%_
                                                _%hd155154155173%_)
                                               (_%e155180%_
                                                _%tl155155155175%_))
                                          (_%K155153155170%_
                                           _%e155180%_
                                           _%tag155178%_)))
                                      (_%E155152155161%_))))))
                      (let _%recur155027%_ ((_%e155029%_ _%e155020%_)
                                            (_%vars155030%_ '()))
                        (let* ((_%e155031155038%_ _%e155029%_)
                               (_%E155033155042%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e155031155038%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K155034155136%_
                                (lambda (_%body155045%_ _%tag155046%_)
                                  (let ((_%$e155048%_ _%tag155046%_))
                                    (if (eq? 'datum _%$e155048%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body155045%_))
                                        (if (eq? 'term _%$e155048%_)
                                            (let ((_%id155051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body155045%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id155051%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks155054%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id155051%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks155054%_)
                                                        (let ((__tmp155331
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body155045%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp155331))
                (let ((__tmp155333
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body155045%_)))
                      (__tmp155332
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body155045%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp155333
                   __tmp155332
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id155051%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body155045%_))
                                                      (_%BUG155022%_
                                                       _%e155029%_))))
                                            (if (eq? 'pattern _%$e155048%_)
                                                (_%local-pattern-e155023%_
                                                 _%body155045%_)
                                                (if (eq? 'ref _%$e155048%_)
                                                    (_%getvar155024%_
                                                     _%body155045%_
                                                     _%vars155030%_)
                                                    (if (eq? 'cons
                                                             _%$e155048%_)
                                                        (let ((__tmp155335
                                                               (_%recur155027%_
                                                                (car _%body155045%_)
                                                                _%vars155030%_))
                                                              (__tmp155334
                                                               (_%recur155027%_
                                                                (cdr _%body155045%_)
                                                                _%vars155030%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp155335
                                                           __tmp155334))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e155048%_)
                    (let ((__tmp155336
                           (_%recur155027%_ _%body155045%_ _%vars155030%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp155336))
                    (if (eq? 'box _%$e155048%_)
                        (let ((__tmp155337
                               (_%recur155027%_
                                _%body155045%_
                                _%vars155030%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp155337))
                        (if (eq? 'splice _%$e155048%_)
                            (let* ((_%body155057155068%_ _%body155045%_)
                                   (_%E155059155072%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body155057155068%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K155060155110%_
                                    (lambda (_%args155075%_
                                             _%iv155076%_
                                             _%hd155077%_
                                             _%depth155078%_)
                                      (let* ((_%targets155084%_
                                              (map (lambda (_%g155079155081%_)
                                                     (_%getarg155025%_
                                                      _%g155079155081%_
                                                      _%vars155030%_))
                                                   _%args155075%_))
                                             (_%fold-in155086%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args155075%_)))
                                             (_%fold-out155088%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args155090%_
                                              (let ((__tmp155338
                                                     (cons _%fold-out155088%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp155338
                                                 _%fold-in155086%_)))
                                             (_%lambda-body155107%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth155078%_ '1))
                                                  (let ((_%r-args155098%_
                                                         (map (lambda (_%arg155092%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg155092%_)))
                      _%args155075%_))
                (_%r-vars155099%_
                 (let ((__tmp155339
                        (lambda (_%arg155094%_ _%var155095%_ _%r155096%_)
                          (cons (cons (cdr _%arg155094%_) _%var155095%_)
                                _%r155096%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp155339
                    _%vars155030%_
                    _%args155075%_
                    _%fold-in155086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur155027%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth155078%_ '1))
                         (cons _%hd155077%_
                               (cons (cons 'var _%fold-out155088%_)
                                     _%r-args155098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars155099%_))
                                                  (let* ((_%hd-vars155105%_
                                                          (let ((__tmp155340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg155101%_ _%var155102%_ _%r155103%_)
                           (cons (cons (cdr _%arg155101%_) _%var155102%_)
                                 _%r155103%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp155340
                     _%vars155030%_
                     _%args155075%_
                     _%fold-in155086%_)))
                 (__tmp155341
                  (_%recur155027%_ _%hd155077%_ _%hd-vars155105%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp155341
                                                     _%fold-out155088%_)))))
                                        (let ((__tmp155345
                                               (if (let ((__tmp155346
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets155084%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp155346 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets155084%_))
                                                   '#!void))
                                              (__tmp155342
                                               (let ((__tmp155344
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args155090%_
                                                         _%lambda-body155107%_)))
                                                     (__tmp155343
                                                      (_%recur155027%_
                                                       _%iv155076%_
                                                       _%vars155030%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp155344
                                                  __tmp155343
                                                  _%targets155084%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp155345
                                           __tmp155342))))))
                              (if (pair? _%body155057155068%_)
                                  (let ((_%hd155061155113%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body155057155068%_)))
                                        (_%tl155062155115%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body155057155068%_))))
                                    (let ((_%depth155118%_ _%hd155061155113%_))
                                      (if (pair? _%tl155062155115%_)
                                          (let ((_%hd155063155120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl155062155115%_)))
                                                (_%tl155064155122%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl155062155115%_))))
                                            (let ((_%hd155125%_
                                                   _%hd155063155120%_))
                                              (if (pair? _%tl155064155122%_)
                                                  (let ((_%hd155065155127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl155064155122%_)))
                                                        (_%tl155066155129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl155064155122%_))))
                                                    (let* ((_%iv155132%_
                                                            _%hd155065155127%_)
                                                           (_%args155134%_
                                                            _%tl155066155129%_))
                                                      (_%K155060155110%_
                                                       _%args155134%_
                                                       _%iv155132%_
                                                       _%hd155125%_
                                                       _%depth155118%_)))
                                                  (_%E155059155072%_))))
                                          (_%E155059155072%_))))
                                  (_%E155059155072%_)))
                            (if (eq? 'var _%$e155048%_)
                                _%body155045%_
                                (_%BUG155022%_ _%e155029%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e155031155038%_)
                              (let ((_%hd155035155139%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e155031155038%_)))
                                    (_%tl155036155141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e155031155038%_))))
                                (let* ((_%tag155144%_ _%hd155035155139%_)
                                       (_%body155146%_ _%tl155036155141%_))
                                  (_%K155034155136%_
                                   _%body155146%_
                                   _%tag155144%_)))
                              (_%E155033155042%_)))))))
                 (_%parse154781%_
                  (lambda (_%e154822%_)
                    (letrec ((_%make-cons154824%_
                              (lambda (_%hd155012%_ _%tl155013%_)
                                (let ((_g155347_ _%hd155012%_)
                                      (_g155349_ _%tl155013%_))
                                  (begin
                                    (let ((_g155348_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g155347_)
                                                 (##values-length _g155347_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g155348_ 2)))
                                          (error "Context expects 2 values"
                                                 _g155348_)))
                                    (let ((_g155350_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g155349_)
                                                 (##values-length _g155349_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g155350_ 2)))
                                          (error "Context expects 2 values"
                                                 _g155350_)))
                                    (let ((_%hd-e155015%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g155347_ 0)))
                                          (_%hd-vars155016%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g155347_ 1))))
                                      (let ((_%tl-e155017%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g155349_ 0)))
                                            (_%tl-vars155018%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g155349_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e155015%_
                                                            _%tl-e155017%_))
                                                (append _%hd-vars155016%_
                                                        _%tl-vars155018%_))))))))
                             (_%make-splice154825%_
                              (lambda (_%where154948%_
                                       _%depth154949%_
                                       _%hd154950%_
                                       _%tl154951%_)
                                (let ((_g155351_ _%hd154950%_)
                                      (_g155353_ _%tl154951%_))
                                  (begin
                                    (let ((_g155352_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g155351_)
                                                 (##values-length _g155351_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g155352_ 2)))
                                          (error "Context expects 2 values"
                                                 _g155352_)))
                                    (let ((_g155354_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g155353_)
                                                 (##values-length _g155353_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g155354_ 2)))
                                          (error "Context expects 2 values"
                                                 _g155354_)))
                                    (let ((_%hd-e154953%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g155351_ 0)))
                                          (_%hd-vars154954%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g155351_ 1))))
                                      (let ((_%tl-e154955%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g155353_ 0)))
                                            (_%tl-vars154956%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g155353_ 1))))
                                        (let _%lp154958%_ ((_%rest154960%_
                                                            _%hd-vars154954%_)
                                                           (_%targets154961%_
                                                            '())
                                                           (_%vars154962%_
                                                            _%tl-vars154956%_))
                                          (let* ((_%rest154963154973%_
                                                  _%rest154960%_)
                                                 (_%else154965154981%_
                                                  (lambda ()
                                                    (if (null? _%targets154961%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx154778%_
                                                           _%where154948%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth154949%_
                                    (cons _%hd-e154953%_
                                          (cons _%tl-e154955%_
                                                _%targets154961%_))))
                        _%vars154962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K154967154993%_
                                                  (lambda (_%rest154984%_
                                                           _%hd-pat154985%_
                                                           _%hd-depth*154986%_)
                                                    (let ((_%hd-depth154988%_
                                                           (fx- _%hd-depth*154986%_
                                                                _%depth154949%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth154988%_))
                                                          (_%lp154958%_
                                                           _%rest154984%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat154985%_)
                         _%targets154961%_)
                   (cons (cons _%hd-depth154988%_ _%hd-pat154985%_)
                         _%vars154962%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth154988%_))
                      (_%lp154958%_
                       _%rest154984%_
                       (cons (cons 'pattern _%hd-pat154985%_)
                             _%targets154961%_)
                       _%vars154962%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx154778%_
                         _%where154948%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest154963154973%_)
                                                (let ((_%hd154968154996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest154963154973%_)))
                                                      (_%tl154969154998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest154963154973%_))))
                                                  (if (pair? _%hd154968154996%_)
                                                      (let ((_%hd154970155001%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd154968154996%_)))
                    (_%tl154971155003%_
                     (let () (declare (not safe)) (##cdr _%hd154968154996%_))))
                (let* ((_%hd-depth*155006%_ _%hd154970155001%_)
                       (_%hd-pat155008%_ _%tl154971155003%_)
                       (_%rest155010%_ _%tl154969154998%_))
                  (_%K154967154993%_
                   _%rest155010%_
                   _%hd-pat155008%_
                   _%hd-depth*155006%_)))
              (_%else154965154981%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else154965154981%_))))))))))
                             (_%recur154826%_
                              (lambda (_%e154831%_ _%is-e?154832%_)
                                (if (_%is-e?154832%_ _%e154831%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx154778%_))
                                    (if (gx#syntax-local-pattern? _%e154831%_)
                                        (let* ((_%pat154836%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e154831%_)))
                                               (_%depth154838%_
                                                (##structure-ref
                                                 _%pat154836%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth154838%_)
                                              (values (cons 'ref _%pat154836%_)
                                                      (cons (cons _%depth154838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat154836%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat154836%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e154831%_))
                                            (values (cons 'term _%e154831%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e154831%_))
                                                (let* ((_%e154842154849%_
                                                        _%e154831%_)
                                                       (_%E154844154853%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e154842154849%_))))
                                                       (_%E154843154935%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e154842154849%_))
                      (let ((_%e154845154857%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e154842154849%_))))
                        (let ((_%hd154846154860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154845154857%_)))
                              (_%tl154847154862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154845154857%_))))
                          (let* ((_%hd154865%_ _%hd154846154860%_)
                                 (_%rest154867%_ _%tl154847154862%_))
                            (if (_%is-e?154832%_ _%hd154865%_)
                                (let* ((_%e154868154875%_ _%rest154867%_)
                                       (_%E154870154879%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx154778%_
                                             _%e154831%_))))
                                       (_%E154869154893%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e154868154875%_))
                                              (let ((_%e154871154883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e154868154875%_))))
                                                (let ((_%hd154872154886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e154871154883%_)))
                                                      (_%tl154873154888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e154871154883%_))))
                                                  (let ((_%rest154891%_
                                                         _%hd154872154886%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154873154888%_))
                                                        (_%recur154826%_
                                                         _%rest154891%_
                                                         false)
                                                        (_%E154870154879%_)))))
                                              (_%E154870154879%_)))))
                                  (_%E154869154893%_))
                                (let _%lp154897%_ ((_%rest154899%_
                                                    _%rest154867%_)
                                                   (_%depth154900%_ '0))
                                  (let* ((_%e154901154908%_ _%rest154899%_)
                                         (_%E154903154912%_
                                          (lambda ()
                                            (if (fxpositive? _%depth154900%_)
                                                (_%make-splice154825%_
                                                 _%e154831%_
                                                 _%depth154900%_
                                                 (_%recur154826%_
                                                  _%hd154865%_
                                                  _%is-e?154832%_)
                                                 (_%recur154826%_
                                                  _%rest154899%_
                                                  _%is-e?154832%_))
                                                (_%make-cons154824%_
                                                 (_%recur154826%_
                                                  _%hd154865%_
                                                  _%is-e?154832%_)
                                                 (_%recur154826%_
                                                  _%rest154899%_
                                                  _%is-e?154832%_)))))
                                         (_%E154902154931%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e154901154908%_))
                                                (let ((_%e154904154916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e154901154908%_))))
                                                  (let ((_%hd154905154919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154904154916%_)))
                                                        (_%tl154906154921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154904154916%_))))
                                                    (let* ((_%rest-hd154924%_
                                                            _%hd154905154919%_)
                                                           (_%rest-tl154926%_
                                                            _%tl154906154921%_))
                                                      (if (_%is-e?154832%_
                                                           _%rest-hd154924%_)
                                                          (_%lp154897%_
                                                           _%rest-tl154926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth154900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth154900%_)
                      (_%make-splice154825%_
                       _%e154831%_
                       _%depth154900%_
                       (_%recur154826%_ _%hd154865%_ _%is-e?154832%_)
                       (_%recur154826%_ _%rest154899%_ _%is-e?154832%_))
                      (_%make-cons154824%_
                       (_%recur154826%_ _%hd154865%_ _%is-e?154832%_)
                       (_%recur154826%_ _%rest154899%_ _%is-e?154832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E154903154912%_)))))
                                    (_%E154902154931%_)))))))
                      (_%E154844154853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E154843154935%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e154831%_))
                                                    (let ((_g155355_
                                                           (_%recur154826%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e154831%_)))
                    _%is-e?154832%_)))
              (begin
                (let ((_g155356_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g155355_)
                             (##values-length _g155355_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g155356_ 2)))
                      (error "Context expects 2 values" _g155356_)))
                (let ((_%e154940%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g155355_ 0)))
                      (_%vars154941%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g155355_ 1))))
                  (values (cons 'vector _%e154940%_) _%vars154941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e154831%_))
                                                        (let ((_g155357_
                                                               (_%recur154826%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e154831%_)))
                        _%is-e?154832%_)))
                  (begin
                    (let ((_g155358_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g155357_)
                                 (##values-length _g155357_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g155358_ 2)))
                          (error "Context expects 2 values" _g155358_)))
                    (let ((_%e154944%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g155357_ 0)))
                          (_%vars154945%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g155357_ 1))))
                      (values (cons 'box _%e154944%_) _%vars154945%_))))
                (values (cons 'datum _%e154831%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g155359_
                             (_%recur154826%_ _%e154822%_ gx#ellipsis?)))
                        (begin
                          (let ((_g155360_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g155359_)
                                       (##values-length _g155359_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g155360_ 2)))
                                (error "Context expects 2 values" _g155360_)))
                          (let ((_%tree154828%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g155359_ 0)))
                                (_%vars154829%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g155359_ 1))))
                            (if (null? _%vars154829%_)
                                _%tree154828%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx154778%_
                                   _%vars154829%_))))))))))
          (let* ((_%e154782154792%_ _%stx154778%_)
                 (_%E154784154796%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx154778%_))))
                 (_%E154783154818%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e154782154792%_))
                        (let ((_%e154785154800%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e154782154792%_))))
                          (let ((_%hd154786154803%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154785154800%_)))
                                (_%tl154787154805%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154785154800%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154787154805%_))
                                (let ((_%e154788154808%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl154787154805%_))))
                                  (let ((_%hd154789154811%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154788154808%_)))
                                        (_%tl154790154813%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154788154808%_))))
                                    (let ((_%form154816%_ _%hd154789154811%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl154790154813%_))
                                          (let ((__tmp155362
                                                 (_%generate154780%_
                                                  (_%parse154781%_
                                                   _%form154816%_)))
                                                (__tmp155361
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx154778%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp155362
                                             __tmp155361))
                                          (_%E154784154796%_)))))
                                (_%E154784154796%_))))
                        (_%E154784154796%_)))))
            (_%E154783154818%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx154027%_
               _%identifier=?154028%_
               _%unwrap-e154029%_
               _%wrap-e154030%_)
        (letrec ((_%generate-bindings154032%_
                  (lambda (_%target154642%_
                           _%ids154643%_
                           _%clauses154644%_
                           _%clause-ids154645%_
                           _%E154646%_)
                    (letrec ((_%generate1154648%_
                              (lambda (_%clause154745%_
                                       _%clause-id154746%_
                                       _%E154747%_)
                                (cons (cons _%clause-id154746%_ '())
                                      (cons (let ((__tmp155364
                                                   (cons _%target154642%_ '()))
                                                  (__tmp155363
                                                   (_%generate-clause154034%_
                                                    _%target154642%_
                                                    _%ids154643%_
                                                    _%clause154745%_
                                                    _%E154747%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp155364
                                               __tmp155363))
                                            '())))))
                      (let _%lp154650%_ ((_%rest154652%_ _%clauses154644%_)
                                         (_%rest-ids154653%_
                                          _%clause-ids154645%_)
                                         (_%bindings154654%_ '()))
                        (let* ((_%rest154655154663%_ _%rest154652%_)
                               (_%else154657154671%_
                                (lambda () _%bindings154654%_))
                               (_%K154659154733%_
                                (lambda (_%rest154674%_ _%clause154675%_)
                                  (let* ((_%rest-ids154676154683%_
                                          _%rest-ids154653%_)
                                         (_%E154678154687%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids154676154683%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K154679154721%_
                                          (lambda (_%rest-ids154690%_
                                                   _%clause-id154691%_)
                                            (let* ((_%rest-ids154692154700%_
                                                    _%rest-ids154690%_)
                                                   (_%else154694154708%_
                                                    (lambda ()
                                                      (cons (_%generate1154648%_
                                                             _%clause154675%_
                                                             _%clause-id154691%_
                                                             _%E154646%_)
                                                            _%bindings154654%_)))
                                                   (_%K154696154713%_
                                                    (lambda (_%next-clause-id154711%_)
                                                      (_%lp154650%_
                                                       _%rest154674%_
                                                       _%rest-ids154690%_
                                                       (cons (_%generate1154648%_
                                                              _%clause154675%_
                                                              _%clause-id154691%_
                                                              _%next-clause-id154711%_)
                                                             _%bindings154654%_)))))
                                              (if (pair? _%rest-ids154692154700%_)
                                                  (let* ((_%hd154697154716%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids154692154700%_)))
                                                         (_%next-clause-id154719%_
                                                          _%hd154697154716%_))
                                                    (_%K154696154713%_
                                                     _%next-clause-id154719%_))
                                                  (_%else154694154708%_))))))
                                    (if (pair? _%rest-ids154676154683%_)
                                        (let ((_%hd154680154724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids154676154683%_)))
                                              (_%tl154681154726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids154676154683%_))))
                                          (let* ((_%clause-id154729%_
                                                  _%hd154680154724%_)
                                                 (_%rest-ids154731%_
                                                  _%tl154681154726%_))
                                            (_%K154679154721%_
                                             _%rest-ids154731%_
                                             _%clause-id154729%_)))
                                        (_%E154678154687%_))))))
                          (if (pair? _%rest154655154663%_)
                              (let ((_%hd154660154736%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest154655154663%_)))
                                    (_%tl154661154738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest154655154663%_))))
                                (let* ((_%clause154741%_ _%hd154660154736%_)
                                       (_%rest154743%_ _%tl154661154738%_))
                                  (_%K154659154733%_
                                   _%rest154743%_
                                   _%clause154741%_)))
                              (_%else154657154671%_)))))))
                 (_%generate-body154033%_
                  (lambda (_%bindings154602%_ _%body154603%_)
                    (let _%recur154605%_ ((_%rest154607%_ _%bindings154602%_))
                      (let* ((_%rest154608154616%_ _%rest154607%_)
                             (_%else154610154624%_ (lambda () _%body154603%_))
                             (_%K154612154630%_
                              (lambda (_%rest154627%_ _%hd154628%_)
                                (let ((__tmp155366 (cons _%hd154628%_ '()))
                                      (__tmp155365
                                       (_%recur154605%_ _%rest154627%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp155366
                                   __tmp155365)))))
                        (if (pair? _%rest154608154616%_)
                            (let ((_%hd154613154633%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest154608154616%_)))
                                  (_%tl154614154635%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest154608154616%_))))
                              (let* ((_%hd154638%_ _%hd154613154633%_)
                                     (_%rest154640%_ _%tl154614154635%_))
                                (_%K154612154630%_
                                 _%rest154640%_
                                 _%hd154638%_)))
                            (_%else154610154624%_))))))
                 (_%generate-clause154034%_
                  (lambda (_%target154465%_
                           _%ids154466%_
                           _%clause154467%_
                           _%E154468%_)
                    (letrec ((_%generate1154470%_
                              (lambda (_%hd154557%_
                                       _%fender154558%_
                                       _%body154559%_)
                                (let ((_g155367_
                                       (_%parse-clause154036%_
                                        _%hd154557%_
                                        _%ids154466%_)))
                                  (begin
                                    (let ((_g155368_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g155367_)
                                                 (##values-length _g155367_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g155368_ 2)))
                                          (error "Context expects 2 values"
                                                 _g155368_)))
                                    (let ((_%e154561%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g155367_ 0)))
                                          (_%mvars154562%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g155367_ 1))))
                                      (let* ((_%pvars154564%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars154562%_))))
                                             (_%E154566%_
                                              (cons _%E154468%_
                                                    (cons _%target154465%_
                                                          '())))
                                             (_%K154599%_
                                              (let ((__tmp155369
                                                     (let ((__tmp155371
                                                            (map (lambda (_%mvar154568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar154569%_)
                           (let* ((_%mvar154570154577%_ _%mvar154568%_)
                                  (_%E154572154581%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar154570154577%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K154573154587%_
                                   (lambda (_%depth154584%_ _%id154585%_)
                                     (cons _%id154585%_
                                           (cons (let ((__tmp155373
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id154585%_)))
                                                       (__tmp155372
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar154569%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp155373
                                                    __tmp155372
                                                    _%depth154584%_))
                                                 '())))))
                             (if (pair? _%mvar154570154577%_)
                                 (let ((_%hd154574154590%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar154570154577%_)))
                                       (_%tl154575154592%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar154570154577%_))))
                                   (let* ((_%id154595%_ _%hd154574154590%_)
                                          (_%depth154597%_ _%tl154575154592%_))
                                     (_%K154573154587%_
                                      _%depth154597%_
                                      _%id154595%_)))
                                 (_%E154572154581%_))))
                         _%mvars154562%_
                         _%pvars154564%_))
                   (__tmp155370
                    (if (eq? _%fender154558%_ '#t)
                        _%body154559%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender154558%_
                           _%body154559%_
                           _%E154566%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp155371 __tmp155370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars154564%_
                                                 __tmp155369))))
                                        (_%generate-match154035%_
                                         _%hd154557%_
                                         _%target154465%_
                                         _%e154561%_
                                         _%mvars154562%_
                                         _%K154599%_
                                         _%E154566%_))))))))
                      (let* ((_%e154471154491%_ _%clause154467%_)
                             (_%E154480154495%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e154471154491%_))))
                             (_%E154473154529%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e154471154491%_))
                                    (let ((_%e154481154499%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e154471154491%_))))
                                      (let ((_%hd154482154502%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e154481154499%_)))
                                            (_%tl154483154504%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e154481154499%_))))
                                        (let ((_%hd154507%_
                                               _%hd154482154502%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl154483154504%_))
                                              (let ((_%e154484154509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl154483154504%_))))
                                                (let ((_%hd154485154512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e154484154509%_)))
                                                      (_%tl154486154514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e154484154509%_))))
                                                  (let ((_%fender154517%_
                                                         _%hd154485154512%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154486154514%_))
                                                        (let ((_%e154487154519%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl154486154514%_))))
                  (let ((_%hd154488154522%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154487154519%_)))
                        (_%tl154489154524%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154487154519%_))))
                    (let ((_%body154527%_ _%hd154488154522%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl154489154524%_))
                          (_%generate1154470%_
                           _%hd154507%_
                           _%fender154517%_
                           _%body154527%_)
                          (_%E154480154495%_)))))
                (_%E154480154495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E154480154495%_)))))
                                    (_%E154480154495%_))))
                             (_%E154472154553%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e154471154491%_))
                                    (let ((_%e154474154533%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e154471154491%_))))
                                      (let ((_%hd154475154536%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e154474154533%_)))
                                            (_%tl154476154538%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e154474154533%_))))
                                        (let ((_%hd154541%_
                                               _%hd154475154536%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl154476154538%_))
                                              (let ((_%e154477154543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl154476154538%_))))
                                                (let ((_%hd154478154546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e154477154543%_)))
                                                      (_%tl154479154548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e154477154543%_))))
                                                  (let ((_%body154551%_
                                                         _%hd154478154546%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154479154548%_))
                                                        (_%generate1154470%_
                                                         _%hd154541%_
                                                         '#t
                                                         _%body154551%_)
                                                        (_%E154473154529%_)))))
                                              (_%E154473154529%_)))))
                                    (_%E154473154529%_)))))
                        (_%E154472154553%_)))))
                 (_%generate-match154035%_
                  (lambda (_%where154214%_
                           _%target154215%_
                           _%hd154216%_
                           _%mvars154217%_
                           _%K154218%_
                           _%E154219%_)
                    (letrec ((_%BUG154221%_
                              (lambda (_%q154463%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx154027%_
                                         _%hd154216%_
                                         _%q154463%_))))
                             (_%recur154222%_
                              (lambda (_%e154313%_
                                       _%vars154314%_
                                       _%target154315%_
                                       _%E154316%_
                                       _%k154317%_)
                                (let* ((_%e154318154325%_ _%e154313%_)
                                       (_%E154320154329%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e154318154325%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K154321154451%_
                                        (lambda (_%body154332%_ _%tag154333%_)
                                          (let ((_%$e154335%_ _%tag154333%_))
                                            (if (eq? 'any _%$e154335%_)
                                                (_%k154317%_ _%vars154314%_)
                                                (if (eq? 'id _%$e154335%_)
                                                    (let ((__tmp155378
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target154315%_)))
                                                          (__tmp155374
                                                           (let ((__tmp155376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155377
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e154030%_
                                    _%body154332%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?154028%_
                             __tmp155377
                             _%target154315%_)))
                         (__tmp155375 (_%k154317%_ _%vars154314%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp155376 __tmp155375 _%E154316%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp155378 __tmp155374 _%E154316%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e154335%_)
                                                        (_%k154317%_
                                                         (cons (cons _%body154332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target154315%_)
                       _%vars154314%_))
                (if (eq? 'cons _%$e154335%_)
                    (let ((_%$e154338%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd154339%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl154340%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp155384
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target154315%_)))
                            (__tmp155379
                             (let ((__tmp155383
                                    (cons (cons (cons _%$e154338%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e154029%_
                                                         _%target154315%_))
                                                      '()))
                                          '()))
                                   (__tmp155380
                                    (let ((__tmp155382
                                           (cons (cons (cons _%$hd154339%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e154338%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl154340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e154338%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp155381
                                           (let* ((_%body154341154348%_
                                                   _%body154332%_)
                                                  (_%E154343154352%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body154341154348%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K154344154360%_
                                                   (lambda (_%tl154355%_
                                                            _%hd154356%_)
                                                     (_%recur154222%_
                                                      _%hd154356%_
                                                      _%vars154314%_
                                                      _%$hd154339%_
                                                      _%E154316%_
                                                      (lambda (_%vars154358%_)
                                                        (_%recur154222%_
                                                         _%tl154355%_
                                                         _%vars154358%_
                                                         _%$tl154340%_
                                                         _%E154316%_
                                                         _%k154317%_))))))
                                             (if (pair? _%body154341154348%_)
                                                 (let ((_%hd154345154363%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body154341154348%_)))
                                                       (_%tl154346154365%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body154341154348%_))))
                                                   (let* ((_%hd154368%_
                                                           _%hd154345154363%_)
                                                          (_%tl154370%_
                                                           _%tl154346154365%_))
                                                     (_%K154344154360%_
                                                      _%tl154370%_
                                                      _%hd154368%_)))
                                                 (_%E154343154352%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp155382
                                       __tmp155381))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp155383
                                __tmp155380))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp155384
                         __tmp155379
                         _%E154316%_)))
                    (if (eq? 'splice _%$e154335%_)
                        (let* ((_%body154371154378%_ _%body154332%_)
                               (_%E154373154382%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body154371154378%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K154374154433%_
                                (lambda (_%tl154385%_ _%hd154386%_)
                                  (let* ((_%rlen154388%_
                                          (_%splice-rlen154223%_ _%tl154385%_))
                                         (_%$target154390%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd154392%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl154394%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp154396%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e154398%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd154400%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl154402%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars154404%_
                                          (_%splice-vars154224%_ _%hd154386%_))
                                         (_%lvars154406%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars154404%_)))
                                         (_%tlvars154408%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars154404%_)))
                                         (_%linit154412%_
                                          (map (lambda (_%var154410%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars154406%_)))
                                    (letrec ((_%make-loop154415%_
                                              (lambda (_%vars154419%_)
                                                (let ((__tmp155386
                                                       (cons (cons (cons _%$lp154396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp155399
                                        (cons _%$hd154392%_ _%lvars154406%_))
                                       (__tmp155387
                                        (let ((__tmp155398
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd154392%_)))
                                              (__tmp155392
                                               (let ((__tmp155397
                                                      (cons (cons (cons _%$lp-e154398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e154029%_
                                   _%$hd154392%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155393
                                                      (let ((__tmp155396
                                                             (cons (cons (cons _%$lp-hd154400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e154398%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl154402%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e154398%_))
                                             '()))
                                 '())))
                    (__tmp155394
                     (_%recur154222%_
                      _%hd154386%_
                      '()
                      _%$lp-hd154400%_
                      _%E154316%_
                      (lambda (_%hdvars154421%_)
                        (cons _%$lp154396%_
                              (cons _%$lp-tl154402%_
                                    (map (lambda (_%svar154423%_
                                                  _%lvar154424%_)
                                           (let ((__tmp155395
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar154423%_
                                                     _%hdvars154421%_
                                                     _%BUG154221%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp155395
                                              _%lvar154424%_)))
                                         _%svars154404%_
                                         _%lvars154406%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp155396 __tmp155394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp155397
                                                  __tmp155393)))
                                              (__tmp155388
                                               (let ((__tmp155391
                                                      (map (lambda (_%lvar154426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar154427%_)
                     (cons (cons _%tlvar154427%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar154426%_))
                                 '())))
                   _%lvars154406%_
                   _%tlvars154408%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155389
                                                      (_%k154317%_
                                                       (let ((__tmp155390
                                                              (lambda (_%svar154429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar154430%_
                               _%r154431%_)
                        (cons (cons _%svar154429%_ _%tlvar154430%_)
                              _%r154431%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp155390
                  _%vars154419%_
                  _%svars154404%_
                  _%tlvars154408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp155391
                                                  __tmp155389))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp155398
                                           __tmp155392
                                           __tmp155388))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp155399
                                    __tmp155387))
                                 '()))
                     '()))
              (__tmp155385
               (cons _%$lp154396%_ (cons _%$target154390%_ _%linit154412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp155386
                                                   __tmp155385)))))
                                      (let ((_%body154417%_
                                             (let ((__tmp155401
                                                    (cons (cons (cons _%$target154390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl154394%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target154315%_
                                 _%rlen154388%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155400
                                                    (_%recur154222%_
                                                     _%tl154385%_
                                                     _%vars154314%_
                                                     _%$tl154394%_
                                                     _%E154316%_
                                                     _%make-loop154415%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp155401
                                                __tmp155400))))
                                        (let ((__tmp155405
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target154315%_)))
                                              (__tmp155402
                                               (if (zero? _%rlen154388%_)
                                                   _%body154417%_
                                                   (let ((__tmp155403
                                                          (let ((__tmp155404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target154315%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp155404 _%rlen154388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp155403
                                                      _%body154417%_
                                                      _%E154316%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp155405
                                           __tmp155402
                                           _%E154316%_))))))))
                          (if (pair? _%body154371154378%_)
                              (let ((_%hd154375154436%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body154371154378%_)))
                                    (_%tl154376154438%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body154371154378%_))))
                                (let* ((_%hd154441%_ _%hd154375154436%_)
                                       (_%tl154443%_ _%tl154376154438%_))
                                  (_%K154374154433%_
                                   _%tl154443%_
                                   _%hd154441%_)))
                              (_%E154373154382%_)))
                        (if (eq? 'null _%$e154335%_)
                            (let ((__tmp155407
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target154315%_)))
                                  (__tmp155406 (_%k154317%_ _%vars154314%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp155407
                               __tmp155406
                               _%E154316%_))
                            (if (eq? 'vector _%$e154335%_)
                                (let ((_%$e154445%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp155412
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target154315%_)))
                                        (__tmp155408
                                         (let ((__tmp155410
                                                (cons (cons (cons _%$e154445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp155411
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e154029%_
                                    _%target154315%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp155411))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp155409
                                                (_%recur154222%_
                                                 _%body154332%_
                                                 _%vars154314%_
                                                 _%$e154445%_
                                                 _%E154316%_
                                                 _%k154317%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp155410
                                            __tmp155409))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp155412
                                     __tmp155408
                                     _%E154316%_)))
                                (if (eq? 'box _%$e154335%_)
                                    (let ((_%$e154447%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp155417
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target154315%_)))
                                            (__tmp155413
                                             (let ((__tmp155415
                                                    (cons (cons (cons _%$e154447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp155416
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e154029%_
                                        _%target154315%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp155416))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155414
                                                    (_%recur154222%_
                                                     _%body154332%_
                                                     _%vars154314%_
                                                     _%$e154447%_
                                                     _%E154316%_
                                                     _%k154317%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp155415
                                                __tmp155414))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp155417
                                         __tmp155413
                                         _%E154316%_)))
                                    (if (eq? 'datum _%$e154335%_)
                                        (let ((_%$e154449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp155423
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target154315%_)))
                                                (__tmp155418
                                                 (let ((__tmp155422
                                                        (cons (cons (cons _%$e154449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target154315%_))
                                  '()))
                      '()))
               (__tmp155419
                (let ((__tmp155421
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e154449%_ _%body154332%_)))
                      (__tmp155420 (_%k154317%_ _%vars154314%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp155421 __tmp155420 _%E154316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp155422
                                                    __tmp155419))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp155423
                                             __tmp155418
                                             _%E154316%_)))
                                        (_%BUG154221%_
                                         _%e154313%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e154318154325%_)
                                      (let ((_%hd154322154454%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e154318154325%_)))
                                            (_%tl154323154456%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e154318154325%_))))
                                        (let* ((_%tag154459%_
                                                _%hd154322154454%_)
                                               (_%body154461%_
                                                _%tl154323154456%_))
                                          (_%K154321154451%_
                                           _%body154461%_
                                           _%tag154459%_)))
                                      (_%E154320154329%_)))))
                             (_%splice-rlen154223%_
                              (lambda (_%e154275%_)
                                (let _%lp154277%_ ((_%e154279%_ _%e154275%_)
                                                   (_%n154280%_ '0))
                                  (let* ((_%e154281154288%_ _%e154279%_)
                                         (_%E154283154292%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e154281154288%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K154284154301%_
                                          (lambda (_%body154295%_
                                                   _%tag154296%_)
                                            (let ((_%$e154298%_ _%tag154296%_))
                                              (if (eq? 'splice _%$e154298%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx154027%_
                                                     _%where154214%_))
                                                  (if (eq? 'cons _%$e154298%_)
                                                      (_%lp154277%_
                                                       (cdr _%body154295%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n154280%_
                                                                '1)))
                                                      _%n154280%_))))))
                                    (if (pair? _%e154281154288%_)
                                        (let ((_%hd154285154304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154281154288%_)))
                                              (_%tl154286154306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154281154288%_))))
                                          (let* ((_%tag154309%_
                                                  _%hd154285154304%_)
                                                 (_%body154311%_
                                                  _%tl154286154306%_))
                                            (_%K154284154301%_
                                             _%body154311%_
                                             _%tag154309%_)))
                                        (_%E154283154292%_))))))
                             (_%splice-vars154224%_
                              (lambda (_%e154231%_)
                                (let _%recur154233%_ ((_%e154235%_ _%e154231%_)
                                                      (_%vars154236%_ '()))
                                  (let* ((_%e154237154244%_ _%e154235%_)
                                         (_%E154239154248%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e154237154244%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K154240154263%_
                                          (lambda (_%body154251%_
                                                   _%tag154252%_)
                                            (let ((_%$e154254%_ _%tag154252%_))
                                              (if (eq? 'var _%$e154254%_)
                                                  (cons _%body154251%_
                                                        _%vars154236%_)
                                                  (if (or (eq? 'cons
                                                               _%$e154254%_)
                                                          (eq? 'splice
                                                               _%$e154254%_))
                                                      (_%recur154233%_
                                                       (cdr _%body154251%_)
                                                       (_%recur154233%_
                                                        (car _%body154251%_)
                                                        _%vars154236%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e154254%_)
                      (eq? 'box _%$e154254%_))
                  (_%recur154233%_ _%body154251%_ _%vars154236%_)
                  _%vars154236%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e154237154244%_)
                                        (let ((_%hd154241154266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154237154244%_)))
                                              (_%tl154242154268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154237154244%_))))
                                          (let* ((_%tag154271%_
                                                  _%hd154241154266%_)
                                                 (_%body154273%_
                                                  _%tl154242154268%_))
                                            (_%K154240154263%_
                                             _%body154273%_
                                             _%tag154271%_)))
                                        (_%E154239154248%_))))))
                             (_%make-body154225%_
                              (lambda (_%vars154227%_)
                                (cons _%K154218%_
                                      (map (lambda (_%mvar154229%_)
                                             (let ((__tmp155424
                                                    (car _%mvar154229%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp155424
                                                _%vars154227%_
                                                _%BUG154221%_)))
                                           _%mvars154217%_)))))
                      (_%recur154222%_
                       _%hd154216%_
                       '()
                       _%target154215%_
                       _%E154219%_
                       _%make-body154225%_))))
                 (_%parse-clause154036%_
                  (lambda (_%hd154108%_ _%ids154109%_)
                    (let _%recur154111%_ ((_%e154113%_ _%hd154108%_)
                                          (_%vars154114%_ '())
                                          (_%depth154115%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e154113%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e154113%_))
                              (values '(any) _%vars154114%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e154113%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx154027%_
                                     _%hd154108%_))
                                  (if (let ((__tmp155425
                                             (lambda (_%id154120%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e154113%_
                                                  _%id154120%_)))))
                                        (declare (not safe))
                                        (__find __tmp155425 _%ids154109%_))
                                      (values (cons 'id _%e154113%_)
                                              _%vars154114%_)
                                      (if (let ((__tmp155426
                                                 (lambda (_%var154123%_)
                                                   (let ((__tmp155427
                                                          (car _%var154123%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e154113%_
                                                      __tmp155427)))))
                                            (declare (not safe))
                                            (__find __tmp155426
                                                    _%vars154114%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx154027%_
                                             _%e154113%_))
                                          (values (cons 'var _%e154113%_)
                                                  (cons (cons _%e154113%_
                                                              _%depth154115%_)
                                                        _%vars154114%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e154113%_))
                              (let* ((_%e154127154134%_ _%e154113%_)
                                     (_%E154129154138%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e154127154134%_))))
                                     (_%E154128154199%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e154127154134%_))
                                            (let ((_%e154130154142%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e154127154134%_))))
                                              (let ((_%hd154131154145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e154130154142%_)))
                                                    (_%tl154132154147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e154130154142%_))))
                                                (let* ((_%hd154150%_
                                                        _%hd154131154145%_)
                                                       (_%rest154152%_
                                                        _%tl154132154147%_)
                                                       (_%make-pair154167%_
                                                        (lambda (_%tag154154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd154155%_
                         _%tl154156%_)
                  (let* ((_%hd-depth154158%_
                          (if (eq? _%tag154154%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth154115%_ '1))
                              _%depth154115%_))
                         (_g155428_
                          (_%recur154111%_
                           _%hd154155%_
                           _%vars154114%_
                           _%hd-depth154158%_)))
                    (begin
                      (let ((_g155429_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g155428_)
                                   (##values-length _g155428_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g155429_ 2)))
                            (error "Context expects 2 values" _g155429_)))
                      (let ((_%hd154160%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g155428_ 0)))
                            (_%vars154161%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g155428_ 1))))
                        (let ((_g155430_
                               (_%recur154111%_
                                _%tl154156%_
                                _%vars154161%_
                                _%depth154115%_)))
                          (begin
                            (let ((_g155431_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g155430_)
                                         (##values-length _g155430_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g155431_ 2)))
                                  (error "Context expects 2 values"
                                         _g155431_)))
                            (let ((_%tl154163%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g155430_ 0)))
                                  (_%vars154164%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g155430_ 1))))
                              (values (cons _%tag154154%_
                                            (cons _%hd154160%_ _%tl154163%_))
                                      _%vars154164%_)))))))))
               (_%e154168154175%_ _%rest154152%_)
               (_%E154170154179%_
                (lambda ()
                  (_%make-pair154167%_ 'cons _%hd154150%_ _%rest154152%_)))
               (_%E154169154195%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e154168154175%_))
                      (let ((_%e154171154183%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e154168154175%_))))
                        (let ((_%hd154172154186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154171154183%_)))
                              (_%tl154173154188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154171154183%_))))
                          (let* ((_%rest-hd154191%_ _%hd154172154186%_)
                                 (_%rest-tl154193%_ _%tl154173154188%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd154191%_))
                                (_%make-pair154167%_
                                 'splice
                                 _%hd154150%_
                                 _%rest-tl154193%_)
                                (_%make-pair154167%_
                                 'cons
                                 _%hd154150%_
                                 _%rest154152%_)))))
                      (_%E154170154179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E154169154195%_))))
                                            (_%E154129154138%_)))))
                                (_%E154128154199%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e154113%_))
                                  (values '(null) _%vars154114%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e154113%_))
                                      (let ((_g155432_
                                             (_%recur154111%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e154113%_)))
                                              _%vars154114%_
                                              _%depth154115%_)))
                                        (begin
                                          (let ((_g155433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g155432_)
                                                       (##values-length
                                                        _g155432_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g155433_ 2)))
                                                (error "Context expects 2 values"
                                                       _g155433_)))
                                          (let ((_%e154205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g155432_ 0)))
                                                (_%vars154206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g155432_
                                                    1))))
                                            (values (cons 'vector _%e154205%_)
                                                    _%vars154206%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e154113%_))
                                          (let ((_g155434_
                                                 (_%recur154111%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e154113%_)))
                                                  _%vars154114%_
                                                  _%depth154115%_)))
                                            (begin
                                              (let ((_g155435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g155434_)
                                                           (##values-length
                                                            _g155434_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g155435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g155435_)))
                                              (let ((_%e154209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g155434_
                                                        0)))
                                                    (_%vars154210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g155434_
                                                        1))))
                                                (values (cons 'box _%e154209%_)
                                                        _%vars154210%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e154113%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e154113%_)))
                                                      _%vars154114%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx154027%_
                                                 _%e154113%_))))))))))))
          (let* ((_%e154037154050%_ _%stx154027%_)
                 (_%E154039154054%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e154037154050%_))))
                 (_%E154038154104%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e154037154050%_))
                        (let ((_%e154040154058%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e154037154050%_))))
                          (let ((_%hd154041154061%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154040154058%_)))
                                (_%tl154042154063%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154040154058%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154042154063%_))
                                (let ((_%e154043154066%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl154042154063%_))))
                                  (let ((_%hd154044154069%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154043154066%_)))
                                        (_%tl154045154071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154043154066%_))))
                                    (let ((_%expr154074%_ _%hd154044154069%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl154045154071%_))
                                          (let ((_%e154046154076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl154045154071%_))))
                                            (let ((_%hd154047154079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e154046154076%_)))
                                                  (_%tl154048154081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e154046154076%_))))
                                              (let* ((_%ids154084%_
                                                      _%hd154047154079%_)
                                                     (_%clauses154086%_
                                                      _%tl154048154081%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids154084%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses154086%_))
                                                        (let* ((_%ids154091%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids154084%_)))
                       (_%clauses154093%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses154086%_)))
                       (_%clause-ids154095%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses154093%_)))
                       (_%E154097%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target154099%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first154101%_
                        (if (null? _%clauses154093%_)
                            _%E154097%_
                            (car _%clause-ids154095%_))))
                  (let ((__tmp155437
                         (let ((__tmp155438
                                (let ((__tmp155440
                                       (let ((__tmp155442
                                              (cons (cons (cons _%E154097%_
                                                                '())
                                                          (cons (let ((__tmp155444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target154099%_ '()))
                              (__tmp155443
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target154099%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp155444 __tmp155443))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp155441
                                              (_%generate-body154033%_
                                               (_%generate-bindings154032%_
                                                _%target154099%_
                                                _%ids154091%_
                                                _%clauses154093%_
                                                _%clause-ids154095%_
                                                _%E154097%_)
                                               (cons _%first154101%_
                                                     (cons _%expr154074%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp155442
                                          __tmp155441)))
                                      (__tmp155439
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx154027%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp155440
                                   __tmp155439))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp155438)))
                        (__tmp155436
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx154027%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp155437 __tmp155436)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx154027%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx154027%_
                                                       _%ids154084%_))))))
                                          (_%E154039154054%_)))))
                                (_%E154039154054%_))))
                        (_%E154039154054%_)))))
            (_%E154038154104%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx154752%_)
        (let* ((_%identifier=?154754%_ 'free-identifier=?)
               (_%unwrap-e154756%_ 'syntax-e)
               (_%wrap-e154758%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx154752%_
           _%identifier=?154754%_
           _%unwrap-e154756%_
           _%wrap-e154758%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx154760%_ _%identifier=?154761%_)
        (let* ((_%unwrap-e154763%_ 'syntax-e) (_%wrap-e154765%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx154760%_
           _%identifier=?154761%_
           _%unwrap-e154763%_
           _%wrap-e154765%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx154767%_ _%identifier=?154768%_ _%unwrap-e154769%_)
        (let ((_%wrap-e154771%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx154767%_
           _%identifier=?154768%_
           _%unwrap-e154769%_
           _%wrap-e154771%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g155445_
        (let ((_g155446_ (let () (declare (not safe)) (##length _g155445_))))
          (cond ((let () (declare (not safe)) (##fx= _g155446_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g155445_))
                ((let () (declare (not safe)) (##fx= _g155446_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g155445_))
                ((let () (declare (not safe)) (##fx= _g155446_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g155445_))
                ((let () (declare (not safe)) (##fx= _g155446_ 4))
                 (apply gx#macro-expand-syntax-case__% _g155445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g155445_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx154024%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx154024%_))
            (let ((__tmp155447
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx154024%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp155447 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd153982%_ . _%rest153983%_)
        (let ((_%len153985%_ (length _%hd153982%_)))
          (let _%lp153987%_ ((_%rest153989%_ _%rest153983%_))
            (let* ((_%rest153990153998%_ _%rest153989%_)
                   (_%else153992154006%_ (lambda () '#!void))
                   (_%K153994154012%_
                    (lambda (_%rest154009%_ _%hd154010%_)
                      (if (let ((__tmp155448 (length _%hd154010%_)))
                            (declare (not safe))
                            (##fx= _%len153985%_ __tmp155448))
                          (_%lp153987%_ _%rest154009%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd154010%_))))))
              (if (pair? _%rest153990153998%_)
                  (let ((_%hd153995154015%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest153990153998%_)))
                        (_%tl153996154017%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest153990153998%_))))
                    (let* ((_%hd154020%_ _%hd153995154015%_)
                           (_%rest154022%_ _%tl153996154017%_))
                      (_%K153994154012%_ _%rest154022%_ _%hd154020%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx153932%_ _%n153933%_)
        (let _%lp153935%_ ((_%rest153938%_ _%stx153932%_) (_%r153940%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest153938%_))
              (let* ((_%g153942153949%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest153938%_)))
                     (_%E153944153953%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g153942153949%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K153945153960%_
                      (lambda (_%rest153956%_ _%hd153957%_)
                        (_%lp153935%_
                         _%rest153956%_
                         (cons _%hd153957%_ _%r153940%_)))))
                (if (pair? _%g153942153949%_)
                    (let ((_%hd153946153963%_
                           (let ()
                             (declare (not safe))
                             (##car _%g153942153949%_)))
                          (_%tl153947153965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g153942153949%_))))
                      (let* ((_%hd153968%_ _%hd153946153963%_)
                             (_%rest153970%_ _%tl153947153965%_))
                        (_%K153945153960%_ _%rest153970%_ _%hd153968%_)))
                    (_%E153944153953%_)))
              (let _%lp153972%_ ((_%n153974%_ _%n153933%_)
                                 (_%l153975%_ _%r153940%_)
                                 (_%r153977%_ _%rest153938%_))
                (if (null? _%l153975%_)
                    (values _%l153975%_ _%r153977%_)
                    (if (fxpositive? _%n153974%_)
                        (_%lp153972%_
                         (let () (declare (not safe)) (##fx- _%n153974%_ '1))
                         (cdr _%l153975%_)
                         (cons (car _%l153975%_) _%r153977%_))
                        (values (reverse! _%l153975%_) _%r153977%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx153882%_ _%n153883%_)
        (let _%lp153885%_ ((_%rest153888%_ _%stx153882%_) (_%r153890%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest153888%_))
              (let* ((_%g153892153899%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest153888%_)))
                     (_%E153894153903%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g153892153899%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K153895153910%_
                      (lambda (_%rest153906%_ _%hd153907%_)
                        (_%lp153885%_
                         _%rest153906%_
                         (cons _%hd153907%_ _%r153890%_)))))
                (if (pair? _%g153892153899%_)
                    (let ((_%hd153896153913%_
                           (let ()
                             (declare (not safe))
                             (##car _%g153892153899%_)))
                          (_%tl153897153915%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g153892153899%_))))
                      (let* ((_%hd153918%_ _%hd153896153913%_)
                             (_%rest153920%_ _%tl153897153915%_))
                        (_%K153895153910%_ _%rest153920%_ _%hd153918%_)))
                    (_%E153894153903%_)))
              (let _%lp153922%_ ((_%n153924%_ _%n153883%_)
                                 (_%l153925%_ _%r153890%_)
                                 (_%r153927%_ _%rest153888%_))
                (if (null? _%l153925%_)
                    (vector _%l153925%_ _%r153927%_)
                    (if (fxpositive? _%n153924%_)
                        (_%lp153922%_
                         (let () (declare (not safe)) (##fx- _%n153924%_ '1))
                         (cdr _%l153925%_)
                         (cons (car _%l153925%_) _%r153927%_))
                        (vector (reverse! _%l153925%_) _%r153927%_))))))))))
