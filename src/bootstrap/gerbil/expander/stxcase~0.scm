(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712124235)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129121 (list gx#expander::t))
            (__tmp129120 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129121
         '(id depth)
         __tmp129120
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129117%_
        (apply make-instance gx#syntax-pattern::t _%$args129117%_)))
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
      (lambda (_%self129103%_ _%stx129104%_)
        (let ()
          (let ((_%self129107%_ _%self129103%_))
            (let ()
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Identifier used out of context"
                 _%stx129104%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128569%_)
        (letrec ((_%generate128571%_
                  (lambda (_%e128811%_)
                    (letrec ((_%BUG128813%_
                              (lambda (_%q128978%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128569%_
                                         _%e128811%_
                                         _%q128978%_))))
                             (_%local-pattern-e128814%_
                              (lambda (_%pat128976%_)
                                (let ((__tmp129122
                                       (##structure-ref
                                        _%pat128976%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129122))))
                             (_%getvar128815%_
                              (lambda (_%q128973%_ _%vars128974%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q128973%_
                                   _%vars128974%_
                                   _%BUG128813%_))))
                             (_%getarg128816%_
                              (lambda (_%arg128939%_ _%vars128940%_)
                                (let* ((_%arg128941128948%_ _%arg128939%_)
                                       (_%E128943128952%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128941128948%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128944128961%_
                                        (lambda (_%e128955%_ _%tag128956%_)
                                          (let ((_%$e128958%_ _%tag128956%_))
                                            (if (eq? 'ref _%$e128958%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar128815%_
                                                   _%e128955%_
                                                   _%vars128940%_))
                                                (if (eq? 'pattern _%$e128958%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e128814%_
                                                       _%e128955%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG128813%_
                                                       _%arg128939%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128941128948%_))
                                      (let ((_%hd128945128964%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128941128948%_)))
                                            (_%tl128946128966%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128941128948%_))))
                                        (let* ((_%tag128969%_
                                                _%hd128945128964%_)
                                               (_%e128971%_
                                                _%tl128946128966%_))
                                          (declare (not safe))
                                          (_%K128944128961%_
                                           _%e128971%_
                                           _%tag128969%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128943128952%_)))))))
                      (let _%recur128818%_ ((_%e128820%_ _%e128811%_)
                                            (_%vars128821%_ '()))
                        (let* ((_%e128822128829%_ _%e128820%_)
                               (_%E128824128833%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128822128829%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128825128927%_
                                (lambda (_%body128836%_ _%tag128837%_)
                                  (let ((_%$e128839%_ _%tag128837%_))
                                    (if (eq? 'datum _%$e128839%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128836%_))
                                        (if (eq? 'term _%$e128839%_)
                                            (let ((_%id128842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128836%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128842%_
                                                     'gx#identifier-wrap::t))
                                                  (let ()
                                                    (let ((_%marks128845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%id128842%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _%marks128845%_))
                                                          (let ((__tmp129123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128836%_))))
                    (declare (not safe))
                    (gx#core-list 'datum->syntax '#f __tmp129123))
                  (let ((__tmp129125
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote-syntax _%body128836%_)))
                        (__tmp129124
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128836%_))))
                    (declare (not safe))
                    (gx#core-list
                     'datum->syntax
                     __tmp129125
                     __tmp129124
                     '#f
                     '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128842%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote-syntax
                                                           _%body128836%_)))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%BUG128813%_
                                                           _%e128820%_))))))
                                            (if (eq? 'pattern _%$e128839%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e128814%_
                                                   _%body128836%_))
                                                (if (eq? 'ref _%$e128839%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar128815%_
                                                       _%body128836%_
                                                       _%vars128821%_))
                                                    (if (eq? 'cons
                                                             _%$e128839%_)
                                                        (let ((__tmp129128
                                                               (let ((__tmp129129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body128836%_)))
                         (declare (not safe))
                         (_%recur128818%_ __tmp129129 _%vars128821%_)))
                      (__tmp129126
                       (let ((__tmp129127 (cdr _%body128836%_)))
                         (declare (not safe))
                         (_%recur128818%_ __tmp129127 _%vars128821%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129128 __tmp129126))
                (if (eq? 'vector _%$e128839%_)
                    (let ((__tmp129130
                           (let ()
                             (declare (not safe))
                             (_%recur128818%_ _%body128836%_ _%vars128821%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129130))
                    (if (eq? 'box _%$e128839%_)
                        (let ((__tmp129131
                               (let ()
                                 (declare (not safe))
                                 (_%recur128818%_
                                  _%body128836%_
                                  _%vars128821%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129131))
                        (if (eq? 'splice _%$e128839%_)
                            (let* ((_%body128848128859%_ _%body128836%_)
                                   (_%E128850128863%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128848128859%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128851128901%_
                                    (lambda (_%args128866%_
                                             _%iv128867%_
                                             _%hd128868%_
                                             _%depth128869%_)
                                      (let* ((_%targets128875%_
                                              (map (lambda (_%g128870128872%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg128816%_
                                                        _%g128870128872%_
                                                        _%vars128821%_)))
                                                   _%args128866%_))
                                             (_%fold-in128877%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128866%_)))
                                             (_%fold-out128879%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128881%_
                                              (let ((__tmp129132
                                                     (cons _%fold-out128879%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129132
                                                 _%fold-in128877%_)))
                                             (_%lambda-body128898%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128869%_ '1))
                                                  (let ((_%r-args128889%_
                                                         (map (lambda (_%arg128883%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128883%_)))
                      _%args128866%_))
                (_%r-vars128890%_
                 (let ((__tmp129133
                        (lambda (_%arg128885%_ _%var128886%_ _%r128887%_)
                          (cons (cons (cdr _%arg128885%_) _%var128886%_)
                                _%r128887%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129133
                    _%vars128821%_
                    _%args128866%_
                    _%fold-in128877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129134
                                                           (let ((__tmp129135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129139
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth128869%_ '1)))
                                (__tmp129136
                                 (let ((__tmp129137
                                        (let ((__tmp129138
                                               (cons 'var _%fold-out128879%_)))
                                          (declare (not safe))
                                          (cons __tmp129138
                                                _%r-args128889%_))))
                                   (declare (not safe))
                                   (cons _%hd128868%_ __tmp129137))))
                            (declare (not safe))
                            (cons __tmp129139 __tmp129136))))
                     (declare (not safe))
                     (cons 'splice __tmp129135))))
              (declare (not safe))
              (_%recur128818%_ __tmp129134 _%r-vars128890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars128896%_
                                                          (let ((__tmp129140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128892%_ _%var128893%_ _%r128894%_)
                           (cons (cons (cdr _%arg128892%_) _%var128893%_)
                                 _%r128894%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129140
                     _%vars128821%_
                     _%args128866%_
                     _%fold-in128877%_)))
                 (__tmp129141
                  (let ()
                    (declare (not safe))
                    (_%recur128818%_ _%hd128868%_ _%hd-vars128896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129141
                                                     _%fold-out128879%_)))))
                                        (let ((__tmp129145
                                               (if (let ((__tmp129146
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128875%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129146 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128875%_))
                                                   '#!void))
                                              (__tmp129142
                                               (let ((__tmp129144
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128881%_
                                                         _%lambda-body128898%_)))
                                                     (__tmp129143
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur128818%_
                                                         _%iv128867%_
                                                         _%vars128821%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129144
                                                  __tmp129143
                                                  _%targets128875%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129145
                                           __tmp129142))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128848128859%_))
                                  (let ((_%hd128852128904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128848128859%_)))
                                        (_%tl128853128906%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128848128859%_))))
                                    (let ((_%depth128909%_ _%hd128852128904%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128853128906%_))
                                          (let ((_%hd128854128911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128853128906%_)))
                                                (_%tl128855128913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128853128906%_))))
                                            (let ((_%hd128916%_
                                                   _%hd128854128911%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128855128913%_))
                                                  (let ((_%hd128856128918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128855128913%_)))
                                                        (_%tl128857128920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128855128913%_))))
                                                    (let* ((_%iv128923%_
                                                            _%hd128856128918%_)
                                                           (_%args128925%_
                                                            _%tl128857128920%_))
                                                      (declare (not safe))
                                                      (_%K128851128901%_
                                                       _%args128925%_
                                                       _%iv128923%_
                                                       _%hd128916%_
                                                       _%depth128909%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E128850128863%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128850128863%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128850128863%_))))
                            (if (eq? 'var _%$e128839%_)
                                _%body128836%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG128813%_ _%e128820%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128822128829%_))
                              (let ((_%hd128826128930%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128822128829%_)))
                                    (_%tl128827128932%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128822128829%_))))
                                (let* ((_%tag128935%_ _%hd128826128930%_)
                                       (_%body128937%_ _%tl128827128932%_))
                                  (declare (not safe))
                                  (_%K128825128927%_
                                   _%body128937%_
                                   _%tag128935%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128824128833%_))))))))
                 (_%parse128572%_
                  (lambda (_%e128613%_)
                    (letrec ((_%make-cons128615%_
                              (lambda (_%hd128803%_ _%tl128804%_)
                                (let ((_g129147_ _%hd128803%_)
                                      (_g129149_ _%tl128804%_))
                                  (begin
                                    (let ((_g129148_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129147_)
                                                 (##vector-length _g129147_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129148_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129148_)))
                                    (let ((_g129150_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129149_)
                                                 (##vector-length _g129149_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129150_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129150_)))
                                    (let ((_%hd-e128806%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129147_ 0)))
                                          (_%hd-vars128807%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129147_ 1))))
                                      (let ((_%tl-e128808%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129149_ 0)))
                                            (_%tl-vars128809%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129149_ 1))))
                                        (values (let ((__tmp129151
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e128806%_
                                                               _%tl-e128808%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129151))
                                                (append _%hd-vars128807%_
                                                        _%tl-vars128809%_))))))))
                             (_%make-splice128616%_
                              (lambda (_%where128739%_
                                       _%depth128740%_
                                       _%hd128741%_
                                       _%tl128742%_)
                                (let ((_g129152_ _%hd128741%_)
                                      (_g129154_ _%tl128742%_))
                                  (begin
                                    (let ((_g129153_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129152_)
                                                 (##vector-length _g129152_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129153_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129153_)))
                                    (let ((_g129155_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129154_)
                                                 (##vector-length _g129154_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129155_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129155_)))
                                    (let ((_%hd-e128744%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129152_ 0)))
                                          (_%hd-vars128745%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129152_ 1))))
                                      (let ((_%tl-e128746%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129154_ 0)))
                                            (_%tl-vars128747%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129154_ 1))))
                                        (let _%lp128749%_ ((_%rest128751%_
                                                            _%hd-vars128745%_)
                                                           (_%targets128752%_
                                                            '())
                                                           (_%vars128753%_
                                                            _%tl-vars128747%_))
                                          (let* ((_%rest128754128764%_
                                                  _%rest128751%_)
                                                 (_%else128756128772%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets128752%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128569%_
                                                           _%where128739%_))
                                                        (values (let ((__tmp129156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129157
                                      (let ((__tmp129158
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e128746%_
                                                     _%targets128752%_))))
                                        (declare (not safe))
                                        (cons _%hd-e128744%_ __tmp129158))))
                                 (declare (not safe))
                                 (cons _%depth128740%_ __tmp129157))))
                          (declare (not safe))
                          (cons 'splice __tmp129156))
                        _%vars128753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128758128784%_
                                                  (lambda (_%rest128775%_
                                                           _%hd-pat128776%_
                                                           _%hd-depth*128777%_)
                                                    (let ((_%hd-depth128779%_
                                                           (fx- _%hd-depth*128777%_
                                                                _%depth128740%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128779%_))
                                                          (let ()
                                                            (let ((__tmp129160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'ref _%hd-pat128776%_)
                                 _%targets128752%_))
                          (__tmp129159
                           (cons (cons _%hd-depth128779%_ _%hd-pat128776%_)
                                 _%vars128753%_)))
                      (declare (not safe))
                      (_%lp128749%_ _%rest128775%_ __tmp129160 __tmp129159)))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128779%_))
                      (let ()
                        (let ((__tmp129161
                               (cons (cons 'pattern _%hd-pat128776%_)
                                     _%targets128752%_)))
                          (declare (not safe))
                          (_%lp128749%_
                           _%rest128775%_
                           __tmp129161
                           _%vars128753%_)))
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Too many ellipses"
                           _%stx128569%_
                           _%where128739%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128754128764%_))
                                                (let ((_%hd128759128787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128754128764%_)))
                                                      (_%tl128760128789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128754128764%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128759128787%_))
                                                      (let ((_%hd128761128792%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128759128787%_)))
                    (_%tl128762128794%_
                     (let () (declare (not safe)) (##cdr _%hd128759128787%_))))
                (let* ((_%hd-depth*128797%_ _%hd128761128792%_)
                       (_%hd-pat128799%_ _%tl128762128794%_)
                       (_%rest128801%_ _%tl128760128789%_))
                  (declare (not safe))
                  (_%K128758128784%_
                   _%rest128801%_
                   _%hd-pat128799%_
                   _%hd-depth*128797%_)))
              (let () (declare (not safe)) (_%else128756128772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else128756128772%_)))))))))))
                             (_%recur128617%_
                              (lambda (_%e128622%_ _%is-e?128623%_)
                                (if (_%is-e?128623%_ _%e128622%_)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Mislpaced ellipsis"
                                         _%stx128569%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e128622%_))
                                        (let ()
                                          (let* ((_%pat128627%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e128622%_)))
                                                 (_%depth128629%_
                                                  (##structure-ref
                                                   _%pat128627%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth128629%_)
                                                (values (cons 'ref
                                                              _%pat128627%_)
                                                        (cons (cons _%depth128629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat128627%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat128627%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128622%_))
                                            (let ()
                                              (values (cons 'term _%e128622%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128622%_))
                                                (let ()
                                                  (let* ((_%e128633128640%_
                                                          _%e128622%_)
                                                         (_%E128635128644%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e128633128640%_))))
                                                         (_%E128634128726%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e128633128640%_))
                        (let ((_%e128636128648%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128633128640%_))))
                          (let ((_%hd128637128651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128636128648%_)))
                                (_%tl128638128653%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128636128648%_))))
                            (let* ((_%hd128656%_ _%hd128637128651%_)
                                   (_%rest128658%_ _%tl128638128653%_))
                              (if '#t
                                  (if (_%is-e?128623%_ _%hd128656%_)
                                      (let* ((_%e128659128666%_ _%rest128658%_)
                                             (_%E128661128670%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx128569%_
                                                   _%e128622%_))))
                                             (_%E128660128684%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128659128666%_))
                                                    (let ((_%e128662128674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128659128666%_))))
                                                      (let ((_%hd128663128677%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128662128674%_)))
                    (_%tl128664128679%_
                     (let () (declare (not safe)) (##cdr _%e128662128674%_))))
                (let ((_%rest128682%_ _%hd128663128677%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl128664128679%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur128617%_ _%rest128682%_ false))
                          (let () (declare (not safe)) (_%E128661128670%_)))
                      (let () (declare (not safe)) (_%E128661128670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128661128670%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128660128684%_)))
                                      (let _%lp128688%_ ((_%rest128690%_
                                                          _%rest128658%_)
                                                         (_%depth128691%_ '0))
                                        (let* ((_%e128692128699%_
                                                _%rest128690%_)
                                               (_%E128694128703%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth128691%_)
                                                      (let ((__tmp129163
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur128617%_ _%hd128656%_ _%is-e?128623%_)))
                    (__tmp129162
                     (let ()
                       (declare (not safe))
                       (_%recur128617%_ _%rest128690%_ _%is-e?128623%_))))
                (declare (not safe))
                (_%make-splice128616%_
                 _%e128622%_
                 _%depth128691%_
                 __tmp129163
                 __tmp129162))
              (let ((__tmp129165
                     (let ()
                       (declare (not safe))
                       (_%recur128617%_ _%hd128656%_ _%is-e?128623%_)))
                    (__tmp129164
                     (let ()
                       (declare (not safe))
                       (_%recur128617%_ _%rest128690%_ _%is-e?128623%_))))
                (declare (not safe))
                (_%make-cons128615%_ __tmp129165 __tmp129164)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E128693128722%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e128692128699%_))
                                                      (let ((_%e128695128707%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e128692128699%_))))
                (let ((_%hd128696128710%_
                       (let () (declare (not safe)) (##car _%e128695128707%_)))
                      (_%tl128697128712%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e128695128707%_))))
                  (let* ((_%rest-hd128715%_ _%hd128696128710%_)
                         (_%rest-tl128717%_ _%tl128697128712%_))
                    (if '#t
                        (if (_%is-e?128623%_ _%rest-hd128715%_)
                            (let ()
                              (let ((__tmp129166
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%depth128691%_ '1))))
                                (declare (not safe))
                                (_%lp128688%_ _%rest-tl128717%_ __tmp129166)))
                            (if (fxpositive? _%depth128691%_)
                                (let ()
                                  (let ((__tmp129168
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128617%_
                                            _%hd128656%_
                                            _%is-e?128623%_)))
                                        (__tmp129167
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128617%_
                                            _%rest128690%_
                                            _%is-e?128623%_))))
                                    (declare (not safe))
                                    (_%make-splice128616%_
                                     _%e128622%_
                                     _%depth128691%_
                                     __tmp129168
                                     __tmp129167)))
                                (let ()
                                  (let ((__tmp129170
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128617%_
                                            _%hd128656%_
                                            _%is-e?128623%_)))
                                        (__tmp129169
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128617%_
                                            _%rest128690%_
                                            _%is-e?128623%_))))
                                    (declare (not safe))
                                    (_%make-cons128615%_
                                     __tmp129170
                                     __tmp129169)))))
                        (let () (declare (not safe)) (_%E128694128703%_))))))
              (let () (declare (not safe)) (_%E128694128703%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%E128693128722%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128635128644%_))))))
                        (let () (declare (not safe)) (_%E128635128644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128634128726%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128622%_))
                                                    (let ()
                                                      (let ((_g129171_
                                                             (let ((__tmp129173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (vector->list
                             (let ()
                               (declare (not safe))
                               (gx#stx-unwrap__0 _%e128622%_)))))
                       (declare (not safe))
                       (_%recur128617%_ __tmp129173 _%is-e?128623%_))))
                (begin
                  (let ((_g129172_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g129171_)
                               (##vector-length _g129171_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g129172_ 2)))
                        (error "Context expects 2 values" _g129172_)))
                  (let ((_%e128731%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129171_ 0)))
                        (_%vars128732%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129171_ 1))))
                    (values (cons 'vector _%e128731%_) _%vars128732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128622%_))
                                                        (let ()
                                                          (let ((_g129174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129176
                                (unbox (let ()
                                         (declare (not safe))
                                         (gx#stx-unwrap__0 _%e128622%_)))))
                           (declare (not safe))
                           (_%recur128617%_ __tmp129176 _%is-e?128623%_))))
                    (begin
                      (let ((_g129175_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g129174_)
                                   (##vector-length _g129174_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g129175_ 2)))
                            (error "Context expects 2 values" _g129175_)))
                      (let ((_%e128735%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129174_ 0)))
                            (_%vars128736%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129174_ 1))))
                        (values (cons 'box _%e128735%_) _%vars128736%_)))))
                (let () (values (cons 'datum _%e128622%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129177_
                             (let ()
                               (declare (not safe))
                               (_%recur128617%_ _%e128613%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129178_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129177_)
                                       (##vector-length _g129177_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129178_ 2)))
                                (error "Context expects 2 values" _g129178_)))
                          (let ((_%tree128619%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129177_ 0)))
                                (_%vars128620%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129177_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars128620%_))
                                _%tree128619%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128569%_
                                   _%vars128620%_))))))))))
          (let* ((_%e128573128583%_ _%stx128569%_)
                 (_%E128575128587%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128569%_))))
                 (_%E128574128609%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128573128583%_))
                        (let ((_%e128576128591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128573128583%_))))
                          (let ((_%hd128577128594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128576128591%_)))
                                (_%tl128578128596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128576128591%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128578128596%_))
                                (let ((_%e128579128599%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128578128596%_))))
                                  (let ((_%hd128580128602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128579128599%_)))
                                        (_%tl128581128604%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128579128599%_))))
                                    (let ((_%form128607%_ _%hd128580128602%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128581128604%_))
                                          (if '#t
                                              (let ((__tmp129180
                                                     (let ((__tmp129181
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse128572%_
                                                               _%form128607%_))))
                                                       (declare (not safe))
                                                       (_%generate128571%_
                                                        __tmp129181)))
                                                    (__tmp129179
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128569%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129180
                                                 __tmp129179))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128575128587%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128575128587%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128575128587%_)))))
                        (let () (declare (not safe)) (_%E128575128587%_))))))
            (let () (declare (not safe)) (_%E128574128609%_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127818%_
               _%identifier=?127819%_
               _%unwrap-e127820%_
               _%wrap-e127821%_)
        (letrec ((_%generate-bindings127823%_
                  (lambda (_%target128433%_
                           _%ids128434%_
                           _%clauses128435%_
                           _%clause-ids128436%_
                           _%E128437%_)
                    (letrec ((_%generate1128439%_
                              (lambda (_%clause128536%_
                                       _%clause-id128537%_
                                       _%E128538%_)
                                (cons (cons _%clause-id128537%_ '())
                                      (cons (let ((__tmp129183
                                                   (cons _%target128433%_ '()))
                                                  (__tmp129182
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause127825%_
                                                      _%target128433%_
                                                      _%ids128434%_
                                                      _%clause128536%_
                                                      _%E128538%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129183
                                               __tmp129182))
                                            '())))))
                      (let _%lp128441%_ ((_%rest128443%_ _%clauses128435%_)
                                         (_%rest-ids128444%_
                                          _%clause-ids128436%_)
                                         (_%bindings128445%_ '()))
                        (let* ((_%rest128446128454%_ _%rest128443%_)
                               (_%else128448128462%_
                                (lambda () _%bindings128445%_))
                               (_%K128450128524%_
                                (lambda (_%rest128465%_ _%clause128466%_)
                                  (let* ((_%rest-ids128467128474%_
                                          _%rest-ids128444%_)
                                         (_%E128469128478%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128467128474%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128470128512%_
                                          (lambda (_%rest-ids128481%_
                                                   _%clause-id128482%_)
                                            (let* ((_%rest-ids128483128491%_
                                                    _%rest-ids128481%_)
                                                   (_%else128485128499%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128439%_
                                                               _%clause128466%_
                                                               _%clause-id128482%_
                                                               _%E128437%_))
                                                            _%bindings128445%_)))
                                                   (_%K128487128504%_
                                                    (lambda (_%next-clause-id128502%_)
                                                      (let ((__tmp129184
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128439%_
                              _%clause128466%_
                              _%clause-id128482%_
                              _%next-clause-id128502%_))
                           _%bindings128445%_)))
                (declare (not safe))
                (_%lp128441%_
                 _%rest128465%_
                 _%rest-ids128481%_
                 __tmp129184)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128483128491%_))
                                                  (let* ((_%hd128488128507%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128483128491%_)))
                                                         (_%next-clause-id128510%_
                                                          _%hd128488128507%_))
                                                    (declare (not safe))
                                                    (_%K128487128504%_
                                                     _%next-clause-id128510%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else128485128499%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128467128474%_))
                                        (let ((_%hd128471128515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128467128474%_)))
                                              (_%tl128472128517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128467128474%_))))
                                          (let* ((_%clause-id128520%_
                                                  _%hd128471128515%_)
                                                 (_%rest-ids128522%_
                                                  _%tl128472128517%_))
                                            (declare (not safe))
                                            (_%K128470128512%_
                                             _%rest-ids128522%_
                                             _%clause-id128520%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128469128478%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128446128454%_))
                              (let ((_%hd128451128527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128446128454%_)))
                                    (_%tl128452128529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128446128454%_))))
                                (let* ((_%clause128532%_ _%hd128451128527%_)
                                       (_%rest128534%_ _%tl128452128529%_))
                                  (declare (not safe))
                                  (_%K128450128524%_
                                   _%rest128534%_
                                   _%clause128532%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128448128462%_))))))))
                 (_%generate-body127824%_
                  (lambda (_%bindings128393%_ _%body128394%_)
                    (let _%recur128396%_ ((_%rest128398%_ _%bindings128393%_))
                      (let* ((_%rest128399128407%_ _%rest128398%_)
                             (_%else128401128415%_ (lambda () _%body128394%_))
                             (_%K128403128421%_
                              (lambda (_%rest128418%_ _%hd128419%_)
                                (let ((__tmp129186 (cons _%hd128419%_ '()))
                                      (__tmp129185
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128396%_ _%rest128418%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129186
                                   __tmp129185)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128399128407%_))
                            (let ((_%hd128404128424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128399128407%_)))
                                  (_%tl128405128426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128399128407%_))))
                              (let* ((_%hd128429%_ _%hd128404128424%_)
                                     (_%rest128431%_ _%tl128405128426%_))
                                (declare (not safe))
                                (_%K128403128421%_
                                 _%rest128431%_
                                 _%hd128429%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128401128415%_)))))))
                 (_%generate-clause127825%_
                  (lambda (_%target128256%_
                           _%ids128257%_
                           _%clause128258%_
                           _%E128259%_)
                    (letrec ((_%generate1128261%_
                              (lambda (_%hd128348%_
                                       _%fender128349%_
                                       _%body128350%_)
                                (let ((_g129187_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause127827%_
                                          _%hd128348%_
                                          _%ids128257%_))))
                                  (begin
                                    (let ((_g129188_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129187_)
                                                 (##vector-length _g129187_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129188_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129188_)))
                                    (let ((_%e128352%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129187_ 0)))
                                          (_%mvars128353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129187_ 1))))
                                      (let* ((_%pvars128355%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128353%_))))
                                             (_%E128357%_
                                              (cons _%E128259%_
                                                    (cons _%target128256%_
                                                          '())))
                                             (_%K128390%_
                                              (let ((__tmp129189
                                                     (let ((__tmp129191
                                                            (map (lambda (_%mvar128359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128360%_)
                           (let* ((_%mvar128361128368%_ _%mvar128359%_)
                                  (_%E128363128372%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128361128368%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128364128378%_
                                   (lambda (_%depth128375%_ _%id128376%_)
                                     (cons _%id128376%_
                                           (cons (let ((__tmp129193
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128376%_)))
                                                       (__tmp129192
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128360%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129193
                                                    __tmp129192
                                                    _%depth128375%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128361128368%_))
                                 (let ((_%hd128365128381%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128361128368%_)))
                                       (_%tl128366128383%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128361128368%_))))
                                   (let* ((_%id128386%_ _%hd128365128381%_)
                                          (_%depth128388%_ _%tl128366128383%_))
                                     (declare (not safe))
                                     (_%K128364128378%_
                                      _%depth128388%_
                                      _%id128386%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128363128372%_)))))
                         _%mvars128353%_
                         _%pvars128355%_))
                   (__tmp129190
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128349%_ '#t))
                        _%body128350%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128349%_
                           _%body128350%_
                           _%E128357%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129191 __tmp129190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128355%_
                                                 __tmp129189))))
                                        (let ()
                                          (declare (not safe))
                                          (_%generate-match127826%_
                                           _%hd128348%_
                                           _%target128256%_
                                           _%e128352%_
                                           _%mvars128353%_
                                           _%K128390%_
                                           _%E128357%_)))))))))
                      (let* ((_%e128262128282%_ _%clause128258%_)
                             (_%E128271128286%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128262128282%_))))
                             (_%E128264128320%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128262128282%_))
                                    (let ((_%e128272128290%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128262128282%_))))
                                      (let ((_%hd128273128293%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128272128290%_)))
                                            (_%tl128274128295%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128272128290%_))))
                                        (let ((_%hd128298%_
                                               _%hd128273128293%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128274128295%_))
                                              (let ((_%e128275128300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128274128295%_))))
                                                (let ((_%hd128276128303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128275128300%_)))
                                                      (_%tl128277128305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128275128300%_))))
                                                  (let ((_%fender128308%_
                                                         _%hd128276128303%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128277128305%_))
                                                        (let ((_%e128278128310%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128277128305%_))))
                  (let ((_%hd128279128313%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128278128310%_)))
                        (_%tl128280128315%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128278128310%_))))
                    (let ((_%body128318%_ _%hd128279128313%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128280128315%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128261%_
                                 _%hd128298%_
                                 _%fender128308%_
                                 _%body128318%_))
                              (let ()
                                (declare (not safe))
                                (_%E128271128286%_)))
                          (let () (declare (not safe)) (_%E128271128286%_))))))
                (let () (declare (not safe)) (_%E128271128286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128271128286%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128271128286%_)))))
                             (_%E128263128344%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128262128282%_))
                                    (let ((_%e128265128324%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128262128282%_))))
                                      (let ((_%hd128266128327%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128265128324%_)))
                                            (_%tl128267128329%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128265128324%_))))
                                        (let ((_%hd128332%_
                                               _%hd128266128327%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128267128329%_))
                                              (let ((_%e128268128334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128267128329%_))))
                                                (let ((_%hd128269128337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128268128334%_)))
                                                      (_%tl128270128339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128268128334%_))))
                                                  (let ((_%body128342%_
                                                         _%hd128269128337%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128270128339%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128261%_
                                                               _%hd128332%_
                                                               '#t
                                                               _%body128342%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128264128320%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128264128320%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128264128320%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128264128320%_))))))
                        (let () (declare (not safe)) (_%E128263128344%_))))))
                 (_%generate-match127826%_
                  (lambda (_%where128005%_
                           _%target128006%_
                           _%hd128007%_
                           _%mvars128008%_
                           _%K128009%_
                           _%E128010%_)
                    (letrec ((_%BUG128012%_
                              (lambda (_%q128254%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127818%_
                                         _%hd128007%_
                                         _%q128254%_))))
                             (_%recur128013%_
                              (lambda (_%e128104%_
                                       _%vars128105%_
                                       _%target128106%_
                                       _%E128107%_
                                       _%k128108%_)
                                (let* ((_%e128109128116%_ _%e128104%_)
                                       (_%E128111128120%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128109128116%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128112128242%_
                                        (lambda (_%body128123%_ _%tag128124%_)
                                          (let ((_%$e128126%_ _%tag128124%_))
                                            (if (eq? 'any _%$e128126%_)
                                                (_%k128108%_ _%vars128105%_)
                                                (if (eq? 'id _%$e128126%_)
                                                    (let ((__tmp129198
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128106%_)))
                                                          (__tmp129194
                                                           (let ((__tmp129196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129197
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127821%_
                                    _%body128123%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127819%_
                             __tmp129197
                             _%target128106%_)))
                         (__tmp129195 (_%k128108%_ _%vars128105%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129196 __tmp129195 _%E128107%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129198 __tmp129194 _%E128107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128126%_)
                                                        (_%k128108%_
                                                         (cons (cons _%body128123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128106%_)
                       _%vars128105%_))
                (if (eq? 'cons _%$e128126%_)
                    (let ((_%$e128129%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128130%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128131%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129205
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128106%_)))
                            (__tmp129199
                             (let ((__tmp129204
                                    (cons (cons (cons _%$e128129%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127820%_
                                                         _%target128106%_))
                                                      '()))
                                          '()))
                                   (__tmp129200
                                    (let ((__tmp129203
                                           (cons (cons (cons _%$hd128130%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128129%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128129%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129201
                                           (let* ((_%body128132128139%_
                                                   _%body128123%_)
                                                  (_%E128134128143%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128132128139%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128135128151%_
                                                   (lambda (_%tl128146%_
                                                            _%hd128147%_)
                                                     (let ((__tmp129202
                                                            (lambda (_%vars128149%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128013%_
                         _%tl128146%_
                         _%vars128149%_
                         _%$tl128131%_
                         _%E128107%_
                         _%k128108%_)))))
               (declare (not safe))
               (_%recur128013%_
                _%hd128147%_
                _%vars128105%_
                _%$hd128130%_
                _%E128107%_
                __tmp129202)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128132128139%_))
                                                 (let ((_%hd128136128154%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128132128139%_)))
                                                       (_%tl128137128156%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128132128139%_))))
                                                   (let* ((_%hd128159%_
                                                           _%hd128136128154%_)
                                                          (_%tl128161%_
                                                           _%tl128137128156%_))
                                                     (declare (not safe))
                                                     (_%K128135128151%_
                                                      _%tl128161%_
                                                      _%hd128159%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128134128143%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129203
                                       __tmp129201))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129204
                                __tmp129200))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129205
                         __tmp129199
                         _%E128107%_)))
                    (if (eq? 'splice _%$e128126%_)
                        (let* ((_%body128162128169%_ _%body128123%_)
                               (_%E128164128173%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128162128169%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128165128224%_
                                (lambda (_%tl128176%_ _%hd128177%_)
                                  (let* ((_%rlen128179%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128014%_
                                             _%tl128176%_)))
                                         (_%$target128181%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128183%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128185%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128187%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128189%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128191%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128193%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128195%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128015%_
                                             _%hd128177%_)))
                                         (_%lvars128197%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128195%_)))
                                         (_%tlvars128199%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128195%_)))
                                         (_%linit128203%_
                                          (map (lambda (_%var128201%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128197%_)))
                                    (letrec ((_%make-loop128206%_
                                              (lambda (_%vars128210%_)
                                                (let ((__tmp129208
                                                       (cons (cons (cons _%$lp128187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129224
                                        (cons _%$hd128183%_ _%lvars128197%_))
                                       (__tmp129209
                                        (let ((__tmp129223
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128183%_)))
                                              (__tmp129214
                                               (let ((__tmp129222
                                                      (cons (cons (cons _%$lp-e128189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127820%_
                                   _%$hd128183%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129215
                                                      (let ((__tmp129221
                                                             (cons (cons (cons _%$lp-hd128191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128189%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128193%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128189%_))
                                             '()))
                                 '())))
                    (__tmp129216
                     (let ((__tmp129217
                            (lambda (_%hdvars128212%_)
                              (let ((__tmp129218
                                     (let ((__tmp129219
                                            (map (lambda (_%svar128214%_
                                                          _%lvar128215%_)
                                                   (let ((__tmp129220
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128214%_
                                                             _%hdvars128212%_
                                                             _%BUG128012%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129220
                                                      _%lvar128215%_)))
                                                 _%svars128195%_
                                                 _%lvars128197%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128193%_ __tmp129219))))
                                (declare (not safe))
                                (cons _%$lp128187%_ __tmp129218)))))
                       (declare (not safe))
                       (_%recur128013%_
                        _%hd128177%_
                        '()
                        _%$lp-hd128191%_
                        _%E128107%_
                        __tmp129217))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129221 __tmp129216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129222
                                                  __tmp129215)))
                                              (__tmp129210
                                               (let ((__tmp129213
                                                      (map (lambda (_%lvar128217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128218%_)
                     (cons (cons _%tlvar128218%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128217%_))
                                 '())))
                   _%lvars128197%_
                   _%tlvars128199%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129211
                                                      (_%k128108%_
                                                       (let ((__tmp129212
                                                              (lambda (_%svar128220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128221%_
                               _%r128222%_)
                        (cons (cons _%svar128220%_ _%tlvar128221%_)
                              _%r128222%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129212
                  _%vars128210%_
                  _%svars128195%_
                  _%tlvars128199%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129213
                                                  __tmp129211))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129223
                                           __tmp129214
                                           __tmp129210))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129224
                                    __tmp129209))
                                 '()))
                     '()))
              (__tmp129206
               (let ((__tmp129207
                      (let ()
                        (declare (not safe))
                        (cons _%$target128181%_ _%linit128203%_))))
                 (declare (not safe))
                 (cons _%$lp128187%_ __tmp129207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129208
                                                   __tmp129206)))))
                                      (let ((_%body128208%_
                                             (let ((__tmp129226
                                                    (cons (cons (cons _%$target128181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128185%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128106%_
                                 _%rlen128179%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129225
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128013%_
                                                       _%tl128176%_
                                                       _%vars128105%_
                                                       _%$tl128185%_
                                                       _%E128107%_
                                                       _%make-loop128206%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129226
                                                __tmp129225))))
                                        (let ((__tmp129230
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128106%_)))
                                              (__tmp129227
                                               (if (zero? _%rlen128179%_)
                                                   _%body128208%_
                                                   (let ((__tmp129228
                                                          (let ((__tmp129229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128106%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129229 _%rlen128179%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129228
                                                      _%body128208%_
                                                      _%E128107%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129230
                                           __tmp129227
                                           _%E128107%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128162128169%_))
                              (let ((_%hd128166128227%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128162128169%_)))
                                    (_%tl128167128229%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128162128169%_))))
                                (let* ((_%hd128232%_ _%hd128166128227%_)
                                       (_%tl128234%_ _%tl128167128229%_))
                                  (declare (not safe))
                                  (_%K128165128224%_
                                   _%tl128234%_
                                   _%hd128232%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128164128173%_))))
                        (if (eq? 'null _%$e128126%_)
                            (let ((__tmp129232
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128106%_)))
                                  (__tmp129231 (_%k128108%_ _%vars128105%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129232
                               __tmp129231
                               _%E128107%_))
                            (if (eq? 'vector _%$e128126%_)
                                (let ((_%$e128236%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129237
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128106%_)))
                                        (__tmp129233
                                         (let ((__tmp129235
                                                (cons (cons (cons _%$e128236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129236
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127820%_
                                    _%target128106%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129236))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129234
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128013%_
                                                   _%body128123%_
                                                   _%vars128105%_
                                                   _%$e128236%_
                                                   _%E128107%_
                                                   _%k128108%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129235
                                            __tmp129234))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129237
                                     __tmp129233
                                     _%E128107%_)))
                                (if (eq? 'box _%$e128126%_)
                                    (let ((_%$e128238%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129242
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128106%_)))
                                            (__tmp129238
                                             (let ((__tmp129240
                                                    (cons (cons (cons _%$e128238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129241
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127820%_
                                        _%target128106%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129241))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129239
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128013%_
                                                       _%body128123%_
                                                       _%vars128105%_
                                                       _%$e128238%_
                                                       _%E128107%_
                                                       _%k128108%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129240
                                                __tmp129239))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129242
                                         __tmp129238
                                         _%E128107%_)))
                                    (if (eq? 'datum _%$e128126%_)
                                        (let ((_%$e128240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129248
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128106%_)))
                                                (__tmp129243
                                                 (let ((__tmp129247
                                                        (cons (cons (cons _%$e128240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128106%_))
                                  '()))
                      '()))
               (__tmp129244
                (let ((__tmp129246
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128240%_ _%body128123%_)))
                      (__tmp129245 (_%k128108%_ _%vars128105%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129246 __tmp129245 _%E128107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129247
                                                    __tmp129244))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129248
                                             __tmp129243
                                             _%E128107%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128012%_
                                           _%e128104%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128109128116%_))
                                      (let ((_%hd128113128245%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128109128116%_)))
                                            (_%tl128114128247%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128109128116%_))))
                                        (let* ((_%tag128250%_
                                                _%hd128113128245%_)
                                               (_%body128252%_
                                                _%tl128114128247%_))
                                          (declare (not safe))
                                          (_%K128112128242%_
                                           _%body128252%_
                                           _%tag128250%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128111128120%_))))))
                             (_%splice-rlen128014%_
                              (lambda (_%e128066%_)
                                (let _%lp128068%_ ((_%e128070%_ _%e128066%_)
                                                   (_%n128071%_ '0))
                                  (let* ((_%e128072128079%_ _%e128070%_)
                                         (_%E128074128083%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128072128079%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128075128092%_
                                          (lambda (_%body128086%_
                                                   _%tag128087%_)
                                            (let ((_%$e128089%_ _%tag128087%_))
                                              (if (eq? 'splice _%$e128089%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127818%_
                                                     _%where128005%_))
                                                  (if (eq? 'cons _%$e128089%_)
                                                      (let ((__tmp129250
                                                             (cdr _%body128086%_))
                                                            (__tmp129249
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128071%_ '1))))
                (declare (not safe))
                (_%lp128068%_ __tmp129250 __tmp129249))
              _%n128071%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128072128079%_))
                                        (let ((_%hd128076128095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128072128079%_)))
                                              (_%tl128077128097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128072128079%_))))
                                          (let* ((_%tag128100%_
                                                  _%hd128076128095%_)
                                                 (_%body128102%_
                                                  _%tl128077128097%_))
                                            (declare (not safe))
                                            (_%K128075128092%_
                                             _%body128102%_
                                             _%tag128100%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128074128083%_)))))))
                             (_%splice-vars128015%_
                              (lambda (_%e128022%_)
                                (let _%recur128024%_ ((_%e128026%_ _%e128022%_)
                                                      (_%vars128027%_ '()))
                                  (let* ((_%e128028128035%_ _%e128026%_)
                                         (_%E128030128039%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128028128035%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128031128054%_
                                          (lambda (_%body128042%_
                                                   _%tag128043%_)
                                            (let ((_%$e128045%_ _%tag128043%_))
                                              (if (eq? 'var _%$e128045%_)
                                                  (cons _%body128042%_
                                                        _%vars128027%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128045%_)
                                                          (eq? 'splice
                                                               _%$e128045%_))
                                                      (let ((__tmp129253
                                                             (cdr _%body128042%_))
                                                            (__tmp129251
                                                             (let ((__tmp129252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128042%_)))
                       (declare (not safe))
                       (_%recur128024%_ __tmp129252 _%vars128027%_))))
                (declare (not safe))
                (_%recur128024%_ __tmp129253 __tmp129251))
              (if (or (eq? 'vector _%$e128045%_) (eq? 'box _%$e128045%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128024%_ _%body128042%_ _%vars128027%_))
                  _%vars128027%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128028128035%_))
                                        (let ((_%hd128032128057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128028128035%_)))
                                              (_%tl128033128059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128028128035%_))))
                                          (let* ((_%tag128062%_
                                                  _%hd128032128057%_)
                                                 (_%body128064%_
                                                  _%tl128033128059%_))
                                            (declare (not safe))
                                            (_%K128031128054%_
                                             _%body128064%_
                                             _%tag128062%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128030128039%_)))))))
                             (_%make-body128016%_
                              (lambda (_%vars128018%_)
                                (cons _%K128009%_
                                      (map (lambda (_%mvar128020%_)
                                             (let ((__tmp129254
                                                    (car _%mvar128020%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129254
                                                _%vars128018%_
                                                _%BUG128012%_)))
                                           _%mvars128008%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128013%_
                         _%hd128007%_
                         '()
                         _%target128006%_
                         _%E128010%_
                         _%make-body128016%_)))))
                 (_%parse-clause127827%_
                  (lambda (_%hd127899%_ _%ids127900%_)
                    (let _%recur127902%_ ((_%e127904%_ _%hd127899%_)
                                          (_%vars127905%_ '())
                                          (_%depth127906%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127904%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e127904%_))
                                (let () (values '(any) _%vars127905%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e127904%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Misplaced ellipsis"
                                         _%stx127818%_
                                         _%hd127899%_)))
                                    (if (let ((__tmp129255
                                               (lambda (_%id127911%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e127904%_
                                                    _%id127911%_)))))
                                          (declare (not safe))
                                          (__find __tmp129255 _%ids127900%_))
                                        (let ()
                                          (values (cons 'id _%e127904%_)
                                                  _%vars127905%_))
                                        (if (let ((__tmp129256
                                                   (lambda (_%var127914%_)
                                                     (let ((__tmp129257
                                                            (car _%var127914%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e127904%_
                                                        __tmp129257)))))
                                              (declare (not safe))
                                              (__find __tmp129256
                                                      _%vars127905%_))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Duplicate pattern variable"
                                                 _%stx127818%_
                                                 _%e127904%_)))
                                            (let ()
                                              (values (cons 'var _%e127904%_)
                                                      (cons (cons _%e127904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth127906%_)
                    _%vars127905%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127904%_))
                              (let ()
                                (let* ((_%e127918127925%_ _%e127904%_)
                                       (_%E127920127929%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e127918127925%_))))
                                       (_%E127919127990%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e127918127925%_))
                                              (let ((_%e127921127933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e127918127925%_))))
                                                (let ((_%hd127922127936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e127921127933%_)))
                                                      (_%tl127923127938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e127921127933%_))))
                                                  (let* ((_%hd127941%_
                                                          _%hd127922127936%_)
                                                         (_%rest127943%_
                                                          _%tl127923127938%_))
                                                    (if '#t
                                                        (let* ((_%make-pair127958%_
                                                                (lambda (_%tag127945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd127946%_
                                 _%tl127947%_)
                          (let* ((_%hd-depth127949%_
                                  (if (eq? _%tag127945%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth127906%_ '1))
                                      _%depth127906%_))
                                 (_g129258_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur127902%_
                                     _%hd127946%_
                                     _%vars127905%_
                                     _%hd-depth127949%_))))
                            (begin
                              (let ((_g129259_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129258_)
                                           (##vector-length _g129258_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129259_ 2)))
                                    (error "Context expects 2 values"
                                           _g129259_)))
                              (let ((_%hd127951%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129258_ 0)))
                                    (_%vars127952%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129258_ 1))))
                                (let ((_g129260_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur127902%_
                                          _%tl127947%_
                                          _%vars127952%_
                                          _%depth127906%_))))
                                  (begin
                                    (let ((_g129261_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129260_)
                                                 (##vector-length _g129260_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129261_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129261_)))
                                    (let ((_%tl127954%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129260_ 0)))
                                          (_%vars127955%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129260_ 1))))
                                      (let ()
                                        (values (let ((__tmp129262
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd127951%_
                                                               _%tl127954%_))))
                                                  (declare (not safe))
                                                  (cons _%tag127945%_
                                                        __tmp129262))
                                                _%vars127955%_))))))))))
                       (_%e127959127966%_ _%rest127943%_)
                       (_%E127961127970%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair127958%_
                             'cons
                             _%hd127941%_
                             _%rest127943%_))))
                       (_%E127960127986%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127959127966%_))
                              (let ((_%e127962127974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e127959127966%_))))
                                (let ((_%hd127963127977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127962127974%_)))
                                      (_%tl127964127979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127962127974%_))))
                                  (let* ((_%rest-hd127982%_ _%hd127963127977%_)
                                         (_%rest-tl127984%_
                                          _%tl127964127979%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd127982%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127958%_
                                               'splice
                                               _%hd127941%_
                                               _%rest-tl127984%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair127958%_
                                               'cons
                                               _%hd127941%_
                                               _%rest127943%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E127961127970%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E127961127970%_))))))
                  (let () (declare (not safe)) (_%E127960127986%_)))
                (let () (declare (not safe)) (_%E127920127929%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E127920127929%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E127919127990%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127904%_))
                                  (let () (values '(null) _%vars127905%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127904%_))
                                      (let ()
                                        (let ((_g129263_
                                               (let ((__tmp129265
                                                      (vector->list
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e127904%_)))))
                                                 (declare (not safe))
                                                 (_%recur127902%_
                                                  __tmp129265
                                                  _%vars127905%_
                                                  _%depth127906%_))))
                                          (begin
                                            (let ((_g129264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129263_)
                                                         (##vector-length
                                                          _g129263_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129264_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129264_)))
                                            (let ((_%e127996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129263_
                                                      0)))
                                                  (_%vars127997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129263_
                                                      1))))
                                              (values (cons 'vector
                                                            _%e127996%_)
                                                      _%vars127997%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127904%_))
                                          (let ()
                                            (let ((_g129266_
                                                   (let ((__tmp129268
                                                          (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#syntax-e _%e127904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%recur127902%_
                                                      __tmp129268
                                                      _%vars127905%_
                                                      _%depth127906%_))))
                                              (begin
                                                (let ((_g129267_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g129266_)
                                                             (##vector-length
                                                              _g129266_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g129267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g129267_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%e128000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129266_
                                                          0)))
                                                      (_%vars128001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129266_
                                                          1))))
                                                  (values (cons 'box
                                                                _%e128000%_)
                                                          _%vars128001%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127904%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e127904%_)))
                _%vars127905%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad pattern"
                                                   _%stx127818%_
                                                   _%e127904%_)))))))))))))
          (let* ((_%e127828127841%_ _%stx127818%_)
                 (_%E127830127845%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127828127841%_))))
                 (_%E127829127895%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127828127841%_))
                        (let ((_%e127831127849%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127828127841%_))))
                          (let ((_%hd127832127852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127831127849%_)))
                                (_%tl127833127854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127831127849%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127833127854%_))
                                (let ((_%e127834127857%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127833127854%_))))
                                  (let ((_%hd127835127860%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127834127857%_)))
                                        (_%tl127836127862%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127834127857%_))))
                                    (let ((_%expr127865%_ _%hd127835127860%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127836127862%_))
                                          (let ((_%e127837127867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127836127862%_))))
                                            (let ((_%hd127838127870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127837127867%_)))
                                                  (_%tl127839127872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127837127867%_))))
                                              (let* ((_%ids127875%_
                                                      _%hd127838127870%_)
                                                     (_%clauses127877%_
                                                      _%tl127839127872%_))
                                                (if '#t
                                                    (if (let ((__tmp129269
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids127875%_))))
                  (declare (not safe))
                  (not __tmp129269))
                (let ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad template identifier list"
                     _%stx127818%_
                     _%ids127875%_)))
                (if (let ((__tmp129270
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses127877%_))))
                      (declare (not safe))
                      (not __tmp129270))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; clauses expected"
                         _%stx127818%_)))
                    (let ()
                      (let* ((_%ids127882%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids127875%_)))
                             (_%clauses127884%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses127877%_)))
                             (_%clause-ids127886%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses127884%_)))
                             (_%E127888%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target127890%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first127892%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses127884%_))
                                  _%E127888%_
                                  (car _%clause-ids127886%_))))
                        (let ((__tmp129272
                               (let ((__tmp129273
                                      (let ((__tmp129275
                                             (let ((__tmp129279
                                                    (cons (cons (cons _%E127888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129281 (cons _%target127890%_ '()))
                                    (__tmp129280
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target127890%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129281
                                 __tmp129280))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129276
                                                    (let ((__tmp129278
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings127823%_
                                                              _%target127890%_
                                                              _%ids127882%_
                                                              _%clauses127884%_
                                                              _%clause-ids127886%_
                                                              _%E127888%_)))
                                                          (__tmp129277
                                                           (cons _%first127892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr127865%_ '()))))
              (declare (not safe))
              (_%generate-body127824%_ __tmp129278 __tmp129277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129279
                                                __tmp129276)))
                                            (__tmp129274
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx127818%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129275
                                         __tmp129274))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129273)))
                              (__tmp129271
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx127818%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129272 __tmp129271))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E127830127845%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E127830127845%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E127830127845%_)))))
                        (let () (declare (not safe)) (_%E127830127845%_))))))
            (let () (declare (not safe)) (_%E127829127895%_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128543%_)
        (let* ((_%identifier=?128545%_ 'free-identifier=?)
               (_%unwrap-e128547%_ 'syntax-e)
               (_%wrap-e128549%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128543%_
           _%identifier=?128545%_
           _%unwrap-e128547%_
           _%wrap-e128549%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128551%_ _%identifier=?128552%_)
        (let* ((_%unwrap-e128554%_ 'syntax-e) (_%wrap-e128556%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128551%_
           _%identifier=?128552%_
           _%unwrap-e128554%_
           _%wrap-e128556%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128558%_ _%identifier=?128559%_ _%unwrap-e128560%_)
        (let ((_%wrap-e128562%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128558%_
           _%identifier=?128559%_
           _%unwrap-e128560%_
           _%wrap-e128562%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129283_
        (let ((_g129282_ (let () (declare (not safe)) (##length _g129283_))))
          (cond ((let () (declare (not safe)) (##fx= _g129282_ 1))
                 (apply (lambda (_%stx128543%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx128543%_)))
                        _g129283_))
                ((let () (declare (not safe)) (##fx= _g129282_ 2))
                 (apply (lambda (_%stx128551%_ _%identifier=?128552%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx128551%_
                             _%identifier=?128552%_)))
                        _g129283_))
                ((let () (declare (not safe)) (##fx= _g129282_ 3))
                 (apply (lambda (_%stx128558%_
                                 _%identifier=?128559%_
                                 _%unwrap-e128560%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx128558%_
                             _%identifier=?128559%_
                             _%unwrap-e128560%_)))
                        _g129283_))
                ((let () (declare (not safe)) (##fx= _g129282_ 4))
                 (apply (lambda (_%stx128564%_
                                 _%identifier=?128565%_
                                 _%unwrap-e128566%_
                                 _%wrap-e128567%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx128564%_
                             _%identifier=?128565%_
                             _%unwrap-e128566%_
                             _%wrap-e128567%_)))
                        _g129283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129283_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127815%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127815%_))
            (let ((__tmp129284
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127815%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129284 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127773%_ . _%rest127774%_)
        (let ((_%len127776%_ (length _%hd127773%_)))
          (let _%lp127778%_ ((_%rest127780%_ _%rest127774%_))
            (let* ((_%rest127781127789%_ _%rest127780%_)
                   (_%else127783127797%_ (lambda () '#!void))
                   (_%K127785127803%_
                    (lambda (_%rest127800%_ _%hd127801%_)
                      (if (let ((__tmp129285 (length _%hd127801%_)))
                            (declare (not safe))
                            (##fx= _%len127776%_ __tmp129285))
                          (let ()
                            (declare (not safe))
                            (_%lp127778%_ _%rest127800%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127801%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127781127789%_))
                  (let ((_%hd127786127806%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127781127789%_)))
                        (_%tl127787127808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127781127789%_))))
                    (let* ((_%hd127811%_ _%hd127786127806%_)
                           (_%rest127813%_ _%tl127787127808%_))
                      (declare (not safe))
                      (_%K127785127803%_ _%rest127813%_ _%hd127811%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127728%_ _%n127729%_)
        (let _%lp127731%_ ((_%rest127733%_ _%stx127728%_) (_%r127734%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127733%_))
              (let* ((_%g127735127742%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127733%_)))
                     (_%E127737127746%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127735127742%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127738127752%_
                      (lambda (_%rest127749%_ _%hd127750%_)
                        (let ((__tmp129286 (cons _%hd127750%_ _%r127734%_)))
                          (declare (not safe))
                          (_%lp127731%_ _%rest127749%_ __tmp129286)))))
                (if (let () (declare (not safe)) (##pair? _%g127735127742%_))
                    (let ((_%hd127739127755%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127735127742%_)))
                          (_%tl127740127757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127735127742%_))))
                      (let* ((_%hd127760%_ _%hd127739127755%_)
                             (_%rest127762%_ _%tl127740127757%_))
                        (declare (not safe))
                        (_%K127738127752%_ _%rest127762%_ _%hd127760%_)))
                    (let () (declare (not safe)) (_%E127737127746%_))))
              (let _%lp127764%_ ((_%n127766%_ _%n127729%_)
                                 (_%l127767%_ _%r127734%_)
                                 (_%r127768%_ _%rest127733%_))
                (if (let () (declare (not safe)) (null? _%l127767%_))
                    (let () (values _%l127767%_ _%r127768%_))
                    (if (fxpositive? _%n127766%_)
                        (let ()
                          (let ((__tmp129289
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%n127766%_ '1)))
                                (__tmp129288 (cdr _%l127767%_))
                                (__tmp129287
                                 (cons (car _%l127767%_) _%r127768%_)))
                            (declare (not safe))
                            (_%lp127764%_
                             __tmp129289
                             __tmp129288
                             __tmp129287)))
                        (let ()
                          (values (reverse _%l127767%_) _%r127768%_)))))))))))
