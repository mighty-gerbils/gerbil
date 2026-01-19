(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1768863413)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp144853 (list gx#expander::t))
            (__tmp144852 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp144853
         '(id depth)
         __tmp144852
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args144849%_
        (apply make-instance gx#syntax-pattern::t _%$args144849%_)))
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
      (lambda (_%self144835%_ _%stx144836%_)
        (let ((_%self144839%_ _%self144835%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx144836%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx144302%_)
        (letrec ((_%generate144304%_
                  (lambda (_%e144544%_)
                    (letrec ((_%BUG144546%_
                              (lambda (_%q144711%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx144302%_
                                         _%e144544%_
                                         _%q144711%_))))
                             (_%local-pattern-e144547%_
                              (lambda (_%pat144709%_)
                                (let ((__tmp144854
                                       (##structure-ref
                                        _%pat144709%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp144854))))
                             (_%getvar144548%_
                              (lambda (_%q144706%_ _%vars144707%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q144706%_
                                   _%vars144707%_
                                   _%BUG144546%_))))
                             (_%getarg144549%_
                              (lambda (_%arg144672%_ _%vars144673%_)
                                (let* ((_%arg144674144681%_ _%arg144672%_)
                                       (_%E144676144685%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg144674144681%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K144677144694%_
                                        (lambda (_%e144688%_ _%tag144689%_)
                                          (let ((_%$e144691%_ _%tag144689%_))
                                            (if (eq? 'ref _%$e144691%_)
                                                (_%getvar144548%_
                                                 _%e144688%_
                                                 _%vars144673%_)
                                                (if (eq? 'pattern _%$e144691%_)
                                                    (_%local-pattern-e144547%_
                                                     _%e144688%_)
                                                    (_%BUG144546%_
                                                     _%arg144672%_)))))))
                                  (if (pair? _%arg144674144681%_)
                                      (let ((_%hd144678144697%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg144674144681%_)))
                                            (_%tl144679144699%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg144674144681%_))))
                                        (let* ((_%tag144702%_
                                                _%hd144678144697%_)
                                               (_%e144704%_
                                                _%tl144679144699%_))
                                          (_%K144677144694%_
                                           _%e144704%_
                                           _%tag144702%_)))
                                      (_%E144676144685%_))))))
                      (let _%recur144551%_ ((_%e144553%_ _%e144544%_)
                                            (_%vars144554%_ '()))
                        (let* ((_%e144555144562%_ _%e144553%_)
                               (_%E144557144566%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e144555144562%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K144558144660%_
                                (lambda (_%body144569%_ _%tag144570%_)
                                  (let ((_%$e144572%_ _%tag144570%_))
                                    (if (eq? 'datum _%$e144572%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body144569%_))
                                        (if (eq? 'term _%$e144572%_)
                                            (let ((_%id144575%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body144569%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id144575%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks144578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id144575%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks144578%_)
                                                        (let ((__tmp144855
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body144569%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp144855))
                (let ((__tmp144857
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body144569%_)))
                      (__tmp144856
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body144569%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp144857
                   __tmp144856
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id144575%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body144569%_))
                                                      (_%BUG144546%_
                                                       _%e144553%_))))
                                            (if (eq? 'pattern _%$e144572%_)
                                                (_%local-pattern-e144547%_
                                                 _%body144569%_)
                                                (if (eq? 'ref _%$e144572%_)
                                                    (_%getvar144548%_
                                                     _%body144569%_
                                                     _%vars144554%_)
                                                    (if (eq? 'cons
                                                             _%$e144572%_)
                                                        (let ((__tmp144859
                                                               (_%recur144551%_
                                                                (car _%body144569%_)
                                                                _%vars144554%_))
                                                              (__tmp144858
                                                               (_%recur144551%_
                                                                (cdr _%body144569%_)
                                                                _%vars144554%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp144859
                                                           __tmp144858))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e144572%_)
                    (let ((__tmp144860
                           (_%recur144551%_ _%body144569%_ _%vars144554%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp144860))
                    (if (eq? 'box _%$e144572%_)
                        (let ((__tmp144861
                               (_%recur144551%_
                                _%body144569%_
                                _%vars144554%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp144861))
                        (if (eq? 'splice _%$e144572%_)
                            (let* ((_%body144581144592%_ _%body144569%_)
                                   (_%E144583144596%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body144581144592%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K144584144634%_
                                    (lambda (_%args144599%_
                                             _%iv144600%_
                                             _%hd144601%_
                                             _%depth144602%_)
                                      (let* ((_%targets144608%_
                                              (map (lambda (_%g144603144605%_)
                                                     (_%getarg144549%_
                                                      _%g144603144605%_
                                                      _%vars144554%_))
                                                   _%args144599%_))
                                             (_%fold-in144610%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args144599%_)))
                                             (_%fold-out144612%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args144614%_
                                              (let ((__tmp144862
                                                     (cons _%fold-out144612%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp144862
                                                 _%fold-in144610%_)))
                                             (_%lambda-body144631%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth144602%_ '1))
                                                  (let ((_%r-args144622%_
                                                         (map (lambda (_%arg144616%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg144616%_)))
                      _%args144599%_))
                (_%r-vars144623%_
                 (let ((__tmp144863
                        (lambda (_%arg144618%_ _%var144619%_ _%r144620%_)
                          (cons (cons (cdr _%arg144618%_) _%var144619%_)
                                _%r144620%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp144863
                    _%vars144554%_
                    _%args144599%_
                    _%fold-in144610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur144551%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth144602%_ '1))
                         (cons _%hd144601%_
                               (cons (cons 'var _%fold-out144612%_)
                                     _%r-args144622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars144623%_))
                                                  (let* ((_%hd-vars144629%_
                                                          (let ((__tmp144864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg144625%_ _%var144626%_ _%r144627%_)
                           (cons (cons (cdr _%arg144625%_) _%var144626%_)
                                 _%r144627%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp144864
                     _%vars144554%_
                     _%args144599%_
                     _%fold-in144610%_)))
                 (__tmp144865
                  (_%recur144551%_ _%hd144601%_ _%hd-vars144629%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp144865
                                                     _%fold-out144612%_)))))
                                        (let ((__tmp144869
                                               (if (let ((__tmp144870
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets144608%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp144870 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets144608%_))
                                                   '#!void))
                                              (__tmp144866
                                               (let ((__tmp144868
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args144614%_
                                                         _%lambda-body144631%_)))
                                                     (__tmp144867
                                                      (_%recur144551%_
                                                       _%iv144600%_
                                                       _%vars144554%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp144868
                                                  __tmp144867
                                                  _%targets144608%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp144869
                                           __tmp144866))))))
                              (if (pair? _%body144581144592%_)
                                  (let ((_%hd144585144637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body144581144592%_)))
                                        (_%tl144586144639%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body144581144592%_))))
                                    (let ((_%depth144642%_ _%hd144585144637%_))
                                      (if (pair? _%tl144586144639%_)
                                          (let ((_%hd144587144644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl144586144639%_)))
                                                (_%tl144588144646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144586144639%_))))
                                            (let ((_%hd144649%_
                                                   _%hd144587144644%_))
                                              (if (pair? _%tl144588144646%_)
                                                  (let ((_%hd144589144651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144588144646%_)))
                                                        (_%tl144590144653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144588144646%_))))
                                                    (let* ((_%iv144656%_
                                                            _%hd144589144651%_)
                                                           (_%args144658%_
                                                            _%tl144590144653%_))
                                                      (_%K144584144634%_
                                                       _%args144658%_
                                                       _%iv144656%_
                                                       _%hd144649%_
                                                       _%depth144642%_)))
                                                  (_%E144583144596%_))))
                                          (_%E144583144596%_))))
                                  (_%E144583144596%_)))
                            (if (eq? 'var _%$e144572%_)
                                _%body144569%_
                                (_%BUG144546%_ _%e144553%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e144555144562%_)
                              (let ((_%hd144559144663%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144555144562%_)))
                                    (_%tl144560144665%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144555144562%_))))
                                (let* ((_%tag144668%_ _%hd144559144663%_)
                                       (_%body144670%_ _%tl144560144665%_))
                                  (_%K144558144660%_
                                   _%body144670%_
                                   _%tag144668%_)))
                              (_%E144557144566%_)))))))
                 (_%parse144305%_
                  (lambda (_%e144346%_)
                    (letrec ((_%make-cons144348%_
                              (lambda (_%hd144536%_ _%tl144537%_)
                                (let ((_g144871_ _%hd144536%_)
                                      (_g144873_ _%tl144537%_))
                                  (begin
                                    (let ((_g144872_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144871_)
                                                 (##values-length _g144871_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144872_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144872_)))
                                    (let ((_g144874_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144873_)
                                                 (##values-length _g144873_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144874_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144874_)))
                                    (let ((_%hd-e144539%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144871_ 0)))
                                          (_%hd-vars144540%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144871_ 1))))
                                      (let ((_%tl-e144541%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144873_ 0)))
                                            (_%tl-vars144542%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144873_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e144539%_
                                                            _%tl-e144541%_))
                                                (append _%hd-vars144540%_
                                                        _%tl-vars144542%_))))))))
                             (_%make-splice144349%_
                              (lambda (_%where144472%_
                                       _%depth144473%_
                                       _%hd144474%_
                                       _%tl144475%_)
                                (let ((_g144875_ _%hd144474%_)
                                      (_g144877_ _%tl144475%_))
                                  (begin
                                    (let ((_g144876_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144875_)
                                                 (##values-length _g144875_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144876_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144876_)))
                                    (let ((_g144878_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144877_)
                                                 (##values-length _g144877_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144878_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144878_)))
                                    (let ((_%hd-e144477%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144875_ 0)))
                                          (_%hd-vars144478%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144875_ 1))))
                                      (let ((_%tl-e144479%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144877_ 0)))
                                            (_%tl-vars144480%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144877_ 1))))
                                        (let _%lp144482%_ ((_%rest144484%_
                                                            _%hd-vars144478%_)
                                                           (_%targets144485%_
                                                            '())
                                                           (_%vars144486%_
                                                            _%tl-vars144480%_))
                                          (let* ((_%rest144487144497%_
                                                  _%rest144484%_)
                                                 (_%else144489144505%_
                                                  (lambda ()
                                                    (if (null? _%targets144485%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx144302%_
                                                           _%where144472%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth144473%_
                                    (cons _%hd-e144477%_
                                          (cons _%tl-e144479%_
                                                _%targets144485%_))))
                        _%vars144486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K144491144517%_
                                                  (lambda (_%rest144508%_
                                                           _%hd-pat144509%_
                                                           _%hd-depth*144510%_)
                                                    (let ((_%hd-depth144512%_
                                                           (fx- _%hd-depth*144510%_
                                                                _%depth144473%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth144512%_))
                                                          (_%lp144482%_
                                                           _%rest144508%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat144509%_)
                         _%targets144485%_)
                   (cons (cons _%hd-depth144512%_ _%hd-pat144509%_)
                         _%vars144486%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth144512%_))
                      (_%lp144482%_
                       _%rest144508%_
                       (cons (cons 'pattern _%hd-pat144509%_)
                             _%targets144485%_)
                       _%vars144486%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx144302%_
                         _%where144472%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest144487144497%_)
                                                (let ((_%hd144492144520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest144487144497%_)))
                                                      (_%tl144493144522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest144487144497%_))))
                                                  (if (pair? _%hd144492144520%_)
                                                      (let ((_%hd144494144525%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd144492144520%_)))
                    (_%tl144495144527%_
                     (let () (declare (not safe)) (##cdr _%hd144492144520%_))))
                (let* ((_%hd-depth*144530%_ _%hd144494144525%_)
                       (_%hd-pat144532%_ _%tl144495144527%_)
                       (_%rest144534%_ _%tl144493144522%_))
                  (_%K144491144517%_
                   _%rest144534%_
                   _%hd-pat144532%_
                   _%hd-depth*144530%_)))
              (_%else144489144505%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144489144505%_))))))))))
                             (_%recur144350%_
                              (lambda (_%e144355%_ _%is-e?144356%_)
                                (if (_%is-e?144356%_ _%e144355%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx144302%_))
                                    (if (gx#syntax-local-pattern? _%e144355%_)
                                        (let* ((_%pat144360%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e144355%_)))
                                               (_%depth144362%_
                                                (##structure-ref
                                                 _%pat144360%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth144362%_)
                                              (values (cons 'ref _%pat144360%_)
                                                      (cons (cons _%depth144362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat144360%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat144360%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e144355%_))
                                            (values (cons 'term _%e144355%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e144355%_))
                                                (let* ((_%e144366144373%_
                                                        _%e144355%_)
                                                       (_%E144368144377%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e144366144373%_))))
                                                       (_%E144367144459%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e144366144373%_))
                      (let ((_%e144369144381%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e144366144373%_))))
                        (let ((_%hd144370144384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144369144381%_)))
                              (_%tl144371144386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144369144381%_))))
                          (let* ((_%hd144389%_ _%hd144370144384%_)
                                 (_%rest144391%_ _%tl144371144386%_))
                            (if (_%is-e?144356%_ _%hd144389%_)
                                (let* ((_%e144392144399%_ _%rest144391%_)
                                       (_%E144394144403%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx144302%_
                                             _%e144355%_))))
                                       (_%E144393144417%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e144392144399%_))
                                              (let ((_%e144395144407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e144392144399%_))))
                                                (let ((_%hd144396144410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144395144407%_)))
                                                      (_%tl144397144412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144395144407%_))))
                                                  (let ((_%rest144415%_
                                                         _%hd144396144410%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144397144412%_))
                                                        (_%recur144350%_
                                                         _%rest144415%_
                                                         false)
                                                        (_%E144394144403%_)))))
                                              (_%E144394144403%_)))))
                                  (_%E144393144417%_))
                                (let _%lp144421%_ ((_%rest144423%_
                                                    _%rest144391%_)
                                                   (_%depth144424%_ '0))
                                  (let* ((_%e144425144432%_ _%rest144423%_)
                                         (_%E144427144436%_
                                          (lambda ()
                                            (if (fxpositive? _%depth144424%_)
                                                (_%make-splice144349%_
                                                 _%e144355%_
                                                 _%depth144424%_
                                                 (_%recur144350%_
                                                  _%hd144389%_
                                                  _%is-e?144356%_)
                                                 (_%recur144350%_
                                                  _%rest144423%_
                                                  _%is-e?144356%_))
                                                (_%make-cons144348%_
                                                 (_%recur144350%_
                                                  _%hd144389%_
                                                  _%is-e?144356%_)
                                                 (_%recur144350%_
                                                  _%rest144423%_
                                                  _%is-e?144356%_)))))
                                         (_%E144426144455%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e144425144432%_))
                                                (let ((_%e144428144440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e144425144432%_))))
                                                  (let ((_%hd144429144443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144428144440%_)))
                                                        (_%tl144430144445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144428144440%_))))
                                                    (let* ((_%rest-hd144448%_
                                                            _%hd144429144443%_)
                                                           (_%rest-tl144450%_
                                                            _%tl144430144445%_))
                                                      (if (_%is-e?144356%_
                                                           _%rest-hd144448%_)
                                                          (_%lp144421%_
                                                           _%rest-tl144450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth144424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth144424%_)
                      (_%make-splice144349%_
                       _%e144355%_
                       _%depth144424%_
                       (_%recur144350%_ _%hd144389%_ _%is-e?144356%_)
                       (_%recur144350%_ _%rest144423%_ _%is-e?144356%_))
                      (_%make-cons144348%_
                       (_%recur144350%_ _%hd144389%_ _%is-e?144356%_)
                       (_%recur144350%_ _%rest144423%_ _%is-e?144356%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E144427144436%_)))))
                                    (_%E144426144455%_)))))))
                      (_%E144368144377%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E144367144459%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e144355%_))
                                                    (let ((_g144879_
                                                           (_%recur144350%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e144355%_)))
                    _%is-e?144356%_)))
              (begin
                (let ((_g144880_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g144879_)
                             (##values-length _g144879_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g144880_ 2)))
                      (error "Context expects 2 values" _g144880_)))
                (let ((_%e144464%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g144879_ 0)))
                      (_%vars144465%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g144879_ 1))))
                  (values (cons 'vector _%e144464%_) _%vars144465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e144355%_))
                                                        (let ((_g144881_
                                                               (_%recur144350%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e144355%_)))
                        _%is-e?144356%_)))
                  (begin
                    (let ((_g144882_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g144881_)
                                 (##values-length _g144881_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g144882_ 2)))
                          (error "Context expects 2 values" _g144882_)))
                    (let ((_%e144468%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g144881_ 0)))
                          (_%vars144469%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g144881_ 1))))
                      (values (cons 'box _%e144468%_) _%vars144469%_))))
                (values (cons 'datum _%e144355%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g144883_
                             (_%recur144350%_ _%e144346%_ gx#ellipsis?)))
                        (begin
                          (let ((_g144884_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g144883_)
                                       (##values-length _g144883_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g144884_ 2)))
                                (error "Context expects 2 values" _g144884_)))
                          (let ((_%tree144352%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g144883_ 0)))
                                (_%vars144353%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g144883_ 1))))
                            (if (null? _%vars144353%_)
                                _%tree144352%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx144302%_
                                   _%vars144353%_))))))))))
          (let* ((_%e144306144316%_ _%stx144302%_)
                 (_%E144308144320%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx144302%_))))
                 (_%E144307144342%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e144306144316%_))
                        (let ((_%e144309144324%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e144306144316%_))))
                          (let ((_%hd144310144327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144309144324%_)))
                                (_%tl144311144329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144309144324%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144311144329%_))
                                (let ((_%e144312144332%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl144311144329%_))))
                                  (let ((_%hd144313144335%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144312144332%_)))
                                        (_%tl144314144337%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144312144332%_))))
                                    (let ((_%form144340%_ _%hd144313144335%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144314144337%_))
                                          (let ((__tmp144886
                                                 (_%generate144304%_
                                                  (_%parse144305%_
                                                   _%form144340%_)))
                                                (__tmp144885
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx144302%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp144886
                                             __tmp144885))
                                          (_%E144308144320%_)))))
                                (_%E144308144320%_))))
                        (_%E144308144320%_)))))
            (_%E144307144342%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx143551%_
               _%identifier=?143552%_
               _%unwrap-e143553%_
               _%wrap-e143554%_)
        (letrec ((_%generate-bindings143556%_
                  (lambda (_%target144166%_
                           _%ids144167%_
                           _%clauses144168%_
                           _%clause-ids144169%_
                           _%E144170%_)
                    (letrec ((_%generate1144172%_
                              (lambda (_%clause144269%_
                                       _%clause-id144270%_
                                       _%E144271%_)
                                (cons (cons _%clause-id144270%_ '())
                                      (cons (let ((__tmp144888
                                                   (cons _%target144166%_ '()))
                                                  (__tmp144887
                                                   (_%generate-clause143558%_
                                                    _%target144166%_
                                                    _%ids144167%_
                                                    _%clause144269%_
                                                    _%E144271%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp144888
                                               __tmp144887))
                                            '())))))
                      (let _%lp144174%_ ((_%rest144176%_ _%clauses144168%_)
                                         (_%rest-ids144177%_
                                          _%clause-ids144169%_)
                                         (_%bindings144178%_ '()))
                        (let* ((_%rest144179144187%_ _%rest144176%_)
                               (_%else144181144195%_
                                (lambda () _%bindings144178%_))
                               (_%K144183144257%_
                                (lambda (_%rest144198%_ _%clause144199%_)
                                  (let* ((_%rest-ids144200144207%_
                                          _%rest-ids144177%_)
                                         (_%E144202144211%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids144200144207%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K144203144245%_
                                          (lambda (_%rest-ids144214%_
                                                   _%clause-id144215%_)
                                            (let* ((_%rest-ids144216144224%_
                                                    _%rest-ids144214%_)
                                                   (_%else144218144232%_
                                                    (lambda ()
                                                      (cons (_%generate1144172%_
                                                             _%clause144199%_
                                                             _%clause-id144215%_
                                                             _%E144170%_)
                                                            _%bindings144178%_)))
                                                   (_%K144220144237%_
                                                    (lambda (_%next-clause-id144235%_)
                                                      (_%lp144174%_
                                                       _%rest144198%_
                                                       _%rest-ids144214%_
                                                       (cons (_%generate1144172%_
                                                              _%clause144199%_
                                                              _%clause-id144215%_
                                                              _%next-clause-id144235%_)
                                                             _%bindings144178%_)))))
                                              (if (pair? _%rest-ids144216144224%_)
                                                  (let* ((_%hd144221144240%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids144216144224%_)))
                                                         (_%next-clause-id144243%_
                                                          _%hd144221144240%_))
                                                    (_%K144220144237%_
                                                     _%next-clause-id144243%_))
                                                  (_%else144218144232%_))))))
                                    (if (pair? _%rest-ids144200144207%_)
                                        (let ((_%hd144204144248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids144200144207%_)))
                                              (_%tl144205144250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids144200144207%_))))
                                          (let* ((_%clause-id144253%_
                                                  _%hd144204144248%_)
                                                 (_%rest-ids144255%_
                                                  _%tl144205144250%_))
                                            (_%K144203144245%_
                                             _%rest-ids144255%_
                                             _%clause-id144253%_)))
                                        (_%E144202144211%_))))))
                          (if (pair? _%rest144179144187%_)
                              (let ((_%hd144184144260%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest144179144187%_)))
                                    (_%tl144185144262%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest144179144187%_))))
                                (let* ((_%clause144265%_ _%hd144184144260%_)
                                       (_%rest144267%_ _%tl144185144262%_))
                                  (_%K144183144257%_
                                   _%rest144267%_
                                   _%clause144265%_)))
                              (_%else144181144195%_)))))))
                 (_%generate-body143557%_
                  (lambda (_%bindings144126%_ _%body144127%_)
                    (let _%recur144129%_ ((_%rest144131%_ _%bindings144126%_))
                      (let* ((_%rest144132144140%_ _%rest144131%_)
                             (_%else144134144148%_ (lambda () _%body144127%_))
                             (_%K144136144154%_
                              (lambda (_%rest144151%_ _%hd144152%_)
                                (let ((__tmp144890 (cons _%hd144152%_ '()))
                                      (__tmp144889
                                       (_%recur144129%_ _%rest144151%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp144890
                                   __tmp144889)))))
                        (if (pair? _%rest144132144140%_)
                            (let ((_%hd144137144157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144132144140%_)))
                                  (_%tl144138144159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144132144140%_))))
                              (let* ((_%hd144162%_ _%hd144137144157%_)
                                     (_%rest144164%_ _%tl144138144159%_))
                                (_%K144136144154%_
                                 _%rest144164%_
                                 _%hd144162%_)))
                            (_%else144134144148%_))))))
                 (_%generate-clause143558%_
                  (lambda (_%target143989%_
                           _%ids143990%_
                           _%clause143991%_
                           _%E143992%_)
                    (letrec ((_%generate1143994%_
                              (lambda (_%hd144081%_
                                       _%fender144082%_
                                       _%body144083%_)
                                (let ((_g144891_
                                       (_%parse-clause143560%_
                                        _%hd144081%_
                                        _%ids143990%_)))
                                  (begin
                                    (let ((_g144892_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144891_)
                                                 (##values-length _g144891_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144892_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144892_)))
                                    (let ((_%e144085%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144891_ 0)))
                                          (_%mvars144086%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144891_ 1))))
                                      (let* ((_%pvars144088%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars144086%_))))
                                             (_%E144090%_
                                              (cons _%E143992%_
                                                    (cons _%target143989%_
                                                          '())))
                                             (_%K144123%_
                                              (let ((__tmp144893
                                                     (let ((__tmp144895
                                                            (map (lambda (_%mvar144092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar144093%_)
                           (let* ((_%mvar144094144101%_ _%mvar144092%_)
                                  (_%E144096144105%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar144094144101%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K144097144111%_
                                   (lambda (_%depth144108%_ _%id144109%_)
                                     (cons _%id144109%_
                                           (cons (let ((__tmp144897
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id144109%_)))
                                                       (__tmp144896
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar144093%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp144897
                                                    __tmp144896
                                                    _%depth144108%_))
                                                 '())))))
                             (if (pair? _%mvar144094144101%_)
                                 (let ((_%hd144098144114%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar144094144101%_)))
                                       (_%tl144099144116%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar144094144101%_))))
                                   (let* ((_%id144119%_ _%hd144098144114%_)
                                          (_%depth144121%_ _%tl144099144116%_))
                                     (_%K144097144111%_
                                      _%depth144121%_
                                      _%id144119%_)))
                                 (_%E144096144105%_))))
                         _%mvars144086%_
                         _%pvars144088%_))
                   (__tmp144894
                    (if (eq? _%fender144082%_ '#t)
                        _%body144083%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender144082%_
                           _%body144083%_
                           _%E144090%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp144895 __tmp144894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars144088%_
                                                 __tmp144893))))
                                        (_%generate-match143559%_
                                         _%hd144081%_
                                         _%target143989%_
                                         _%e144085%_
                                         _%mvars144086%_
                                         _%K144123%_
                                         _%E144090%_))))))))
                      (let* ((_%e143995144015%_ _%clause143991%_)
                             (_%E144004144019%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e143995144015%_))))
                             (_%E143997144053%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e143995144015%_))
                                    (let ((_%e144005144023%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e143995144015%_))))
                                      (let ((_%hd144006144026%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144005144023%_)))
                                            (_%tl144007144028%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144005144023%_))))
                                        (let ((_%hd144031%_
                                               _%hd144006144026%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144007144028%_))
                                              (let ((_%e144008144033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144007144028%_))))
                                                (let ((_%hd144009144036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144008144033%_)))
                                                      (_%tl144010144038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144008144033%_))))
                                                  (let ((_%fender144041%_
                                                         _%hd144009144036%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144010144038%_))
                                                        (let ((_%e144011144043%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl144010144038%_))))
                  (let ((_%hd144012144046%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144011144043%_)))
                        (_%tl144013144048%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144011144043%_))))
                    (let ((_%body144051%_ _%hd144012144046%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144013144048%_))
                          (_%generate1143994%_
                           _%hd144031%_
                           _%fender144041%_
                           _%body144051%_)
                          (_%E144004144019%_)))))
                (_%E144004144019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E144004144019%_)))))
                                    (_%E144004144019%_))))
                             (_%E143996144077%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e143995144015%_))
                                    (let ((_%e143998144057%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e143995144015%_))))
                                      (let ((_%hd143999144060%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143998144057%_)))
                                            (_%tl144000144062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143998144057%_))))
                                        (let ((_%hd144065%_
                                               _%hd143999144060%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144000144062%_))
                                              (let ((_%e144001144067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144000144062%_))))
                                                (let ((_%hd144002144070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144001144067%_)))
                                                      (_%tl144003144072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144001144067%_))))
                                                  (let ((_%body144075%_
                                                         _%hd144002144070%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144003144072%_))
                                                        (_%generate1143994%_
                                                         _%hd144065%_
                                                         '#t
                                                         _%body144075%_)
                                                        (_%E143997144053%_)))))
                                              (_%E143997144053%_)))))
                                    (_%E143997144053%_)))))
                        (_%E143996144077%_)))))
                 (_%generate-match143559%_
                  (lambda (_%where143738%_
                           _%target143739%_
                           _%hd143740%_
                           _%mvars143741%_
                           _%K143742%_
                           _%E143743%_)
                    (letrec ((_%BUG143745%_
                              (lambda (_%q143987%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx143551%_
                                         _%hd143740%_
                                         _%q143987%_))))
                             (_%recur143746%_
                              (lambda (_%e143837%_
                                       _%vars143838%_
                                       _%target143839%_
                                       _%E143840%_
                                       _%k143841%_)
                                (let* ((_%e143842143849%_ _%e143837%_)
                                       (_%E143844143853%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e143842143849%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K143845143975%_
                                        (lambda (_%body143856%_ _%tag143857%_)
                                          (let ((_%$e143859%_ _%tag143857%_))
                                            (if (eq? 'any _%$e143859%_)
                                                (_%k143841%_ _%vars143838%_)
                                                (if (eq? 'id _%$e143859%_)
                                                    (let ((__tmp144902
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target143839%_)))
                                                          (__tmp144898
                                                           (let ((__tmp144900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp144901
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e143554%_
                                    _%body143856%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?143552%_
                             __tmp144901
                             _%target143839%_)))
                         (__tmp144899 (_%k143841%_ _%vars143838%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp144900 __tmp144899 _%E143840%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp144902 __tmp144898 _%E143840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e143859%_)
                                                        (_%k143841%_
                                                         (cons (cons _%body143856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target143839%_)
                       _%vars143838%_))
                (if (eq? 'cons _%$e143859%_)
                    (let ((_%$e143862%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd143863%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl143864%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp144908
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target143839%_)))
                            (__tmp144903
                             (let ((__tmp144907
                                    (cons (cons (cons _%$e143862%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e143553%_
                                                         _%target143839%_))
                                                      '()))
                                          '()))
                                   (__tmp144904
                                    (let ((__tmp144906
                                           (cons (cons (cons _%$hd143863%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e143862%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl143864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e143862%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp144905
                                           (let* ((_%body143865143872%_
                                                   _%body143856%_)
                                                  (_%E143867143876%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body143865143872%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K143868143884%_
                                                   (lambda (_%tl143879%_
                                                            _%hd143880%_)
                                                     (_%recur143746%_
                                                      _%hd143880%_
                                                      _%vars143838%_
                                                      _%$hd143863%_
                                                      _%E143840%_
                                                      (lambda (_%vars143882%_)
                                                        (_%recur143746%_
                                                         _%tl143879%_
                                                         _%vars143882%_
                                                         _%$tl143864%_
                                                         _%E143840%_
                                                         _%k143841%_))))))
                                             (if (pair? _%body143865143872%_)
                                                 (let ((_%hd143869143887%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body143865143872%_)))
                                                       (_%tl143870143889%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body143865143872%_))))
                                                   (let* ((_%hd143892%_
                                                           _%hd143869143887%_)
                                                          (_%tl143894%_
                                                           _%tl143870143889%_))
                                                     (_%K143868143884%_
                                                      _%tl143894%_
                                                      _%hd143892%_)))
                                                 (_%E143867143876%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp144906
                                       __tmp144905))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp144907
                                __tmp144904))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp144908
                         __tmp144903
                         _%E143840%_)))
                    (if (eq? 'splice _%$e143859%_)
                        (let* ((_%body143895143902%_ _%body143856%_)
                               (_%E143897143906%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body143895143902%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K143898143957%_
                                (lambda (_%tl143909%_ _%hd143910%_)
                                  (let* ((_%rlen143912%_
                                          (_%splice-rlen143747%_ _%tl143909%_))
                                         (_%$target143914%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd143916%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl143918%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp143920%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e143922%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd143924%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl143926%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars143928%_
                                          (_%splice-vars143748%_ _%hd143910%_))
                                         (_%lvars143930%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars143928%_)))
                                         (_%tlvars143932%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars143928%_)))
                                         (_%linit143936%_
                                          (map (lambda (_%var143934%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars143930%_)))
                                    (letrec ((_%make-loop143939%_
                                              (lambda (_%vars143943%_)
                                                (let ((__tmp144910
                                                       (cons (cons (cons _%$lp143920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp144923
                                        (cons _%$hd143916%_ _%lvars143930%_))
                                       (__tmp144911
                                        (let ((__tmp144922
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd143916%_)))
                                              (__tmp144916
                                               (let ((__tmp144921
                                                      (cons (cons (cons _%$lp-e143922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e143553%_
                                   _%$hd143916%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144917
                                                      (let ((__tmp144920
                                                             (cons (cons (cons _%$lp-hd143924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e143922%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl143926%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e143922%_))
                                             '()))
                                 '())))
                    (__tmp144918
                     (_%recur143746%_
                      _%hd143910%_
                      '()
                      _%$lp-hd143924%_
                      _%E143840%_
                      (lambda (_%hdvars143945%_)
                        (cons _%$lp143920%_
                              (cons _%$lp-tl143926%_
                                    (map (lambda (_%svar143947%_
                                                  _%lvar143948%_)
                                           (let ((__tmp144919
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar143947%_
                                                     _%hdvars143945%_
                                                     _%BUG143745%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp144919
                                              _%lvar143948%_)))
                                         _%svars143928%_
                                         _%lvars143930%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp144920 __tmp144918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp144921
                                                  __tmp144917)))
                                              (__tmp144912
                                               (let ((__tmp144915
                                                      (map (lambda (_%lvar143950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar143951%_)
                     (cons (cons _%tlvar143951%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar143950%_))
                                 '())))
                   _%lvars143930%_
                   _%tlvars143932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144913
                                                      (_%k143841%_
                                                       (let ((__tmp144914
                                                              (lambda (_%svar143953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar143954%_
                               _%r143955%_)
                        (cons (cons _%svar143953%_ _%tlvar143954%_)
                              _%r143955%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp144914
                  _%vars143943%_
                  _%svars143928%_
                  _%tlvars143932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp144915
                                                  __tmp144913))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp144922
                                           __tmp144916
                                           __tmp144912))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp144923
                                    __tmp144911))
                                 '()))
                     '()))
              (__tmp144909
               (cons _%$lp143920%_ (cons _%$target143914%_ _%linit143936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp144910
                                                   __tmp144909)))))
                                      (let ((_%body143941%_
                                             (let ((__tmp144925
                                                    (cons (cons (cons _%$target143914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl143918%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target143839%_
                                 _%rlen143912%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp144924
                                                    (_%recur143746%_
                                                     _%tl143909%_
                                                     _%vars143838%_
                                                     _%$tl143918%_
                                                     _%E143840%_
                                                     _%make-loop143939%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp144925
                                                __tmp144924))))
                                        (let ((__tmp144929
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target143839%_)))
                                              (__tmp144926
                                               (if (zero? _%rlen143912%_)
                                                   _%body143941%_
                                                   (let ((__tmp144927
                                                          (let ((__tmp144928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target143839%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp144928 _%rlen143912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp144927
                                                      _%body143941%_
                                                      _%E143840%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp144929
                                           __tmp144926
                                           _%E143840%_))))))))
                          (if (pair? _%body143895143902%_)
                              (let ((_%hd143899143960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body143895143902%_)))
                                    (_%tl143900143962%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body143895143902%_))))
                                (let* ((_%hd143965%_ _%hd143899143960%_)
                                       (_%tl143967%_ _%tl143900143962%_))
                                  (_%K143898143957%_
                                   _%tl143967%_
                                   _%hd143965%_)))
                              (_%E143897143906%_)))
                        (if (eq? 'null _%$e143859%_)
                            (let ((__tmp144931
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target143839%_)))
                                  (__tmp144930 (_%k143841%_ _%vars143838%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp144931
                               __tmp144930
                               _%E143840%_))
                            (if (eq? 'vector _%$e143859%_)
                                (let ((_%$e143969%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp144936
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target143839%_)))
                                        (__tmp144932
                                         (let ((__tmp144934
                                                (cons (cons (cons _%$e143969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp144935
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e143553%_
                                    _%target143839%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp144935))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp144933
                                                (_%recur143746%_
                                                 _%body143856%_
                                                 _%vars143838%_
                                                 _%$e143969%_
                                                 _%E143840%_
                                                 _%k143841%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp144934
                                            __tmp144933))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp144936
                                     __tmp144932
                                     _%E143840%_)))
                                (if (eq? 'box _%$e143859%_)
                                    (let ((_%$e143971%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp144941
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target143839%_)))
                                            (__tmp144937
                                             (let ((__tmp144939
                                                    (cons (cons (cons _%$e143971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp144940
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e143553%_
                                        _%target143839%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp144940))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp144938
                                                    (_%recur143746%_
                                                     _%body143856%_
                                                     _%vars143838%_
                                                     _%$e143971%_
                                                     _%E143840%_
                                                     _%k143841%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp144939
                                                __tmp144938))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp144941
                                         __tmp144937
                                         _%E143840%_)))
                                    (if (eq? 'datum _%$e143859%_)
                                        (let ((_%$e143973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp144947
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target143839%_)))
                                                (__tmp144942
                                                 (let ((__tmp144946
                                                        (cons (cons (cons _%$e143973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target143839%_))
                                  '()))
                      '()))
               (__tmp144943
                (let ((__tmp144945
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e143973%_ _%body143856%_)))
                      (__tmp144944 (_%k143841%_ _%vars143838%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp144945 __tmp144944 _%E143840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp144946
                                                    __tmp144943))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp144947
                                             __tmp144942
                                             _%E143840%_)))
                                        (_%BUG143745%_
                                         _%e143837%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e143842143849%_)
                                      (let ((_%hd143846143978%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143842143849%_)))
                                            (_%tl143847143980%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143842143849%_))))
                                        (let* ((_%tag143983%_
                                                _%hd143846143978%_)
                                               (_%body143985%_
                                                _%tl143847143980%_))
                                          (_%K143845143975%_
                                           _%body143985%_
                                           _%tag143983%_)))
                                      (_%E143844143853%_)))))
                             (_%splice-rlen143747%_
                              (lambda (_%e143799%_)
                                (let _%lp143801%_ ((_%e143803%_ _%e143799%_)
                                                   (_%n143804%_ '0))
                                  (let* ((_%e143805143812%_ _%e143803%_)
                                         (_%E143807143816%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e143805143812%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K143808143825%_
                                          (lambda (_%body143819%_
                                                   _%tag143820%_)
                                            (let ((_%$e143822%_ _%tag143820%_))
                                              (if (eq? 'splice _%$e143822%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx143551%_
                                                     _%where143738%_))
                                                  (if (eq? 'cons _%$e143822%_)
                                                      (_%lp143801%_
                                                       (cdr _%body143819%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n143804%_
                                                                '1)))
                                                      _%n143804%_))))))
                                    (if (pair? _%e143805143812%_)
                                        (let ((_%hd143809143828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143805143812%_)))
                                              (_%tl143810143830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143805143812%_))))
                                          (let* ((_%tag143833%_
                                                  _%hd143809143828%_)
                                                 (_%body143835%_
                                                  _%tl143810143830%_))
                                            (_%K143808143825%_
                                             _%body143835%_
                                             _%tag143833%_)))
                                        (_%E143807143816%_))))))
                             (_%splice-vars143748%_
                              (lambda (_%e143755%_)
                                (let _%recur143757%_ ((_%e143759%_ _%e143755%_)
                                                      (_%vars143760%_ '()))
                                  (let* ((_%e143761143768%_ _%e143759%_)
                                         (_%E143763143772%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e143761143768%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K143764143787%_
                                          (lambda (_%body143775%_
                                                   _%tag143776%_)
                                            (let ((_%$e143778%_ _%tag143776%_))
                                              (if (eq? 'var _%$e143778%_)
                                                  (cons _%body143775%_
                                                        _%vars143760%_)
                                                  (if (or (eq? 'cons
                                                               _%$e143778%_)
                                                          (eq? 'splice
                                                               _%$e143778%_))
                                                      (_%recur143757%_
                                                       (cdr _%body143775%_)
                                                       (_%recur143757%_
                                                        (car _%body143775%_)
                                                        _%vars143760%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e143778%_)
                      (eq? 'box _%$e143778%_))
                  (_%recur143757%_ _%body143775%_ _%vars143760%_)
                  _%vars143760%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e143761143768%_)
                                        (let ((_%hd143765143790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143761143768%_)))
                                              (_%tl143766143792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143761143768%_))))
                                          (let* ((_%tag143795%_
                                                  _%hd143765143790%_)
                                                 (_%body143797%_
                                                  _%tl143766143792%_))
                                            (_%K143764143787%_
                                             _%body143797%_
                                             _%tag143795%_)))
                                        (_%E143763143772%_))))))
                             (_%make-body143749%_
                              (lambda (_%vars143751%_)
                                (cons _%K143742%_
                                      (map (lambda (_%mvar143753%_)
                                             (let ((__tmp144948
                                                    (car _%mvar143753%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp144948
                                                _%vars143751%_
                                                _%BUG143745%_)))
                                           _%mvars143741%_)))))
                      (_%recur143746%_
                       _%hd143740%_
                       '()
                       _%target143739%_
                       _%E143743%_
                       _%make-body143749%_))))
                 (_%parse-clause143560%_
                  (lambda (_%hd143632%_ _%ids143633%_)
                    (let _%recur143635%_ ((_%e143637%_ _%hd143632%_)
                                          (_%vars143638%_ '())
                                          (_%depth143639%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e143637%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e143637%_))
                              (values '(any) _%vars143638%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e143637%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx143551%_
                                     _%hd143632%_))
                                  (if (let ((__tmp144949
                                             (lambda (_%id143644%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e143637%_
                                                  _%id143644%_)))))
                                        (declare (not safe))
                                        (__find __tmp144949 _%ids143633%_))
                                      (values (cons 'id _%e143637%_)
                                              _%vars143638%_)
                                      (if (let ((__tmp144950
                                                 (lambda (_%var143647%_)
                                                   (let ((__tmp144951
                                                          (car _%var143647%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e143637%_
                                                      __tmp144951)))))
                                            (declare (not safe))
                                            (__find __tmp144950
                                                    _%vars143638%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx143551%_
                                             _%e143637%_))
                                          (values (cons 'var _%e143637%_)
                                                  (cons (cons _%e143637%_
                                                              _%depth143639%_)
                                                        _%vars143638%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e143637%_))
                              (let* ((_%e143651143658%_ _%e143637%_)
                                     (_%E143653143662%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e143651143658%_))))
                                     (_%E143652143723%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e143651143658%_))
                                            (let ((_%e143654143666%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e143651143658%_))))
                                              (let ((_%hd143655143669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143654143666%_)))
                                                    (_%tl143656143671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143654143666%_))))
                                                (let* ((_%hd143674%_
                                                        _%hd143655143669%_)
                                                       (_%rest143676%_
                                                        _%tl143656143671%_)
                                                       (_%make-pair143691%_
                                                        (lambda (_%tag143678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd143679%_
                         _%tl143680%_)
                  (let* ((_%hd-depth143682%_
                          (if (eq? _%tag143678%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth143639%_ '1))
                              _%depth143639%_))
                         (_g144952_
                          (_%recur143635%_
                           _%hd143679%_
                           _%vars143638%_
                           _%hd-depth143682%_)))
                    (begin
                      (let ((_g144953_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g144952_)
                                   (##values-length _g144952_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g144953_ 2)))
                            (error "Context expects 2 values" _g144953_)))
                      (let ((_%hd143684%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g144952_ 0)))
                            (_%vars143685%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g144952_ 1))))
                        (let ((_g144954_
                               (_%recur143635%_
                                _%tl143680%_
                                _%vars143685%_
                                _%depth143639%_)))
                          (begin
                            (let ((_g144955_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g144954_)
                                         (##values-length _g144954_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g144955_ 2)))
                                  (error "Context expects 2 values"
                                         _g144955_)))
                            (let ((_%tl143687%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g144954_ 0)))
                                  (_%vars143688%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g144954_ 1))))
                              (values (cons _%tag143678%_
                                            (cons _%hd143684%_ _%tl143687%_))
                                      _%vars143688%_)))))))))
               (_%e143692143699%_ _%rest143676%_)
               (_%E143694143703%_
                (lambda ()
                  (_%make-pair143691%_ 'cons _%hd143674%_ _%rest143676%_)))
               (_%E143693143719%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e143692143699%_))
                      (let ((_%e143695143707%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e143692143699%_))))
                        (let ((_%hd143696143710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143695143707%_)))
                              (_%tl143697143712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143695143707%_))))
                          (let* ((_%rest-hd143715%_ _%hd143696143710%_)
                                 (_%rest-tl143717%_ _%tl143697143712%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd143715%_))
                                (_%make-pair143691%_
                                 'splice
                                 _%hd143674%_
                                 _%rest-tl143717%_)
                                (_%make-pair143691%_
                                 'cons
                                 _%hd143674%_
                                 _%rest143676%_)))))
                      (_%E143694143703%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E143693143719%_))))
                                            (_%E143653143662%_)))))
                                (_%E143652143723%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e143637%_))
                                  (values '(null) _%vars143638%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e143637%_))
                                      (let ((_g144956_
                                             (_%recur143635%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e143637%_)))
                                              _%vars143638%_
                                              _%depth143639%_)))
                                        (begin
                                          (let ((_g144957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g144956_)
                                                       (##values-length
                                                        _g144956_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g144957_ 2)))
                                                (error "Context expects 2 values"
                                                       _g144957_)))
                                          (let ((_%e143729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g144956_ 0)))
                                                (_%vars143730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g144956_
                                                    1))))
                                            (values (cons 'vector _%e143729%_)
                                                    _%vars143730%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e143637%_))
                                          (let ((_g144958_
                                                 (_%recur143635%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e143637%_)))
                                                  _%vars143638%_
                                                  _%depth143639%_)))
                                            (begin
                                              (let ((_g144959_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g144958_)
                                                           (##values-length
                                                            _g144958_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g144959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g144959_)))
                                              (let ((_%e143733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144958_
                                                        0)))
                                                    (_%vars143734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144958_
                                                        1))))
                                                (values (cons 'box _%e143733%_)
                                                        _%vars143734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e143637%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e143637%_)))
                                                      _%vars143638%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx143551%_
                                                 _%e143637%_))))))))))))
          (let* ((_%e143561143574%_ _%stx143551%_)
                 (_%E143563143578%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e143561143574%_))))
                 (_%E143562143628%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e143561143574%_))
                        (let ((_%e143564143582%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e143561143574%_))))
                          (let ((_%hd143565143585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143564143582%_)))
                                (_%tl143566143587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143564143582%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143566143587%_))
                                (let ((_%e143567143590%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl143566143587%_))))
                                  (let ((_%hd143568143593%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143567143590%_)))
                                        (_%tl143569143595%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143567143590%_))))
                                    (let ((_%expr143598%_ _%hd143568143593%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143569143595%_))
                                          (let ((_%e143570143600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl143569143595%_))))
                                            (let ((_%hd143571143603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143570143600%_)))
                                                  (_%tl143572143605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143570143600%_))))
                                              (let* ((_%ids143608%_
                                                      _%hd143571143603%_)
                                                     (_%clauses143610%_
                                                      _%tl143572143605%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids143608%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses143610%_))
                                                        (let* ((_%ids143615%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids143608%_)))
                       (_%clauses143617%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses143610%_)))
                       (_%clause-ids143619%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses143617%_)))
                       (_%E143621%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target143623%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first143625%_
                        (if (null? _%clauses143617%_)
                            _%E143621%_
                            (car _%clause-ids143619%_))))
                  (let ((__tmp144961
                         (let ((__tmp144962
                                (let ((__tmp144964
                                       (let ((__tmp144966
                                              (cons (cons (cons _%E143621%_
                                                                '())
                                                          (cons (let ((__tmp144968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target143623%_ '()))
                              (__tmp144967
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target143623%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp144968 __tmp144967))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp144965
                                              (_%generate-body143557%_
                                               (_%generate-bindings143556%_
                                                _%target143623%_
                                                _%ids143615%_
                                                _%clauses143617%_
                                                _%clause-ids143619%_
                                                _%E143621%_)
                                               (cons _%first143625%_
                                                     (cons _%expr143598%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp144966
                                          __tmp144965)))
                                      (__tmp144963
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx143551%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp144964
                                   __tmp144963))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp144962)))
                        (__tmp144960
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx143551%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp144961 __tmp144960)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx143551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx143551%_
                                                       _%ids143608%_))))))
                                          (_%E143563143578%_)))))
                                (_%E143563143578%_))))
                        (_%E143563143578%_)))))
            (_%E143562143628%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx144276%_)
        (let* ((_%identifier=?144278%_ 'free-identifier=?)
               (_%unwrap-e144280%_ 'syntax-e)
               (_%wrap-e144282%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144276%_
           _%identifier=?144278%_
           _%unwrap-e144280%_
           _%wrap-e144282%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx144284%_ _%identifier=?144285%_)
        (let* ((_%unwrap-e144287%_ 'syntax-e) (_%wrap-e144289%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144284%_
           _%identifier=?144285%_
           _%unwrap-e144287%_
           _%wrap-e144289%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx144291%_ _%identifier=?144292%_ _%unwrap-e144293%_)
        (let ((_%wrap-e144295%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144291%_
           _%identifier=?144292%_
           _%unwrap-e144293%_
           _%wrap-e144295%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g144969_
        (let ((_g144970_ (let () (declare (not safe)) (##length _g144969_))))
          (cond ((let () (declare (not safe)) (##fx= _g144970_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g144969_))
                ((let () (declare (not safe)) (##fx= _g144970_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g144969_))
                ((let () (declare (not safe)) (##fx= _g144970_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g144969_))
                ((let () (declare (not safe)) (##fx= _g144970_ 4))
                 (apply gx#macro-expand-syntax-case__% _g144969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g144969_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx143548%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx143548%_))
            (let ((__tmp144971
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx143548%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp144971 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd143506%_ . _%rest143507%_)
        (let ((_%len143509%_ (length _%hd143506%_)))
          (let _%lp143511%_ ((_%rest143513%_ _%rest143507%_))
            (let* ((_%rest143514143522%_ _%rest143513%_)
                   (_%else143516143530%_ (lambda () '#!void))
                   (_%K143518143536%_
                    (lambda (_%rest143533%_ _%hd143534%_)
                      (if (let ((__tmp144972 (length _%hd143534%_)))
                            (declare (not safe))
                            (##fx= _%len143509%_ __tmp144972))
                          (_%lp143511%_ _%rest143533%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd143534%_))))))
              (if (pair? _%rest143514143522%_)
                  (let ((_%hd143519143539%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143514143522%_)))
                        (_%tl143520143541%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143514143522%_))))
                    (let* ((_%hd143544%_ _%hd143519143539%_)
                           (_%rest143546%_ _%tl143520143541%_))
                      (_%K143518143536%_ _%rest143546%_ _%hd143544%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx143456%_ _%n143457%_)
        (let _%lp143459%_ ((_%rest143462%_ _%stx143456%_) (_%r143464%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143462%_))
              (let* ((_%g143466143473%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143462%_)))
                     (_%E143468143477%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143466143473%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143469143484%_
                      (lambda (_%rest143480%_ _%hd143481%_)
                        (_%lp143459%_
                         _%rest143480%_
                         (cons _%hd143481%_ _%r143464%_)))))
                (if (pair? _%g143466143473%_)
                    (let ((_%hd143470143487%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143466143473%_)))
                          (_%tl143471143489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143466143473%_))))
                      (let* ((_%hd143492%_ _%hd143470143487%_)
                             (_%rest143494%_ _%tl143471143489%_))
                        (_%K143469143484%_ _%rest143494%_ _%hd143492%_)))
                    (_%E143468143477%_)))
              (let _%lp143496%_ ((_%n143498%_ _%n143457%_)
                                 (_%l143499%_ _%r143464%_)
                                 (_%r143501%_ _%rest143462%_))
                (if (null? _%l143499%_)
                    (values _%l143499%_ _%r143501%_)
                    (if (fxpositive? _%n143498%_)
                        (_%lp143496%_
                         (let () (declare (not safe)) (##fx- _%n143498%_ '1))
                         (cdr _%l143499%_)
                         (cons (car _%l143499%_) _%r143501%_))
                        (values (reverse! _%l143499%_) _%r143501%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx143406%_ _%n143407%_)
        (let _%lp143409%_ ((_%rest143412%_ _%stx143406%_) (_%r143414%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143412%_))
              (let* ((_%g143416143423%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143412%_)))
                     (_%E143418143427%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143416143423%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143419143434%_
                      (lambda (_%rest143430%_ _%hd143431%_)
                        (_%lp143409%_
                         _%rest143430%_
                         (cons _%hd143431%_ _%r143414%_)))))
                (if (pair? _%g143416143423%_)
                    (let ((_%hd143420143437%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143416143423%_)))
                          (_%tl143421143439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143416143423%_))))
                      (let* ((_%hd143442%_ _%hd143420143437%_)
                             (_%rest143444%_ _%tl143421143439%_))
                        (_%K143419143434%_ _%rest143444%_ _%hd143442%_)))
                    (_%E143418143427%_)))
              (let _%lp143446%_ ((_%n143448%_ _%n143407%_)
                                 (_%l143449%_ _%r143414%_)
                                 (_%r143451%_ _%rest143412%_))
                (if (null? _%l143449%_)
                    (vector _%l143449%_ _%r143451%_)
                    (if (fxpositive? _%n143448%_)
                        (_%lp143446%_
                         (let () (declare (not safe)) (##fx- _%n143448%_ '1))
                         (cdr _%l143449%_)
                         (cons (car _%l143449%_) _%r143451%_))
                        (vector (reverse! _%l143449%_) _%r143451%_))))))))))
