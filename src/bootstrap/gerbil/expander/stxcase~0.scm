(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1768865824)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp144895 (list gx#expander::t))
            (__tmp144894 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp144895
         '(id depth)
         __tmp144894
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args144891%_
        (apply make-instance gx#syntax-pattern::t _%$args144891%_)))
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
      (lambda (_%self144877%_ _%stx144878%_)
        (let ((_%self144881%_ _%self144877%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx144878%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx144344%_)
        (letrec ((_%generate144346%_
                  (lambda (_%e144586%_)
                    (letrec ((_%BUG144588%_
                              (lambda (_%q144753%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx144344%_
                                         _%e144586%_
                                         _%q144753%_))))
                             (_%local-pattern-e144589%_
                              (lambda (_%pat144751%_)
                                (let ((__tmp144896
                                       (##structure-ref
                                        _%pat144751%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp144896))))
                             (_%getvar144590%_
                              (lambda (_%q144748%_ _%vars144749%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q144748%_
                                   _%vars144749%_
                                   _%BUG144588%_))))
                             (_%getarg144591%_
                              (lambda (_%arg144714%_ _%vars144715%_)
                                (let* ((_%arg144716144723%_ _%arg144714%_)
                                       (_%E144718144727%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg144716144723%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K144719144736%_
                                        (lambda (_%e144730%_ _%tag144731%_)
                                          (let ((_%$e144733%_ _%tag144731%_))
                                            (if (eq? 'ref _%$e144733%_)
                                                (_%getvar144590%_
                                                 _%e144730%_
                                                 _%vars144715%_)
                                                (if (eq? 'pattern _%$e144733%_)
                                                    (_%local-pattern-e144589%_
                                                     _%e144730%_)
                                                    (_%BUG144588%_
                                                     _%arg144714%_)))))))
                                  (if (pair? _%arg144716144723%_)
                                      (let ((_%hd144720144739%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg144716144723%_)))
                                            (_%tl144721144741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg144716144723%_))))
                                        (let* ((_%tag144744%_
                                                _%hd144720144739%_)
                                               (_%e144746%_
                                                _%tl144721144741%_))
                                          (_%K144719144736%_
                                           _%e144746%_
                                           _%tag144744%_)))
                                      (_%E144718144727%_))))))
                      (let _%recur144593%_ ((_%e144595%_ _%e144586%_)
                                            (_%vars144596%_ '()))
                        (let* ((_%e144597144604%_ _%e144595%_)
                               (_%E144599144608%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e144597144604%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K144600144702%_
                                (lambda (_%body144611%_ _%tag144612%_)
                                  (let ((_%$e144614%_ _%tag144612%_))
                                    (if (eq? 'datum _%$e144614%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body144611%_))
                                        (if (eq? 'term _%$e144614%_)
                                            (let ((_%id144617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body144611%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id144617%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks144620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id144617%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks144620%_)
                                                        (let ((__tmp144897
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body144611%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp144897))
                (let ((__tmp144899
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body144611%_)))
                      (__tmp144898
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body144611%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp144899
                   __tmp144898
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id144617%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body144611%_))
                                                      (_%BUG144588%_
                                                       _%e144595%_))))
                                            (if (eq? 'pattern _%$e144614%_)
                                                (_%local-pattern-e144589%_
                                                 _%body144611%_)
                                                (if (eq? 'ref _%$e144614%_)
                                                    (_%getvar144590%_
                                                     _%body144611%_
                                                     _%vars144596%_)
                                                    (if (eq? 'cons
                                                             _%$e144614%_)
                                                        (let ((__tmp144901
                                                               (_%recur144593%_
                                                                (car _%body144611%_)
                                                                _%vars144596%_))
                                                              (__tmp144900
                                                               (_%recur144593%_
                                                                (cdr _%body144611%_)
                                                                _%vars144596%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp144901
                                                           __tmp144900))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e144614%_)
                    (let ((__tmp144902
                           (_%recur144593%_ _%body144611%_ _%vars144596%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp144902))
                    (if (eq? 'box _%$e144614%_)
                        (let ((__tmp144903
                               (_%recur144593%_
                                _%body144611%_
                                _%vars144596%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp144903))
                        (if (eq? 'splice _%$e144614%_)
                            (let* ((_%body144623144634%_ _%body144611%_)
                                   (_%E144625144638%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body144623144634%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K144626144676%_
                                    (lambda (_%args144641%_
                                             _%iv144642%_
                                             _%hd144643%_
                                             _%depth144644%_)
                                      (let* ((_%targets144650%_
                                              (map (lambda (_%g144645144647%_)
                                                     (_%getarg144591%_
                                                      _%g144645144647%_
                                                      _%vars144596%_))
                                                   _%args144641%_))
                                             (_%fold-in144652%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args144641%_)))
                                             (_%fold-out144654%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args144656%_
                                              (let ((__tmp144904
                                                     (cons _%fold-out144654%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp144904
                                                 _%fold-in144652%_)))
                                             (_%lambda-body144673%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth144644%_ '1))
                                                  (let ((_%r-args144664%_
                                                         (map (lambda (_%arg144658%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg144658%_)))
                      _%args144641%_))
                (_%r-vars144665%_
                 (let ((__tmp144905
                        (lambda (_%arg144660%_ _%var144661%_ _%r144662%_)
                          (cons (cons (cdr _%arg144660%_) _%var144661%_)
                                _%r144662%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp144905
                    _%vars144596%_
                    _%args144641%_
                    _%fold-in144652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur144593%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth144644%_ '1))
                         (cons _%hd144643%_
                               (cons (cons 'var _%fold-out144654%_)
                                     _%r-args144664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars144665%_))
                                                  (let* ((_%hd-vars144671%_
                                                          (let ((__tmp144906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg144667%_ _%var144668%_ _%r144669%_)
                           (cons (cons (cdr _%arg144667%_) _%var144668%_)
                                 _%r144669%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp144906
                     _%vars144596%_
                     _%args144641%_
                     _%fold-in144652%_)))
                 (__tmp144907
                  (_%recur144593%_ _%hd144643%_ _%hd-vars144671%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp144907
                                                     _%fold-out144654%_)))))
                                        (let ((__tmp144911
                                               (if (let ((__tmp144912
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets144650%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp144912 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets144650%_))
                                                   '#!void))
                                              (__tmp144908
                                               (let ((__tmp144910
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args144656%_
                                                         _%lambda-body144673%_)))
                                                     (__tmp144909
                                                      (_%recur144593%_
                                                       _%iv144642%_
                                                       _%vars144596%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp144910
                                                  __tmp144909
                                                  _%targets144650%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp144911
                                           __tmp144908))))))
                              (if (pair? _%body144623144634%_)
                                  (let ((_%hd144627144679%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body144623144634%_)))
                                        (_%tl144628144681%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body144623144634%_))))
                                    (let ((_%depth144684%_ _%hd144627144679%_))
                                      (if (pair? _%tl144628144681%_)
                                          (let ((_%hd144629144686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl144628144681%_)))
                                                (_%tl144630144688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144628144681%_))))
                                            (let ((_%hd144691%_
                                                   _%hd144629144686%_))
                                              (if (pair? _%tl144630144688%_)
                                                  (let ((_%hd144631144693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144630144688%_)))
                                                        (_%tl144632144695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144630144688%_))))
                                                    (let* ((_%iv144698%_
                                                            _%hd144631144693%_)
                                                           (_%args144700%_
                                                            _%tl144632144695%_))
                                                      (_%K144626144676%_
                                                       _%args144700%_
                                                       _%iv144698%_
                                                       _%hd144691%_
                                                       _%depth144684%_)))
                                                  (_%E144625144638%_))))
                                          (_%E144625144638%_))))
                                  (_%E144625144638%_)))
                            (if (eq? 'var _%$e144614%_)
                                _%body144611%_
                                (_%BUG144588%_ _%e144595%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e144597144604%_)
                              (let ((_%hd144601144705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144597144604%_)))
                                    (_%tl144602144707%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144597144604%_))))
                                (let* ((_%tag144710%_ _%hd144601144705%_)
                                       (_%body144712%_ _%tl144602144707%_))
                                  (_%K144600144702%_
                                   _%body144712%_
                                   _%tag144710%_)))
                              (_%E144599144608%_)))))))
                 (_%parse144347%_
                  (lambda (_%e144388%_)
                    (letrec ((_%make-cons144390%_
                              (lambda (_%hd144578%_ _%tl144579%_)
                                (let ((_g144913_ _%hd144578%_)
                                      (_g144915_ _%tl144579%_))
                                  (begin
                                    (let ((_g144914_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144913_)
                                                 (##values-length _g144913_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144914_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144914_)))
                                    (let ((_g144916_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144915_)
                                                 (##values-length _g144915_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144916_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144916_)))
                                    (let ((_%hd-e144581%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144913_ 0)))
                                          (_%hd-vars144582%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144913_ 1))))
                                      (let ((_%tl-e144583%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144915_ 0)))
                                            (_%tl-vars144584%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144915_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e144581%_
                                                            _%tl-e144583%_))
                                                (append _%hd-vars144582%_
                                                        _%tl-vars144584%_))))))))
                             (_%make-splice144391%_
                              (lambda (_%where144514%_
                                       _%depth144515%_
                                       _%hd144516%_
                                       _%tl144517%_)
                                (let ((_g144917_ _%hd144516%_)
                                      (_g144919_ _%tl144517%_))
                                  (begin
                                    (let ((_g144918_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144917_)
                                                 (##values-length _g144917_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144918_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144918_)))
                                    (let ((_g144920_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144919_)
                                                 (##values-length _g144919_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144920_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144920_)))
                                    (let ((_%hd-e144519%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144917_ 0)))
                                          (_%hd-vars144520%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144917_ 1))))
                                      (let ((_%tl-e144521%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144919_ 0)))
                                            (_%tl-vars144522%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144919_ 1))))
                                        (let _%lp144524%_ ((_%rest144526%_
                                                            _%hd-vars144520%_)
                                                           (_%targets144527%_
                                                            '())
                                                           (_%vars144528%_
                                                            _%tl-vars144522%_))
                                          (let* ((_%rest144529144539%_
                                                  _%rest144526%_)
                                                 (_%else144531144547%_
                                                  (lambda ()
                                                    (if (null? _%targets144527%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx144344%_
                                                           _%where144514%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth144515%_
                                    (cons _%hd-e144519%_
                                          (cons _%tl-e144521%_
                                                _%targets144527%_))))
                        _%vars144528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K144533144559%_
                                                  (lambda (_%rest144550%_
                                                           _%hd-pat144551%_
                                                           _%hd-depth*144552%_)
                                                    (let ((_%hd-depth144554%_
                                                           (fx- _%hd-depth*144552%_
                                                                _%depth144515%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth144554%_))
                                                          (_%lp144524%_
                                                           _%rest144550%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat144551%_)
                         _%targets144527%_)
                   (cons (cons _%hd-depth144554%_ _%hd-pat144551%_)
                         _%vars144528%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth144554%_))
                      (_%lp144524%_
                       _%rest144550%_
                       (cons (cons 'pattern _%hd-pat144551%_)
                             _%targets144527%_)
                       _%vars144528%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx144344%_
                         _%where144514%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest144529144539%_)
                                                (let ((_%hd144534144562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest144529144539%_)))
                                                      (_%tl144535144564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest144529144539%_))))
                                                  (if (pair? _%hd144534144562%_)
                                                      (let ((_%hd144536144567%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd144534144562%_)))
                    (_%tl144537144569%_
                     (let () (declare (not safe)) (##cdr _%hd144534144562%_))))
                (let* ((_%hd-depth*144572%_ _%hd144536144567%_)
                       (_%hd-pat144574%_ _%tl144537144569%_)
                       (_%rest144576%_ _%tl144535144564%_))
                  (_%K144533144559%_
                   _%rest144576%_
                   _%hd-pat144574%_
                   _%hd-depth*144572%_)))
              (_%else144531144547%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144531144547%_))))))))))
                             (_%recur144392%_
                              (lambda (_%e144397%_ _%is-e?144398%_)
                                (if (_%is-e?144398%_ _%e144397%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx144344%_))
                                    (if (gx#syntax-local-pattern? _%e144397%_)
                                        (let* ((_%pat144402%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e144397%_)))
                                               (_%depth144404%_
                                                (##structure-ref
                                                 _%pat144402%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth144404%_)
                                              (values (cons 'ref _%pat144402%_)
                                                      (cons (cons _%depth144404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat144402%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat144402%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e144397%_))
                                            (values (cons 'term _%e144397%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e144397%_))
                                                (let* ((_%e144408144415%_
                                                        _%e144397%_)
                                                       (_%E144410144419%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e144408144415%_))))
                                                       (_%E144409144501%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e144408144415%_))
                      (let ((_%e144411144423%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e144408144415%_))))
                        (let ((_%hd144412144426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144411144423%_)))
                              (_%tl144413144428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144411144423%_))))
                          (let* ((_%hd144431%_ _%hd144412144426%_)
                                 (_%rest144433%_ _%tl144413144428%_))
                            (if (_%is-e?144398%_ _%hd144431%_)
                                (let* ((_%e144434144441%_ _%rest144433%_)
                                       (_%E144436144445%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx144344%_
                                             _%e144397%_))))
                                       (_%E144435144459%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e144434144441%_))
                                              (let ((_%e144437144449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e144434144441%_))))
                                                (let ((_%hd144438144452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144437144449%_)))
                                                      (_%tl144439144454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144437144449%_))))
                                                  (let ((_%rest144457%_
                                                         _%hd144438144452%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144439144454%_))
                                                        (_%recur144392%_
                                                         _%rest144457%_
                                                         false)
                                                        (_%E144436144445%_)))))
                                              (_%E144436144445%_)))))
                                  (_%E144435144459%_))
                                (let _%lp144463%_ ((_%rest144465%_
                                                    _%rest144433%_)
                                                   (_%depth144466%_ '0))
                                  (let* ((_%e144467144474%_ _%rest144465%_)
                                         (_%E144469144478%_
                                          (lambda ()
                                            (if (fxpositive? _%depth144466%_)
                                                (_%make-splice144391%_
                                                 _%e144397%_
                                                 _%depth144466%_
                                                 (_%recur144392%_
                                                  _%hd144431%_
                                                  _%is-e?144398%_)
                                                 (_%recur144392%_
                                                  _%rest144465%_
                                                  _%is-e?144398%_))
                                                (_%make-cons144390%_
                                                 (_%recur144392%_
                                                  _%hd144431%_
                                                  _%is-e?144398%_)
                                                 (_%recur144392%_
                                                  _%rest144465%_
                                                  _%is-e?144398%_)))))
                                         (_%E144468144497%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e144467144474%_))
                                                (let ((_%e144470144482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e144467144474%_))))
                                                  (let ((_%hd144471144485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144470144482%_)))
                                                        (_%tl144472144487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144470144482%_))))
                                                    (let* ((_%rest-hd144490%_
                                                            _%hd144471144485%_)
                                                           (_%rest-tl144492%_
                                                            _%tl144472144487%_))
                                                      (if (_%is-e?144398%_
                                                           _%rest-hd144490%_)
                                                          (_%lp144463%_
                                                           _%rest-tl144492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth144466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth144466%_)
                      (_%make-splice144391%_
                       _%e144397%_
                       _%depth144466%_
                       (_%recur144392%_ _%hd144431%_ _%is-e?144398%_)
                       (_%recur144392%_ _%rest144465%_ _%is-e?144398%_))
                      (_%make-cons144390%_
                       (_%recur144392%_ _%hd144431%_ _%is-e?144398%_)
                       (_%recur144392%_ _%rest144465%_ _%is-e?144398%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E144469144478%_)))))
                                    (_%E144468144497%_)))))))
                      (_%E144410144419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E144409144501%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e144397%_))
                                                    (let ((_g144921_
                                                           (_%recur144392%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e144397%_)))
                    _%is-e?144398%_)))
              (begin
                (let ((_g144922_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g144921_)
                             (##values-length _g144921_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g144922_ 2)))
                      (error "Context expects 2 values" _g144922_)))
                (let ((_%e144506%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g144921_ 0)))
                      (_%vars144507%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g144921_ 1))))
                  (values (cons 'vector _%e144506%_) _%vars144507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e144397%_))
                                                        (let ((_g144923_
                                                               (_%recur144392%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e144397%_)))
                        _%is-e?144398%_)))
                  (begin
                    (let ((_g144924_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g144923_)
                                 (##values-length _g144923_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g144924_ 2)))
                          (error "Context expects 2 values" _g144924_)))
                    (let ((_%e144510%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g144923_ 0)))
                          (_%vars144511%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g144923_ 1))))
                      (values (cons 'box _%e144510%_) _%vars144511%_))))
                (values (cons 'datum _%e144397%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g144925_
                             (_%recur144392%_ _%e144388%_ gx#ellipsis?)))
                        (begin
                          (let ((_g144926_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g144925_)
                                       (##values-length _g144925_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g144926_ 2)))
                                (error "Context expects 2 values" _g144926_)))
                          (let ((_%tree144394%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g144925_ 0)))
                                (_%vars144395%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g144925_ 1))))
                            (if (null? _%vars144395%_)
                                _%tree144394%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx144344%_
                                   _%vars144395%_))))))))))
          (let* ((_%e144348144358%_ _%stx144344%_)
                 (_%E144350144362%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx144344%_))))
                 (_%E144349144384%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e144348144358%_))
                        (let ((_%e144351144366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e144348144358%_))))
                          (let ((_%hd144352144369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144351144366%_)))
                                (_%tl144353144371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144351144366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144353144371%_))
                                (let ((_%e144354144374%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl144353144371%_))))
                                  (let ((_%hd144355144377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144354144374%_)))
                                        (_%tl144356144379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144354144374%_))))
                                    (let ((_%form144382%_ _%hd144355144377%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144356144379%_))
                                          (let ((__tmp144928
                                                 (_%generate144346%_
                                                  (_%parse144347%_
                                                   _%form144382%_)))
                                                (__tmp144927
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx144344%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp144928
                                             __tmp144927))
                                          (_%E144350144362%_)))))
                                (_%E144350144362%_))))
                        (_%E144350144362%_)))))
            (_%E144349144384%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx143593%_
               _%identifier=?143594%_
               _%unwrap-e143595%_
               _%wrap-e143596%_)
        (letrec ((_%generate-bindings143598%_
                  (lambda (_%target144208%_
                           _%ids144209%_
                           _%clauses144210%_
                           _%clause-ids144211%_
                           _%E144212%_)
                    (letrec ((_%generate1144214%_
                              (lambda (_%clause144311%_
                                       _%clause-id144312%_
                                       _%E144313%_)
                                (cons (cons _%clause-id144312%_ '())
                                      (cons (let ((__tmp144930
                                                   (cons _%target144208%_ '()))
                                                  (__tmp144929
                                                   (_%generate-clause143600%_
                                                    _%target144208%_
                                                    _%ids144209%_
                                                    _%clause144311%_
                                                    _%E144313%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp144930
                                               __tmp144929))
                                            '())))))
                      (let _%lp144216%_ ((_%rest144218%_ _%clauses144210%_)
                                         (_%rest-ids144219%_
                                          _%clause-ids144211%_)
                                         (_%bindings144220%_ '()))
                        (let* ((_%rest144221144229%_ _%rest144218%_)
                               (_%else144223144237%_
                                (lambda () _%bindings144220%_))
                               (_%K144225144299%_
                                (lambda (_%rest144240%_ _%clause144241%_)
                                  (let* ((_%rest-ids144242144249%_
                                          _%rest-ids144219%_)
                                         (_%E144244144253%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids144242144249%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K144245144287%_
                                          (lambda (_%rest-ids144256%_
                                                   _%clause-id144257%_)
                                            (let* ((_%rest-ids144258144266%_
                                                    _%rest-ids144256%_)
                                                   (_%else144260144274%_
                                                    (lambda ()
                                                      (cons (_%generate1144214%_
                                                             _%clause144241%_
                                                             _%clause-id144257%_
                                                             _%E144212%_)
                                                            _%bindings144220%_)))
                                                   (_%K144262144279%_
                                                    (lambda (_%next-clause-id144277%_)
                                                      (_%lp144216%_
                                                       _%rest144240%_
                                                       _%rest-ids144256%_
                                                       (cons (_%generate1144214%_
                                                              _%clause144241%_
                                                              _%clause-id144257%_
                                                              _%next-clause-id144277%_)
                                                             _%bindings144220%_)))))
                                              (if (pair? _%rest-ids144258144266%_)
                                                  (let* ((_%hd144263144282%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids144258144266%_)))
                                                         (_%next-clause-id144285%_
                                                          _%hd144263144282%_))
                                                    (_%K144262144279%_
                                                     _%next-clause-id144285%_))
                                                  (_%else144260144274%_))))))
                                    (if (pair? _%rest-ids144242144249%_)
                                        (let ((_%hd144246144290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids144242144249%_)))
                                              (_%tl144247144292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids144242144249%_))))
                                          (let* ((_%clause-id144295%_
                                                  _%hd144246144290%_)
                                                 (_%rest-ids144297%_
                                                  _%tl144247144292%_))
                                            (_%K144245144287%_
                                             _%rest-ids144297%_
                                             _%clause-id144295%_)))
                                        (_%E144244144253%_))))))
                          (if (pair? _%rest144221144229%_)
                              (let ((_%hd144226144302%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest144221144229%_)))
                                    (_%tl144227144304%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest144221144229%_))))
                                (let* ((_%clause144307%_ _%hd144226144302%_)
                                       (_%rest144309%_ _%tl144227144304%_))
                                  (_%K144225144299%_
                                   _%rest144309%_
                                   _%clause144307%_)))
                              (_%else144223144237%_)))))))
                 (_%generate-body143599%_
                  (lambda (_%bindings144168%_ _%body144169%_)
                    (let _%recur144171%_ ((_%rest144173%_ _%bindings144168%_))
                      (let* ((_%rest144174144182%_ _%rest144173%_)
                             (_%else144176144190%_ (lambda () _%body144169%_))
                             (_%K144178144196%_
                              (lambda (_%rest144193%_ _%hd144194%_)
                                (let ((__tmp144932 (cons _%hd144194%_ '()))
                                      (__tmp144931
                                       (_%recur144171%_ _%rest144193%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp144932
                                   __tmp144931)))))
                        (if (pair? _%rest144174144182%_)
                            (let ((_%hd144179144199%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144174144182%_)))
                                  (_%tl144180144201%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144174144182%_))))
                              (let* ((_%hd144204%_ _%hd144179144199%_)
                                     (_%rest144206%_ _%tl144180144201%_))
                                (_%K144178144196%_
                                 _%rest144206%_
                                 _%hd144204%_)))
                            (_%else144176144190%_))))))
                 (_%generate-clause143600%_
                  (lambda (_%target144031%_
                           _%ids144032%_
                           _%clause144033%_
                           _%E144034%_)
                    (letrec ((_%generate1144036%_
                              (lambda (_%hd144123%_
                                       _%fender144124%_
                                       _%body144125%_)
                                (let ((_g144933_
                                       (_%parse-clause143602%_
                                        _%hd144123%_
                                        _%ids144032%_)))
                                  (begin
                                    (let ((_g144934_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144933_)
                                                 (##values-length _g144933_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144934_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144934_)))
                                    (let ((_%e144127%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144933_ 0)))
                                          (_%mvars144128%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144933_ 1))))
                                      (let* ((_%pvars144130%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars144128%_))))
                                             (_%E144132%_
                                              (cons _%E144034%_
                                                    (cons _%target144031%_
                                                          '())))
                                             (_%K144165%_
                                              (let ((__tmp144935
                                                     (let ((__tmp144937
                                                            (map (lambda (_%mvar144134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar144135%_)
                           (let* ((_%mvar144136144143%_ _%mvar144134%_)
                                  (_%E144138144147%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar144136144143%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K144139144153%_
                                   (lambda (_%depth144150%_ _%id144151%_)
                                     (cons _%id144151%_
                                           (cons (let ((__tmp144939
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id144151%_)))
                                                       (__tmp144938
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar144135%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp144939
                                                    __tmp144938
                                                    _%depth144150%_))
                                                 '())))))
                             (if (pair? _%mvar144136144143%_)
                                 (let ((_%hd144140144156%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar144136144143%_)))
                                       (_%tl144141144158%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar144136144143%_))))
                                   (let* ((_%id144161%_ _%hd144140144156%_)
                                          (_%depth144163%_ _%tl144141144158%_))
                                     (_%K144139144153%_
                                      _%depth144163%_
                                      _%id144161%_)))
                                 (_%E144138144147%_))))
                         _%mvars144128%_
                         _%pvars144130%_))
                   (__tmp144936
                    (if (eq? _%fender144124%_ '#t)
                        _%body144125%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender144124%_
                           _%body144125%_
                           _%E144132%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp144937 __tmp144936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars144130%_
                                                 __tmp144935))))
                                        (_%generate-match143601%_
                                         _%hd144123%_
                                         _%target144031%_
                                         _%e144127%_
                                         _%mvars144128%_
                                         _%K144165%_
                                         _%E144132%_))))))))
                      (let* ((_%e144037144057%_ _%clause144033%_)
                             (_%E144046144061%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e144037144057%_))))
                             (_%E144039144095%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144037144057%_))
                                    (let ((_%e144047144065%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144037144057%_))))
                                      (let ((_%hd144048144068%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144047144065%_)))
                                            (_%tl144049144070%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144047144065%_))))
                                        (let ((_%hd144073%_
                                               _%hd144048144068%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144049144070%_))
                                              (let ((_%e144050144075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144049144070%_))))
                                                (let ((_%hd144051144078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144050144075%_)))
                                                      (_%tl144052144080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144050144075%_))))
                                                  (let ((_%fender144083%_
                                                         _%hd144051144078%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144052144080%_))
                                                        (let ((_%e144053144085%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl144052144080%_))))
                  (let ((_%hd144054144088%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144053144085%_)))
                        (_%tl144055144090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144053144085%_))))
                    (let ((_%body144093%_ _%hd144054144088%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144055144090%_))
                          (_%generate1144036%_
                           _%hd144073%_
                           _%fender144083%_
                           _%body144093%_)
                          (_%E144046144061%_)))))
                (_%E144046144061%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E144046144061%_)))))
                                    (_%E144046144061%_))))
                             (_%E144038144119%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144037144057%_))
                                    (let ((_%e144040144099%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144037144057%_))))
                                      (let ((_%hd144041144102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144040144099%_)))
                                            (_%tl144042144104%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144040144099%_))))
                                        (let ((_%hd144107%_
                                               _%hd144041144102%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144042144104%_))
                                              (let ((_%e144043144109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144042144104%_))))
                                                (let ((_%hd144044144112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144043144109%_)))
                                                      (_%tl144045144114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144043144109%_))))
                                                  (let ((_%body144117%_
                                                         _%hd144044144112%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144045144114%_))
                                                        (_%generate1144036%_
                                                         _%hd144107%_
                                                         '#t
                                                         _%body144117%_)
                                                        (_%E144039144095%_)))))
                                              (_%E144039144095%_)))))
                                    (_%E144039144095%_)))))
                        (_%E144038144119%_)))))
                 (_%generate-match143601%_
                  (lambda (_%where143780%_
                           _%target143781%_
                           _%hd143782%_
                           _%mvars143783%_
                           _%K143784%_
                           _%E143785%_)
                    (letrec ((_%BUG143787%_
                              (lambda (_%q144029%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx143593%_
                                         _%hd143782%_
                                         _%q144029%_))))
                             (_%recur143788%_
                              (lambda (_%e143879%_
                                       _%vars143880%_
                                       _%target143881%_
                                       _%E143882%_
                                       _%k143883%_)
                                (let* ((_%e143884143891%_ _%e143879%_)
                                       (_%E143886143895%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e143884143891%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K143887144017%_
                                        (lambda (_%body143898%_ _%tag143899%_)
                                          (let ((_%$e143901%_ _%tag143899%_))
                                            (if (eq? 'any _%$e143901%_)
                                                (_%k143883%_ _%vars143880%_)
                                                (if (eq? 'id _%$e143901%_)
                                                    (let ((__tmp144944
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target143881%_)))
                                                          (__tmp144940
                                                           (let ((__tmp144942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp144943
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e143596%_
                                    _%body143898%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?143594%_
                             __tmp144943
                             _%target143881%_)))
                         (__tmp144941 (_%k143883%_ _%vars143880%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp144942 __tmp144941 _%E143882%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp144944 __tmp144940 _%E143882%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e143901%_)
                                                        (_%k143883%_
                                                         (cons (cons _%body143898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target143881%_)
                       _%vars143880%_))
                (if (eq? 'cons _%$e143901%_)
                    (let ((_%$e143904%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd143905%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl143906%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp144950
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target143881%_)))
                            (__tmp144945
                             (let ((__tmp144949
                                    (cons (cons (cons _%$e143904%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e143595%_
                                                         _%target143881%_))
                                                      '()))
                                          '()))
                                   (__tmp144946
                                    (let ((__tmp144948
                                           (cons (cons (cons _%$hd143905%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e143904%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl143906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e143904%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp144947
                                           (let* ((_%body143907143914%_
                                                   _%body143898%_)
                                                  (_%E143909143918%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body143907143914%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K143910143926%_
                                                   (lambda (_%tl143921%_
                                                            _%hd143922%_)
                                                     (_%recur143788%_
                                                      _%hd143922%_
                                                      _%vars143880%_
                                                      _%$hd143905%_
                                                      _%E143882%_
                                                      (lambda (_%vars143924%_)
                                                        (_%recur143788%_
                                                         _%tl143921%_
                                                         _%vars143924%_
                                                         _%$tl143906%_
                                                         _%E143882%_
                                                         _%k143883%_))))))
                                             (if (pair? _%body143907143914%_)
                                                 (let ((_%hd143911143929%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body143907143914%_)))
                                                       (_%tl143912143931%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body143907143914%_))))
                                                   (let* ((_%hd143934%_
                                                           _%hd143911143929%_)
                                                          (_%tl143936%_
                                                           _%tl143912143931%_))
                                                     (_%K143910143926%_
                                                      _%tl143936%_
                                                      _%hd143934%_)))
                                                 (_%E143909143918%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp144948
                                       __tmp144947))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp144949
                                __tmp144946))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp144950
                         __tmp144945
                         _%E143882%_)))
                    (if (eq? 'splice _%$e143901%_)
                        (let* ((_%body143937143944%_ _%body143898%_)
                               (_%E143939143948%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body143937143944%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K143940143999%_
                                (lambda (_%tl143951%_ _%hd143952%_)
                                  (let* ((_%rlen143954%_
                                          (_%splice-rlen143789%_ _%tl143951%_))
                                         (_%$target143956%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd143958%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl143960%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp143962%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e143964%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd143966%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl143968%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars143970%_
                                          (_%splice-vars143790%_ _%hd143952%_))
                                         (_%lvars143972%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars143970%_)))
                                         (_%tlvars143974%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars143970%_)))
                                         (_%linit143978%_
                                          (map (lambda (_%var143976%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars143972%_)))
                                    (letrec ((_%make-loop143981%_
                                              (lambda (_%vars143985%_)
                                                (let ((__tmp144952
                                                       (cons (cons (cons _%$lp143962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp144965
                                        (cons _%$hd143958%_ _%lvars143972%_))
                                       (__tmp144953
                                        (let ((__tmp144964
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd143958%_)))
                                              (__tmp144958
                                               (let ((__tmp144963
                                                      (cons (cons (cons _%$lp-e143964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e143595%_
                                   _%$hd143958%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144959
                                                      (let ((__tmp144962
                                                             (cons (cons (cons _%$lp-hd143966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e143964%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl143968%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e143964%_))
                                             '()))
                                 '())))
                    (__tmp144960
                     (_%recur143788%_
                      _%hd143952%_
                      '()
                      _%$lp-hd143966%_
                      _%E143882%_
                      (lambda (_%hdvars143987%_)
                        (cons _%$lp143962%_
                              (cons _%$lp-tl143968%_
                                    (map (lambda (_%svar143989%_
                                                  _%lvar143990%_)
                                           (let ((__tmp144961
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar143989%_
                                                     _%hdvars143987%_
                                                     _%BUG143787%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp144961
                                              _%lvar143990%_)))
                                         _%svars143970%_
                                         _%lvars143972%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp144962 __tmp144960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp144963
                                                  __tmp144959)))
                                              (__tmp144954
                                               (let ((__tmp144957
                                                      (map (lambda (_%lvar143992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar143993%_)
                     (cons (cons _%tlvar143993%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar143992%_))
                                 '())))
                   _%lvars143972%_
                   _%tlvars143974%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144955
                                                      (_%k143883%_
                                                       (let ((__tmp144956
                                                              (lambda (_%svar143995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar143996%_
                               _%r143997%_)
                        (cons (cons _%svar143995%_ _%tlvar143996%_)
                              _%r143997%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp144956
                  _%vars143985%_
                  _%svars143970%_
                  _%tlvars143974%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp144957
                                                  __tmp144955))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp144964
                                           __tmp144958
                                           __tmp144954))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp144965
                                    __tmp144953))
                                 '()))
                     '()))
              (__tmp144951
               (cons _%$lp143962%_ (cons _%$target143956%_ _%linit143978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp144952
                                                   __tmp144951)))))
                                      (let ((_%body143983%_
                                             (let ((__tmp144967
                                                    (cons (cons (cons _%$target143956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl143960%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target143881%_
                                 _%rlen143954%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp144966
                                                    (_%recur143788%_
                                                     _%tl143951%_
                                                     _%vars143880%_
                                                     _%$tl143960%_
                                                     _%E143882%_
                                                     _%make-loop143981%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp144967
                                                __tmp144966))))
                                        (let ((__tmp144971
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target143881%_)))
                                              (__tmp144968
                                               (if (zero? _%rlen143954%_)
                                                   _%body143983%_
                                                   (let ((__tmp144969
                                                          (let ((__tmp144970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target143881%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp144970 _%rlen143954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp144969
                                                      _%body143983%_
                                                      _%E143882%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp144971
                                           __tmp144968
                                           _%E143882%_))))))))
                          (if (pair? _%body143937143944%_)
                              (let ((_%hd143941144002%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body143937143944%_)))
                                    (_%tl143942144004%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body143937143944%_))))
                                (let* ((_%hd144007%_ _%hd143941144002%_)
                                       (_%tl144009%_ _%tl143942144004%_))
                                  (_%K143940143999%_
                                   _%tl144009%_
                                   _%hd144007%_)))
                              (_%E143939143948%_)))
                        (if (eq? 'null _%$e143901%_)
                            (let ((__tmp144973
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target143881%_)))
                                  (__tmp144972 (_%k143883%_ _%vars143880%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp144973
                               __tmp144972
                               _%E143882%_))
                            (if (eq? 'vector _%$e143901%_)
                                (let ((_%$e144011%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp144978
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target143881%_)))
                                        (__tmp144974
                                         (let ((__tmp144976
                                                (cons (cons (cons _%$e144011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp144977
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e143595%_
                                    _%target143881%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp144977))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp144975
                                                (_%recur143788%_
                                                 _%body143898%_
                                                 _%vars143880%_
                                                 _%$e144011%_
                                                 _%E143882%_
                                                 _%k143883%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp144976
                                            __tmp144975))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp144978
                                     __tmp144974
                                     _%E143882%_)))
                                (if (eq? 'box _%$e143901%_)
                                    (let ((_%$e144013%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp144983
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target143881%_)))
                                            (__tmp144979
                                             (let ((__tmp144981
                                                    (cons (cons (cons _%$e144013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp144982
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e143595%_
                                        _%target143881%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp144982))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp144980
                                                    (_%recur143788%_
                                                     _%body143898%_
                                                     _%vars143880%_
                                                     _%$e144013%_
                                                     _%E143882%_
                                                     _%k143883%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp144981
                                                __tmp144980))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp144983
                                         __tmp144979
                                         _%E143882%_)))
                                    (if (eq? 'datum _%$e143901%_)
                                        (let ((_%$e144015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp144989
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target143881%_)))
                                                (__tmp144984
                                                 (let ((__tmp144988
                                                        (cons (cons (cons _%$e144015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target143881%_))
                                  '()))
                      '()))
               (__tmp144985
                (let ((__tmp144987
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e144015%_ _%body143898%_)))
                      (__tmp144986 (_%k143883%_ _%vars143880%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp144987 __tmp144986 _%E143882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp144988
                                                    __tmp144985))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp144989
                                             __tmp144984
                                             _%E143882%_)))
                                        (_%BUG143787%_
                                         _%e143879%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e143884143891%_)
                                      (let ((_%hd143888144020%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143884143891%_)))
                                            (_%tl143889144022%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143884143891%_))))
                                        (let* ((_%tag144025%_
                                                _%hd143888144020%_)
                                               (_%body144027%_
                                                _%tl143889144022%_))
                                          (_%K143887144017%_
                                           _%body144027%_
                                           _%tag144025%_)))
                                      (_%E143886143895%_)))))
                             (_%splice-rlen143789%_
                              (lambda (_%e143841%_)
                                (let _%lp143843%_ ((_%e143845%_ _%e143841%_)
                                                   (_%n143846%_ '0))
                                  (let* ((_%e143847143854%_ _%e143845%_)
                                         (_%E143849143858%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e143847143854%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K143850143867%_
                                          (lambda (_%body143861%_
                                                   _%tag143862%_)
                                            (let ((_%$e143864%_ _%tag143862%_))
                                              (if (eq? 'splice _%$e143864%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx143593%_
                                                     _%where143780%_))
                                                  (if (eq? 'cons _%$e143864%_)
                                                      (_%lp143843%_
                                                       (cdr _%body143861%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n143846%_
                                                                '1)))
                                                      _%n143846%_))))))
                                    (if (pair? _%e143847143854%_)
                                        (let ((_%hd143851143870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143847143854%_)))
                                              (_%tl143852143872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143847143854%_))))
                                          (let* ((_%tag143875%_
                                                  _%hd143851143870%_)
                                                 (_%body143877%_
                                                  _%tl143852143872%_))
                                            (_%K143850143867%_
                                             _%body143877%_
                                             _%tag143875%_)))
                                        (_%E143849143858%_))))))
                             (_%splice-vars143790%_
                              (lambda (_%e143797%_)
                                (let _%recur143799%_ ((_%e143801%_ _%e143797%_)
                                                      (_%vars143802%_ '()))
                                  (let* ((_%e143803143810%_ _%e143801%_)
                                         (_%E143805143814%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e143803143810%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K143806143829%_
                                          (lambda (_%body143817%_
                                                   _%tag143818%_)
                                            (let ((_%$e143820%_ _%tag143818%_))
                                              (if (eq? 'var _%$e143820%_)
                                                  (cons _%body143817%_
                                                        _%vars143802%_)
                                                  (if (or (eq? 'cons
                                                               _%$e143820%_)
                                                          (eq? 'splice
                                                               _%$e143820%_))
                                                      (_%recur143799%_
                                                       (cdr _%body143817%_)
                                                       (_%recur143799%_
                                                        (car _%body143817%_)
                                                        _%vars143802%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e143820%_)
                      (eq? 'box _%$e143820%_))
                  (_%recur143799%_ _%body143817%_ _%vars143802%_)
                  _%vars143802%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e143803143810%_)
                                        (let ((_%hd143807143832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143803143810%_)))
                                              (_%tl143808143834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143803143810%_))))
                                          (let* ((_%tag143837%_
                                                  _%hd143807143832%_)
                                                 (_%body143839%_
                                                  _%tl143808143834%_))
                                            (_%K143806143829%_
                                             _%body143839%_
                                             _%tag143837%_)))
                                        (_%E143805143814%_))))))
                             (_%make-body143791%_
                              (lambda (_%vars143793%_)
                                (cons _%K143784%_
                                      (map (lambda (_%mvar143795%_)
                                             (let ((__tmp144990
                                                    (car _%mvar143795%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp144990
                                                _%vars143793%_
                                                _%BUG143787%_)))
                                           _%mvars143783%_)))))
                      (_%recur143788%_
                       _%hd143782%_
                       '()
                       _%target143781%_
                       _%E143785%_
                       _%make-body143791%_))))
                 (_%parse-clause143602%_
                  (lambda (_%hd143674%_ _%ids143675%_)
                    (let _%recur143677%_ ((_%e143679%_ _%hd143674%_)
                                          (_%vars143680%_ '())
                                          (_%depth143681%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e143679%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e143679%_))
                              (values '(any) _%vars143680%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e143679%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx143593%_
                                     _%hd143674%_))
                                  (if (let ((__tmp144991
                                             (lambda (_%id143686%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e143679%_
                                                  _%id143686%_)))))
                                        (declare (not safe))
                                        (__find __tmp144991 _%ids143675%_))
                                      (values (cons 'id _%e143679%_)
                                              _%vars143680%_)
                                      (if (let ((__tmp144992
                                                 (lambda (_%var143689%_)
                                                   (let ((__tmp144993
                                                          (car _%var143689%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e143679%_
                                                      __tmp144993)))))
                                            (declare (not safe))
                                            (__find __tmp144992
                                                    _%vars143680%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx143593%_
                                             _%e143679%_))
                                          (values (cons 'var _%e143679%_)
                                                  (cons (cons _%e143679%_
                                                              _%depth143681%_)
                                                        _%vars143680%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e143679%_))
                              (let* ((_%e143693143700%_ _%e143679%_)
                                     (_%E143695143704%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e143693143700%_))))
                                     (_%E143694143765%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e143693143700%_))
                                            (let ((_%e143696143708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e143693143700%_))))
                                              (let ((_%hd143697143711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143696143708%_)))
                                                    (_%tl143698143713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143696143708%_))))
                                                (let* ((_%hd143716%_
                                                        _%hd143697143711%_)
                                                       (_%rest143718%_
                                                        _%tl143698143713%_)
                                                       (_%make-pair143733%_
                                                        (lambda (_%tag143720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd143721%_
                         _%tl143722%_)
                  (let* ((_%hd-depth143724%_
                          (if (eq? _%tag143720%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth143681%_ '1))
                              _%depth143681%_))
                         (_g144994_
                          (_%recur143677%_
                           _%hd143721%_
                           _%vars143680%_
                           _%hd-depth143724%_)))
                    (begin
                      (let ((_g144995_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g144994_)
                                   (##values-length _g144994_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g144995_ 2)))
                            (error "Context expects 2 values" _g144995_)))
                      (let ((_%hd143726%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g144994_ 0)))
                            (_%vars143727%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g144994_ 1))))
                        (let ((_g144996_
                               (_%recur143677%_
                                _%tl143722%_
                                _%vars143727%_
                                _%depth143681%_)))
                          (begin
                            (let ((_g144997_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g144996_)
                                         (##values-length _g144996_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g144997_ 2)))
                                  (error "Context expects 2 values"
                                         _g144997_)))
                            (let ((_%tl143729%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g144996_ 0)))
                                  (_%vars143730%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g144996_ 1))))
                              (values (cons _%tag143720%_
                                            (cons _%hd143726%_ _%tl143729%_))
                                      _%vars143730%_)))))))))
               (_%e143734143741%_ _%rest143718%_)
               (_%E143736143745%_
                (lambda ()
                  (_%make-pair143733%_ 'cons _%hd143716%_ _%rest143718%_)))
               (_%E143735143761%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e143734143741%_))
                      (let ((_%e143737143749%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e143734143741%_))))
                        (let ((_%hd143738143752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143737143749%_)))
                              (_%tl143739143754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143737143749%_))))
                          (let* ((_%rest-hd143757%_ _%hd143738143752%_)
                                 (_%rest-tl143759%_ _%tl143739143754%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd143757%_))
                                (_%make-pair143733%_
                                 'splice
                                 _%hd143716%_
                                 _%rest-tl143759%_)
                                (_%make-pair143733%_
                                 'cons
                                 _%hd143716%_
                                 _%rest143718%_)))))
                      (_%E143736143745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E143735143761%_))))
                                            (_%E143695143704%_)))))
                                (_%E143694143765%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e143679%_))
                                  (values '(null) _%vars143680%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e143679%_))
                                      (let ((_g144998_
                                             (_%recur143677%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e143679%_)))
                                              _%vars143680%_
                                              _%depth143681%_)))
                                        (begin
                                          (let ((_g144999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g144998_)
                                                       (##values-length
                                                        _g144998_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g144999_ 2)))
                                                (error "Context expects 2 values"
                                                       _g144999_)))
                                          (let ((_%e143771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g144998_ 0)))
                                                (_%vars143772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g144998_
                                                    1))))
                                            (values (cons 'vector _%e143771%_)
                                                    _%vars143772%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e143679%_))
                                          (let ((_g145000_
                                                 (_%recur143677%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e143679%_)))
                                                  _%vars143680%_
                                                  _%depth143681%_)))
                                            (begin
                                              (let ((_g145001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g145000_)
                                                           (##values-length
                                                            _g145000_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g145001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g145001_)))
                                              (let ((_%e143775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g145000_
                                                        0)))
                                                    (_%vars143776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g145000_
                                                        1))))
                                                (values (cons 'box _%e143775%_)
                                                        _%vars143776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e143679%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e143679%_)))
                                                      _%vars143680%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx143593%_
                                                 _%e143679%_))))))))))))
          (let* ((_%e143603143616%_ _%stx143593%_)
                 (_%E143605143620%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e143603143616%_))))
                 (_%E143604143670%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e143603143616%_))
                        (let ((_%e143606143624%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e143603143616%_))))
                          (let ((_%hd143607143627%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143606143624%_)))
                                (_%tl143608143629%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143606143624%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143608143629%_))
                                (let ((_%e143609143632%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl143608143629%_))))
                                  (let ((_%hd143610143635%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143609143632%_)))
                                        (_%tl143611143637%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143609143632%_))))
                                    (let ((_%expr143640%_ _%hd143610143635%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143611143637%_))
                                          (let ((_%e143612143642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl143611143637%_))))
                                            (let ((_%hd143613143645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143612143642%_)))
                                                  (_%tl143614143647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143612143642%_))))
                                              (let* ((_%ids143650%_
                                                      _%hd143613143645%_)
                                                     (_%clauses143652%_
                                                      _%tl143614143647%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids143650%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses143652%_))
                                                        (let* ((_%ids143657%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids143650%_)))
                       (_%clauses143659%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses143652%_)))
                       (_%clause-ids143661%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses143659%_)))
                       (_%E143663%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target143665%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first143667%_
                        (if (null? _%clauses143659%_)
                            _%E143663%_
                            (car _%clause-ids143661%_))))
                  (let ((__tmp145003
                         (let ((__tmp145004
                                (let ((__tmp145006
                                       (let ((__tmp145008
                                              (cons (cons (cons _%E143663%_
                                                                '())
                                                          (cons (let ((__tmp145010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target143665%_ '()))
                              (__tmp145009
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target143665%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp145010 __tmp145009))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp145007
                                              (_%generate-body143599%_
                                               (_%generate-bindings143598%_
                                                _%target143665%_
                                                _%ids143657%_
                                                _%clauses143659%_
                                                _%clause-ids143661%_
                                                _%E143663%_)
                                               (cons _%first143667%_
                                                     (cons _%expr143640%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp145008
                                          __tmp145007)))
                                      (__tmp145005
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx143593%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp145006
                                   __tmp145005))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp145004)))
                        (__tmp145002
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx143593%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp145003 __tmp145002)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx143593%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx143593%_
                                                       _%ids143650%_))))))
                                          (_%E143605143620%_)))))
                                (_%E143605143620%_))))
                        (_%E143605143620%_)))))
            (_%E143604143670%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx144318%_)
        (let* ((_%identifier=?144320%_ 'free-identifier=?)
               (_%unwrap-e144322%_ 'syntax-e)
               (_%wrap-e144324%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144318%_
           _%identifier=?144320%_
           _%unwrap-e144322%_
           _%wrap-e144324%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx144326%_ _%identifier=?144327%_)
        (let* ((_%unwrap-e144329%_ 'syntax-e) (_%wrap-e144331%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144326%_
           _%identifier=?144327%_
           _%unwrap-e144329%_
           _%wrap-e144331%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx144333%_ _%identifier=?144334%_ _%unwrap-e144335%_)
        (let ((_%wrap-e144337%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144333%_
           _%identifier=?144334%_
           _%unwrap-e144335%_
           _%wrap-e144337%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g145011_
        (let ((_g145012_ (let () (declare (not safe)) (##length _g145011_))))
          (cond ((let () (declare (not safe)) (##fx= _g145012_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g145011_))
                ((let () (declare (not safe)) (##fx= _g145012_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g145011_))
                ((let () (declare (not safe)) (##fx= _g145012_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g145011_))
                ((let () (declare (not safe)) (##fx= _g145012_ 4))
                 (apply gx#macro-expand-syntax-case__% _g145011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g145011_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx143590%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx143590%_))
            (let ((__tmp145013
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx143590%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp145013 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd143548%_ . _%rest143549%_)
        (let ((_%len143551%_ (length _%hd143548%_)))
          (let _%lp143553%_ ((_%rest143555%_ _%rest143549%_))
            (let* ((_%rest143556143564%_ _%rest143555%_)
                   (_%else143558143572%_ (lambda () '#!void))
                   (_%K143560143578%_
                    (lambda (_%rest143575%_ _%hd143576%_)
                      (if (let ((__tmp145014 (length _%hd143576%_)))
                            (declare (not safe))
                            (##fx= _%len143551%_ __tmp145014))
                          (_%lp143553%_ _%rest143575%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd143576%_))))))
              (if (pair? _%rest143556143564%_)
                  (let ((_%hd143561143581%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143556143564%_)))
                        (_%tl143562143583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143556143564%_))))
                    (let* ((_%hd143586%_ _%hd143561143581%_)
                           (_%rest143588%_ _%tl143562143583%_))
                      (_%K143560143578%_ _%rest143588%_ _%hd143586%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx143498%_ _%n143499%_)
        (let _%lp143501%_ ((_%rest143504%_ _%stx143498%_) (_%r143506%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143504%_))
              (let* ((_%g143508143515%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143504%_)))
                     (_%E143510143519%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143508143515%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143511143526%_
                      (lambda (_%rest143522%_ _%hd143523%_)
                        (_%lp143501%_
                         _%rest143522%_
                         (cons _%hd143523%_ _%r143506%_)))))
                (if (pair? _%g143508143515%_)
                    (let ((_%hd143512143529%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143508143515%_)))
                          (_%tl143513143531%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143508143515%_))))
                      (let* ((_%hd143534%_ _%hd143512143529%_)
                             (_%rest143536%_ _%tl143513143531%_))
                        (_%K143511143526%_ _%rest143536%_ _%hd143534%_)))
                    (_%E143510143519%_)))
              (let _%lp143538%_ ((_%n143540%_ _%n143499%_)
                                 (_%l143541%_ _%r143506%_)
                                 (_%r143543%_ _%rest143504%_))
                (if (null? _%l143541%_)
                    (values _%l143541%_ _%r143543%_)
                    (if (fxpositive? _%n143540%_)
                        (_%lp143538%_
                         (let () (declare (not safe)) (##fx- _%n143540%_ '1))
                         (cdr _%l143541%_)
                         (cons (car _%l143541%_) _%r143543%_))
                        (values (reverse! _%l143541%_) _%r143543%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx143448%_ _%n143449%_)
        (let _%lp143451%_ ((_%rest143454%_ _%stx143448%_) (_%r143456%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143454%_))
              (let* ((_%g143458143465%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143454%_)))
                     (_%E143460143469%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143458143465%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143461143476%_
                      (lambda (_%rest143472%_ _%hd143473%_)
                        (_%lp143451%_
                         _%rest143472%_
                         (cons _%hd143473%_ _%r143456%_)))))
                (if (pair? _%g143458143465%_)
                    (let ((_%hd143462143479%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143458143465%_)))
                          (_%tl143463143481%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143458143465%_))))
                      (let* ((_%hd143484%_ _%hd143462143479%_)
                             (_%rest143486%_ _%tl143463143481%_))
                        (_%K143461143476%_ _%rest143486%_ _%hd143484%_)))
                    (_%E143460143469%_)))
              (let _%lp143488%_ ((_%n143490%_ _%n143449%_)
                                 (_%l143491%_ _%r143456%_)
                                 (_%r143493%_ _%rest143454%_))
                (if (null? _%l143491%_)
                    (vector _%l143491%_ _%r143493%_)
                    (if (fxpositive? _%n143490%_)
                        (_%lp143488%_
                         (let () (declare (not safe)) (##fx- _%n143490%_ '1))
                         (cdr _%l143491%_)
                         (cons (car _%l143491%_) _%r143493%_))
                        (vector (reverse! _%l143491%_) _%r143493%_))))))))))
