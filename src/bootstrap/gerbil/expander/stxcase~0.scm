(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712093477)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129175 (list gx#expander::t))
            (__tmp129174 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129175
         '(id depth)
         __tmp129174
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129171%_
        (apply make-instance gx#syntax-pattern::t _%$args129171%_)))
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
      (lambda (_%self129157%_ _%stx129158%_)
        (let ()
          (let ((_%self129161%_ _%self129157%_))
            (let ()
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Identifier used out of context"
                 _%stx129158%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128623%_)
        (letrec ((_%generate128625%_
                  (lambda (_%e128865%_)
                    (letrec ((_%BUG128867%_
                              (lambda (_%q129032%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128623%_
                                         _%e128865%_
                                         _%q129032%_))))
                             (_%local-pattern-e128868%_
                              (lambda (_%pat129030%_)
                                (let ((__tmp129176
                                       (##structure-ref
                                        _%pat129030%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129176))))
                             (_%getvar128869%_
                              (lambda (_%q129027%_ _%vars129028%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129027%_
                                   _%vars129028%_
                                   _%BUG128867%_))))
                             (_%getarg128870%_
                              (lambda (_%arg128993%_ _%vars128994%_)
                                (let* ((_%arg128995129002%_ _%arg128993%_)
                                       (_%E128997129006%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128995129002%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128998129015%_
                                        (lambda (_%e129009%_ _%tag129010%_)
                                          (let ((_%$e129012%_ _%tag129010%_))
                                            (if (eq? 'ref _%$e129012%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar128869%_
                                                   _%e129009%_
                                                   _%vars128994%_))
                                                (if (eq? 'pattern _%$e129012%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e128868%_
                                                       _%e129009%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG128867%_
                                                       _%arg128993%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128995129002%_))
                                      (let ((_%hd128999129018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128995129002%_)))
                                            (_%tl129000129020%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128995129002%_))))
                                        (let* ((_%tag129023%_
                                                _%hd128999129018%_)
                                               (_%e129025%_
                                                _%tl129000129020%_))
                                          (declare (not safe))
                                          (_%K128998129015%_
                                           _%e129025%_
                                           _%tag129023%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128997129006%_)))))))
                      (let _%recur128872%_ ((_%e128874%_ _%e128865%_)
                                            (_%vars128875%_ '()))
                        (let* ((_%e128876128883%_ _%e128874%_)
                               (_%E128878128887%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128876128883%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128879128981%_
                                (lambda (_%body128890%_ _%tag128891%_)
                                  (let ((_%$e128893%_ _%tag128891%_))
                                    (if (eq? 'datum _%$e128893%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128890%_))
                                        (if (eq? 'term _%$e128893%_)
                                            (let ((_%id128896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128890%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128896%_
                                                     'gx#identifier-wrap::t))
                                                  (let ()
                                                    (let ((_%marks128899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%id128896%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _%marks128899%_))
                                                          (let ((__tmp129177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128890%_))))
                    (declare (not safe))
                    (gx#core-list 'datum->syntax '#f __tmp129177))
                  (let ((__tmp129179
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote-syntax _%body128890%_)))
                        (__tmp129178
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'quote _%body128890%_))))
                    (declare (not safe))
                    (gx#core-list
                     'datum->syntax
                     __tmp129179
                     __tmp129178
                     '#f
                     '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128896%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote-syntax
                                                           _%body128890%_)))
                                                      (let ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%BUG128867%_
                                                           _%e128874%_))))))
                                            (if (eq? 'pattern _%$e128893%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e128868%_
                                                   _%body128890%_))
                                                (if (eq? 'ref _%$e128893%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar128869%_
                                                       _%body128890%_
                                                       _%vars128875%_))
                                                    (if (eq? 'cons
                                                             _%$e128893%_)
                                                        (let ((__tmp129182
                                                               (let ((__tmp129183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body128890%_)))
                         (declare (not safe))
                         (_%recur128872%_ __tmp129183 _%vars128875%_)))
                      (__tmp129180
                       (let ((__tmp129181 (cdr _%body128890%_)))
                         (declare (not safe))
                         (_%recur128872%_ __tmp129181 _%vars128875%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129182 __tmp129180))
                (if (eq? 'vector _%$e128893%_)
                    (let ((__tmp129184
                           (let ()
                             (declare (not safe))
                             (_%recur128872%_ _%body128890%_ _%vars128875%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129184))
                    (if (eq? 'box _%$e128893%_)
                        (let ((__tmp129185
                               (let ()
                                 (declare (not safe))
                                 (_%recur128872%_
                                  _%body128890%_
                                  _%vars128875%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129185))
                        (if (eq? 'splice _%$e128893%_)
                            (let* ((_%body128902128913%_ _%body128890%_)
                                   (_%E128904128917%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128902128913%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128905128955%_
                                    (lambda (_%args128920%_
                                             _%iv128921%_
                                             _%hd128922%_
                                             _%depth128923%_)
                                      (let* ((_%targets128929%_
                                              (map (lambda (_%g128924128926%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg128870%_
                                                        _%g128924128926%_
                                                        _%vars128875%_)))
                                                   _%args128920%_))
                                             (_%fold-in128931%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128920%_)))
                                             (_%fold-out128933%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128935%_
                                              (let ((__tmp129186
                                                     (cons _%fold-out128933%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129186
                                                 _%fold-in128931%_)))
                                             (_%lambda-body128952%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128923%_ '1))
                                                  (let ((_%r-args128943%_
                                                         (map (lambda (_%arg128937%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128937%_)))
                      _%args128920%_))
                (_%r-vars128944%_
                 (let ((__tmp129187
                        (lambda (_%arg128939%_ _%var128940%_ _%r128941%_)
                          (cons (cons (cdr _%arg128939%_) _%var128940%_)
                                _%r128941%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129187
                    _%vars128875%_
                    _%args128920%_
                    _%fold-in128931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129188
                                                           (let ((__tmp129189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129193
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth128923%_ '1)))
                                (__tmp129190
                                 (let ((__tmp129191
                                        (let ((__tmp129192
                                               (cons 'var _%fold-out128933%_)))
                                          (declare (not safe))
                                          (cons __tmp129192
                                                _%r-args128943%_))))
                                   (declare (not safe))
                                   (cons _%hd128922%_ __tmp129191))))
                            (declare (not safe))
                            (cons __tmp129193 __tmp129190))))
                     (declare (not safe))
                     (cons 'splice __tmp129189))))
              (declare (not safe))
              (_%recur128872%_ __tmp129188 _%r-vars128944%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars128950%_
                                                          (let ((__tmp129194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128946%_ _%var128947%_ _%r128948%_)
                           (cons (cons (cdr _%arg128946%_) _%var128947%_)
                                 _%r128948%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129194
                     _%vars128875%_
                     _%args128920%_
                     _%fold-in128931%_)))
                 (__tmp129195
                  (let ()
                    (declare (not safe))
                    (_%recur128872%_ _%hd128922%_ _%hd-vars128950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129195
                                                     _%fold-out128933%_)))))
                                        (let ((__tmp129199
                                               (if (let ((__tmp129200
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128929%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129200 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128929%_))
                                                   '#!void))
                                              (__tmp129196
                                               (let ((__tmp129198
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128935%_
                                                         _%lambda-body128952%_)))
                                                     (__tmp129197
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur128872%_
                                                         _%iv128921%_
                                                         _%vars128875%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129198
                                                  __tmp129197
                                                  _%targets128929%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129199
                                           __tmp129196))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128902128913%_))
                                  (let ((_%hd128906128958%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128902128913%_)))
                                        (_%tl128907128960%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128902128913%_))))
                                    (let ((_%depth128963%_ _%hd128906128958%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128907128960%_))
                                          (let ((_%hd128908128965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128907128960%_)))
                                                (_%tl128909128967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128907128960%_))))
                                            (let ((_%hd128970%_
                                                   _%hd128908128965%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128909128967%_))
                                                  (let ((_%hd128910128972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128909128967%_)))
                                                        (_%tl128911128974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128909128967%_))))
                                                    (let* ((_%iv128977%_
                                                            _%hd128910128972%_)
                                                           (_%args128979%_
                                                            _%tl128911128974%_))
                                                      (declare (not safe))
                                                      (_%K128905128955%_
                                                       _%args128979%_
                                                       _%iv128977%_
                                                       _%hd128970%_
                                                       _%depth128963%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E128904128917%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128904128917%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128904128917%_))))
                            (if (eq? 'var _%$e128893%_)
                                _%body128890%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG128867%_ _%e128874%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128876128883%_))
                              (let ((_%hd128880128984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128876128883%_)))
                                    (_%tl128881128986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128876128883%_))))
                                (let* ((_%tag128989%_ _%hd128880128984%_)
                                       (_%body128991%_ _%tl128881128986%_))
                                  (declare (not safe))
                                  (_%K128879128981%_
                                   _%body128991%_
                                   _%tag128989%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128878128887%_))))))))
                 (_%parse128626%_
                  (lambda (_%e128667%_)
                    (letrec ((_%make-cons128669%_
                              (lambda (_%hd128857%_ _%tl128858%_)
                                (let ((_g129201_ _%hd128857%_)
                                      (_g129203_ _%tl128858%_))
                                  (begin
                                    (let ((_g129202_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129201_)
                                                 (##vector-length _g129201_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129202_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129202_)))
                                    (let ((_g129204_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129203_)
                                                 (##vector-length _g129203_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129204_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129204_)))
                                    (let ((_%hd-e128860%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129201_ 0)))
                                          (_%hd-vars128861%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129201_ 1))))
                                      (let ((_%tl-e128862%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129203_ 0)))
                                            (_%tl-vars128863%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129203_ 1))))
                                        (values (let ((__tmp129205
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e128860%_
                                                               _%tl-e128862%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129205))
                                                (append _%hd-vars128861%_
                                                        _%tl-vars128863%_))))))))
                             (_%make-splice128670%_
                              (lambda (_%where128793%_
                                       _%depth128794%_
                                       _%hd128795%_
                                       _%tl128796%_)
                                (let ((_g129206_ _%hd128795%_)
                                      (_g129208_ _%tl128796%_))
                                  (begin
                                    (let ((_g129207_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129206_)
                                                 (##vector-length _g129206_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129207_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129207_)))
                                    (let ((_g129209_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129208_)
                                                 (##vector-length _g129208_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129209_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129209_)))
                                    (let ((_%hd-e128798%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129206_ 0)))
                                          (_%hd-vars128799%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129206_ 1))))
                                      (let ((_%tl-e128800%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129208_ 0)))
                                            (_%tl-vars128801%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129208_ 1))))
                                        (let _%lp128803%_ ((_%rest128805%_
                                                            _%hd-vars128799%_)
                                                           (_%targets128806%_
                                                            '())
                                                           (_%vars128807%_
                                                            _%tl-vars128801%_))
                                          (let* ((_%rest128808128818%_
                                                  _%rest128805%_)
                                                 (_%else128810128826%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets128806%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128623%_
                                                           _%where128793%_))
                                                        (values (let ((__tmp129210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129211
                                      (let ((__tmp129212
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e128800%_
                                                     _%targets128806%_))))
                                        (declare (not safe))
                                        (cons _%hd-e128798%_ __tmp129212))))
                                 (declare (not safe))
                                 (cons _%depth128794%_ __tmp129211))))
                          (declare (not safe))
                          (cons 'splice __tmp129210))
                        _%vars128807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128812128838%_
                                                  (lambda (_%rest128829%_
                                                           _%hd-pat128830%_
                                                           _%hd-depth*128831%_)
                                                    (let ((_%hd-depth128833%_
                                                           (fx- _%hd-depth*128831%_
                                                                _%depth128794%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128833%_))
                                                          (let ()
                                                            (let ((__tmp129214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'ref _%hd-pat128830%_)
                                 _%targets128806%_))
                          (__tmp129213
                           (cons (cons _%hd-depth128833%_ _%hd-pat128830%_)
                                 _%vars128807%_)))
                      (declare (not safe))
                      (_%lp128803%_ _%rest128829%_ __tmp129214 __tmp129213)))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128833%_))
                      (let ()
                        (let ((__tmp129215
                               (cons (cons 'pattern _%hd-pat128830%_)
                                     _%targets128806%_)))
                          (declare (not safe))
                          (_%lp128803%_
                           _%rest128829%_
                           __tmp129215
                           _%vars128807%_)))
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Too many ellipses"
                           _%stx128623%_
                           _%where128793%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128808128818%_))
                                                (let ((_%hd128813128841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128808128818%_)))
                                                      (_%tl128814128843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128808128818%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128813128841%_))
                                                      (let ((_%hd128815128846%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128813128841%_)))
                    (_%tl128816128848%_
                     (let () (declare (not safe)) (##cdr _%hd128813128841%_))))
                (let* ((_%hd-depth*128851%_ _%hd128815128846%_)
                       (_%hd-pat128853%_ _%tl128816128848%_)
                       (_%rest128855%_ _%tl128814128843%_))
                  (declare (not safe))
                  (_%K128812128838%_
                   _%rest128855%_
                   _%hd-pat128853%_
                   _%hd-depth*128851%_)))
              (let () (declare (not safe)) (_%else128810128826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else128810128826%_)))))))))))
                             (_%recur128671%_
                              (lambda (_%e128676%_ _%is-e?128677%_)
                                (if (_%is-e?128677%_ _%e128676%_)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Mislpaced ellipsis"
                                         _%stx128623%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e128676%_))
                                        (let ()
                                          (let* ((_%pat128681%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e128676%_)))
                                                 (_%depth128683%_
                                                  (##structure-ref
                                                   _%pat128681%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth128683%_)
                                                (values (cons 'ref
                                                              _%pat128681%_)
                                                        (cons (cons _%depth128683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat128681%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat128681%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128676%_))
                                            (let ()
                                              (values (cons 'term _%e128676%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128676%_))
                                                (let ()
                                                  (let* ((_%e128687128694%_
                                                          _%e128676%_)
                                                         (_%E128689128698%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e128687128694%_))))
                                                         (_%E128688128780%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e128687128694%_))
                        (let ((_%e128690128702%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128687128694%_))))
                          (let ((_%hd128691128705%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128690128702%_)))
                                (_%tl128692128707%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128690128702%_))))
                            (let* ((_%hd128710%_ _%hd128691128705%_)
                                   (_%rest128712%_ _%tl128692128707%_))
                              (if '#t
                                  (if (_%is-e?128677%_ _%hd128710%_)
                                      (let* ((_%e128713128720%_ _%rest128712%_)
                                             (_%E128715128724%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx128623%_
                                                   _%e128676%_))))
                                             (_%E128714128738%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128713128720%_))
                                                    (let ((_%e128716128728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128713128720%_))))
                                                      (let ((_%hd128717128731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128716128728%_)))
                    (_%tl128718128733%_
                     (let () (declare (not safe)) (##cdr _%e128716128728%_))))
                (let ((_%rest128736%_ _%hd128717128731%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl128718128733%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur128671%_ _%rest128736%_ false))
                          (let () (declare (not safe)) (_%E128715128724%_)))
                      (let () (declare (not safe)) (_%E128715128724%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128715128724%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128714128738%_)))
                                      (let _%lp128742%_ ((_%rest128744%_
                                                          _%rest128712%_)
                                                         (_%depth128745%_ '0))
                                        (let* ((_%e128746128753%_
                                                _%rest128744%_)
                                               (_%E128748128757%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth128745%_)
                                                      (let ((__tmp129217
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur128671%_ _%hd128710%_ _%is-e?128677%_)))
                    (__tmp129216
                     (let ()
                       (declare (not safe))
                       (_%recur128671%_ _%rest128744%_ _%is-e?128677%_))))
                (declare (not safe))
                (_%make-splice128670%_
                 _%e128676%_
                 _%depth128745%_
                 __tmp129217
                 __tmp129216))
              (let ((__tmp129219
                     (let ()
                       (declare (not safe))
                       (_%recur128671%_ _%hd128710%_ _%is-e?128677%_)))
                    (__tmp129218
                     (let ()
                       (declare (not safe))
                       (_%recur128671%_ _%rest128744%_ _%is-e?128677%_))))
                (declare (not safe))
                (_%make-cons128669%_ __tmp129219 __tmp129218)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E128747128776%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e128746128753%_))
                                                      (let ((_%e128749128761%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e128746128753%_))))
                (let ((_%hd128750128764%_
                       (let () (declare (not safe)) (##car _%e128749128761%_)))
                      (_%tl128751128766%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e128749128761%_))))
                  (let* ((_%rest-hd128769%_ _%hd128750128764%_)
                         (_%rest-tl128771%_ _%tl128751128766%_))
                    (if '#t
                        (if (_%is-e?128677%_ _%rest-hd128769%_)
                            (let ()
                              (let ((__tmp129220
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%depth128745%_ '1))))
                                (declare (not safe))
                                (_%lp128742%_ _%rest-tl128771%_ __tmp129220)))
                            (if (fxpositive? _%depth128745%_)
                                (let ()
                                  (let ((__tmp129222
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128671%_
                                            _%hd128710%_
                                            _%is-e?128677%_)))
                                        (__tmp129221
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128671%_
                                            _%rest128744%_
                                            _%is-e?128677%_))))
                                    (declare (not safe))
                                    (_%make-splice128670%_
                                     _%e128676%_
                                     _%depth128745%_
                                     __tmp129222
                                     __tmp129221)))
                                (let ()
                                  (let ((__tmp129224
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128671%_
                                            _%hd128710%_
                                            _%is-e?128677%_)))
                                        (__tmp129223
                                         (let ()
                                           (declare (not safe))
                                           (_%recur128671%_
                                            _%rest128744%_
                                            _%is-e?128677%_))))
                                    (declare (not safe))
                                    (_%make-cons128669%_
                                     __tmp129224
                                     __tmp129223)))))
                        (let () (declare (not safe)) (_%E128748128757%_))))))
              (let () (declare (not safe)) (_%E128748128757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%E128747128776%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E128689128698%_))))))
                        (let () (declare (not safe)) (_%E128689128698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128688128780%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128676%_))
                                                    (let ()
                                                      (let ((_g129225_
                                                             (let ((__tmp129227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (vector->list
                             (let ()
                               (declare (not safe))
                               (gx#stx-unwrap__0 _%e128676%_)))))
                       (declare (not safe))
                       (_%recur128671%_ __tmp129227 _%is-e?128677%_))))
                (begin
                  (let ((_g129226_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g129225_)
                               (##vector-length _g129225_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g129226_ 2)))
                        (error "Context expects 2 values" _g129226_)))
                  (let ((_%e128785%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129225_ 0)))
                        (_%vars128786%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g129225_ 1))))
                    (values (cons 'vector _%e128785%_) _%vars128786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128676%_))
                                                        (let ()
                                                          (let ((_g129228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129230
                                (unbox (let ()
                                         (declare (not safe))
                                         (gx#stx-unwrap__0 _%e128676%_)))))
                           (declare (not safe))
                           (_%recur128671%_ __tmp129230 _%is-e?128677%_))))
                    (begin
                      (let ((_g129229_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g129228_)
                                   (##vector-length _g129228_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g129229_ 2)))
                            (error "Context expects 2 values" _g129229_)))
                      (let ((_%e128789%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129228_ 0)))
                            (_%vars128790%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g129228_ 1))))
                        (values (cons 'box _%e128789%_) _%vars128790%_)))))
                (let () (values (cons 'datum _%e128676%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129231_
                             (let ()
                               (declare (not safe))
                               (_%recur128671%_ _%e128667%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129232_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129231_)
                                       (##vector-length _g129231_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129232_ 2)))
                                (error "Context expects 2 values" _g129232_)))
                          (let ((_%tree128673%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129231_ 0)))
                                (_%vars128674%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129231_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars128674%_))
                                _%tree128673%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128623%_
                                   _%vars128674%_))))))))))
          (let* ((_%e128627128637%_ _%stx128623%_)
                 (_%E128629128641%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128623%_))))
                 (_%E128628128663%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128627128637%_))
                        (let ((_%e128630128645%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128627128637%_))))
                          (let ((_%hd128631128648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128630128645%_)))
                                (_%tl128632128650%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128630128645%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128632128650%_))
                                (let ((_%e128633128653%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128632128650%_))))
                                  (let ((_%hd128634128656%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128633128653%_)))
                                        (_%tl128635128658%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128633128653%_))))
                                    (let ((_%form128661%_ _%hd128634128656%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128635128658%_))
                                          (if '#t
                                              (let ((__tmp129234
                                                     (let ((__tmp129235
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse128626%_
                                                               _%form128661%_))))
                                                       (declare (not safe))
                                                       (_%generate128625%_
                                                        __tmp129235)))
                                                    (__tmp129233
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128623%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129234
                                                 __tmp129233))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128629128641%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128629128641%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128629128641%_)))))
                        (let () (declare (not safe)) (_%E128629128641%_))))))
            (let () (declare (not safe)) (_%E128628128663%_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127872%_
               _%identifier=?127873%_
               _%unwrap-e127874%_
               _%wrap-e127875%_)
        (letrec ((_%generate-bindings127877%_
                  (lambda (_%target128487%_
                           _%ids128488%_
                           _%clauses128489%_
                           _%clause-ids128490%_
                           _%E128491%_)
                    (letrec ((_%generate1128493%_
                              (lambda (_%clause128590%_
                                       _%clause-id128591%_
                                       _%E128592%_)
                                (cons (cons _%clause-id128591%_ '())
                                      (cons (let ((__tmp129237
                                                   (cons _%target128487%_ '()))
                                                  (__tmp129236
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause127879%_
                                                      _%target128487%_
                                                      _%ids128488%_
                                                      _%clause128590%_
                                                      _%E128592%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129237
                                               __tmp129236))
                                            '())))))
                      (let _%lp128495%_ ((_%rest128497%_ _%clauses128489%_)
                                         (_%rest-ids128498%_
                                          _%clause-ids128490%_)
                                         (_%bindings128499%_ '()))
                        (let* ((_%rest128500128508%_ _%rest128497%_)
                               (_%else128502128516%_
                                (lambda () _%bindings128499%_))
                               (_%K128504128578%_
                                (lambda (_%rest128519%_ _%clause128520%_)
                                  (let* ((_%rest-ids128521128528%_
                                          _%rest-ids128498%_)
                                         (_%E128523128532%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128521128528%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128524128566%_
                                          (lambda (_%rest-ids128535%_
                                                   _%clause-id128536%_)
                                            (let* ((_%rest-ids128537128545%_
                                                    _%rest-ids128535%_)
                                                   (_%else128539128553%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128493%_
                                                               _%clause128520%_
                                                               _%clause-id128536%_
                                                               _%E128491%_))
                                                            _%bindings128499%_)))
                                                   (_%K128541128558%_
                                                    (lambda (_%next-clause-id128556%_)
                                                      (let ((__tmp129238
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128493%_
                              _%clause128520%_
                              _%clause-id128536%_
                              _%next-clause-id128556%_))
                           _%bindings128499%_)))
                (declare (not safe))
                (_%lp128495%_
                 _%rest128519%_
                 _%rest-ids128535%_
                 __tmp129238)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128537128545%_))
                                                  (let* ((_%hd128542128561%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128537128545%_)))
                                                         (_%next-clause-id128564%_
                                                          _%hd128542128561%_))
                                                    (declare (not safe))
                                                    (_%K128541128558%_
                                                     _%next-clause-id128564%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else128539128553%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128521128528%_))
                                        (let ((_%hd128525128569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128521128528%_)))
                                              (_%tl128526128571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128521128528%_))))
                                          (let* ((_%clause-id128574%_
                                                  _%hd128525128569%_)
                                                 (_%rest-ids128576%_
                                                  _%tl128526128571%_))
                                            (declare (not safe))
                                            (_%K128524128566%_
                                             _%rest-ids128576%_
                                             _%clause-id128574%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128523128532%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128500128508%_))
                              (let ((_%hd128505128581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128500128508%_)))
                                    (_%tl128506128583%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128500128508%_))))
                                (let* ((_%clause128586%_ _%hd128505128581%_)
                                       (_%rest128588%_ _%tl128506128583%_))
                                  (declare (not safe))
                                  (_%K128504128578%_
                                   _%rest128588%_
                                   _%clause128586%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128502128516%_))))))))
                 (_%generate-body127878%_
                  (lambda (_%bindings128447%_ _%body128448%_)
                    (let _%recur128450%_ ((_%rest128452%_ _%bindings128447%_))
                      (let* ((_%rest128453128461%_ _%rest128452%_)
                             (_%else128455128469%_ (lambda () _%body128448%_))
                             (_%K128457128475%_
                              (lambda (_%rest128472%_ _%hd128473%_)
                                (let ((__tmp129240 (cons _%hd128473%_ '()))
                                      (__tmp129239
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128450%_ _%rest128472%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129240
                                   __tmp129239)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128453128461%_))
                            (let ((_%hd128458128478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128453128461%_)))
                                  (_%tl128459128480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128453128461%_))))
                              (let* ((_%hd128483%_ _%hd128458128478%_)
                                     (_%rest128485%_ _%tl128459128480%_))
                                (declare (not safe))
                                (_%K128457128475%_
                                 _%rest128485%_
                                 _%hd128483%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128455128469%_)))))))
                 (_%generate-clause127879%_
                  (lambda (_%target128310%_
                           _%ids128311%_
                           _%clause128312%_
                           _%E128313%_)
                    (letrec ((_%generate1128315%_
                              (lambda (_%hd128402%_
                                       _%fender128403%_
                                       _%body128404%_)
                                (let ((_g129241_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause127881%_
                                          _%hd128402%_
                                          _%ids128311%_))))
                                  (begin
                                    (let ((_g129242_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129241_)
                                                 (##vector-length _g129241_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129242_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129242_)))
                                    (let ((_%e128406%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129241_ 0)))
                                          (_%mvars128407%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129241_ 1))))
                                      (let* ((_%pvars128409%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128407%_))))
                                             (_%E128411%_
                                              (cons _%E128313%_
                                                    (cons _%target128310%_
                                                          '())))
                                             (_%K128444%_
                                              (let ((__tmp129243
                                                     (let ((__tmp129245
                                                            (map (lambda (_%mvar128413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128414%_)
                           (let* ((_%mvar128415128422%_ _%mvar128413%_)
                                  (_%E128417128426%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128415128422%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128418128432%_
                                   (lambda (_%depth128429%_ _%id128430%_)
                                     (cons _%id128430%_
                                           (cons (let ((__tmp129247
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128430%_)))
                                                       (__tmp129246
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128414%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129247
                                                    __tmp129246
                                                    _%depth128429%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128415128422%_))
                                 (let ((_%hd128419128435%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128415128422%_)))
                                       (_%tl128420128437%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128415128422%_))))
                                   (let* ((_%id128440%_ _%hd128419128435%_)
                                          (_%depth128442%_ _%tl128420128437%_))
                                     (declare (not safe))
                                     (_%K128418128432%_
                                      _%depth128442%_
                                      _%id128440%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128417128426%_)))))
                         _%mvars128407%_
                         _%pvars128409%_))
                   (__tmp129244
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128403%_ '#t))
                        _%body128404%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128403%_
                           _%body128404%_
                           _%E128411%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129245 __tmp129244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128409%_
                                                 __tmp129243))))
                                        (let ()
                                          (declare (not safe))
                                          (_%generate-match127880%_
                                           _%hd128402%_
                                           _%target128310%_
                                           _%e128406%_
                                           _%mvars128407%_
                                           _%K128444%_
                                           _%E128411%_)))))))))
                      (let* ((_%e128316128336%_ _%clause128312%_)
                             (_%E128325128340%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128316128336%_))))
                             (_%E128318128374%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128316128336%_))
                                    (let ((_%e128326128344%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128316128336%_))))
                                      (let ((_%hd128327128347%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128326128344%_)))
                                            (_%tl128328128349%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128326128344%_))))
                                        (let ((_%hd128352%_
                                               _%hd128327128347%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128328128349%_))
                                              (let ((_%e128329128354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128328128349%_))))
                                                (let ((_%hd128330128357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128329128354%_)))
                                                      (_%tl128331128359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128329128354%_))))
                                                  (let ((_%fender128362%_
                                                         _%hd128330128357%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128331128359%_))
                                                        (let ((_%e128332128364%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128331128359%_))))
                  (let ((_%hd128333128367%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128332128364%_)))
                        (_%tl128334128369%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128332128364%_))))
                    (let ((_%body128372%_ _%hd128333128367%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128334128369%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128315%_
                                 _%hd128352%_
                                 _%fender128362%_
                                 _%body128372%_))
                              (let ()
                                (declare (not safe))
                                (_%E128325128340%_)))
                          (let () (declare (not safe)) (_%E128325128340%_))))))
                (let () (declare (not safe)) (_%E128325128340%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128325128340%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128325128340%_)))))
                             (_%E128317128398%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128316128336%_))
                                    (let ((_%e128319128378%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128316128336%_))))
                                      (let ((_%hd128320128381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128319128378%_)))
                                            (_%tl128321128383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128319128378%_))))
                                        (let ((_%hd128386%_
                                               _%hd128320128381%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128321128383%_))
                                              (let ((_%e128322128388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128321128383%_))))
                                                (let ((_%hd128323128391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128322128388%_)))
                                                      (_%tl128324128393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128322128388%_))))
                                                  (let ((_%body128396%_
                                                         _%hd128323128391%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128324128393%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128315%_
                                                               _%hd128386%_
                                                               '#t
                                                               _%body128396%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128318128374%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128318128374%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128318128374%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128318128374%_))))))
                        (let () (declare (not safe)) (_%E128317128398%_))))))
                 (_%generate-match127880%_
                  (lambda (_%where128059%_
                           _%target128060%_
                           _%hd128061%_
                           _%mvars128062%_
                           _%K128063%_
                           _%E128064%_)
                    (letrec ((_%BUG128066%_
                              (lambda (_%q128308%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127872%_
                                         _%hd128061%_
                                         _%q128308%_))))
                             (_%recur128067%_
                              (lambda (_%e128158%_
                                       _%vars128159%_
                                       _%target128160%_
                                       _%E128161%_
                                       _%k128162%_)
                                (let* ((_%e128163128170%_ _%e128158%_)
                                       (_%E128165128174%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128163128170%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128166128296%_
                                        (lambda (_%body128177%_ _%tag128178%_)
                                          (let ((_%$e128180%_ _%tag128178%_))
                                            (if (eq? 'any _%$e128180%_)
                                                (_%k128162%_ _%vars128159%_)
                                                (if (eq? 'id _%$e128180%_)
                                                    (let ((__tmp129252
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128160%_)))
                                                          (__tmp129248
                                                           (let ((__tmp129250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129251
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127875%_
                                    _%body128177%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127873%_
                             __tmp129251
                             _%target128160%_)))
                         (__tmp129249 (_%k128162%_ _%vars128159%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129250 __tmp129249 _%E128161%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129252 __tmp129248 _%E128161%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128180%_)
                                                        (_%k128162%_
                                                         (cons (cons _%body128177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128160%_)
                       _%vars128159%_))
                (if (eq? 'cons _%$e128180%_)
                    (let ((_%$e128183%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128184%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128185%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129259
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128160%_)))
                            (__tmp129253
                             (let ((__tmp129258
                                    (cons (cons (cons _%$e128183%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127874%_
                                                         _%target128160%_))
                                                      '()))
                                          '()))
                                   (__tmp129254
                                    (let ((__tmp129257
                                           (cons (cons (cons _%$hd128184%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128183%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128183%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129255
                                           (let* ((_%body128186128193%_
                                                   _%body128177%_)
                                                  (_%E128188128197%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128186128193%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128189128205%_
                                                   (lambda (_%tl128200%_
                                                            _%hd128201%_)
                                                     (let ((__tmp129256
                                                            (lambda (_%vars128203%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128067%_
                         _%tl128200%_
                         _%vars128203%_
                         _%$tl128185%_
                         _%E128161%_
                         _%k128162%_)))))
               (declare (not safe))
               (_%recur128067%_
                _%hd128201%_
                _%vars128159%_
                _%$hd128184%_
                _%E128161%_
                __tmp129256)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128186128193%_))
                                                 (let ((_%hd128190128208%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128186128193%_)))
                                                       (_%tl128191128210%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128186128193%_))))
                                                   (let* ((_%hd128213%_
                                                           _%hd128190128208%_)
                                                          (_%tl128215%_
                                                           _%tl128191128210%_))
                                                     (declare (not safe))
                                                     (_%K128189128205%_
                                                      _%tl128215%_
                                                      _%hd128213%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128188128197%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129257
                                       __tmp129255))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129258
                                __tmp129254))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129259
                         __tmp129253
                         _%E128161%_)))
                    (if (eq? 'splice _%$e128180%_)
                        (let* ((_%body128216128223%_ _%body128177%_)
                               (_%E128218128227%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128216128223%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128219128278%_
                                (lambda (_%tl128230%_ _%hd128231%_)
                                  (let* ((_%rlen128233%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128068%_
                                             _%tl128230%_)))
                                         (_%$target128235%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128237%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128239%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128241%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128243%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128245%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128247%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128249%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128069%_
                                             _%hd128231%_)))
                                         (_%lvars128251%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128249%_)))
                                         (_%tlvars128253%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128249%_)))
                                         (_%linit128257%_
                                          (map (lambda (_%var128255%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128251%_)))
                                    (letrec ((_%make-loop128260%_
                                              (lambda (_%vars128264%_)
                                                (let ((__tmp129262
                                                       (cons (cons (cons _%$lp128241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129278
                                        (cons _%$hd128237%_ _%lvars128251%_))
                                       (__tmp129263
                                        (let ((__tmp129277
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128237%_)))
                                              (__tmp129268
                                               (let ((__tmp129276
                                                      (cons (cons (cons _%$lp-e128243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127874%_
                                   _%$hd128237%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129269
                                                      (let ((__tmp129275
                                                             (cons (cons (cons _%$lp-hd128245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128243%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128247%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128243%_))
                                             '()))
                                 '())))
                    (__tmp129270
                     (let ((__tmp129271
                            (lambda (_%hdvars128266%_)
                              (let ((__tmp129272
                                     (let ((__tmp129273
                                            (map (lambda (_%svar128268%_
                                                          _%lvar128269%_)
                                                   (let ((__tmp129274
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128268%_
                                                             _%hdvars128266%_
                                                             _%BUG128066%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129274
                                                      _%lvar128269%_)))
                                                 _%svars128249%_
                                                 _%lvars128251%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128247%_ __tmp129273))))
                                (declare (not safe))
                                (cons _%$lp128241%_ __tmp129272)))))
                       (declare (not safe))
                       (_%recur128067%_
                        _%hd128231%_
                        '()
                        _%$lp-hd128245%_
                        _%E128161%_
                        __tmp129271))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129275 __tmp129270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129276
                                                  __tmp129269)))
                                              (__tmp129264
                                               (let ((__tmp129267
                                                      (map (lambda (_%lvar128271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128272%_)
                     (cons (cons _%tlvar128272%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128271%_))
                                 '())))
                   _%lvars128251%_
                   _%tlvars128253%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129265
                                                      (_%k128162%_
                                                       (let ((__tmp129266
                                                              (lambda (_%svar128274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128275%_
                               _%r128276%_)
                        (cons (cons _%svar128274%_ _%tlvar128275%_)
                              _%r128276%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129266
                  _%vars128264%_
                  _%svars128249%_
                  _%tlvars128253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129267
                                                  __tmp129265))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129277
                                           __tmp129268
                                           __tmp129264))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129278
                                    __tmp129263))
                                 '()))
                     '()))
              (__tmp129260
               (let ((__tmp129261
                      (let ()
                        (declare (not safe))
                        (cons _%$target128235%_ _%linit128257%_))))
                 (declare (not safe))
                 (cons _%$lp128241%_ __tmp129261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129262
                                                   __tmp129260)))))
                                      (let ((_%body128262%_
                                             (let ((__tmp129280
                                                    (cons (cons (cons _%$target128235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128239%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128160%_
                                 _%rlen128233%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129279
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128067%_
                                                       _%tl128230%_
                                                       _%vars128159%_
                                                       _%$tl128239%_
                                                       _%E128161%_
                                                       _%make-loop128260%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129280
                                                __tmp129279))))
                                        (let ((__tmp129284
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128160%_)))
                                              (__tmp129281
                                               (if (zero? _%rlen128233%_)
                                                   _%body128262%_
                                                   (let ((__tmp129282
                                                          (let ((__tmp129283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128160%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129283 _%rlen128233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129282
                                                      _%body128262%_
                                                      _%E128161%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129284
                                           __tmp129281
                                           _%E128161%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128216128223%_))
                              (let ((_%hd128220128281%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128216128223%_)))
                                    (_%tl128221128283%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128216128223%_))))
                                (let* ((_%hd128286%_ _%hd128220128281%_)
                                       (_%tl128288%_ _%tl128221128283%_))
                                  (declare (not safe))
                                  (_%K128219128278%_
                                   _%tl128288%_
                                   _%hd128286%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128218128227%_))))
                        (if (eq? 'null _%$e128180%_)
                            (let ((__tmp129286
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128160%_)))
                                  (__tmp129285 (_%k128162%_ _%vars128159%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129286
                               __tmp129285
                               _%E128161%_))
                            (if (eq? 'vector _%$e128180%_)
                                (let ((_%$e128290%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129291
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128160%_)))
                                        (__tmp129287
                                         (let ((__tmp129289
                                                (cons (cons (cons _%$e128290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129290
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127874%_
                                    _%target128160%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129290))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129288
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128067%_
                                                   _%body128177%_
                                                   _%vars128159%_
                                                   _%$e128290%_
                                                   _%E128161%_
                                                   _%k128162%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129289
                                            __tmp129288))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129291
                                     __tmp129287
                                     _%E128161%_)))
                                (if (eq? 'box _%$e128180%_)
                                    (let ((_%$e128292%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129296
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128160%_)))
                                            (__tmp129292
                                             (let ((__tmp129294
                                                    (cons (cons (cons _%$e128292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129295
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127874%_
                                        _%target128160%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129295))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129293
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128067%_
                                                       _%body128177%_
                                                       _%vars128159%_
                                                       _%$e128292%_
                                                       _%E128161%_
                                                       _%k128162%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129294
                                                __tmp129293))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129296
                                         __tmp129292
                                         _%E128161%_)))
                                    (if (eq? 'datum _%$e128180%_)
                                        (let ((_%$e128294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129302
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128160%_)))
                                                (__tmp129297
                                                 (let ((__tmp129301
                                                        (cons (cons (cons _%$e128294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128160%_))
                                  '()))
                      '()))
               (__tmp129298
                (let ((__tmp129300
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128294%_ _%body128177%_)))
                      (__tmp129299 (_%k128162%_ _%vars128159%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129300 __tmp129299 _%E128161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129301
                                                    __tmp129298))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129302
                                             __tmp129297
                                             _%E128161%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128066%_
                                           _%e128158%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128163128170%_))
                                      (let ((_%hd128167128299%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128163128170%_)))
                                            (_%tl128168128301%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128163128170%_))))
                                        (let* ((_%tag128304%_
                                                _%hd128167128299%_)
                                               (_%body128306%_
                                                _%tl128168128301%_))
                                          (declare (not safe))
                                          (_%K128166128296%_
                                           _%body128306%_
                                           _%tag128304%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128165128174%_))))))
                             (_%splice-rlen128068%_
                              (lambda (_%e128120%_)
                                (let _%lp128122%_ ((_%e128124%_ _%e128120%_)
                                                   (_%n128125%_ '0))
                                  (let* ((_%e128126128133%_ _%e128124%_)
                                         (_%E128128128137%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128126128133%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128129128146%_
                                          (lambda (_%body128140%_
                                                   _%tag128141%_)
                                            (let ((_%$e128143%_ _%tag128141%_))
                                              (if (eq? 'splice _%$e128143%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127872%_
                                                     _%where128059%_))
                                                  (if (eq? 'cons _%$e128143%_)
                                                      (let ((__tmp129304
                                                             (cdr _%body128140%_))
                                                            (__tmp129303
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128125%_ '1))))
                (declare (not safe))
                (_%lp128122%_ __tmp129304 __tmp129303))
              _%n128125%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128126128133%_))
                                        (let ((_%hd128130128149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128126128133%_)))
                                              (_%tl128131128151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128126128133%_))))
                                          (let* ((_%tag128154%_
                                                  _%hd128130128149%_)
                                                 (_%body128156%_
                                                  _%tl128131128151%_))
                                            (declare (not safe))
                                            (_%K128129128146%_
                                             _%body128156%_
                                             _%tag128154%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128128128137%_)))))))
                             (_%splice-vars128069%_
                              (lambda (_%e128076%_)
                                (let _%recur128078%_ ((_%e128080%_ _%e128076%_)
                                                      (_%vars128081%_ '()))
                                  (let* ((_%e128082128089%_ _%e128080%_)
                                         (_%E128084128093%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128082128089%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128085128108%_
                                          (lambda (_%body128096%_
                                                   _%tag128097%_)
                                            (let ((_%$e128099%_ _%tag128097%_))
                                              (if (eq? 'var _%$e128099%_)
                                                  (cons _%body128096%_
                                                        _%vars128081%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128099%_)
                                                          (eq? 'splice
                                                               _%$e128099%_))
                                                      (let ((__tmp129307
                                                             (cdr _%body128096%_))
                                                            (__tmp129305
                                                             (let ((__tmp129306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128096%_)))
                       (declare (not safe))
                       (_%recur128078%_ __tmp129306 _%vars128081%_))))
                (declare (not safe))
                (_%recur128078%_ __tmp129307 __tmp129305))
              (if (or (eq? 'vector _%$e128099%_) (eq? 'box _%$e128099%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128078%_ _%body128096%_ _%vars128081%_))
                  _%vars128081%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128082128089%_))
                                        (let ((_%hd128086128111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128082128089%_)))
                                              (_%tl128087128113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128082128089%_))))
                                          (let* ((_%tag128116%_
                                                  _%hd128086128111%_)
                                                 (_%body128118%_
                                                  _%tl128087128113%_))
                                            (declare (not safe))
                                            (_%K128085128108%_
                                             _%body128118%_
                                             _%tag128116%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128084128093%_)))))))
                             (_%make-body128070%_
                              (lambda (_%vars128072%_)
                                (cons _%K128063%_
                                      (map (lambda (_%mvar128074%_)
                                             (let ((__tmp129308
                                                    (car _%mvar128074%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129308
                                                _%vars128072%_
                                                _%BUG128066%_)))
                                           _%mvars128062%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128067%_
                         _%hd128061%_
                         '()
                         _%target128060%_
                         _%E128064%_
                         _%make-body128070%_)))))
                 (_%parse-clause127881%_
                  (lambda (_%hd127953%_ _%ids127954%_)
                    (let _%recur127956%_ ((_%e127958%_ _%hd127953%_)
                                          (_%vars127959%_ '())
                                          (_%depth127960%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127958%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e127958%_))
                                (let () (values '(any) _%vars127959%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e127958%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Misplaced ellipsis"
                                         _%stx127872%_
                                         _%hd127953%_)))
                                    (if (let ((__tmp129309
                                               (lambda (_%id127965%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e127958%_
                                                    _%id127965%_)))))
                                          (declare (not safe))
                                          (__find __tmp129309 _%ids127954%_))
                                        (let ()
                                          (values (cons 'id _%e127958%_)
                                                  _%vars127959%_))
                                        (if (let ((__tmp129310
                                                   (lambda (_%var127968%_)
                                                     (let ((__tmp129311
                                                            (car _%var127968%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e127958%_
                                                        __tmp129311)))))
                                              (declare (not safe))
                                              (__find __tmp129310
                                                      _%vars127959%_))
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Duplicate pattern variable"
                                                 _%stx127872%_
                                                 _%e127958%_)))
                                            (let ()
                                              (values (cons 'var _%e127958%_)
                                                      (cons (cons _%e127958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth127960%_)
                    _%vars127959%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127958%_))
                              (let ()
                                (let* ((_%e127972127979%_ _%e127958%_)
                                       (_%E127974127983%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e127972127979%_))))
                                       (_%E127973128044%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e127972127979%_))
                                              (let ((_%e127975127987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e127972127979%_))))
                                                (let ((_%hd127976127990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e127975127987%_)))
                                                      (_%tl127977127992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e127975127987%_))))
                                                  (let* ((_%hd127995%_
                                                          _%hd127976127990%_)
                                                         (_%rest127997%_
                                                          _%tl127977127992%_))
                                                    (if '#t
                                                        (let* ((_%make-pair128012%_
                                                                (lambda (_%tag127999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd128000%_
                                 _%tl128001%_)
                          (let* ((_%hd-depth128003%_
                                  (if (eq? _%tag127999%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth127960%_ '1))
                                      _%depth127960%_))
                                 (_g129312_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur127956%_
                                     _%hd128000%_
                                     _%vars127959%_
                                     _%hd-depth128003%_))))
                            (begin
                              (let ((_g129313_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129312_)
                                           (##vector-length _g129312_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129313_ 2)))
                                    (error "Context expects 2 values"
                                           _g129313_)))
                              (let ((_%hd128005%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129312_ 0)))
                                    (_%vars128006%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129312_ 1))))
                                (let ((_g129314_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur127956%_
                                          _%tl128001%_
                                          _%vars128006%_
                                          _%depth127960%_))))
                                  (begin
                                    (let ((_g129315_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129314_)
                                                 (##vector-length _g129314_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129315_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129315_)))
                                    (let ((_%tl128008%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129314_ 0)))
                                          (_%vars128009%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129314_ 1))))
                                      (let ()
                                        (values (let ((__tmp129316
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd128005%_
                                                               _%tl128008%_))))
                                                  (declare (not safe))
                                                  (cons _%tag127999%_
                                                        __tmp129316))
                                                _%vars128009%_))))))))))
                       (_%e128013128020%_ _%rest127997%_)
                       (_%E128015128024%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair128012%_
                             'cons
                             _%hd127995%_
                             _%rest127997%_))))
                       (_%E128014128040%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128013128020%_))
                              (let ((_%e128016128028%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e128013128020%_))))
                                (let ((_%hd128017128031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e128016128028%_)))
                                      (_%tl128018128033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e128016128028%_))))
                                  (let* ((_%rest-hd128036%_ _%hd128017128031%_)
                                         (_%rest-tl128038%_
                                          _%tl128018128033%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd128036%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128012%_
                                               'splice
                                               _%hd127995%_
                                               _%rest-tl128038%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128012%_
                                               'cons
                                               _%hd127995%_
                                               _%rest127997%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128015128024%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E128015128024%_))))))
                  (let () (declare (not safe)) (_%E128014128040%_)))
                (let () (declare (not safe)) (_%E127974127983%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E127974127983%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E127973128044%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127958%_))
                                  (let () (values '(null) _%vars127959%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127958%_))
                                      (let ()
                                        (let ((_g129317_
                                               (let ((__tmp129319
                                                      (vector->list
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e127958%_)))))
                                                 (declare (not safe))
                                                 (_%recur127956%_
                                                  __tmp129319
                                                  _%vars127959%_
                                                  _%depth127960%_))))
                                          (begin
                                            (let ((_g129318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129317_)
                                                         (##vector-length
                                                          _g129317_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129318_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129318_)))
                                            (let ((_%e128050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129317_
                                                      0)))
                                                  (_%vars128051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129317_
                                                      1))))
                                              (values (cons 'vector
                                                            _%e128050%_)
                                                      _%vars128051%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127958%_))
                                          (let ()
                                            (let ((_g129320_
                                                   (let ((__tmp129322
                                                          (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#syntax-e _%e127958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%recur127956%_
                                                      __tmp129322
                                                      _%vars127959%_
                                                      _%depth127960%_))))
                                              (begin
                                                (let ((_g129321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g129320_)
                                                             (##vector-length
                                                              _g129320_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g129321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g129321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%e128054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129320_
                                                          0)))
                                                      (_%vars128055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g129320_
                                                          1))))
                                                  (values (cons 'box
                                                                _%e128054%_)
                                                          _%vars128055%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127958%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e127958%_)))
                _%vars127959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad pattern"
                                                   _%stx127872%_
                                                   _%e127958%_)))))))))))))
          (let* ((_%e127882127895%_ _%stx127872%_)
                 (_%E127884127899%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127882127895%_))))
                 (_%E127883127949%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127882127895%_))
                        (let ((_%e127885127903%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127882127895%_))))
                          (let ((_%hd127886127906%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127885127903%_)))
                                (_%tl127887127908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127885127903%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127887127908%_))
                                (let ((_%e127888127911%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127887127908%_))))
                                  (let ((_%hd127889127914%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127888127911%_)))
                                        (_%tl127890127916%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127888127911%_))))
                                    (let ((_%expr127919%_ _%hd127889127914%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127890127916%_))
                                          (let ((_%e127891127921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127890127916%_))))
                                            (let ((_%hd127892127924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127891127921%_)))
                                                  (_%tl127893127926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127891127921%_))))
                                              (let* ((_%ids127929%_
                                                      _%hd127892127924%_)
                                                     (_%clauses127931%_
                                                      _%tl127893127926%_))
                                                (if '#t
                                                    (if (let ((__tmp129323
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids127929%_))))
                  (declare (not safe))
                  (not __tmp129323))
                (let ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad template identifier list"
                     _%stx127872%_
                     _%ids127929%_)))
                (if (let ((__tmp129324
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses127931%_))))
                      (declare (not safe))
                      (not __tmp129324))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; clauses expected"
                         _%stx127872%_)))
                    (let ()
                      (let* ((_%ids127936%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids127929%_)))
                             (_%clauses127938%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses127931%_)))
                             (_%clause-ids127940%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses127938%_)))
                             (_%E127942%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target127944%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first127946%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses127938%_))
                                  _%E127942%_
                                  (car _%clause-ids127940%_))))
                        (let ((__tmp129326
                               (let ((__tmp129327
                                      (let ((__tmp129329
                                             (let ((__tmp129333
                                                    (cons (cons (cons _%E127942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129335 (cons _%target127944%_ '()))
                                    (__tmp129334
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target127944%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129335
                                 __tmp129334))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129330
                                                    (let ((__tmp129332
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings127877%_
                                                              _%target127944%_
                                                              _%ids127936%_
                                                              _%clauses127938%_
                                                              _%clause-ids127940%_
                                                              _%E127942%_)))
                                                          (__tmp129331
                                                           (cons _%first127946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr127919%_ '()))))
              (declare (not safe))
              (_%generate-body127878%_ __tmp129332 __tmp129331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129333
                                                __tmp129330)))
                                            (__tmp129328
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx127872%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129329
                                         __tmp129328))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129327)))
                              (__tmp129325
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx127872%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129326 __tmp129325))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E127884127899%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E127884127899%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E127884127899%_)))))
                        (let () (declare (not safe)) (_%E127884127899%_))))))
            (let () (declare (not safe)) (_%E127883127949%_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128597%_)
        (let* ((_%identifier=?128599%_ 'free-identifier=?)
               (_%unwrap-e128601%_ 'syntax-e)
               (_%wrap-e128603%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128597%_
           _%identifier=?128599%_
           _%unwrap-e128601%_
           _%wrap-e128603%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128605%_ _%identifier=?128606%_)
        (let* ((_%unwrap-e128608%_ 'syntax-e) (_%wrap-e128610%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128605%_
           _%identifier=?128606%_
           _%unwrap-e128608%_
           _%wrap-e128610%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128612%_ _%identifier=?128613%_ _%unwrap-e128614%_)
        (let ((_%wrap-e128616%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx128612%_
           _%identifier=?128613%_
           _%unwrap-e128614%_
           _%wrap-e128616%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129337_
        (let ((_g129336_ (let () (declare (not safe)) (##length _g129337_))))
          (cond ((let () (declare (not safe)) (##fx= _g129336_ 1))
                 (apply (lambda (_%stx128597%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx128597%_)))
                        _g129337_))
                ((let () (declare (not safe)) (##fx= _g129336_ 2))
                 (apply (lambda (_%stx128605%_ _%identifier=?128606%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx128605%_
                             _%identifier=?128606%_)))
                        _g129337_))
                ((let () (declare (not safe)) (##fx= _g129336_ 3))
                 (apply (lambda (_%stx128612%_
                                 _%identifier=?128613%_
                                 _%unwrap-e128614%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx128612%_
                             _%identifier=?128613%_
                             _%unwrap-e128614%_)))
                        _g129337_))
                ((let () (declare (not safe)) (##fx= _g129336_ 4))
                 (apply (lambda (_%stx128618%_
                                 _%identifier=?128619%_
                                 _%unwrap-e128620%_
                                 _%wrap-e128621%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx128618%_
                             _%identifier=?128619%_
                             _%unwrap-e128620%_
                             _%wrap-e128621%_)))
                        _g129337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129337_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127869%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127869%_))
            (let ((__tmp129338
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127869%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129338 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127827%_ . _%rest127828%_)
        (let ((_%len127830%_ (length _%hd127827%_)))
          (let _%lp127832%_ ((_%rest127834%_ _%rest127828%_))
            (let* ((_%rest127835127843%_ _%rest127834%_)
                   (_%else127837127851%_ (lambda () '#!void))
                   (_%K127839127857%_
                    (lambda (_%rest127854%_ _%hd127855%_)
                      (if (let ((__tmp129339 (length _%hd127855%_)))
                            (declare (not safe))
                            (##fx= _%len127830%_ __tmp129339))
                          (let ()
                            (declare (not safe))
                            (_%lp127832%_ _%rest127854%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127855%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127835127843%_))
                  (let ((_%hd127840127860%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127835127843%_)))
                        (_%tl127841127862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127835127843%_))))
                    (let* ((_%hd127865%_ _%hd127840127860%_)
                           (_%rest127867%_ _%tl127841127862%_))
                      (declare (not safe))
                      (_%K127839127857%_ _%rest127867%_ _%hd127865%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127782%_ _%n127783%_)
        (let _%lp127785%_ ((_%rest127787%_ _%stx127782%_) (_%r127788%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127787%_))
              (let* ((_%g127789127796%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127787%_)))
                     (_%E127791127800%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127789127796%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127792127806%_
                      (lambda (_%rest127803%_ _%hd127804%_)
                        (let ((__tmp129340 (cons _%hd127804%_ _%r127788%_)))
                          (declare (not safe))
                          (_%lp127785%_ _%rest127803%_ __tmp129340)))))
                (if (let () (declare (not safe)) (##pair? _%g127789127796%_))
                    (let ((_%hd127793127809%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127789127796%_)))
                          (_%tl127794127811%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127789127796%_))))
                      (let* ((_%hd127814%_ _%hd127793127809%_)
                             (_%rest127816%_ _%tl127794127811%_))
                        (declare (not safe))
                        (_%K127792127806%_ _%rest127816%_ _%hd127814%_)))
                    (let () (declare (not safe)) (_%E127791127800%_))))
              (let _%lp127818%_ ((_%n127820%_ _%n127783%_)
                                 (_%l127821%_ _%r127788%_)
                                 (_%r127822%_ _%rest127787%_))
                (if (let () (declare (not safe)) (null? _%l127821%_))
                    (let () (values _%l127821%_ _%r127822%_))
                    (if (fxpositive? _%n127820%_)
                        (let ()
                          (let ((__tmp129343
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%n127820%_ '1)))
                                (__tmp129342 (cdr _%l127821%_))
                                (__tmp129341
                                 (cons (car _%l127821%_) _%r127822%_)))
                            (declare (not safe))
                            (_%lp127818%_
                             __tmp129343
                             __tmp129342
                             __tmp129341)))
                        (let ()
                          (values (reverse _%l127821%_) _%r127822%_)))))))))))
