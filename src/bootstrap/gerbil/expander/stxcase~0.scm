(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770342300)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp156771 (list gx#expander::t))
            (__tmp156770 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp156771
         '(id depth)
         __tmp156770
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args156767%_
        (apply make-instance gx#syntax-pattern::t _%$args156767%_)))
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
      (lambda (_%self156753%_ _%stx156754%_)
        (let ((_%self156757%_ _%self156753%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx156754%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx156220%_)
        (letrec ((_%generate156222%_
                  (lambda (_%e156462%_)
                    (letrec ((_%BUG156464%_
                              (lambda (_%q156629%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx156220%_
                                         _%e156462%_
                                         _%q156629%_))))
                             (_%local-pattern-e156465%_
                              (lambda (_%pat156627%_)
                                (let ((__tmp156772
                                       (##structure-ref
                                        _%pat156627%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp156772))))
                             (_%getvar156466%_
                              (lambda (_%q156624%_ _%vars156625%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q156624%_
                                   _%vars156625%_
                                   _%BUG156464%_))))
                             (_%getarg156467%_
                              (lambda (_%arg156590%_ _%vars156591%_)
                                (let* ((_%arg156592156599%_ _%arg156590%_)
                                       (_%E156594156603%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg156592156599%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K156595156612%_
                                        (lambda (_%e156606%_ _%tag156607%_)
                                          (let ((_%$e156609%_ _%tag156607%_))
                                            (if (eq? 'ref _%$e156609%_)
                                                (_%getvar156466%_
                                                 _%e156606%_
                                                 _%vars156591%_)
                                                (if (eq? 'pattern _%$e156609%_)
                                                    (_%local-pattern-e156465%_
                                                     _%e156606%_)
                                                    (_%BUG156464%_
                                                     _%arg156590%_)))))))
                                  (if (pair? _%arg156592156599%_)
                                      (let ((_%hd156596156615%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg156592156599%_)))
                                            (_%tl156597156617%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg156592156599%_))))
                                        (let* ((_%tag156620%_
                                                _%hd156596156615%_)
                                               (_%e156622%_
                                                _%tl156597156617%_))
                                          (_%K156595156612%_
                                           _%e156622%_
                                           _%tag156620%_)))
                                      (_%E156594156603%_))))))
                      (let _%recur156469%_ ((_%e156471%_ _%e156462%_)
                                            (_%vars156472%_ '()))
                        (let* ((_%e156473156480%_ _%e156471%_)
                               (_%E156475156484%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e156473156480%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K156476156578%_
                                (lambda (_%body156487%_ _%tag156488%_)
                                  (let ((_%$e156490%_ _%tag156488%_))
                                    (if (eq? 'datum _%$e156490%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body156487%_))
                                        (if (eq? 'term _%$e156490%_)
                                            (let ((_%id156493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body156487%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id156493%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks156496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id156493%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks156496%_)
                                                        (let ((__tmp156773
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body156487%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp156773))
                (let ((__tmp156775
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body156487%_)))
                      (__tmp156774
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body156487%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp156775
                   __tmp156774
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id156493%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body156487%_))
                                                      (_%BUG156464%_
                                                       _%e156471%_))))
                                            (if (eq? 'pattern _%$e156490%_)
                                                (_%local-pattern-e156465%_
                                                 _%body156487%_)
                                                (if (eq? 'ref _%$e156490%_)
                                                    (_%getvar156466%_
                                                     _%body156487%_
                                                     _%vars156472%_)
                                                    (if (eq? 'cons
                                                             _%$e156490%_)
                                                        (let ((__tmp156777
                                                               (_%recur156469%_
                                                                (car _%body156487%_)
                                                                _%vars156472%_))
                                                              (__tmp156776
                                                               (_%recur156469%_
                                                                (cdr _%body156487%_)
                                                                _%vars156472%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp156777
                                                           __tmp156776))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e156490%_)
                    (let ((__tmp156778
                           (_%recur156469%_ _%body156487%_ _%vars156472%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp156778))
                    (if (eq? 'box _%$e156490%_)
                        (let ((__tmp156779
                               (_%recur156469%_
                                _%body156487%_
                                _%vars156472%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp156779))
                        (if (eq? 'splice _%$e156490%_)
                            (let* ((_%body156499156510%_ _%body156487%_)
                                   (_%E156501156514%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body156499156510%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K156502156552%_
                                    (lambda (_%args156517%_
                                             _%iv156518%_
                                             _%hd156519%_
                                             _%depth156520%_)
                                      (let* ((_%targets156526%_
                                              (map (lambda (_%g156521156523%_)
                                                     (_%getarg156467%_
                                                      _%g156521156523%_
                                                      _%vars156472%_))
                                                   _%args156517%_))
                                             (_%fold-in156528%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args156517%_)))
                                             (_%fold-out156530%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args156532%_
                                              (let ((__tmp156780
                                                     (cons _%fold-out156530%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp156780
                                                 _%fold-in156528%_)))
                                             (_%lambda-body156549%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth156520%_ '1))
                                                  (let ((_%r-args156540%_
                                                         (map (lambda (_%arg156534%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg156534%_)))
                      _%args156517%_))
                (_%r-vars156541%_
                 (let ((__tmp156781
                        (lambda (_%arg156536%_ _%var156537%_ _%r156538%_)
                          (cons (cons (cdr _%arg156536%_) _%var156537%_)
                                _%r156538%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp156781
                    _%vars156472%_
                    _%args156517%_
                    _%fold-in156528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur156469%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth156520%_ '1))
                         (cons _%hd156519%_
                               (cons (cons 'var _%fold-out156530%_)
                                     _%r-args156540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars156541%_))
                                                  (let* ((_%hd-vars156547%_
                                                          (let ((__tmp156782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg156543%_ _%var156544%_ _%r156545%_)
                           (cons (cons (cdr _%arg156543%_) _%var156544%_)
                                 _%r156545%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp156782
                     _%vars156472%_
                     _%args156517%_
                     _%fold-in156528%_)))
                 (__tmp156783
                  (_%recur156469%_ _%hd156519%_ _%hd-vars156547%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp156783
                                                     _%fold-out156530%_)))))
                                        (let ((__tmp156787
                                               (if (let ((__tmp156788
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets156526%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp156788 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets156526%_))
                                                   '#!void))
                                              (__tmp156784
                                               (let ((__tmp156786
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args156532%_
                                                         _%lambda-body156549%_)))
                                                     (__tmp156785
                                                      (_%recur156469%_
                                                       _%iv156518%_
                                                       _%vars156472%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp156786
                                                  __tmp156785
                                                  _%targets156526%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp156787
                                           __tmp156784))))))
                              (if (pair? _%body156499156510%_)
                                  (let ((_%hd156503156555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body156499156510%_)))
                                        (_%tl156504156557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body156499156510%_))))
                                    (let ((_%depth156560%_ _%hd156503156555%_))
                                      (if (pair? _%tl156504156557%_)
                                          (let ((_%hd156505156562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl156504156557%_)))
                                                (_%tl156506156564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl156504156557%_))))
                                            (let ((_%hd156567%_
                                                   _%hd156505156562%_))
                                              (if (pair? _%tl156506156564%_)
                                                  (let ((_%hd156507156569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156506156564%_)))
                                                        (_%tl156508156571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156506156564%_))))
                                                    (let* ((_%iv156574%_
                                                            _%hd156507156569%_)
                                                           (_%args156576%_
                                                            _%tl156508156571%_))
                                                      (_%K156502156552%_
                                                       _%args156576%_
                                                       _%iv156574%_
                                                       _%hd156567%_
                                                       _%depth156560%_)))
                                                  (_%E156501156514%_))))
                                          (_%E156501156514%_))))
                                  (_%E156501156514%_)))
                            (if (eq? 'var _%$e156490%_)
                                _%body156487%_
                                (_%BUG156464%_ _%e156471%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e156473156480%_)
                              (let ((_%hd156477156581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e156473156480%_)))
                                    (_%tl156478156583%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e156473156480%_))))
                                (let* ((_%tag156586%_ _%hd156477156581%_)
                                       (_%body156588%_ _%tl156478156583%_))
                                  (_%K156476156578%_
                                   _%body156588%_
                                   _%tag156586%_)))
                              (_%E156475156484%_)))))))
                 (_%parse156223%_
                  (lambda (_%e156264%_)
                    (letrec ((_%make-cons156266%_
                              (lambda (_%hd156454%_ _%tl156455%_)
                                (let ((_g156789_ _%hd156454%_)
                                      (_g156791_ _%tl156455%_))
                                  (begin
                                    (let ((_g156790_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156789_)
                                                 (##values-length _g156789_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156790_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156790_)))
                                    (let ((_g156792_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156791_)
                                                 (##values-length _g156791_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156792_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156792_)))
                                    (let ((_%hd-e156457%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156789_ 0)))
                                          (_%hd-vars156458%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156789_ 1))))
                                      (let ((_%tl-e156459%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156791_ 0)))
                                            (_%tl-vars156460%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156791_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e156457%_
                                                            _%tl-e156459%_))
                                                (append _%hd-vars156458%_
                                                        _%tl-vars156460%_))))))))
                             (_%make-splice156267%_
                              (lambda (_%where156390%_
                                       _%depth156391%_
                                       _%hd156392%_
                                       _%tl156393%_)
                                (let ((_g156793_ _%hd156392%_)
                                      (_g156795_ _%tl156393%_))
                                  (begin
                                    (let ((_g156794_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156793_)
                                                 (##values-length _g156793_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156794_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156794_)))
                                    (let ((_g156796_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156795_)
                                                 (##values-length _g156795_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156796_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156796_)))
                                    (let ((_%hd-e156395%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156793_ 0)))
                                          (_%hd-vars156396%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156793_ 1))))
                                      (let ((_%tl-e156397%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156795_ 0)))
                                            (_%tl-vars156398%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156795_ 1))))
                                        (let _%lp156400%_ ((_%rest156402%_
                                                            _%hd-vars156396%_)
                                                           (_%targets156403%_
                                                            '())
                                                           (_%vars156404%_
                                                            _%tl-vars156398%_))
                                          (let* ((_%rest156405156415%_
                                                  _%rest156402%_)
                                                 (_%else156407156423%_
                                                  (lambda ()
                                                    (if (null? _%targets156403%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx156220%_
                                                           _%where156390%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth156391%_
                                    (cons _%hd-e156395%_
                                          (cons _%tl-e156397%_
                                                _%targets156403%_))))
                        _%vars156404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K156409156435%_
                                                  (lambda (_%rest156426%_
                                                           _%hd-pat156427%_
                                                           _%hd-depth*156428%_)
                                                    (let ((_%hd-depth156430%_
                                                           (fx- _%hd-depth*156428%_
                                                                _%depth156391%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth156430%_))
                                                          (_%lp156400%_
                                                           _%rest156426%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat156427%_)
                         _%targets156403%_)
                   (cons (cons _%hd-depth156430%_ _%hd-pat156427%_)
                         _%vars156404%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth156430%_))
                      (_%lp156400%_
                       _%rest156426%_
                       (cons (cons 'pattern _%hd-pat156427%_)
                             _%targets156403%_)
                       _%vars156404%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx156220%_
                         _%where156390%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest156405156415%_)
                                                (let ((_%hd156410156438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest156405156415%_)))
                                                      (_%tl156411156440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest156405156415%_))))
                                                  (if (pair? _%hd156410156438%_)
                                                      (let ((_%hd156412156443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd156410156438%_)))
                    (_%tl156413156445%_
                     (let () (declare (not safe)) (##cdr _%hd156410156438%_))))
                (let* ((_%hd-depth*156448%_ _%hd156412156443%_)
                       (_%hd-pat156450%_ _%tl156413156445%_)
                       (_%rest156452%_ _%tl156411156440%_))
                  (_%K156409156435%_
                   _%rest156452%_
                   _%hd-pat156450%_
                   _%hd-depth*156448%_)))
              (_%else156407156423%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156407156423%_))))))))))
                             (_%recur156268%_
                              (lambda (_%e156273%_ _%is-e?156274%_)
                                (if (_%is-e?156274%_ _%e156273%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx156220%_))
                                    (if (gx#syntax-local-pattern? _%e156273%_)
                                        (let* ((_%pat156278%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e156273%_)))
                                               (_%depth156280%_
                                                (##structure-ref
                                                 _%pat156278%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth156280%_)
                                              (values (cons 'ref _%pat156278%_)
                                                      (cons (cons _%depth156280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat156278%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat156278%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e156273%_))
                                            (values (cons 'term _%e156273%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e156273%_))
                                                (let* ((_%e156284156291%_
                                                        _%e156273%_)
                                                       (_%E156286156295%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e156284156291%_))))
                                                       (_%E156285156377%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e156284156291%_))
                      (let ((_%e156287156299%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e156284156291%_))))
                        (let ((_%hd156288156302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156287156299%_)))
                              (_%tl156289156304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156287156299%_))))
                          (let* ((_%hd156307%_ _%hd156288156302%_)
                                 (_%rest156309%_ _%tl156289156304%_))
                            (if (_%is-e?156274%_ _%hd156307%_)
                                (let* ((_%e156310156317%_ _%rest156309%_)
                                       (_%E156312156321%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx156220%_
                                             _%e156273%_))))
                                       (_%E156311156335%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e156310156317%_))
                                              (let ((_%e156313156325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e156310156317%_))))
                                                (let ((_%hd156314156328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e156313156325%_)))
                                                      (_%tl156315156330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e156313156325%_))))
                                                  (let ((_%rest156333%_
                                                         _%hd156314156328%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl156315156330%_))
                                                        (_%recur156268%_
                                                         _%rest156333%_
                                                         false)
                                                        (_%E156312156321%_)))))
                                              (_%E156312156321%_)))))
                                  (_%E156311156335%_))
                                (let _%lp156339%_ ((_%rest156341%_
                                                    _%rest156309%_)
                                                   (_%depth156342%_ '0))
                                  (let* ((_%e156343156350%_ _%rest156341%_)
                                         (_%E156345156354%_
                                          (lambda ()
                                            (if (fxpositive? _%depth156342%_)
                                                (_%make-splice156267%_
                                                 _%e156273%_
                                                 _%depth156342%_
                                                 (_%recur156268%_
                                                  _%hd156307%_
                                                  _%is-e?156274%_)
                                                 (_%recur156268%_
                                                  _%rest156341%_
                                                  _%is-e?156274%_))
                                                (_%make-cons156266%_
                                                 (_%recur156268%_
                                                  _%hd156307%_
                                                  _%is-e?156274%_)
                                                 (_%recur156268%_
                                                  _%rest156341%_
                                                  _%is-e?156274%_)))))
                                         (_%E156344156373%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e156343156350%_))
                                                (let ((_%e156346156358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e156343156350%_))))
                                                  (let ((_%hd156347156361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e156346156358%_)))
                                                        (_%tl156348156363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e156346156358%_))))
                                                    (let* ((_%rest-hd156366%_
                                                            _%hd156347156361%_)
                                                           (_%rest-tl156368%_
                                                            _%tl156348156363%_))
                                                      (if (_%is-e?156274%_
                                                           _%rest-hd156366%_)
                                                          (_%lp156339%_
                                                           _%rest-tl156368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth156342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth156342%_)
                      (_%make-splice156267%_
                       _%e156273%_
                       _%depth156342%_
                       (_%recur156268%_ _%hd156307%_ _%is-e?156274%_)
                       (_%recur156268%_ _%rest156341%_ _%is-e?156274%_))
                      (_%make-cons156266%_
                       (_%recur156268%_ _%hd156307%_ _%is-e?156274%_)
                       (_%recur156268%_ _%rest156341%_ _%is-e?156274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E156345156354%_)))))
                                    (_%E156344156373%_)))))))
                      (_%E156286156295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E156285156377%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e156273%_))
                                                    (let ((_g156797_
                                                           (_%recur156268%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e156273%_)))
                    _%is-e?156274%_)))
              (begin
                (let ((_g156798_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g156797_)
                             (##values-length _g156797_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g156798_ 2)))
                      (error "Context expects 2 values" _g156798_)))
                (let ((_%e156382%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156797_ 0)))
                      (_%vars156383%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156797_ 1))))
                  (values (cons 'vector _%e156382%_) _%vars156383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e156273%_))
                                                        (let ((_g156799_
                                                               (_%recur156268%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e156273%_)))
                        _%is-e?156274%_)))
                  (begin
                    (let ((_g156800_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g156799_)
                                 (##values-length _g156799_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g156800_ 2)))
                          (error "Context expects 2 values" _g156800_)))
                    (let ((_%e156386%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156799_ 0)))
                          (_%vars156387%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156799_ 1))))
                      (values (cons 'box _%e156386%_) _%vars156387%_))))
                (values (cons 'datum _%e156273%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g156801_
                             (_%recur156268%_ _%e156264%_ gx#ellipsis?)))
                        (begin
                          (let ((_g156802_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g156801_)
                                       (##values-length _g156801_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g156802_ 2)))
                                (error "Context expects 2 values" _g156802_)))
                          (let ((_%tree156270%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156801_ 0)))
                                (_%vars156271%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156801_ 1))))
                            (if (null? _%vars156271%_)
                                _%tree156270%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx156220%_
                                   _%vars156271%_))))))))))
          (let* ((_%e156224156234%_ _%stx156220%_)
                 (_%E156226156238%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx156220%_))))
                 (_%E156225156260%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e156224156234%_))
                        (let ((_%e156227156242%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e156224156234%_))))
                          (let ((_%hd156228156245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156227156242%_)))
                                (_%tl156229156247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156227156242%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156229156247%_))
                                (let ((_%e156230156250%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl156229156247%_))))
                                  (let ((_%hd156231156253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156230156250%_)))
                                        (_%tl156232156255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156230156250%_))))
                                    (let ((_%form156258%_ _%hd156231156253%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156232156255%_))
                                          (let ((__tmp156804
                                                 (_%generate156222%_
                                                  (_%parse156223%_
                                                   _%form156258%_)))
                                                (__tmp156803
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx156220%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp156804
                                             __tmp156803))
                                          (_%E156226156238%_)))))
                                (_%E156226156238%_))))
                        (_%E156226156238%_)))))
            (_%E156225156260%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx155469%_
               _%identifier=?155470%_
               _%unwrap-e155471%_
               _%wrap-e155472%_)
        (letrec ((_%generate-bindings155474%_
                  (lambda (_%target156084%_
                           _%ids156085%_
                           _%clauses156086%_
                           _%clause-ids156087%_
                           _%E156088%_)
                    (letrec ((_%generate1156090%_
                              (lambda (_%clause156187%_
                                       _%clause-id156188%_
                                       _%E156189%_)
                                (cons (cons _%clause-id156188%_ '())
                                      (cons (let ((__tmp156806
                                                   (cons _%target156084%_ '()))
                                                  (__tmp156805
                                                   (_%generate-clause155476%_
                                                    _%target156084%_
                                                    _%ids156085%_
                                                    _%clause156187%_
                                                    _%E156189%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp156806
                                               __tmp156805))
                                            '())))))
                      (let _%lp156092%_ ((_%rest156094%_ _%clauses156086%_)
                                         (_%rest-ids156095%_
                                          _%clause-ids156087%_)
                                         (_%bindings156096%_ '()))
                        (let* ((_%rest156097156105%_ _%rest156094%_)
                               (_%else156099156113%_
                                (lambda () _%bindings156096%_))
                               (_%K156101156175%_
                                (lambda (_%rest156116%_ _%clause156117%_)
                                  (let* ((_%rest-ids156118156125%_
                                          _%rest-ids156095%_)
                                         (_%E156120156129%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids156118156125%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K156121156163%_
                                          (lambda (_%rest-ids156132%_
                                                   _%clause-id156133%_)
                                            (let* ((_%rest-ids156134156142%_
                                                    _%rest-ids156132%_)
                                                   (_%else156136156150%_
                                                    (lambda ()
                                                      (cons (_%generate1156090%_
                                                             _%clause156117%_
                                                             _%clause-id156133%_
                                                             _%E156088%_)
                                                            _%bindings156096%_)))
                                                   (_%K156138156155%_
                                                    (lambda (_%next-clause-id156153%_)
                                                      (_%lp156092%_
                                                       _%rest156116%_
                                                       _%rest-ids156132%_
                                                       (cons (_%generate1156090%_
                                                              _%clause156117%_
                                                              _%clause-id156133%_
                                                              _%next-clause-id156153%_)
                                                             _%bindings156096%_)))))
                                              (if (pair? _%rest-ids156134156142%_)
                                                  (let* ((_%hd156139156158%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids156134156142%_)))
                                                         (_%next-clause-id156161%_
                                                          _%hd156139156158%_))
                                                    (_%K156138156155%_
                                                     _%next-clause-id156161%_))
                                                  (_%else156136156150%_))))))
                                    (if (pair? _%rest-ids156118156125%_)
                                        (let ((_%hd156122156166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids156118156125%_)))
                                              (_%tl156123156168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids156118156125%_))))
                                          (let* ((_%clause-id156171%_
                                                  _%hd156122156166%_)
                                                 (_%rest-ids156173%_
                                                  _%tl156123156168%_))
                                            (_%K156121156163%_
                                             _%rest-ids156173%_
                                             _%clause-id156171%_)))
                                        (_%E156120156129%_))))))
                          (if (pair? _%rest156097156105%_)
                              (let ((_%hd156102156178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest156097156105%_)))
                                    (_%tl156103156180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest156097156105%_))))
                                (let* ((_%clause156183%_ _%hd156102156178%_)
                                       (_%rest156185%_ _%tl156103156180%_))
                                  (_%K156101156175%_
                                   _%rest156185%_
                                   _%clause156183%_)))
                              (_%else156099156113%_)))))))
                 (_%generate-body155475%_
                  (lambda (_%bindings156044%_ _%body156045%_)
                    (let _%recur156047%_ ((_%rest156049%_ _%bindings156044%_))
                      (let* ((_%rest156050156058%_ _%rest156049%_)
                             (_%else156052156066%_ (lambda () _%body156045%_))
                             (_%K156054156072%_
                              (lambda (_%rest156069%_ _%hd156070%_)
                                (let ((__tmp156808 (cons _%hd156070%_ '()))
                                      (__tmp156807
                                       (_%recur156047%_ _%rest156069%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp156808
                                   __tmp156807)))))
                        (if (pair? _%rest156050156058%_)
                            (let ((_%hd156055156075%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156050156058%_)))
                                  (_%tl156056156077%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156050156058%_))))
                              (let* ((_%hd156080%_ _%hd156055156075%_)
                                     (_%rest156082%_ _%tl156056156077%_))
                                (_%K156054156072%_
                                 _%rest156082%_
                                 _%hd156080%_)))
                            (_%else156052156066%_))))))
                 (_%generate-clause155476%_
                  (lambda (_%target155907%_
                           _%ids155908%_
                           _%clause155909%_
                           _%E155910%_)
                    (letrec ((_%generate1155912%_
                              (lambda (_%hd155999%_
                                       _%fender156000%_
                                       _%body156001%_)
                                (let ((_g156809_
                                       (_%parse-clause155478%_
                                        _%hd155999%_
                                        _%ids155908%_)))
                                  (begin
                                    (let ((_g156810_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156809_)
                                                 (##values-length _g156809_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156810_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156810_)))
                                    (let ((_%e156003%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156809_ 0)))
                                          (_%mvars156004%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156809_ 1))))
                                      (let* ((_%pvars156006%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars156004%_))))
                                             (_%E156008%_
                                              (cons _%E155910%_
                                                    (cons _%target155907%_
                                                          '())))
                                             (_%K156041%_
                                              (let ((__tmp156811
                                                     (let ((__tmp156813
                                                            (map (lambda (_%mvar156010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar156011%_)
                           (let* ((_%mvar156012156019%_ _%mvar156010%_)
                                  (_%E156014156023%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar156012156019%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K156015156029%_
                                   (lambda (_%depth156026%_ _%id156027%_)
                                     (cons _%id156027%_
                                           (cons (let ((__tmp156815
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id156027%_)))
                                                       (__tmp156814
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar156011%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp156815
                                                    __tmp156814
                                                    _%depth156026%_))
                                                 '())))))
                             (if (pair? _%mvar156012156019%_)
                                 (let ((_%hd156016156032%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar156012156019%_)))
                                       (_%tl156017156034%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar156012156019%_))))
                                   (let* ((_%id156037%_ _%hd156016156032%_)
                                          (_%depth156039%_ _%tl156017156034%_))
                                     (_%K156015156029%_
                                      _%depth156039%_
                                      _%id156037%_)))
                                 (_%E156014156023%_))))
                         _%mvars156004%_
                         _%pvars156006%_))
                   (__tmp156812
                    (if (eq? _%fender156000%_ '#t)
                        _%body156001%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender156000%_
                           _%body156001%_
                           _%E156008%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp156813 __tmp156812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars156006%_
                                                 __tmp156811))))
                                        (_%generate-match155477%_
                                         _%hd155999%_
                                         _%target155907%_
                                         _%e156003%_
                                         _%mvars156004%_
                                         _%K156041%_
                                         _%E156008%_))))))))
                      (let* ((_%e155913155933%_ _%clause155909%_)
                             (_%E155922155937%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e155913155933%_))))
                             (_%E155915155971%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155913155933%_))
                                    (let ((_%e155923155941%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155913155933%_))))
                                      (let ((_%hd155924155944%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155923155941%_)))
                                            (_%tl155925155946%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155923155941%_))))
                                        (let ((_%hd155949%_
                                               _%hd155924155944%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155925155946%_))
                                              (let ((_%e155926155951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155925155946%_))))
                                                (let ((_%hd155927155954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155926155951%_)))
                                                      (_%tl155928155956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155926155951%_))))
                                                  (let ((_%fender155959%_
                                                         _%hd155927155954%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155928155956%_))
                                                        (let ((_%e155929155961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl155928155956%_))))
                  (let ((_%hd155930155964%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155929155961%_)))
                        (_%tl155931155966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155929155961%_))))
                    (let ((_%body155969%_ _%hd155930155964%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl155931155966%_))
                          (_%generate1155912%_
                           _%hd155949%_
                           _%fender155959%_
                           _%body155969%_)
                          (_%E155922155937%_)))))
                (_%E155922155937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E155922155937%_)))))
                                    (_%E155922155937%_))))
                             (_%E155914155995%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155913155933%_))
                                    (let ((_%e155916155975%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155913155933%_))))
                                      (let ((_%hd155917155978%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155916155975%_)))
                                            (_%tl155918155980%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155916155975%_))))
                                        (let ((_%hd155983%_
                                               _%hd155917155978%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155918155980%_))
                                              (let ((_%e155919155985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155918155980%_))))
                                                (let ((_%hd155920155988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155919155985%_)))
                                                      (_%tl155921155990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155919155985%_))))
                                                  (let ((_%body155993%_
                                                         _%hd155920155988%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155921155990%_))
                                                        (_%generate1155912%_
                                                         _%hd155983%_
                                                         '#t
                                                         _%body155993%_)
                                                        (_%E155915155971%_)))))
                                              (_%E155915155971%_)))))
                                    (_%E155915155971%_)))))
                        (_%E155914155995%_)))))
                 (_%generate-match155477%_
                  (lambda (_%where155656%_
                           _%target155657%_
                           _%hd155658%_
                           _%mvars155659%_
                           _%K155660%_
                           _%E155661%_)
                    (letrec ((_%BUG155663%_
                              (lambda (_%q155905%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx155469%_
                                         _%hd155658%_
                                         _%q155905%_))))
                             (_%recur155664%_
                              (lambda (_%e155755%_
                                       _%vars155756%_
                                       _%target155757%_
                                       _%E155758%_
                                       _%k155759%_)
                                (let* ((_%e155760155767%_ _%e155755%_)
                                       (_%E155762155771%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e155760155767%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K155763155893%_
                                        (lambda (_%body155774%_ _%tag155775%_)
                                          (let ((_%$e155777%_ _%tag155775%_))
                                            (if (eq? 'any _%$e155777%_)
                                                (_%k155759%_ _%vars155756%_)
                                                (if (eq? 'id _%$e155777%_)
                                                    (let ((__tmp156820
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target155757%_)))
                                                          (__tmp156816
                                                           (let ((__tmp156818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp156819
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e155472%_
                                    _%body155774%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?155470%_
                             __tmp156819
                             _%target155757%_)))
                         (__tmp156817 (_%k155759%_ _%vars155756%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp156818 __tmp156817 _%E155758%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp156820 __tmp156816 _%E155758%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e155777%_)
                                                        (_%k155759%_
                                                         (cons (cons _%body155774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target155757%_)
                       _%vars155756%_))
                (if (eq? 'cons _%$e155777%_)
                    (let ((_%$e155780%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd155781%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl155782%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp156826
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target155757%_)))
                            (__tmp156821
                             (let ((__tmp156825
                                    (cons (cons (cons _%$e155780%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e155471%_
                                                         _%target155757%_))
                                                      '()))
                                          '()))
                                   (__tmp156822
                                    (let ((__tmp156824
                                           (cons (cons (cons _%$hd155781%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e155780%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl155782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e155780%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp156823
                                           (let* ((_%body155783155790%_
                                                   _%body155774%_)
                                                  (_%E155785155794%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body155783155790%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K155786155802%_
                                                   (lambda (_%tl155797%_
                                                            _%hd155798%_)
                                                     (_%recur155664%_
                                                      _%hd155798%_
                                                      _%vars155756%_
                                                      _%$hd155781%_
                                                      _%E155758%_
                                                      (lambda (_%vars155800%_)
                                                        (_%recur155664%_
                                                         _%tl155797%_
                                                         _%vars155800%_
                                                         _%$tl155782%_
                                                         _%E155758%_
                                                         _%k155759%_))))))
                                             (if (pair? _%body155783155790%_)
                                                 (let ((_%hd155787155805%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body155783155790%_)))
                                                       (_%tl155788155807%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body155783155790%_))))
                                                   (let* ((_%hd155810%_
                                                           _%hd155787155805%_)
                                                          (_%tl155812%_
                                                           _%tl155788155807%_))
                                                     (_%K155786155802%_
                                                      _%tl155812%_
                                                      _%hd155810%_)))
                                                 (_%E155785155794%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp156824
                                       __tmp156823))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp156825
                                __tmp156822))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp156826
                         __tmp156821
                         _%E155758%_)))
                    (if (eq? 'splice _%$e155777%_)
                        (let* ((_%body155813155820%_ _%body155774%_)
                               (_%E155815155824%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body155813155820%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K155816155875%_
                                (lambda (_%tl155827%_ _%hd155828%_)
                                  (let* ((_%rlen155830%_
                                          (_%splice-rlen155665%_ _%tl155827%_))
                                         (_%$target155832%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd155834%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl155836%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp155838%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e155840%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd155842%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl155844%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars155846%_
                                          (_%splice-vars155666%_ _%hd155828%_))
                                         (_%lvars155848%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155846%_)))
                                         (_%tlvars155850%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155846%_)))
                                         (_%linit155854%_
                                          (map (lambda (_%var155852%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars155848%_)))
                                    (letrec ((_%make-loop155857%_
                                              (lambda (_%vars155861%_)
                                                (let ((__tmp156828
                                                       (cons (cons (cons _%$lp155838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp156841
                                        (cons _%$hd155834%_ _%lvars155848%_))
                                       (__tmp156829
                                        (let ((__tmp156840
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd155834%_)))
                                              (__tmp156834
                                               (let ((__tmp156839
                                                      (cons (cons (cons _%$lp-e155840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e155471%_
                                   _%$hd155834%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156835
                                                      (let ((__tmp156838
                                                             (cons (cons (cons _%$lp-hd155842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e155840%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl155844%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e155840%_))
                                             '()))
                                 '())))
                    (__tmp156836
                     (_%recur155664%_
                      _%hd155828%_
                      '()
                      _%$lp-hd155842%_
                      _%E155758%_
                      (lambda (_%hdvars155863%_)
                        (cons _%$lp155838%_
                              (cons _%$lp-tl155844%_
                                    (map (lambda (_%svar155865%_
                                                  _%lvar155866%_)
                                           (let ((__tmp156837
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar155865%_
                                                     _%hdvars155863%_
                                                     _%BUG155663%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp156837
                                              _%lvar155866%_)))
                                         _%svars155846%_
                                         _%lvars155848%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp156838 __tmp156836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156839
                                                  __tmp156835)))
                                              (__tmp156830
                                               (let ((__tmp156833
                                                      (map (lambda (_%lvar155868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar155869%_)
                     (cons (cons _%tlvar155869%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar155868%_))
                                 '())))
                   _%lvars155848%_
                   _%tlvars155850%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156831
                                                      (_%k155759%_
                                                       (let ((__tmp156832
                                                              (lambda (_%svar155871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar155872%_
                               _%r155873%_)
                        (cons (cons _%svar155871%_ _%tlvar155872%_)
                              _%r155873%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp156832
                  _%vars155861%_
                  _%svars155846%_
                  _%tlvars155850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156833
                                                  __tmp156831))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156840
                                           __tmp156834
                                           __tmp156830))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp156841
                                    __tmp156829))
                                 '()))
                     '()))
              (__tmp156827
               (cons _%$lp155838%_ (cons _%$target155832%_ _%linit155854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp156828
                                                   __tmp156827)))))
                                      (let ((_%body155859%_
                                             (let ((__tmp156843
                                                    (cons (cons (cons _%$target155832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl155836%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target155757%_
                                 _%rlen155830%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156842
                                                    (_%recur155664%_
                                                     _%tl155827%_
                                                     _%vars155756%_
                                                     _%$tl155836%_
                                                     _%E155758%_
                                                     _%make-loop155857%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156843
                                                __tmp156842))))
                                        (let ((__tmp156847
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target155757%_)))
                                              (__tmp156844
                                               (if (zero? _%rlen155830%_)
                                                   _%body155859%_
                                                   (let ((__tmp156845
                                                          (let ((__tmp156846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target155757%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp156846 _%rlen155830%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp156845
                                                      _%body155859%_
                                                      _%E155758%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156847
                                           __tmp156844
                                           _%E155758%_))))))))
                          (if (pair? _%body155813155820%_)
                              (let ((_%hd155817155878%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body155813155820%_)))
                                    (_%tl155818155880%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body155813155820%_))))
                                (let* ((_%hd155883%_ _%hd155817155878%_)
                                       (_%tl155885%_ _%tl155818155880%_))
                                  (_%K155816155875%_
                                   _%tl155885%_
                                   _%hd155883%_)))
                              (_%E155815155824%_)))
                        (if (eq? 'null _%$e155777%_)
                            (let ((__tmp156849
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target155757%_)))
                                  (__tmp156848 (_%k155759%_ _%vars155756%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp156849
                               __tmp156848
                               _%E155758%_))
                            (if (eq? 'vector _%$e155777%_)
                                (let ((_%$e155887%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp156854
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target155757%_)))
                                        (__tmp156850
                                         (let ((__tmp156852
                                                (cons (cons (cons _%$e155887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp156853
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e155471%_
                                    _%target155757%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp156853))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp156851
                                                (_%recur155664%_
                                                 _%body155774%_
                                                 _%vars155756%_
                                                 _%$e155887%_
                                                 _%E155758%_
                                                 _%k155759%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp156852
                                            __tmp156851))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp156854
                                     __tmp156850
                                     _%E155758%_)))
                                (if (eq? 'box _%$e155777%_)
                                    (let ((_%$e155889%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp156859
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target155757%_)))
                                            (__tmp156855
                                             (let ((__tmp156857
                                                    (cons (cons (cons _%$e155889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp156858
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e155471%_
                                        _%target155757%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp156858))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156856
                                                    (_%recur155664%_
                                                     _%body155774%_
                                                     _%vars155756%_
                                                     _%$e155889%_
                                                     _%E155758%_
                                                     _%k155759%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156857
                                                __tmp156856))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp156859
                                         __tmp156855
                                         _%E155758%_)))
                                    (if (eq? 'datum _%$e155777%_)
                                        (let ((_%$e155891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp156865
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target155757%_)))
                                                (__tmp156860
                                                 (let ((__tmp156864
                                                        (cons (cons (cons _%$e155891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target155757%_))
                                  '()))
                      '()))
               (__tmp156861
                (let ((__tmp156863
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e155891%_ _%body155774%_)))
                      (__tmp156862 (_%k155759%_ _%vars155756%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp156863 __tmp156862 _%E155758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp156864
                                                    __tmp156861))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp156865
                                             __tmp156860
                                             _%E155758%_)))
                                        (_%BUG155663%_
                                         _%e155755%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e155760155767%_)
                                      (let ((_%hd155764155896%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155760155767%_)))
                                            (_%tl155765155898%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155760155767%_))))
                                        (let* ((_%tag155901%_
                                                _%hd155764155896%_)
                                               (_%body155903%_
                                                _%tl155765155898%_))
                                          (_%K155763155893%_
                                           _%body155903%_
                                           _%tag155901%_)))
                                      (_%E155762155771%_)))))
                             (_%splice-rlen155665%_
                              (lambda (_%e155717%_)
                                (let _%lp155719%_ ((_%e155721%_ _%e155717%_)
                                                   (_%n155722%_ '0))
                                  (let* ((_%e155723155730%_ _%e155721%_)
                                         (_%E155725155734%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155723155730%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155726155743%_
                                          (lambda (_%body155737%_
                                                   _%tag155738%_)
                                            (let ((_%$e155740%_ _%tag155738%_))
                                              (if (eq? 'splice _%$e155740%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx155469%_
                                                     _%where155656%_))
                                                  (if (eq? 'cons _%$e155740%_)
                                                      (_%lp155719%_
                                                       (cdr _%body155737%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n155722%_
                                                                '1)))
                                                      _%n155722%_))))))
                                    (if (pair? _%e155723155730%_)
                                        (let ((_%hd155727155746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155723155730%_)))
                                              (_%tl155728155748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155723155730%_))))
                                          (let* ((_%tag155751%_
                                                  _%hd155727155746%_)
                                                 (_%body155753%_
                                                  _%tl155728155748%_))
                                            (_%K155726155743%_
                                             _%body155753%_
                                             _%tag155751%_)))
                                        (_%E155725155734%_))))))
                             (_%splice-vars155666%_
                              (lambda (_%e155673%_)
                                (let _%recur155675%_ ((_%e155677%_ _%e155673%_)
                                                      (_%vars155678%_ '()))
                                  (let* ((_%e155679155686%_ _%e155677%_)
                                         (_%E155681155690%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155679155686%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155682155705%_
                                          (lambda (_%body155693%_
                                                   _%tag155694%_)
                                            (let ((_%$e155696%_ _%tag155694%_))
                                              (if (eq? 'var _%$e155696%_)
                                                  (cons _%body155693%_
                                                        _%vars155678%_)
                                                  (if (or (eq? 'cons
                                                               _%$e155696%_)
                                                          (eq? 'splice
                                                               _%$e155696%_))
                                                      (_%recur155675%_
                                                       (cdr _%body155693%_)
                                                       (_%recur155675%_
                                                        (car _%body155693%_)
                                                        _%vars155678%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e155696%_)
                      (eq? 'box _%$e155696%_))
                  (_%recur155675%_ _%body155693%_ _%vars155678%_)
                  _%vars155678%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e155679155686%_)
                                        (let ((_%hd155683155708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155679155686%_)))
                                              (_%tl155684155710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155679155686%_))))
                                          (let* ((_%tag155713%_
                                                  _%hd155683155708%_)
                                                 (_%body155715%_
                                                  _%tl155684155710%_))
                                            (_%K155682155705%_
                                             _%body155715%_
                                             _%tag155713%_)))
                                        (_%E155681155690%_))))))
                             (_%make-body155667%_
                              (lambda (_%vars155669%_)
                                (cons _%K155660%_
                                      (map (lambda (_%mvar155671%_)
                                             (let ((__tmp156866
                                                    (car _%mvar155671%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp156866
                                                _%vars155669%_
                                                _%BUG155663%_)))
                                           _%mvars155659%_)))))
                      (_%recur155664%_
                       _%hd155658%_
                       '()
                       _%target155657%_
                       _%E155661%_
                       _%make-body155667%_))))
                 (_%parse-clause155478%_
                  (lambda (_%hd155550%_ _%ids155551%_)
                    (let _%recur155553%_ ((_%e155555%_ _%hd155550%_)
                                          (_%vars155556%_ '())
                                          (_%depth155557%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e155555%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e155555%_))
                              (values '(any) _%vars155556%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e155555%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx155469%_
                                     _%hd155550%_))
                                  (if (let ((__tmp156867
                                             (lambda (_%id155562%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e155555%_
                                                  _%id155562%_)))))
                                        (declare (not safe))
                                        (__find __tmp156867 _%ids155551%_))
                                      (values (cons 'id _%e155555%_)
                                              _%vars155556%_)
                                      (if (let ((__tmp156868
                                                 (lambda (_%var155565%_)
                                                   (let ((__tmp156869
                                                          (car _%var155565%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e155555%_
                                                      __tmp156869)))))
                                            (declare (not safe))
                                            (__find __tmp156868
                                                    _%vars155556%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx155469%_
                                             _%e155555%_))
                                          (values (cons 'var _%e155555%_)
                                                  (cons (cons _%e155555%_
                                                              _%depth155557%_)
                                                        _%vars155556%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e155555%_))
                              (let* ((_%e155569155576%_ _%e155555%_)
                                     (_%E155571155580%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e155569155576%_))))
                                     (_%E155570155641%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e155569155576%_))
                                            (let ((_%e155572155584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e155569155576%_))))
                                              (let ((_%hd155573155587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155572155584%_)))
                                                    (_%tl155574155589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155572155584%_))))
                                                (let* ((_%hd155592%_
                                                        _%hd155573155587%_)
                                                       (_%rest155594%_
                                                        _%tl155574155589%_)
                                                       (_%make-pair155609%_
                                                        (lambda (_%tag155596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd155597%_
                         _%tl155598%_)
                  (let* ((_%hd-depth155600%_
                          (if (eq? _%tag155596%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth155557%_ '1))
                              _%depth155557%_))
                         (_g156870_
                          (_%recur155553%_
                           _%hd155597%_
                           _%vars155556%_
                           _%hd-depth155600%_)))
                    (begin
                      (let ((_g156871_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g156870_)
                                   (##values-length _g156870_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g156871_ 2)))
                            (error "Context expects 2 values" _g156871_)))
                      (let ((_%hd155602%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156870_ 0)))
                            (_%vars155603%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156870_ 1))))
                        (let ((_g156872_
                               (_%recur155553%_
                                _%tl155598%_
                                _%vars155603%_
                                _%depth155557%_)))
                          (begin
                            (let ((_g156873_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g156872_)
                                         (##values-length _g156872_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g156873_ 2)))
                                  (error "Context expects 2 values"
                                         _g156873_)))
                            (let ((_%tl155605%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156872_ 0)))
                                  (_%vars155606%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156872_ 1))))
                              (values (cons _%tag155596%_
                                            (cons _%hd155602%_ _%tl155605%_))
                                      _%vars155606%_)))))))))
               (_%e155610155617%_ _%rest155594%_)
               (_%E155612155621%_
                (lambda ()
                  (_%make-pair155609%_ 'cons _%hd155592%_ _%rest155594%_)))
               (_%E155611155637%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e155610155617%_))
                      (let ((_%e155613155625%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e155610155617%_))))
                        (let ((_%hd155614155628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155613155625%_)))
                              (_%tl155615155630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155613155625%_))))
                          (let* ((_%rest-hd155633%_ _%hd155614155628%_)
                                 (_%rest-tl155635%_ _%tl155615155630%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd155633%_))
                                (_%make-pair155609%_
                                 'splice
                                 _%hd155592%_
                                 _%rest-tl155635%_)
                                (_%make-pair155609%_
                                 'cons
                                 _%hd155592%_
                                 _%rest155594%_)))))
                      (_%E155612155621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E155611155637%_))))
                                            (_%E155571155580%_)))))
                                (_%E155570155641%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e155555%_))
                                  (values '(null) _%vars155556%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e155555%_))
                                      (let ((_g156874_
                                             (_%recur155553%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e155555%_)))
                                              _%vars155556%_
                                              _%depth155557%_)))
                                        (begin
                                          (let ((_g156875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g156874_)
                                                       (##values-length
                                                        _g156874_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g156875_ 2)))
                                                (error "Context expects 2 values"
                                                       _g156875_)))
                                          (let ((_%e155647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g156874_ 0)))
                                                (_%vars155648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g156874_
                                                    1))))
                                            (values (cons 'vector _%e155647%_)
                                                    _%vars155648%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e155555%_))
                                          (let ((_g156876_
                                                 (_%recur155553%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e155555%_)))
                                                  _%vars155556%_
                                                  _%depth155557%_)))
                                            (begin
                                              (let ((_g156877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g156876_)
                                                           (##values-length
                                                            _g156876_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g156877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g156877_)))
                                              (let ((_%e155651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156876_
                                                        0)))
                                                    (_%vars155652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156876_
                                                        1))))
                                                (values (cons 'box _%e155651%_)
                                                        _%vars155652%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e155555%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e155555%_)))
                                                      _%vars155556%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx155469%_
                                                 _%e155555%_))))))))))))
          (let* ((_%e155479155492%_ _%stx155469%_)
                 (_%E155481155496%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e155479155492%_))))
                 (_%E155480155546%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e155479155492%_))
                        (let ((_%e155482155500%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e155479155492%_))))
                          (let ((_%hd155483155503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155482155500%_)))
                                (_%tl155484155505%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155482155500%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155484155505%_))
                                (let ((_%e155485155508%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl155484155505%_))))
                                  (let ((_%hd155486155511%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155485155508%_)))
                                        (_%tl155487155513%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155485155508%_))))
                                    (let ((_%expr155516%_ _%hd155486155511%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl155487155513%_))
                                          (let ((_%e155488155518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl155487155513%_))))
                                            (let ((_%hd155489155521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e155488155518%_)))
                                                  (_%tl155490155523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e155488155518%_))))
                                              (let* ((_%ids155526%_
                                                      _%hd155489155521%_)
                                                     (_%clauses155528%_
                                                      _%tl155490155523%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids155526%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses155528%_))
                                                        (let* ((_%ids155533%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids155526%_)))
                       (_%clauses155535%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses155528%_)))
                       (_%clause-ids155537%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses155535%_)))
                       (_%E155539%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target155541%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first155543%_
                        (if (null? _%clauses155535%_)
                            _%E155539%_
                            (car _%clause-ids155537%_))))
                  (let ((__tmp156879
                         (let ((__tmp156880
                                (let ((__tmp156882
                                       (let ((__tmp156884
                                              (cons (cons (cons _%E155539%_
                                                                '())
                                                          (cons (let ((__tmp156886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target155541%_ '()))
                              (__tmp156885
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target155541%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp156886 __tmp156885))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp156883
                                              (_%generate-body155475%_
                                               (_%generate-bindings155474%_
                                                _%target155541%_
                                                _%ids155533%_
                                                _%clauses155535%_
                                                _%clause-ids155537%_
                                                _%E155539%_)
                                               (cons _%first155543%_
                                                     (cons _%expr155516%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp156884
                                          __tmp156883)))
                                      (__tmp156881
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx155469%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp156882
                                   __tmp156881))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp156880)))
                        (__tmp156878
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx155469%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp156879 __tmp156878)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx155469%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx155469%_
                                                       _%ids155526%_))))))
                                          (_%E155481155496%_)))))
                                (_%E155481155496%_))))
                        (_%E155481155496%_)))))
            (_%E155480155546%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx156194%_)
        (let* ((_%identifier=?156196%_ 'free-identifier=?)
               (_%unwrap-e156198%_ 'syntax-e)
               (_%wrap-e156200%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156194%_
           _%identifier=?156196%_
           _%unwrap-e156198%_
           _%wrap-e156200%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx156202%_ _%identifier=?156203%_)
        (let* ((_%unwrap-e156205%_ 'syntax-e) (_%wrap-e156207%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156202%_
           _%identifier=?156203%_
           _%unwrap-e156205%_
           _%wrap-e156207%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx156209%_ _%identifier=?156210%_ _%unwrap-e156211%_)
        (let ((_%wrap-e156213%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156209%_
           _%identifier=?156210%_
           _%unwrap-e156211%_
           _%wrap-e156213%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g156887_
        (let ((_g156888_ (let () (declare (not safe)) (##length _g156887_))))
          (cond ((let () (declare (not safe)) (##fx= _g156888_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g156887_))
                ((let () (declare (not safe)) (##fx= _g156888_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g156887_))
                ((let () (declare (not safe)) (##fx= _g156888_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g156887_))
                ((let () (declare (not safe)) (##fx= _g156888_ 4))
                 (apply gx#macro-expand-syntax-case__% _g156887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g156887_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx155466%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx155466%_))
            (let ((__tmp156889
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx155466%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp156889 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd155424%_ . _%rest155425%_)
        (let ((_%len155427%_ (length _%hd155424%_)))
          (let _%lp155429%_ ((_%rest155431%_ _%rest155425%_))
            (let* ((_%rest155432155440%_ _%rest155431%_)
                   (_%else155434155448%_ (lambda () '#!void))
                   (_%K155436155454%_
                    (lambda (_%rest155451%_ _%hd155452%_)
                      (if (let ((__tmp156890 (length _%hd155452%_)))
                            (declare (not safe))
                            (##fx= _%len155427%_ __tmp156890))
                          (_%lp155429%_ _%rest155451%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd155452%_))))))
              (if (pair? _%rest155432155440%_)
                  (let ((_%hd155437155457%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest155432155440%_)))
                        (_%tl155438155459%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest155432155440%_))))
                    (let* ((_%hd155462%_ _%hd155437155457%_)
                           (_%rest155464%_ _%tl155438155459%_))
                      (_%K155436155454%_ _%rest155464%_ _%hd155462%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx155374%_ _%n155375%_)
        (let _%lp155377%_ ((_%rest155380%_ _%stx155374%_) (_%r155382%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155380%_))
              (let* ((_%g155384155391%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155380%_)))
                     (_%E155386155395%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155384155391%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155387155402%_
                      (lambda (_%rest155398%_ _%hd155399%_)
                        (_%lp155377%_
                         _%rest155398%_
                         (cons _%hd155399%_ _%r155382%_)))))
                (if (pair? _%g155384155391%_)
                    (let ((_%hd155388155405%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155384155391%_)))
                          (_%tl155389155407%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155384155391%_))))
                      (let* ((_%hd155410%_ _%hd155388155405%_)
                             (_%rest155412%_ _%tl155389155407%_))
                        (_%K155387155402%_ _%rest155412%_ _%hd155410%_)))
                    (_%E155386155395%_)))
              (let _%lp155414%_ ((_%n155416%_ _%n155375%_)
                                 (_%l155417%_ _%r155382%_)
                                 (_%r155419%_ _%rest155380%_))
                (if (null? _%l155417%_)
                    (values _%l155417%_ _%r155419%_)
                    (if (fxpositive? _%n155416%_)
                        (_%lp155414%_
                         (let () (declare (not safe)) (##fx- _%n155416%_ '1))
                         (cdr _%l155417%_)
                         (cons (car _%l155417%_) _%r155419%_))
                        (values (reverse! _%l155417%_) _%r155419%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx155324%_ _%n155325%_)
        (let _%lp155327%_ ((_%rest155330%_ _%stx155324%_) (_%r155332%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155330%_))
              (let* ((_%g155334155341%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155330%_)))
                     (_%E155336155345%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155334155341%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155337155352%_
                      (lambda (_%rest155348%_ _%hd155349%_)
                        (_%lp155327%_
                         _%rest155348%_
                         (cons _%hd155349%_ _%r155332%_)))))
                (if (pair? _%g155334155341%_)
                    (let ((_%hd155338155355%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155334155341%_)))
                          (_%tl155339155357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155334155341%_))))
                      (let* ((_%hd155360%_ _%hd155338155355%_)
                             (_%rest155362%_ _%tl155339155357%_))
                        (_%K155337155352%_ _%rest155362%_ _%hd155360%_)))
                    (_%E155336155345%_)))
              (let _%lp155364%_ ((_%n155366%_ _%n155325%_)
                                 (_%l155367%_ _%r155332%_)
                                 (_%r155369%_ _%rest155330%_))
                (if (null? _%l155367%_)
                    (vector _%l155367%_ _%r155369%_)
                    (if (fxpositive? _%n155366%_)
                        (_%lp155364%_
                         (let () (declare (not safe)) (##fx- _%n155366%_ '1))
                         (cdr _%l155367%_)
                         (cons (car _%l155367%_) _%r155369%_))
                        (vector (reverse! _%l155367%_) _%r155369%_))))))))))
