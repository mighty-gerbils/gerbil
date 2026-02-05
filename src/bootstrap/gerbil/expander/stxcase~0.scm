(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770333054)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp156768 (list gx#expander::t))
            (__tmp156767 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp156768
         '(id depth)
         __tmp156767
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args156764%_
        (apply make-instance gx#syntax-pattern::t _%$args156764%_)))
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
      (lambda (_%self156750%_ _%stx156751%_)
        (let ((_%self156754%_ _%self156750%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx156751%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx156217%_)
        (letrec ((_%generate156219%_
                  (lambda (_%e156459%_)
                    (letrec ((_%BUG156461%_
                              (lambda (_%q156626%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx156217%_
                                         _%e156459%_
                                         _%q156626%_))))
                             (_%local-pattern-e156462%_
                              (lambda (_%pat156624%_)
                                (let ((__tmp156769
                                       (##structure-ref
                                        _%pat156624%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp156769))))
                             (_%getvar156463%_
                              (lambda (_%q156621%_ _%vars156622%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q156621%_
                                   _%vars156622%_
                                   _%BUG156461%_))))
                             (_%getarg156464%_
                              (lambda (_%arg156587%_ _%vars156588%_)
                                (let* ((_%arg156589156596%_ _%arg156587%_)
                                       (_%E156591156600%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg156589156596%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K156592156609%_
                                        (lambda (_%e156603%_ _%tag156604%_)
                                          (let ((_%$e156606%_ _%tag156604%_))
                                            (if (eq? 'ref _%$e156606%_)
                                                (_%getvar156463%_
                                                 _%e156603%_
                                                 _%vars156588%_)
                                                (if (eq? 'pattern _%$e156606%_)
                                                    (_%local-pattern-e156462%_
                                                     _%e156603%_)
                                                    (_%BUG156461%_
                                                     _%arg156587%_)))))))
                                  (if (pair? _%arg156589156596%_)
                                      (let ((_%hd156593156612%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg156589156596%_)))
                                            (_%tl156594156614%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg156589156596%_))))
                                        (let* ((_%tag156617%_
                                                _%hd156593156612%_)
                                               (_%e156619%_
                                                _%tl156594156614%_))
                                          (_%K156592156609%_
                                           _%e156619%_
                                           _%tag156617%_)))
                                      (_%E156591156600%_))))))
                      (let _%recur156466%_ ((_%e156468%_ _%e156459%_)
                                            (_%vars156469%_ '()))
                        (let* ((_%e156470156477%_ _%e156468%_)
                               (_%E156472156481%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e156470156477%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K156473156575%_
                                (lambda (_%body156484%_ _%tag156485%_)
                                  (let ((_%$e156487%_ _%tag156485%_))
                                    (if (eq? 'datum _%$e156487%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body156484%_))
                                        (if (eq? 'term _%$e156487%_)
                                            (let ((_%id156490%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body156484%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id156490%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks156493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id156490%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks156493%_)
                                                        (let ((__tmp156770
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body156484%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp156770))
                (let ((__tmp156772
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body156484%_)))
                      (__tmp156771
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body156484%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp156772
                   __tmp156771
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id156490%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body156484%_))
                                                      (_%BUG156461%_
                                                       _%e156468%_))))
                                            (if (eq? 'pattern _%$e156487%_)
                                                (_%local-pattern-e156462%_
                                                 _%body156484%_)
                                                (if (eq? 'ref _%$e156487%_)
                                                    (_%getvar156463%_
                                                     _%body156484%_
                                                     _%vars156469%_)
                                                    (if (eq? 'cons
                                                             _%$e156487%_)
                                                        (let ((__tmp156774
                                                               (_%recur156466%_
                                                                (car _%body156484%_)
                                                                _%vars156469%_))
                                                              (__tmp156773
                                                               (_%recur156466%_
                                                                (cdr _%body156484%_)
                                                                _%vars156469%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp156774
                                                           __tmp156773))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e156487%_)
                    (let ((__tmp156775
                           (_%recur156466%_ _%body156484%_ _%vars156469%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp156775))
                    (if (eq? 'box _%$e156487%_)
                        (let ((__tmp156776
                               (_%recur156466%_
                                _%body156484%_
                                _%vars156469%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp156776))
                        (if (eq? 'splice _%$e156487%_)
                            (let* ((_%body156496156507%_ _%body156484%_)
                                   (_%E156498156511%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body156496156507%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K156499156549%_
                                    (lambda (_%args156514%_
                                             _%iv156515%_
                                             _%hd156516%_
                                             _%depth156517%_)
                                      (let* ((_%targets156523%_
                                              (map (lambda (_%g156518156520%_)
                                                     (_%getarg156464%_
                                                      _%g156518156520%_
                                                      _%vars156469%_))
                                                   _%args156514%_))
                                             (_%fold-in156525%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args156514%_)))
                                             (_%fold-out156527%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args156529%_
                                              (let ((__tmp156777
                                                     (cons _%fold-out156527%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp156777
                                                 _%fold-in156525%_)))
                                             (_%lambda-body156546%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth156517%_ '1))
                                                  (let ((_%r-args156537%_
                                                         (map (lambda (_%arg156531%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg156531%_)))
                      _%args156514%_))
                (_%r-vars156538%_
                 (let ((__tmp156778
                        (lambda (_%arg156533%_ _%var156534%_ _%r156535%_)
                          (cons (cons (cdr _%arg156533%_) _%var156534%_)
                                _%r156535%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp156778
                    _%vars156469%_
                    _%args156514%_
                    _%fold-in156525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur156466%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth156517%_ '1))
                         (cons _%hd156516%_
                               (cons (cons 'var _%fold-out156527%_)
                                     _%r-args156537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars156538%_))
                                                  (let* ((_%hd-vars156544%_
                                                          (let ((__tmp156779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg156540%_ _%var156541%_ _%r156542%_)
                           (cons (cons (cdr _%arg156540%_) _%var156541%_)
                                 _%r156542%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp156779
                     _%vars156469%_
                     _%args156514%_
                     _%fold-in156525%_)))
                 (__tmp156780
                  (_%recur156466%_ _%hd156516%_ _%hd-vars156544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp156780
                                                     _%fold-out156527%_)))))
                                        (let ((__tmp156784
                                               (if (let ((__tmp156785
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets156523%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp156785 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets156523%_))
                                                   '#!void))
                                              (__tmp156781
                                               (let ((__tmp156783
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args156529%_
                                                         _%lambda-body156546%_)))
                                                     (__tmp156782
                                                      (_%recur156466%_
                                                       _%iv156515%_
                                                       _%vars156469%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp156783
                                                  __tmp156782
                                                  _%targets156523%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp156784
                                           __tmp156781))))))
                              (if (pair? _%body156496156507%_)
                                  (let ((_%hd156500156552%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body156496156507%_)))
                                        (_%tl156501156554%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body156496156507%_))))
                                    (let ((_%depth156557%_ _%hd156500156552%_))
                                      (if (pair? _%tl156501156554%_)
                                          (let ((_%hd156502156559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl156501156554%_)))
                                                (_%tl156503156561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl156501156554%_))))
                                            (let ((_%hd156564%_
                                                   _%hd156502156559%_))
                                              (if (pair? _%tl156503156561%_)
                                                  (let ((_%hd156504156566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156503156561%_)))
                                                        (_%tl156505156568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156503156561%_))))
                                                    (let* ((_%iv156571%_
                                                            _%hd156504156566%_)
                                                           (_%args156573%_
                                                            _%tl156505156568%_))
                                                      (_%K156499156549%_
                                                       _%args156573%_
                                                       _%iv156571%_
                                                       _%hd156564%_
                                                       _%depth156557%_)))
                                                  (_%E156498156511%_))))
                                          (_%E156498156511%_))))
                                  (_%E156498156511%_)))
                            (if (eq? 'var _%$e156487%_)
                                _%body156484%_
                                (_%BUG156461%_ _%e156468%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e156470156477%_)
                              (let ((_%hd156474156578%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e156470156477%_)))
                                    (_%tl156475156580%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e156470156477%_))))
                                (let* ((_%tag156583%_ _%hd156474156578%_)
                                       (_%body156585%_ _%tl156475156580%_))
                                  (_%K156473156575%_
                                   _%body156585%_
                                   _%tag156583%_)))
                              (_%E156472156481%_)))))))
                 (_%parse156220%_
                  (lambda (_%e156261%_)
                    (letrec ((_%make-cons156263%_
                              (lambda (_%hd156451%_ _%tl156452%_)
                                (let ((_g156786_ _%hd156451%_)
                                      (_g156788_ _%tl156452%_))
                                  (begin
                                    (let ((_g156787_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156786_)
                                                 (##values-length _g156786_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156787_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156787_)))
                                    (let ((_g156789_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156788_)
                                                 (##values-length _g156788_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156789_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156789_)))
                                    (let ((_%hd-e156454%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156786_ 0)))
                                          (_%hd-vars156455%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156786_ 1))))
                                      (let ((_%tl-e156456%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156788_ 0)))
                                            (_%tl-vars156457%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156788_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e156454%_
                                                            _%tl-e156456%_))
                                                (append _%hd-vars156455%_
                                                        _%tl-vars156457%_))))))))
                             (_%make-splice156264%_
                              (lambda (_%where156387%_
                                       _%depth156388%_
                                       _%hd156389%_
                                       _%tl156390%_)
                                (let ((_g156790_ _%hd156389%_)
                                      (_g156792_ _%tl156390%_))
                                  (begin
                                    (let ((_g156791_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156790_)
                                                 (##values-length _g156790_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156791_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156791_)))
                                    (let ((_g156793_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156792_)
                                                 (##values-length _g156792_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156793_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156793_)))
                                    (let ((_%hd-e156392%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156790_ 0)))
                                          (_%hd-vars156393%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156790_ 1))))
                                      (let ((_%tl-e156394%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156792_ 0)))
                                            (_%tl-vars156395%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156792_ 1))))
                                        (let _%lp156397%_ ((_%rest156399%_
                                                            _%hd-vars156393%_)
                                                           (_%targets156400%_
                                                            '())
                                                           (_%vars156401%_
                                                            _%tl-vars156395%_))
                                          (let* ((_%rest156402156412%_
                                                  _%rest156399%_)
                                                 (_%else156404156420%_
                                                  (lambda ()
                                                    (if (null? _%targets156400%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx156217%_
                                                           _%where156387%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth156388%_
                                    (cons _%hd-e156392%_
                                          (cons _%tl-e156394%_
                                                _%targets156400%_))))
                        _%vars156401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K156406156432%_
                                                  (lambda (_%rest156423%_
                                                           _%hd-pat156424%_
                                                           _%hd-depth*156425%_)
                                                    (let ((_%hd-depth156427%_
                                                           (fx- _%hd-depth*156425%_
                                                                _%depth156388%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth156427%_))
                                                          (_%lp156397%_
                                                           _%rest156423%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat156424%_)
                         _%targets156400%_)
                   (cons (cons _%hd-depth156427%_ _%hd-pat156424%_)
                         _%vars156401%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth156427%_))
                      (_%lp156397%_
                       _%rest156423%_
                       (cons (cons 'pattern _%hd-pat156424%_)
                             _%targets156400%_)
                       _%vars156401%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx156217%_
                         _%where156387%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest156402156412%_)
                                                (let ((_%hd156407156435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest156402156412%_)))
                                                      (_%tl156408156437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest156402156412%_))))
                                                  (if (pair? _%hd156407156435%_)
                                                      (let ((_%hd156409156440%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd156407156435%_)))
                    (_%tl156410156442%_
                     (let () (declare (not safe)) (##cdr _%hd156407156435%_))))
                (let* ((_%hd-depth*156445%_ _%hd156409156440%_)
                       (_%hd-pat156447%_ _%tl156410156442%_)
                       (_%rest156449%_ _%tl156408156437%_))
                  (_%K156406156432%_
                   _%rest156449%_
                   _%hd-pat156447%_
                   _%hd-depth*156445%_)))
              (_%else156404156420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156404156420%_))))))))))
                             (_%recur156265%_
                              (lambda (_%e156270%_ _%is-e?156271%_)
                                (if (_%is-e?156271%_ _%e156270%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx156217%_))
                                    (if (gx#syntax-local-pattern? _%e156270%_)
                                        (let* ((_%pat156275%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e156270%_)))
                                               (_%depth156277%_
                                                (##structure-ref
                                                 _%pat156275%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth156277%_)
                                              (values (cons 'ref _%pat156275%_)
                                                      (cons (cons _%depth156277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat156275%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat156275%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e156270%_))
                                            (values (cons 'term _%e156270%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e156270%_))
                                                (let* ((_%e156281156288%_
                                                        _%e156270%_)
                                                       (_%E156283156292%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e156281156288%_))))
                                                       (_%E156282156374%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e156281156288%_))
                      (let ((_%e156284156296%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e156281156288%_))))
                        (let ((_%hd156285156299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156284156296%_)))
                              (_%tl156286156301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156284156296%_))))
                          (let* ((_%hd156304%_ _%hd156285156299%_)
                                 (_%rest156306%_ _%tl156286156301%_))
                            (if (_%is-e?156271%_ _%hd156304%_)
                                (let* ((_%e156307156314%_ _%rest156306%_)
                                       (_%E156309156318%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx156217%_
                                             _%e156270%_))))
                                       (_%E156308156332%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e156307156314%_))
                                              (let ((_%e156310156322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e156307156314%_))))
                                                (let ((_%hd156311156325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e156310156322%_)))
                                                      (_%tl156312156327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e156310156322%_))))
                                                  (let ((_%rest156330%_
                                                         _%hd156311156325%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl156312156327%_))
                                                        (_%recur156265%_
                                                         _%rest156330%_
                                                         false)
                                                        (_%E156309156318%_)))))
                                              (_%E156309156318%_)))))
                                  (_%E156308156332%_))
                                (let _%lp156336%_ ((_%rest156338%_
                                                    _%rest156306%_)
                                                   (_%depth156339%_ '0))
                                  (let* ((_%e156340156347%_ _%rest156338%_)
                                         (_%E156342156351%_
                                          (lambda ()
                                            (if (fxpositive? _%depth156339%_)
                                                (_%make-splice156264%_
                                                 _%e156270%_
                                                 _%depth156339%_
                                                 (_%recur156265%_
                                                  _%hd156304%_
                                                  _%is-e?156271%_)
                                                 (_%recur156265%_
                                                  _%rest156338%_
                                                  _%is-e?156271%_))
                                                (_%make-cons156263%_
                                                 (_%recur156265%_
                                                  _%hd156304%_
                                                  _%is-e?156271%_)
                                                 (_%recur156265%_
                                                  _%rest156338%_
                                                  _%is-e?156271%_)))))
                                         (_%E156341156370%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e156340156347%_))
                                                (let ((_%e156343156355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e156340156347%_))))
                                                  (let ((_%hd156344156358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e156343156355%_)))
                                                        (_%tl156345156360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e156343156355%_))))
                                                    (let* ((_%rest-hd156363%_
                                                            _%hd156344156358%_)
                                                           (_%rest-tl156365%_
                                                            _%tl156345156360%_))
                                                      (if (_%is-e?156271%_
                                                           _%rest-hd156363%_)
                                                          (_%lp156336%_
                                                           _%rest-tl156365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth156339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth156339%_)
                      (_%make-splice156264%_
                       _%e156270%_
                       _%depth156339%_
                       (_%recur156265%_ _%hd156304%_ _%is-e?156271%_)
                       (_%recur156265%_ _%rest156338%_ _%is-e?156271%_))
                      (_%make-cons156263%_
                       (_%recur156265%_ _%hd156304%_ _%is-e?156271%_)
                       (_%recur156265%_ _%rest156338%_ _%is-e?156271%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E156342156351%_)))))
                                    (_%E156341156370%_)))))))
                      (_%E156283156292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E156282156374%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e156270%_))
                                                    (let ((_g156794_
                                                           (_%recur156265%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e156270%_)))
                    _%is-e?156271%_)))
              (begin
                (let ((_g156795_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g156794_)
                             (##values-length _g156794_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g156795_ 2)))
                      (error "Context expects 2 values" _g156795_)))
                (let ((_%e156379%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156794_ 0)))
                      (_%vars156380%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156794_ 1))))
                  (values (cons 'vector _%e156379%_) _%vars156380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e156270%_))
                                                        (let ((_g156796_
                                                               (_%recur156265%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e156270%_)))
                        _%is-e?156271%_)))
                  (begin
                    (let ((_g156797_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g156796_)
                                 (##values-length _g156796_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g156797_ 2)))
                          (error "Context expects 2 values" _g156797_)))
                    (let ((_%e156383%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156796_ 0)))
                          (_%vars156384%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156796_ 1))))
                      (values (cons 'box _%e156383%_) _%vars156384%_))))
                (values (cons 'datum _%e156270%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g156798_
                             (_%recur156265%_ _%e156261%_ gx#ellipsis?)))
                        (begin
                          (let ((_g156799_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g156798_)
                                       (##values-length _g156798_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g156799_ 2)))
                                (error "Context expects 2 values" _g156799_)))
                          (let ((_%tree156267%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156798_ 0)))
                                (_%vars156268%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156798_ 1))))
                            (if (null? _%vars156268%_)
                                _%tree156267%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx156217%_
                                   _%vars156268%_))))))))))
          (let* ((_%e156221156231%_ _%stx156217%_)
                 (_%E156223156235%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx156217%_))))
                 (_%E156222156257%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e156221156231%_))
                        (let ((_%e156224156239%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e156221156231%_))))
                          (let ((_%hd156225156242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156224156239%_)))
                                (_%tl156226156244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156224156239%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156226156244%_))
                                (let ((_%e156227156247%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl156226156244%_))))
                                  (let ((_%hd156228156250%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156227156247%_)))
                                        (_%tl156229156252%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156227156247%_))))
                                    (let ((_%form156255%_ _%hd156228156250%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156229156252%_))
                                          (let ((__tmp156801
                                                 (_%generate156219%_
                                                  (_%parse156220%_
                                                   _%form156255%_)))
                                                (__tmp156800
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx156217%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp156801
                                             __tmp156800))
                                          (_%E156223156235%_)))))
                                (_%E156223156235%_))))
                        (_%E156223156235%_)))))
            (_%E156222156257%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx155466%_
               _%identifier=?155467%_
               _%unwrap-e155468%_
               _%wrap-e155469%_)
        (letrec ((_%generate-bindings155471%_
                  (lambda (_%target156081%_
                           _%ids156082%_
                           _%clauses156083%_
                           _%clause-ids156084%_
                           _%E156085%_)
                    (letrec ((_%generate1156087%_
                              (lambda (_%clause156184%_
                                       _%clause-id156185%_
                                       _%E156186%_)
                                (cons (cons _%clause-id156185%_ '())
                                      (cons (let ((__tmp156803
                                                   (cons _%target156081%_ '()))
                                                  (__tmp156802
                                                   (_%generate-clause155473%_
                                                    _%target156081%_
                                                    _%ids156082%_
                                                    _%clause156184%_
                                                    _%E156186%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp156803
                                               __tmp156802))
                                            '())))))
                      (let _%lp156089%_ ((_%rest156091%_ _%clauses156083%_)
                                         (_%rest-ids156092%_
                                          _%clause-ids156084%_)
                                         (_%bindings156093%_ '()))
                        (let* ((_%rest156094156102%_ _%rest156091%_)
                               (_%else156096156110%_
                                (lambda () _%bindings156093%_))
                               (_%K156098156172%_
                                (lambda (_%rest156113%_ _%clause156114%_)
                                  (let* ((_%rest-ids156115156122%_
                                          _%rest-ids156092%_)
                                         (_%E156117156126%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids156115156122%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K156118156160%_
                                          (lambda (_%rest-ids156129%_
                                                   _%clause-id156130%_)
                                            (let* ((_%rest-ids156131156139%_
                                                    _%rest-ids156129%_)
                                                   (_%else156133156147%_
                                                    (lambda ()
                                                      (cons (_%generate1156087%_
                                                             _%clause156114%_
                                                             _%clause-id156130%_
                                                             _%E156085%_)
                                                            _%bindings156093%_)))
                                                   (_%K156135156152%_
                                                    (lambda (_%next-clause-id156150%_)
                                                      (_%lp156089%_
                                                       _%rest156113%_
                                                       _%rest-ids156129%_
                                                       (cons (_%generate1156087%_
                                                              _%clause156114%_
                                                              _%clause-id156130%_
                                                              _%next-clause-id156150%_)
                                                             _%bindings156093%_)))))
                                              (if (pair? _%rest-ids156131156139%_)
                                                  (let* ((_%hd156136156155%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids156131156139%_)))
                                                         (_%next-clause-id156158%_
                                                          _%hd156136156155%_))
                                                    (_%K156135156152%_
                                                     _%next-clause-id156158%_))
                                                  (_%else156133156147%_))))))
                                    (if (pair? _%rest-ids156115156122%_)
                                        (let ((_%hd156119156163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids156115156122%_)))
                                              (_%tl156120156165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids156115156122%_))))
                                          (let* ((_%clause-id156168%_
                                                  _%hd156119156163%_)
                                                 (_%rest-ids156170%_
                                                  _%tl156120156165%_))
                                            (_%K156118156160%_
                                             _%rest-ids156170%_
                                             _%clause-id156168%_)))
                                        (_%E156117156126%_))))))
                          (if (pair? _%rest156094156102%_)
                              (let ((_%hd156099156175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest156094156102%_)))
                                    (_%tl156100156177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest156094156102%_))))
                                (let* ((_%clause156180%_ _%hd156099156175%_)
                                       (_%rest156182%_ _%tl156100156177%_))
                                  (_%K156098156172%_
                                   _%rest156182%_
                                   _%clause156180%_)))
                              (_%else156096156110%_)))))))
                 (_%generate-body155472%_
                  (lambda (_%bindings156041%_ _%body156042%_)
                    (let _%recur156044%_ ((_%rest156046%_ _%bindings156041%_))
                      (let* ((_%rest156047156055%_ _%rest156046%_)
                             (_%else156049156063%_ (lambda () _%body156042%_))
                             (_%K156051156069%_
                              (lambda (_%rest156066%_ _%hd156067%_)
                                (let ((__tmp156805 (cons _%hd156067%_ '()))
                                      (__tmp156804
                                       (_%recur156044%_ _%rest156066%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp156805
                                   __tmp156804)))))
                        (if (pair? _%rest156047156055%_)
                            (let ((_%hd156052156072%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156047156055%_)))
                                  (_%tl156053156074%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156047156055%_))))
                              (let* ((_%hd156077%_ _%hd156052156072%_)
                                     (_%rest156079%_ _%tl156053156074%_))
                                (_%K156051156069%_
                                 _%rest156079%_
                                 _%hd156077%_)))
                            (_%else156049156063%_))))))
                 (_%generate-clause155473%_
                  (lambda (_%target155904%_
                           _%ids155905%_
                           _%clause155906%_
                           _%E155907%_)
                    (letrec ((_%generate1155909%_
                              (lambda (_%hd155996%_
                                       _%fender155997%_
                                       _%body155998%_)
                                (let ((_g156806_
                                       (_%parse-clause155475%_
                                        _%hd155996%_
                                        _%ids155905%_)))
                                  (begin
                                    (let ((_g156807_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156806_)
                                                 (##values-length _g156806_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156807_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156807_)))
                                    (let ((_%e156000%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156806_ 0)))
                                          (_%mvars156001%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156806_ 1))))
                                      (let* ((_%pvars156003%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars156001%_))))
                                             (_%E156005%_
                                              (cons _%E155907%_
                                                    (cons _%target155904%_
                                                          '())))
                                             (_%K156038%_
                                              (let ((__tmp156808
                                                     (let ((__tmp156810
                                                            (map (lambda (_%mvar156007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar156008%_)
                           (let* ((_%mvar156009156016%_ _%mvar156007%_)
                                  (_%E156011156020%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar156009156016%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K156012156026%_
                                   (lambda (_%depth156023%_ _%id156024%_)
                                     (cons _%id156024%_
                                           (cons (let ((__tmp156812
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id156024%_)))
                                                       (__tmp156811
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar156008%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp156812
                                                    __tmp156811
                                                    _%depth156023%_))
                                                 '())))))
                             (if (pair? _%mvar156009156016%_)
                                 (let ((_%hd156013156029%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar156009156016%_)))
                                       (_%tl156014156031%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar156009156016%_))))
                                   (let* ((_%id156034%_ _%hd156013156029%_)
                                          (_%depth156036%_ _%tl156014156031%_))
                                     (_%K156012156026%_
                                      _%depth156036%_
                                      _%id156034%_)))
                                 (_%E156011156020%_))))
                         _%mvars156001%_
                         _%pvars156003%_))
                   (__tmp156809
                    (if (eq? _%fender155997%_ '#t)
                        _%body155998%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender155997%_
                           _%body155998%_
                           _%E156005%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp156810 __tmp156809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars156003%_
                                                 __tmp156808))))
                                        (_%generate-match155474%_
                                         _%hd155996%_
                                         _%target155904%_
                                         _%e156000%_
                                         _%mvars156001%_
                                         _%K156038%_
                                         _%E156005%_))))))))
                      (let* ((_%e155910155930%_ _%clause155906%_)
                             (_%E155919155934%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e155910155930%_))))
                             (_%E155912155968%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155910155930%_))
                                    (let ((_%e155920155938%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155910155930%_))))
                                      (let ((_%hd155921155941%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155920155938%_)))
                                            (_%tl155922155943%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155920155938%_))))
                                        (let ((_%hd155946%_
                                               _%hd155921155941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155922155943%_))
                                              (let ((_%e155923155948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155922155943%_))))
                                                (let ((_%hd155924155951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155923155948%_)))
                                                      (_%tl155925155953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155923155948%_))))
                                                  (let ((_%fender155956%_
                                                         _%hd155924155951%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155925155953%_))
                                                        (let ((_%e155926155958%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl155925155953%_))))
                  (let ((_%hd155927155961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155926155958%_)))
                        (_%tl155928155963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155926155958%_))))
                    (let ((_%body155966%_ _%hd155927155961%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl155928155963%_))
                          (_%generate1155909%_
                           _%hd155946%_
                           _%fender155956%_
                           _%body155966%_)
                          (_%E155919155934%_)))))
                (_%E155919155934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E155919155934%_)))))
                                    (_%E155919155934%_))))
                             (_%E155911155992%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155910155930%_))
                                    (let ((_%e155913155972%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155910155930%_))))
                                      (let ((_%hd155914155975%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155913155972%_)))
                                            (_%tl155915155977%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155913155972%_))))
                                        (let ((_%hd155980%_
                                               _%hd155914155975%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155915155977%_))
                                              (let ((_%e155916155982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155915155977%_))))
                                                (let ((_%hd155917155985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155916155982%_)))
                                                      (_%tl155918155987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155916155982%_))))
                                                  (let ((_%body155990%_
                                                         _%hd155917155985%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155918155987%_))
                                                        (_%generate1155909%_
                                                         _%hd155980%_
                                                         '#t
                                                         _%body155990%_)
                                                        (_%E155912155968%_)))))
                                              (_%E155912155968%_)))))
                                    (_%E155912155968%_)))))
                        (_%E155911155992%_)))))
                 (_%generate-match155474%_
                  (lambda (_%where155653%_
                           _%target155654%_
                           _%hd155655%_
                           _%mvars155656%_
                           _%K155657%_
                           _%E155658%_)
                    (letrec ((_%BUG155660%_
                              (lambda (_%q155902%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx155466%_
                                         _%hd155655%_
                                         _%q155902%_))))
                             (_%recur155661%_
                              (lambda (_%e155752%_
                                       _%vars155753%_
                                       _%target155754%_
                                       _%E155755%_
                                       _%k155756%_)
                                (let* ((_%e155757155764%_ _%e155752%_)
                                       (_%E155759155768%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e155757155764%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K155760155890%_
                                        (lambda (_%body155771%_ _%tag155772%_)
                                          (let ((_%$e155774%_ _%tag155772%_))
                                            (if (eq? 'any _%$e155774%_)
                                                (_%k155756%_ _%vars155753%_)
                                                (if (eq? 'id _%$e155774%_)
                                                    (let ((__tmp156817
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target155754%_)))
                                                          (__tmp156813
                                                           (let ((__tmp156815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp156816
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e155469%_
                                    _%body155771%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?155467%_
                             __tmp156816
                             _%target155754%_)))
                         (__tmp156814 (_%k155756%_ _%vars155753%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp156815 __tmp156814 _%E155755%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp156817 __tmp156813 _%E155755%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e155774%_)
                                                        (_%k155756%_
                                                         (cons (cons _%body155771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target155754%_)
                       _%vars155753%_))
                (if (eq? 'cons _%$e155774%_)
                    (let ((_%$e155777%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd155778%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl155779%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp156823
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target155754%_)))
                            (__tmp156818
                             (let ((__tmp156822
                                    (cons (cons (cons _%$e155777%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e155468%_
                                                         _%target155754%_))
                                                      '()))
                                          '()))
                                   (__tmp156819
                                    (let ((__tmp156821
                                           (cons (cons (cons _%$hd155778%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e155777%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl155779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e155777%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp156820
                                           (let* ((_%body155780155787%_
                                                   _%body155771%_)
                                                  (_%E155782155791%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body155780155787%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K155783155799%_
                                                   (lambda (_%tl155794%_
                                                            _%hd155795%_)
                                                     (_%recur155661%_
                                                      _%hd155795%_
                                                      _%vars155753%_
                                                      _%$hd155778%_
                                                      _%E155755%_
                                                      (lambda (_%vars155797%_)
                                                        (_%recur155661%_
                                                         _%tl155794%_
                                                         _%vars155797%_
                                                         _%$tl155779%_
                                                         _%E155755%_
                                                         _%k155756%_))))))
                                             (if (pair? _%body155780155787%_)
                                                 (let ((_%hd155784155802%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body155780155787%_)))
                                                       (_%tl155785155804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body155780155787%_))))
                                                   (let* ((_%hd155807%_
                                                           _%hd155784155802%_)
                                                          (_%tl155809%_
                                                           _%tl155785155804%_))
                                                     (_%K155783155799%_
                                                      _%tl155809%_
                                                      _%hd155807%_)))
                                                 (_%E155782155791%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp156821
                                       __tmp156820))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp156822
                                __tmp156819))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp156823
                         __tmp156818
                         _%E155755%_)))
                    (if (eq? 'splice _%$e155774%_)
                        (let* ((_%body155810155817%_ _%body155771%_)
                               (_%E155812155821%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body155810155817%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K155813155872%_
                                (lambda (_%tl155824%_ _%hd155825%_)
                                  (let* ((_%rlen155827%_
                                          (_%splice-rlen155662%_ _%tl155824%_))
                                         (_%$target155829%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd155831%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl155833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp155835%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e155837%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd155839%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl155841%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars155843%_
                                          (_%splice-vars155663%_ _%hd155825%_))
                                         (_%lvars155845%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155843%_)))
                                         (_%tlvars155847%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155843%_)))
                                         (_%linit155851%_
                                          (map (lambda (_%var155849%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars155845%_)))
                                    (letrec ((_%make-loop155854%_
                                              (lambda (_%vars155858%_)
                                                (let ((__tmp156825
                                                       (cons (cons (cons _%$lp155835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp156838
                                        (cons _%$hd155831%_ _%lvars155845%_))
                                       (__tmp156826
                                        (let ((__tmp156837
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd155831%_)))
                                              (__tmp156831
                                               (let ((__tmp156836
                                                      (cons (cons (cons _%$lp-e155837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e155468%_
                                   _%$hd155831%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156832
                                                      (let ((__tmp156835
                                                             (cons (cons (cons _%$lp-hd155839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e155837%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl155841%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e155837%_))
                                             '()))
                                 '())))
                    (__tmp156833
                     (_%recur155661%_
                      _%hd155825%_
                      '()
                      _%$lp-hd155839%_
                      _%E155755%_
                      (lambda (_%hdvars155860%_)
                        (cons _%$lp155835%_
                              (cons _%$lp-tl155841%_
                                    (map (lambda (_%svar155862%_
                                                  _%lvar155863%_)
                                           (let ((__tmp156834
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar155862%_
                                                     _%hdvars155860%_
                                                     _%BUG155660%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp156834
                                              _%lvar155863%_)))
                                         _%svars155843%_
                                         _%lvars155845%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp156835 __tmp156833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156836
                                                  __tmp156832)))
                                              (__tmp156827
                                               (let ((__tmp156830
                                                      (map (lambda (_%lvar155865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar155866%_)
                     (cons (cons _%tlvar155866%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar155865%_))
                                 '())))
                   _%lvars155845%_
                   _%tlvars155847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156828
                                                      (_%k155756%_
                                                       (let ((__tmp156829
                                                              (lambda (_%svar155868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar155869%_
                               _%r155870%_)
                        (cons (cons _%svar155868%_ _%tlvar155869%_)
                              _%r155870%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp156829
                  _%vars155858%_
                  _%svars155843%_
                  _%tlvars155847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156830
                                                  __tmp156828))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156837
                                           __tmp156831
                                           __tmp156827))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp156838
                                    __tmp156826))
                                 '()))
                     '()))
              (__tmp156824
               (cons _%$lp155835%_ (cons _%$target155829%_ _%linit155851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp156825
                                                   __tmp156824)))))
                                      (let ((_%body155856%_
                                             (let ((__tmp156840
                                                    (cons (cons (cons _%$target155829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl155833%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target155754%_
                                 _%rlen155827%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156839
                                                    (_%recur155661%_
                                                     _%tl155824%_
                                                     _%vars155753%_
                                                     _%$tl155833%_
                                                     _%E155755%_
                                                     _%make-loop155854%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156840
                                                __tmp156839))))
                                        (let ((__tmp156844
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target155754%_)))
                                              (__tmp156841
                                               (if (zero? _%rlen155827%_)
                                                   _%body155856%_
                                                   (let ((__tmp156842
                                                          (let ((__tmp156843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target155754%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp156843 _%rlen155827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp156842
                                                      _%body155856%_
                                                      _%E155755%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156844
                                           __tmp156841
                                           _%E155755%_))))))))
                          (if (pair? _%body155810155817%_)
                              (let ((_%hd155814155875%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body155810155817%_)))
                                    (_%tl155815155877%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body155810155817%_))))
                                (let* ((_%hd155880%_ _%hd155814155875%_)
                                       (_%tl155882%_ _%tl155815155877%_))
                                  (_%K155813155872%_
                                   _%tl155882%_
                                   _%hd155880%_)))
                              (_%E155812155821%_)))
                        (if (eq? 'null _%$e155774%_)
                            (let ((__tmp156846
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target155754%_)))
                                  (__tmp156845 (_%k155756%_ _%vars155753%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp156846
                               __tmp156845
                               _%E155755%_))
                            (if (eq? 'vector _%$e155774%_)
                                (let ((_%$e155884%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp156851
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target155754%_)))
                                        (__tmp156847
                                         (let ((__tmp156849
                                                (cons (cons (cons _%$e155884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp156850
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e155468%_
                                    _%target155754%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp156850))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp156848
                                                (_%recur155661%_
                                                 _%body155771%_
                                                 _%vars155753%_
                                                 _%$e155884%_
                                                 _%E155755%_
                                                 _%k155756%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp156849
                                            __tmp156848))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp156851
                                     __tmp156847
                                     _%E155755%_)))
                                (if (eq? 'box _%$e155774%_)
                                    (let ((_%$e155886%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp156856
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target155754%_)))
                                            (__tmp156852
                                             (let ((__tmp156854
                                                    (cons (cons (cons _%$e155886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp156855
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e155468%_
                                        _%target155754%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp156855))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156853
                                                    (_%recur155661%_
                                                     _%body155771%_
                                                     _%vars155753%_
                                                     _%$e155886%_
                                                     _%E155755%_
                                                     _%k155756%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156854
                                                __tmp156853))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp156856
                                         __tmp156852
                                         _%E155755%_)))
                                    (if (eq? 'datum _%$e155774%_)
                                        (let ((_%$e155888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp156862
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target155754%_)))
                                                (__tmp156857
                                                 (let ((__tmp156861
                                                        (cons (cons (cons _%$e155888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target155754%_))
                                  '()))
                      '()))
               (__tmp156858
                (let ((__tmp156860
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e155888%_ _%body155771%_)))
                      (__tmp156859 (_%k155756%_ _%vars155753%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp156860 __tmp156859 _%E155755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp156861
                                                    __tmp156858))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp156862
                                             __tmp156857
                                             _%E155755%_)))
                                        (_%BUG155660%_
                                         _%e155752%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e155757155764%_)
                                      (let ((_%hd155761155893%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155757155764%_)))
                                            (_%tl155762155895%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155757155764%_))))
                                        (let* ((_%tag155898%_
                                                _%hd155761155893%_)
                                               (_%body155900%_
                                                _%tl155762155895%_))
                                          (_%K155760155890%_
                                           _%body155900%_
                                           _%tag155898%_)))
                                      (_%E155759155768%_)))))
                             (_%splice-rlen155662%_
                              (lambda (_%e155714%_)
                                (let _%lp155716%_ ((_%e155718%_ _%e155714%_)
                                                   (_%n155719%_ '0))
                                  (let* ((_%e155720155727%_ _%e155718%_)
                                         (_%E155722155731%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155720155727%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155723155740%_
                                          (lambda (_%body155734%_
                                                   _%tag155735%_)
                                            (let ((_%$e155737%_ _%tag155735%_))
                                              (if (eq? 'splice _%$e155737%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx155466%_
                                                     _%where155653%_))
                                                  (if (eq? 'cons _%$e155737%_)
                                                      (_%lp155716%_
                                                       (cdr _%body155734%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n155719%_
                                                                '1)))
                                                      _%n155719%_))))))
                                    (if (pair? _%e155720155727%_)
                                        (let ((_%hd155724155743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155720155727%_)))
                                              (_%tl155725155745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155720155727%_))))
                                          (let* ((_%tag155748%_
                                                  _%hd155724155743%_)
                                                 (_%body155750%_
                                                  _%tl155725155745%_))
                                            (_%K155723155740%_
                                             _%body155750%_
                                             _%tag155748%_)))
                                        (_%E155722155731%_))))))
                             (_%splice-vars155663%_
                              (lambda (_%e155670%_)
                                (let _%recur155672%_ ((_%e155674%_ _%e155670%_)
                                                      (_%vars155675%_ '()))
                                  (let* ((_%e155676155683%_ _%e155674%_)
                                         (_%E155678155687%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155676155683%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155679155702%_
                                          (lambda (_%body155690%_
                                                   _%tag155691%_)
                                            (let ((_%$e155693%_ _%tag155691%_))
                                              (if (eq? 'var _%$e155693%_)
                                                  (cons _%body155690%_
                                                        _%vars155675%_)
                                                  (if (or (eq? 'cons
                                                               _%$e155693%_)
                                                          (eq? 'splice
                                                               _%$e155693%_))
                                                      (_%recur155672%_
                                                       (cdr _%body155690%_)
                                                       (_%recur155672%_
                                                        (car _%body155690%_)
                                                        _%vars155675%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e155693%_)
                      (eq? 'box _%$e155693%_))
                  (_%recur155672%_ _%body155690%_ _%vars155675%_)
                  _%vars155675%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e155676155683%_)
                                        (let ((_%hd155680155705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155676155683%_)))
                                              (_%tl155681155707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155676155683%_))))
                                          (let* ((_%tag155710%_
                                                  _%hd155680155705%_)
                                                 (_%body155712%_
                                                  _%tl155681155707%_))
                                            (_%K155679155702%_
                                             _%body155712%_
                                             _%tag155710%_)))
                                        (_%E155678155687%_))))))
                             (_%make-body155664%_
                              (lambda (_%vars155666%_)
                                (cons _%K155657%_
                                      (map (lambda (_%mvar155668%_)
                                             (let ((__tmp156863
                                                    (car _%mvar155668%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp156863
                                                _%vars155666%_
                                                _%BUG155660%_)))
                                           _%mvars155656%_)))))
                      (_%recur155661%_
                       _%hd155655%_
                       '()
                       _%target155654%_
                       _%E155658%_
                       _%make-body155664%_))))
                 (_%parse-clause155475%_
                  (lambda (_%hd155547%_ _%ids155548%_)
                    (let _%recur155550%_ ((_%e155552%_ _%hd155547%_)
                                          (_%vars155553%_ '())
                                          (_%depth155554%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e155552%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e155552%_))
                              (values '(any) _%vars155553%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e155552%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx155466%_
                                     _%hd155547%_))
                                  (if (let ((__tmp156864
                                             (lambda (_%id155559%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e155552%_
                                                  _%id155559%_)))))
                                        (declare (not safe))
                                        (__find __tmp156864 _%ids155548%_))
                                      (values (cons 'id _%e155552%_)
                                              _%vars155553%_)
                                      (if (let ((__tmp156865
                                                 (lambda (_%var155562%_)
                                                   (let ((__tmp156866
                                                          (car _%var155562%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e155552%_
                                                      __tmp156866)))))
                                            (declare (not safe))
                                            (__find __tmp156865
                                                    _%vars155553%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx155466%_
                                             _%e155552%_))
                                          (values (cons 'var _%e155552%_)
                                                  (cons (cons _%e155552%_
                                                              _%depth155554%_)
                                                        _%vars155553%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e155552%_))
                              (let* ((_%e155566155573%_ _%e155552%_)
                                     (_%E155568155577%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e155566155573%_))))
                                     (_%E155567155638%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e155566155573%_))
                                            (let ((_%e155569155581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e155566155573%_))))
                                              (let ((_%hd155570155584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155569155581%_)))
                                                    (_%tl155571155586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155569155581%_))))
                                                (let* ((_%hd155589%_
                                                        _%hd155570155584%_)
                                                       (_%rest155591%_
                                                        _%tl155571155586%_)
                                                       (_%make-pair155606%_
                                                        (lambda (_%tag155593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd155594%_
                         _%tl155595%_)
                  (let* ((_%hd-depth155597%_
                          (if (eq? _%tag155593%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth155554%_ '1))
                              _%depth155554%_))
                         (_g156867_
                          (_%recur155550%_
                           _%hd155594%_
                           _%vars155553%_
                           _%hd-depth155597%_)))
                    (begin
                      (let ((_g156868_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g156867_)
                                   (##values-length _g156867_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g156868_ 2)))
                            (error "Context expects 2 values" _g156868_)))
                      (let ((_%hd155599%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156867_ 0)))
                            (_%vars155600%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156867_ 1))))
                        (let ((_g156869_
                               (_%recur155550%_
                                _%tl155595%_
                                _%vars155600%_
                                _%depth155554%_)))
                          (begin
                            (let ((_g156870_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g156869_)
                                         (##values-length _g156869_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g156870_ 2)))
                                  (error "Context expects 2 values"
                                         _g156870_)))
                            (let ((_%tl155602%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156869_ 0)))
                                  (_%vars155603%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156869_ 1))))
                              (values (cons _%tag155593%_
                                            (cons _%hd155599%_ _%tl155602%_))
                                      _%vars155603%_)))))))))
               (_%e155607155614%_ _%rest155591%_)
               (_%E155609155618%_
                (lambda ()
                  (_%make-pair155606%_ 'cons _%hd155589%_ _%rest155591%_)))
               (_%E155608155634%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e155607155614%_))
                      (let ((_%e155610155622%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e155607155614%_))))
                        (let ((_%hd155611155625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155610155622%_)))
                              (_%tl155612155627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155610155622%_))))
                          (let* ((_%rest-hd155630%_ _%hd155611155625%_)
                                 (_%rest-tl155632%_ _%tl155612155627%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd155630%_))
                                (_%make-pair155606%_
                                 'splice
                                 _%hd155589%_
                                 _%rest-tl155632%_)
                                (_%make-pair155606%_
                                 'cons
                                 _%hd155589%_
                                 _%rest155591%_)))))
                      (_%E155609155618%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E155608155634%_))))
                                            (_%E155568155577%_)))))
                                (_%E155567155638%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e155552%_))
                                  (values '(null) _%vars155553%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e155552%_))
                                      (let ((_g156871_
                                             (_%recur155550%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e155552%_)))
                                              _%vars155553%_
                                              _%depth155554%_)))
                                        (begin
                                          (let ((_g156872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g156871_)
                                                       (##values-length
                                                        _g156871_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g156872_ 2)))
                                                (error "Context expects 2 values"
                                                       _g156872_)))
                                          (let ((_%e155644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g156871_ 0)))
                                                (_%vars155645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g156871_
                                                    1))))
                                            (values (cons 'vector _%e155644%_)
                                                    _%vars155645%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e155552%_))
                                          (let ((_g156873_
                                                 (_%recur155550%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e155552%_)))
                                                  _%vars155553%_
                                                  _%depth155554%_)))
                                            (begin
                                              (let ((_g156874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g156873_)
                                                           (##values-length
                                                            _g156873_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g156874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g156874_)))
                                              (let ((_%e155648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156873_
                                                        0)))
                                                    (_%vars155649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156873_
                                                        1))))
                                                (values (cons 'box _%e155648%_)
                                                        _%vars155649%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e155552%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e155552%_)))
                                                      _%vars155553%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx155466%_
                                                 _%e155552%_))))))))))))
          (let* ((_%e155476155489%_ _%stx155466%_)
                 (_%E155478155493%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e155476155489%_))))
                 (_%E155477155543%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e155476155489%_))
                        (let ((_%e155479155497%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e155476155489%_))))
                          (let ((_%hd155480155500%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155479155497%_)))
                                (_%tl155481155502%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155479155497%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155481155502%_))
                                (let ((_%e155482155505%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl155481155502%_))))
                                  (let ((_%hd155483155508%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155482155505%_)))
                                        (_%tl155484155510%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155482155505%_))))
                                    (let ((_%expr155513%_ _%hd155483155508%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl155484155510%_))
                                          (let ((_%e155485155515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl155484155510%_))))
                                            (let ((_%hd155486155518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e155485155515%_)))
                                                  (_%tl155487155520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e155485155515%_))))
                                              (let* ((_%ids155523%_
                                                      _%hd155486155518%_)
                                                     (_%clauses155525%_
                                                      _%tl155487155520%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids155523%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses155525%_))
                                                        (let* ((_%ids155530%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids155523%_)))
                       (_%clauses155532%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses155525%_)))
                       (_%clause-ids155534%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses155532%_)))
                       (_%E155536%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target155538%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first155540%_
                        (if (null? _%clauses155532%_)
                            _%E155536%_
                            (car _%clause-ids155534%_))))
                  (let ((__tmp156876
                         (let ((__tmp156877
                                (let ((__tmp156879
                                       (let ((__tmp156881
                                              (cons (cons (cons _%E155536%_
                                                                '())
                                                          (cons (let ((__tmp156883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target155538%_ '()))
                              (__tmp156882
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target155538%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp156883 __tmp156882))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp156880
                                              (_%generate-body155472%_
                                               (_%generate-bindings155471%_
                                                _%target155538%_
                                                _%ids155530%_
                                                _%clauses155532%_
                                                _%clause-ids155534%_
                                                _%E155536%_)
                                               (cons _%first155540%_
                                                     (cons _%expr155513%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp156881
                                          __tmp156880)))
                                      (__tmp156878
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx155466%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp156879
                                   __tmp156878))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp156877)))
                        (__tmp156875
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx155466%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp156876 __tmp156875)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx155466%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx155466%_
                                                       _%ids155523%_))))))
                                          (_%E155478155493%_)))))
                                (_%E155478155493%_))))
                        (_%E155478155493%_)))))
            (_%E155477155543%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx156191%_)
        (let* ((_%identifier=?156193%_ 'free-identifier=?)
               (_%unwrap-e156195%_ 'syntax-e)
               (_%wrap-e156197%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156191%_
           _%identifier=?156193%_
           _%unwrap-e156195%_
           _%wrap-e156197%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx156199%_ _%identifier=?156200%_)
        (let* ((_%unwrap-e156202%_ 'syntax-e) (_%wrap-e156204%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156199%_
           _%identifier=?156200%_
           _%unwrap-e156202%_
           _%wrap-e156204%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx156206%_ _%identifier=?156207%_ _%unwrap-e156208%_)
        (let ((_%wrap-e156210%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156206%_
           _%identifier=?156207%_
           _%unwrap-e156208%_
           _%wrap-e156210%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g156884_
        (let ((_g156885_ (let () (declare (not safe)) (##length _g156884_))))
          (cond ((let () (declare (not safe)) (##fx= _g156885_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g156884_))
                ((let () (declare (not safe)) (##fx= _g156885_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g156884_))
                ((let () (declare (not safe)) (##fx= _g156885_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g156884_))
                ((let () (declare (not safe)) (##fx= _g156885_ 4))
                 (apply gx#macro-expand-syntax-case__% _g156884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g156884_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx155463%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx155463%_))
            (let ((__tmp156886
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx155463%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp156886 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd155421%_ . _%rest155422%_)
        (let ((_%len155424%_ (length _%hd155421%_)))
          (let _%lp155426%_ ((_%rest155428%_ _%rest155422%_))
            (let* ((_%rest155429155437%_ _%rest155428%_)
                   (_%else155431155445%_ (lambda () '#!void))
                   (_%K155433155451%_
                    (lambda (_%rest155448%_ _%hd155449%_)
                      (if (let ((__tmp156887 (length _%hd155449%_)))
                            (declare (not safe))
                            (##fx= _%len155424%_ __tmp156887))
                          (_%lp155426%_ _%rest155448%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd155449%_))))))
              (if (pair? _%rest155429155437%_)
                  (let ((_%hd155434155454%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest155429155437%_)))
                        (_%tl155435155456%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest155429155437%_))))
                    (let* ((_%hd155459%_ _%hd155434155454%_)
                           (_%rest155461%_ _%tl155435155456%_))
                      (_%K155433155451%_ _%rest155461%_ _%hd155459%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx155371%_ _%n155372%_)
        (let _%lp155374%_ ((_%rest155377%_ _%stx155371%_) (_%r155379%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155377%_))
              (let* ((_%g155381155388%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155377%_)))
                     (_%E155383155392%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155381155388%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155384155399%_
                      (lambda (_%rest155395%_ _%hd155396%_)
                        (_%lp155374%_
                         _%rest155395%_
                         (cons _%hd155396%_ _%r155379%_)))))
                (if (pair? _%g155381155388%_)
                    (let ((_%hd155385155402%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155381155388%_)))
                          (_%tl155386155404%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155381155388%_))))
                      (let* ((_%hd155407%_ _%hd155385155402%_)
                             (_%rest155409%_ _%tl155386155404%_))
                        (_%K155384155399%_ _%rest155409%_ _%hd155407%_)))
                    (_%E155383155392%_)))
              (let _%lp155411%_ ((_%n155413%_ _%n155372%_)
                                 (_%l155414%_ _%r155379%_)
                                 (_%r155416%_ _%rest155377%_))
                (if (null? _%l155414%_)
                    (values _%l155414%_ _%r155416%_)
                    (if (fxpositive? _%n155413%_)
                        (_%lp155411%_
                         (let () (declare (not safe)) (##fx- _%n155413%_ '1))
                         (cdr _%l155414%_)
                         (cons (car _%l155414%_) _%r155416%_))
                        (values (reverse! _%l155414%_) _%r155416%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx155321%_ _%n155322%_)
        (let _%lp155324%_ ((_%rest155327%_ _%stx155321%_) (_%r155329%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155327%_))
              (let* ((_%g155331155338%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155327%_)))
                     (_%E155333155342%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155331155338%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155334155349%_
                      (lambda (_%rest155345%_ _%hd155346%_)
                        (_%lp155324%_
                         _%rest155345%_
                         (cons _%hd155346%_ _%r155329%_)))))
                (if (pair? _%g155331155338%_)
                    (let ((_%hd155335155352%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155331155338%_)))
                          (_%tl155336155354%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155331155338%_))))
                      (let* ((_%hd155357%_ _%hd155335155352%_)
                             (_%rest155359%_ _%tl155336155354%_))
                        (_%K155334155349%_ _%rest155359%_ _%hd155357%_)))
                    (_%E155333155342%_)))
              (let _%lp155361%_ ((_%n155363%_ _%n155322%_)
                                 (_%l155364%_ _%r155329%_)
                                 (_%r155366%_ _%rest155327%_))
                (if (null? _%l155364%_)
                    (vector _%l155364%_ _%r155366%_)
                    (if (fxpositive? _%n155363%_)
                        (_%lp155361%_
                         (let () (declare (not safe)) (##fx- _%n155363%_ '1))
                         (cdr _%l155364%_)
                         (cons (car _%l155364%_) _%r155366%_))
                        (vector (reverse! _%l155364%_) _%r155366%_))))))))))
