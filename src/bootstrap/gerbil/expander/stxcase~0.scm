(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1734225194)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp133967 (list gx#expander::t))
            (__tmp133966 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp133967
         '(id depth)
         __tmp133966
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args133963%_
        (apply make-instance gx#syntax-pattern::t _%$args133963%_)))
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
      (lambda (_%self132570133947%_ _%stx133949%_)
        (let* ((_%self133951%_ _%self132570133947%_)
               (_%self133953%_ _%self133951%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx133949%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx133413%_)
        (letrec ((_%generate133415%_
                  (lambda (_%e133655%_)
                    (letrec ((_%BUG133657%_
                              (lambda (_%q133822%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx133413%_
                                         _%e133655%_
                                         _%q133822%_))))
                             (_%local-pattern-e133658%_
                              (lambda (_%pat133820%_)
                                (let ((__tmp133968
                                       (##structure-ref
                                        _%pat133820%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp133968))))
                             (_%getvar133659%_
                              (lambda (_%q133817%_ _%vars133818%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q133817%_
                                   _%vars133818%_
                                   _%BUG133657%_))))
                             (_%getarg133660%_
                              (lambda (_%arg133783%_ _%vars133784%_)
                                (let* ((_%arg133785133792%_ _%arg133783%_)
                                       (_%E133787133796%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg133785133792%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K133788133805%_
                                        (lambda (_%e133799%_ _%tag133800%_)
                                          (let ((_%$e133802%_ _%tag133800%_))
                                            (if (eq? 'ref _%$e133802%_)
                                                (_%getvar133659%_
                                                 _%e133799%_
                                                 _%vars133784%_)
                                                (if (eq? 'pattern _%$e133802%_)
                                                    (_%local-pattern-e133658%_
                                                     _%e133799%_)
                                                    (_%BUG133657%_
                                                     _%arg133783%_)))))))
                                  (if (pair? _%arg133785133792%_)
                                      (let ((_%hd133789133808%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg133785133792%_)))
                                            (_%tl133790133810%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg133785133792%_))))
                                        (let* ((_%tag133813%_
                                                _%hd133789133808%_)
                                               (_%e133815%_
                                                _%tl133790133810%_))
                                          (_%K133788133805%_
                                           _%e133815%_
                                           _%tag133813%_)))
                                      (_%E133787133796%_))))))
                      (let _%recur133662%_ ((_%e133664%_ _%e133655%_)
                                            (_%vars133665%_ '()))
                        (let* ((_%e133666133673%_ _%e133664%_)
                               (_%E133668133677%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e133666133673%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K133669133771%_
                                (lambda (_%body133680%_ _%tag133681%_)
                                  (let ((_%$e133683%_ _%tag133681%_))
                                    (if (eq? 'datum _%$e133683%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body133680%_))
                                        (if (eq? 'term _%$e133683%_)
                                            (let ((_%id133686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body133680%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id133686%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks133689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id133686%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks133689%_)
                                                        (let ((__tmp133969
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body133680%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp133969))
                (let ((__tmp133971
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body133680%_)))
                      (__tmp133970
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body133680%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp133971
                   __tmp133970
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id133686%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body133680%_))
                                                      (_%BUG133657%_
                                                       _%e133664%_))))
                                            (if (eq? 'pattern _%$e133683%_)
                                                (_%local-pattern-e133658%_
                                                 _%body133680%_)
                                                (if (eq? 'ref _%$e133683%_)
                                                    (_%getvar133659%_
                                                     _%body133680%_
                                                     _%vars133665%_)
                                                    (if (eq? 'cons
                                                             _%$e133683%_)
                                                        (let ((__tmp133973
                                                               (_%recur133662%_
                                                                (car _%body133680%_)
                                                                _%vars133665%_))
                                                              (__tmp133972
                                                               (_%recur133662%_
                                                                (cdr _%body133680%_)
                                                                _%vars133665%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp133973
                                                           __tmp133972))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e133683%_)
                    (let ((__tmp133974
                           (_%recur133662%_ _%body133680%_ _%vars133665%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp133974))
                    (if (eq? 'box _%$e133683%_)
                        (let ((__tmp133975
                               (_%recur133662%_
                                _%body133680%_
                                _%vars133665%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp133975))
                        (if (eq? 'splice _%$e133683%_)
                            (let* ((_%body133692133703%_ _%body133680%_)
                                   (_%E133694133707%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body133692133703%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K133695133745%_
                                    (lambda (_%args133710%_
                                             _%iv133711%_
                                             _%hd133712%_
                                             _%depth133713%_)
                                      (let* ((_%targets133719%_
                                              (map (lambda (_%g133714133716%_)
                                                     (_%getarg133660%_
                                                      _%g133714133716%_
                                                      _%vars133665%_))
                                                   _%args133710%_))
                                             (_%fold-in133721%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args133710%_)))
                                             (_%fold-out133723%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args133725%_
                                              (let ((__tmp133976
                                                     (cons _%fold-out133723%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp133976
                                                 _%fold-in133721%_)))
                                             (_%lambda-body133742%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth133713%_ '1))
                                                  (let ((_%r-args133733%_
                                                         (map (lambda (_%arg133727%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg133727%_)))
                      _%args133710%_))
                (_%r-vars133734%_
                 (let ((__tmp133977
                        (lambda (_%arg133729%_ _%var133730%_ _%r133731%_)
                          (cons (cons (cdr _%arg133729%_) _%var133730%_)
                                _%r133731%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp133977
                    _%vars133665%_
                    _%args133710%_
                    _%fold-in133721%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur133662%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth133713%_ '1))
                         (cons _%hd133712%_
                               (cons (cons 'var _%fold-out133723%_)
                                     _%r-args133733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars133734%_))
                                                  (let* ((_%hd-vars133740%_
                                                          (let ((__tmp133978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg133736%_ _%var133737%_ _%r133738%_)
                           (cons (cons (cdr _%arg133736%_) _%var133737%_)
                                 _%r133738%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp133978
                     _%vars133665%_
                     _%args133710%_
                     _%fold-in133721%_)))
                 (__tmp133979
                  (_%recur133662%_ _%hd133712%_ _%hd-vars133740%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp133979
                                                     _%fold-out133723%_)))))
                                        (let ((__tmp133983
                                               (if (let ((__tmp133984
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets133719%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp133984 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets133719%_))
                                                   '#!void))
                                              (__tmp133980
                                               (let ((__tmp133982
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args133725%_
                                                         _%lambda-body133742%_)))
                                                     (__tmp133981
                                                      (_%recur133662%_
                                                       _%iv133711%_
                                                       _%vars133665%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp133982
                                                  __tmp133981
                                                  _%targets133719%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp133983
                                           __tmp133980))))))
                              (if (pair? _%body133692133703%_)
                                  (let ((_%hd133696133748%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body133692133703%_)))
                                        (_%tl133697133750%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body133692133703%_))))
                                    (let ((_%depth133753%_ _%hd133696133748%_))
                                      (if (pair? _%tl133697133750%_)
                                          (let ((_%hd133698133755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl133697133750%_)))
                                                (_%tl133699133757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl133697133750%_))))
                                            (let ((_%hd133760%_
                                                   _%hd133698133755%_))
                                              (if (pair? _%tl133699133757%_)
                                                  (let ((_%hd133700133762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl133699133757%_)))
                                                        (_%tl133701133764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl133699133757%_))))
                                                    (let* ((_%iv133767%_
                                                            _%hd133700133762%_)
                                                           (_%args133769%_
                                                            _%tl133701133764%_))
                                                      (_%K133695133745%_
                                                       _%args133769%_
                                                       _%iv133767%_
                                                       _%hd133760%_
                                                       _%depth133753%_)))
                                                  (_%E133694133707%_))))
                                          (_%E133694133707%_))))
                                  (_%E133694133707%_)))
                            (if (eq? 'var _%$e133683%_)
                                _%body133680%_
                                (_%BUG133657%_ _%e133664%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e133666133673%_)
                              (let ((_%hd133670133774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e133666133673%_)))
                                    (_%tl133671133776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e133666133673%_))))
                                (let* ((_%tag133779%_ _%hd133670133774%_)
                                       (_%body133781%_ _%tl133671133776%_))
                                  (_%K133669133771%_
                                   _%body133781%_
                                   _%tag133779%_)))
                              (_%E133668133677%_)))))))
                 (_%parse133416%_
                  (lambda (_%e133457%_)
                    (letrec ((_%make-cons133459%_
                              (lambda (_%hd133647%_ _%tl133648%_)
                                (let ((_g133985_ _%hd133647%_)
                                      (_g133987_ _%tl133648%_))
                                  (begin
                                    (let ((_g133986_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133985_)
                                                 (##values-length _g133985_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133986_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133986_)))
                                    (let ((_g133988_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133987_)
                                                 (##values-length _g133987_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133988_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133988_)))
                                    (let ((_%hd-e133650%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133985_ 0)))
                                          (_%hd-vars133651%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133985_ 1))))
                                      (let ((_%tl-e133652%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133987_ 0)))
                                            (_%tl-vars133653%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133987_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e133650%_
                                                            _%tl-e133652%_))
                                                (append _%hd-vars133651%_
                                                        _%tl-vars133653%_))))))))
                             (_%make-splice133460%_
                              (lambda (_%where133583%_
                                       _%depth133584%_
                                       _%hd133585%_
                                       _%tl133586%_)
                                (let ((_g133989_ _%hd133585%_)
                                      (_g133991_ _%tl133586%_))
                                  (begin
                                    (let ((_g133990_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133989_)
                                                 (##values-length _g133989_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133990_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133990_)))
                                    (let ((_g133992_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133991_)
                                                 (##values-length _g133991_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133992_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133992_)))
                                    (let ((_%hd-e133588%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133989_ 0)))
                                          (_%hd-vars133589%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133989_ 1))))
                                      (let ((_%tl-e133590%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133991_ 0)))
                                            (_%tl-vars133591%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133991_ 1))))
                                        (let _%lp133593%_ ((_%rest133595%_
                                                            _%hd-vars133589%_)
                                                           (_%targets133596%_
                                                            '())
                                                           (_%vars133597%_
                                                            _%tl-vars133591%_))
                                          (let* ((_%rest133598133608%_
                                                  _%rest133595%_)
                                                 (_%else133600133616%_
                                                  (lambda ()
                                                    (if (null? _%targets133596%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx133413%_
                                                           _%where133583%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth133584%_
                                    (cons _%hd-e133588%_
                                          (cons _%tl-e133590%_
                                                _%targets133596%_))))
                        _%vars133597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K133602133628%_
                                                  (lambda (_%rest133619%_
                                                           _%hd-pat133620%_
                                                           _%hd-depth*133621%_)
                                                    (let ((_%hd-depth133623%_
                                                           (fx- _%hd-depth*133621%_
                                                                _%depth133584%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth133623%_))
                                                          (_%lp133593%_
                                                           _%rest133619%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat133620%_)
                         _%targets133596%_)
                   (cons (cons _%hd-depth133623%_ _%hd-pat133620%_)
                         _%vars133597%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth133623%_))
                      (_%lp133593%_
                       _%rest133619%_
                       (cons (cons 'pattern _%hd-pat133620%_)
                             _%targets133596%_)
                       _%vars133597%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx133413%_
                         _%where133583%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest133598133608%_)
                                                (let ((_%hd133603133631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest133598133608%_)))
                                                      (_%tl133604133633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest133598133608%_))))
                                                  (if (pair? _%hd133603133631%_)
                                                      (let ((_%hd133605133636%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd133603133631%_)))
                    (_%tl133606133638%_
                     (let () (declare (not safe)) (##cdr _%hd133603133631%_))))
                (let* ((_%hd-depth*133641%_ _%hd133605133636%_)
                       (_%hd-pat133643%_ _%tl133606133638%_)
                       (_%rest133645%_ _%tl133604133633%_))
                  (_%K133602133628%_
                   _%rest133645%_
                   _%hd-pat133643%_
                   _%hd-depth*133641%_)))
              (_%else133600133616%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else133600133616%_))))))))))
                             (_%recur133461%_
                              (lambda (_%e133466%_ _%is-e?133467%_)
                                (if (_%is-e?133467%_ _%e133466%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx133413%_))
                                    (if (gx#syntax-local-pattern? _%e133466%_)
                                        (let* ((_%pat133471%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e133466%_)))
                                               (_%depth133473%_
                                                (##structure-ref
                                                 _%pat133471%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth133473%_)
                                              (values (cons 'ref _%pat133471%_)
                                                      (cons (cons _%depth133473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat133471%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat133471%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e133466%_))
                                            (values (cons 'term _%e133466%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e133466%_))
                                                (let* ((_%e133477133484%_
                                                        _%e133466%_)
                                                       (_%E133479133488%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e133477133484%_))))
                                                       (_%E133478133570%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e133477133484%_))
                      (let ((_%e133480133492%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e133477133484%_))))
                        (let ((_%hd133481133495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133480133492%_)))
                              (_%tl133482133497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133480133492%_))))
                          (let* ((_%hd133500%_ _%hd133481133495%_)
                                 (_%rest133502%_ _%tl133482133497%_))
                            (if (_%is-e?133467%_ _%hd133500%_)
                                (let* ((_%e133503133510%_ _%rest133502%_)
                                       (_%E133505133514%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx133413%_
                                             _%e133466%_))))
                                       (_%E133504133528%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e133503133510%_))
                                              (let ((_%e133506133518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e133503133510%_))))
                                                (let ((_%hd133507133521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133506133518%_)))
                                                      (_%tl133508133523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133506133518%_))))
                                                  (let ((_%rest133526%_
                                                         _%hd133507133521%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133508133523%_))
                                                        (_%recur133461%_
                                                         _%rest133526%_
                                                         false)
                                                        (_%E133505133514%_)))))
                                              (_%E133505133514%_)))))
                                  (_%E133504133528%_))
                                (let _%lp133532%_ ((_%rest133534%_
                                                    _%rest133502%_)
                                                   (_%depth133535%_ '0))
                                  (let* ((_%e133536133543%_ _%rest133534%_)
                                         (_%E133538133547%_
                                          (lambda ()
                                            (if (fxpositive? _%depth133535%_)
                                                (_%make-splice133460%_
                                                 _%e133466%_
                                                 _%depth133535%_
                                                 (_%recur133461%_
                                                  _%hd133500%_
                                                  _%is-e?133467%_)
                                                 (_%recur133461%_
                                                  _%rest133534%_
                                                  _%is-e?133467%_))
                                                (_%make-cons133459%_
                                                 (_%recur133461%_
                                                  _%hd133500%_
                                                  _%is-e?133467%_)
                                                 (_%recur133461%_
                                                  _%rest133534%_
                                                  _%is-e?133467%_)))))
                                         (_%E133537133566%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e133536133543%_))
                                                (let ((_%e133539133551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e133536133543%_))))
                                                  (let ((_%hd133540133554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e133539133551%_)))
                                                        (_%tl133541133556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e133539133551%_))))
                                                    (let* ((_%rest-hd133559%_
                                                            _%hd133540133554%_)
                                                           (_%rest-tl133561%_
                                                            _%tl133541133556%_))
                                                      (if (_%is-e?133467%_
                                                           _%rest-hd133559%_)
                                                          (_%lp133532%_
                                                           _%rest-tl133561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth133535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth133535%_)
                      (_%make-splice133460%_
                       _%e133466%_
                       _%depth133535%_
                       (_%recur133461%_ _%hd133500%_ _%is-e?133467%_)
                       (_%recur133461%_ _%rest133534%_ _%is-e?133467%_))
                      (_%make-cons133459%_
                       (_%recur133461%_ _%hd133500%_ _%is-e?133467%_)
                       (_%recur133461%_ _%rest133534%_ _%is-e?133467%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E133538133547%_)))))
                                    (_%E133537133566%_)))))))
                      (_%E133479133488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133478133570%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e133466%_))
                                                    (let ((_g133993_
                                                           (_%recur133461%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e133466%_)))
                    _%is-e?133467%_)))
              (begin
                (let ((_g133994_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g133993_)
                             (##values-length _g133993_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133994_ 2)))
                      (error "Context expects 2 values" _g133994_)))
                (let ((_%e133575%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133993_ 0)))
                      (_%vars133576%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133993_ 1))))
                  (values (cons 'vector _%e133575%_) _%vars133576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e133466%_))
                                                        (let ((_g133995_
                                                               (_%recur133461%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e133466%_)))
                        _%is-e?133467%_)))
                  (begin
                    (let ((_g133996_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g133995_)
                                 (##values-length _g133995_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g133996_ 2)))
                          (error "Context expects 2 values" _g133996_)))
                    (let ((_%e133579%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133995_ 0)))
                          (_%vars133580%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133995_ 1))))
                      (values (cons 'box _%e133579%_) _%vars133580%_))))
                (values (cons 'datum _%e133466%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g133997_
                             (_%recur133461%_ _%e133457%_ gx#ellipsis?)))
                        (begin
                          (let ((_g133998_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g133997_)
                                       (##values-length _g133997_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g133998_ 2)))
                                (error "Context expects 2 values" _g133998_)))
                          (let ((_%tree133463%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133997_ 0)))
                                (_%vars133464%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133997_ 1))))
                            (if (null? _%vars133464%_)
                                _%tree133463%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx133413%_
                                   _%vars133464%_))))))))))
          (let* ((_%e133417133427%_ _%stx133413%_)
                 (_%E133419133431%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx133413%_))))
                 (_%E133418133453%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e133417133427%_))
                        (let ((_%e133420133435%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e133417133427%_))))
                          (let ((_%hd133421133438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133420133435%_)))
                                (_%tl133422133440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133420133435%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133422133440%_))
                                (let ((_%e133423133443%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl133422133440%_))))
                                  (let ((_%hd133424133446%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133423133443%_)))
                                        (_%tl133425133448%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133423133443%_))))
                                    (let ((_%form133451%_ _%hd133424133446%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl133425133448%_))
                                          (let ((__tmp134000
                                                 (_%generate133415%_
                                                  (_%parse133416%_
                                                   _%form133451%_)))
                                                (__tmp133999
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx133413%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp134000
                                             __tmp133999))
                                          (_%E133419133431%_)))))
                                (_%E133419133431%_))))
                        (_%E133419133431%_)))))
            (_%E133418133453%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx132662%_
               _%identifier=?132663%_
               _%unwrap-e132664%_
               _%wrap-e132665%_)
        (letrec ((_%generate-bindings132667%_
                  (lambda (_%target133277%_
                           _%ids133278%_
                           _%clauses133279%_
                           _%clause-ids133280%_
                           _%E133281%_)
                    (letrec ((_%generate1133283%_
                              (lambda (_%clause133380%_
                                       _%clause-id133381%_
                                       _%E133382%_)
                                (cons (cons _%clause-id133381%_ '())
                                      (cons (let ((__tmp134002
                                                   (cons _%target133277%_ '()))
                                                  (__tmp134001
                                                   (_%generate-clause132669%_
                                                    _%target133277%_
                                                    _%ids133278%_
                                                    _%clause133380%_
                                                    _%E133382%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp134002
                                               __tmp134001))
                                            '())))))
                      (let _%lp133285%_ ((_%rest133287%_ _%clauses133279%_)
                                         (_%rest-ids133288%_
                                          _%clause-ids133280%_)
                                         (_%bindings133289%_ '()))
                        (let* ((_%rest133290133298%_ _%rest133287%_)
                               (_%else133292133306%_
                                (lambda () _%bindings133289%_))
                               (_%K133294133368%_
                                (lambda (_%rest133309%_ _%clause133310%_)
                                  (let* ((_%rest-ids133311133318%_
                                          _%rest-ids133288%_)
                                         (_%E133313133322%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids133311133318%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K133314133356%_
                                          (lambda (_%rest-ids133325%_
                                                   _%clause-id133326%_)
                                            (let* ((_%rest-ids133327133335%_
                                                    _%rest-ids133325%_)
                                                   (_%else133329133343%_
                                                    (lambda ()
                                                      (cons (_%generate1133283%_
                                                             _%clause133310%_
                                                             _%clause-id133326%_
                                                             _%E133281%_)
                                                            _%bindings133289%_)))
                                                   (_%K133331133348%_
                                                    (lambda (_%next-clause-id133346%_)
                                                      (_%lp133285%_
                                                       _%rest133309%_
                                                       _%rest-ids133325%_
                                                       (cons (_%generate1133283%_
                                                              _%clause133310%_
                                                              _%clause-id133326%_
                                                              _%next-clause-id133346%_)
                                                             _%bindings133289%_)))))
                                              (if (pair? _%rest-ids133327133335%_)
                                                  (let* ((_%hd133332133351%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids133327133335%_)))
                                                         (_%next-clause-id133354%_
                                                          _%hd133332133351%_))
                                                    (_%K133331133348%_
                                                     _%next-clause-id133354%_))
                                                  (_%else133329133343%_))))))
                                    (if (pair? _%rest-ids133311133318%_)
                                        (let ((_%hd133315133359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids133311133318%_)))
                                              (_%tl133316133361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids133311133318%_))))
                                          (let* ((_%clause-id133364%_
                                                  _%hd133315133359%_)
                                                 (_%rest-ids133366%_
                                                  _%tl133316133361%_))
                                            (_%K133314133356%_
                                             _%rest-ids133366%_
                                             _%clause-id133364%_)))
                                        (_%E133313133322%_))))))
                          (if (pair? _%rest133290133298%_)
                              (let ((_%hd133295133371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest133290133298%_)))
                                    (_%tl133296133373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest133290133298%_))))
                                (let* ((_%clause133376%_ _%hd133295133371%_)
                                       (_%rest133378%_ _%tl133296133373%_))
                                  (_%K133294133368%_
                                   _%rest133378%_
                                   _%clause133376%_)))
                              (_%else133292133306%_)))))))
                 (_%generate-body132668%_
                  (lambda (_%bindings133237%_ _%body133238%_)
                    (let _%recur133240%_ ((_%rest133242%_ _%bindings133237%_))
                      (let* ((_%rest133243133251%_ _%rest133242%_)
                             (_%else133245133259%_ (lambda () _%body133238%_))
                             (_%K133247133265%_
                              (lambda (_%rest133262%_ _%hd133263%_)
                                (let ((__tmp134004 (cons _%hd133263%_ '()))
                                      (__tmp134003
                                       (_%recur133240%_ _%rest133262%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp134004
                                   __tmp134003)))))
                        (if (pair? _%rest133243133251%_)
                            (let ((_%hd133248133268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest133243133251%_)))
                                  (_%tl133249133270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest133243133251%_))))
                              (let* ((_%hd133273%_ _%hd133248133268%_)
                                     (_%rest133275%_ _%tl133249133270%_))
                                (_%K133247133265%_
                                 _%rest133275%_
                                 _%hd133273%_)))
                            (_%else133245133259%_))))))
                 (_%generate-clause132669%_
                  (lambda (_%target133100%_
                           _%ids133101%_
                           _%clause133102%_
                           _%E133103%_)
                    (letrec ((_%generate1133105%_
                              (lambda (_%hd133192%_
                                       _%fender133193%_
                                       _%body133194%_)
                                (let ((_g134005_
                                       (_%parse-clause132671%_
                                        _%hd133192%_
                                        _%ids133101%_)))
                                  (begin
                                    (let ((_g134006_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134005_)
                                                 (##values-length _g134005_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134006_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134006_)))
                                    (let ((_%e133196%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134005_ 0)))
                                          (_%mvars133197%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134005_ 1))))
                                      (let* ((_%pvars133199%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars133197%_))))
                                             (_%E133201%_
                                              (cons _%E133103%_
                                                    (cons _%target133100%_
                                                          '())))
                                             (_%K133234%_
                                              (let ((__tmp134007
                                                     (let ((__tmp134009
                                                            (map (lambda (_%mvar133203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar133204%_)
                           (let* ((_%mvar133205133212%_ _%mvar133203%_)
                                  (_%E133207133216%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar133205133212%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K133208133222%_
                                   (lambda (_%depth133219%_ _%id133220%_)
                                     (cons _%id133220%_
                                           (cons (let ((__tmp134011
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id133220%_)))
                                                       (__tmp134010
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar133204%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp134011
                                                    __tmp134010
                                                    _%depth133219%_))
                                                 '())))))
                             (if (pair? _%mvar133205133212%_)
                                 (let ((_%hd133209133225%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar133205133212%_)))
                                       (_%tl133210133227%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar133205133212%_))))
                                   (let* ((_%id133230%_ _%hd133209133225%_)
                                          (_%depth133232%_ _%tl133210133227%_))
                                     (_%K133208133222%_
                                      _%depth133232%_
                                      _%id133230%_)))
                                 (_%E133207133216%_))))
                         _%mvars133197%_
                         _%pvars133199%_))
                   (__tmp134008
                    (if (eq? _%fender133193%_ '#t)
                        _%body133194%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender133193%_
                           _%body133194%_
                           _%E133201%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp134009 __tmp134008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars133199%_
                                                 __tmp134007))))
                                        (_%generate-match132670%_
                                         _%hd133192%_
                                         _%target133100%_
                                         _%e133196%_
                                         _%mvars133197%_
                                         _%K133234%_
                                         _%E133201%_))))))))
                      (let* ((_%e133106133126%_ _%clause133102%_)
                             (_%E133115133130%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e133106133126%_))))
                             (_%E133108133164%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133106133126%_))
                                    (let ((_%e133116133134%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133106133126%_))))
                                      (let ((_%hd133117133137%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133116133134%_)))
                                            (_%tl133118133139%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133116133134%_))))
                                        (let ((_%hd133142%_
                                               _%hd133117133137%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133118133139%_))
                                              (let ((_%e133119133144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133118133139%_))))
                                                (let ((_%hd133120133147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133119133144%_)))
                                                      (_%tl133121133149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133119133144%_))))
                                                  (let ((_%fender133152%_
                                                         _%hd133120133147%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl133121133149%_))
                                                        (let ((_%e133122133154%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl133121133149%_))))
                  (let ((_%hd133123133157%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133122133154%_)))
                        (_%tl133124133159%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133122133154%_))))
                    (let ((_%body133162%_ _%hd133123133157%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl133124133159%_))
                          (_%generate1133105%_
                           _%hd133142%_
                           _%fender133152%_
                           _%body133162%_)
                          (_%E133115133130%_)))))
                (_%E133115133130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133115133130%_)))))
                                    (_%E133115133130%_))))
                             (_%E133107133188%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133106133126%_))
                                    (let ((_%e133109133168%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133106133126%_))))
                                      (let ((_%hd133110133171%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133109133168%_)))
                                            (_%tl133111133173%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133109133168%_))))
                                        (let ((_%hd133176%_
                                               _%hd133110133171%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133111133173%_))
                                              (let ((_%e133112133178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133111133173%_))))
                                                (let ((_%hd133113133181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133112133178%_)))
                                                      (_%tl133114133183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133112133178%_))))
                                                  (let ((_%body133186%_
                                                         _%hd133113133181%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133114133183%_))
                                                        (_%generate1133105%_
                                                         _%hd133176%_
                                                         '#t
                                                         _%body133186%_)
                                                        (_%E133108133164%_)))))
                                              (_%E133108133164%_)))))
                                    (_%E133108133164%_)))))
                        (_%E133107133188%_)))))
                 (_%generate-match132670%_
                  (lambda (_%where132849%_
                           _%target132850%_
                           _%hd132851%_
                           _%mvars132852%_
                           _%K132853%_
                           _%E132854%_)
                    (letrec ((_%BUG132856%_
                              (lambda (_%q133098%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx132662%_
                                         _%hd132851%_
                                         _%q133098%_))))
                             (_%recur132857%_
                              (lambda (_%e132948%_
                                       _%vars132949%_
                                       _%target132950%_
                                       _%E132951%_
                                       _%k132952%_)
                                (let* ((_%e132953132960%_ _%e132948%_)
                                       (_%E132955132964%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e132953132960%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K132956133086%_
                                        (lambda (_%body132967%_ _%tag132968%_)
                                          (let ((_%$e132970%_ _%tag132968%_))
                                            (if (eq? 'any _%$e132970%_)
                                                (_%k132952%_ _%vars132949%_)
                                                (if (eq? 'id _%$e132970%_)
                                                    (let ((__tmp134016
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target132950%_)))
                                                          (__tmp134012
                                                           (let ((__tmp134014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134015
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e132665%_
                                    _%body132967%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?132663%_
                             __tmp134015
                             _%target132950%_)))
                         (__tmp134013 (_%k132952%_ _%vars132949%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp134014 __tmp134013 _%E132951%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp134016 __tmp134012 _%E132951%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e132970%_)
                                                        (_%k132952%_
                                                         (cons (cons _%body132967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target132950%_)
                       _%vars132949%_))
                (if (eq? 'cons _%$e132970%_)
                    (let ((_%$e132973%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd132974%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl132975%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp134022
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target132950%_)))
                            (__tmp134017
                             (let ((__tmp134021
                                    (cons (cons (cons _%$e132973%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e132664%_
                                                         _%target132950%_))
                                                      '()))
                                          '()))
                                   (__tmp134018
                                    (let ((__tmp134020
                                           (cons (cons (cons _%$hd132974%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e132973%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl132975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e132973%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp134019
                                           (let* ((_%body132976132983%_
                                                   _%body132967%_)
                                                  (_%E132978132987%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body132976132983%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K132979132995%_
                                                   (lambda (_%tl132990%_
                                                            _%hd132991%_)
                                                     (_%recur132857%_
                                                      _%hd132991%_
                                                      _%vars132949%_
                                                      _%$hd132974%_
                                                      _%E132951%_
                                                      (lambda (_%vars132993%_)
                                                        (_%recur132857%_
                                                         _%tl132990%_
                                                         _%vars132993%_
                                                         _%$tl132975%_
                                                         _%E132951%_
                                                         _%k132952%_))))))
                                             (if (pair? _%body132976132983%_)
                                                 (let ((_%hd132980132998%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body132976132983%_)))
                                                       (_%tl132981133000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body132976132983%_))))
                                                   (let* ((_%hd133003%_
                                                           _%hd132980132998%_)
                                                          (_%tl133005%_
                                                           _%tl132981133000%_))
                                                     (_%K132979132995%_
                                                      _%tl133005%_
                                                      _%hd133003%_)))
                                                 (_%E132978132987%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp134020
                                       __tmp134019))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp134021
                                __tmp134018))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp134022
                         __tmp134017
                         _%E132951%_)))
                    (if (eq? 'splice _%$e132970%_)
                        (let* ((_%body133006133013%_ _%body132967%_)
                               (_%E133008133017%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body133006133013%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K133009133068%_
                                (lambda (_%tl133020%_ _%hd133021%_)
                                  (let* ((_%rlen133023%_
                                          (_%splice-rlen132858%_ _%tl133020%_))
                                         (_%$target133025%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd133027%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl133029%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp133031%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e133033%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd133035%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl133037%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars133039%_
                                          (_%splice-vars132859%_ _%hd133021%_))
                                         (_%lvars133041%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133039%_)))
                                         (_%tlvars133043%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133039%_)))
                                         (_%linit133047%_
                                          (map (lambda (_%var133045%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars133041%_)))
                                    (letrec ((_%make-loop133050%_
                                              (lambda (_%vars133054%_)
                                                (let ((__tmp134024
                                                       (cons (cons (cons _%$lp133031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp134037
                                        (cons _%$hd133027%_ _%lvars133041%_))
                                       (__tmp134025
                                        (let ((__tmp134036
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd133027%_)))
                                              (__tmp134030
                                               (let ((__tmp134035
                                                      (cons (cons (cons _%$lp-e133033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e132664%_
                                   _%$hd133027%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134031
                                                      (let ((__tmp134034
                                                             (cons (cons (cons _%$lp-hd133035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e133033%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl133037%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e133033%_))
                                             '()))
                                 '())))
                    (__tmp134032
                     (_%recur132857%_
                      _%hd133021%_
                      '()
                      _%$lp-hd133035%_
                      _%E132951%_
                      (lambda (_%hdvars133056%_)
                        (cons _%$lp133031%_
                              (cons _%$lp-tl133037%_
                                    (map (lambda (_%svar133058%_
                                                  _%lvar133059%_)
                                           (let ((__tmp134033
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar133058%_
                                                     _%hdvars133056%_
                                                     _%BUG132856%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp134033
                                              _%lvar133059%_)))
                                         _%svars133039%_
                                         _%lvars133041%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp134034 __tmp134032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134035
                                                  __tmp134031)))
                                              (__tmp134026
                                               (let ((__tmp134029
                                                      (map (lambda (_%lvar133061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar133062%_)
                     (cons (cons _%tlvar133062%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar133061%_))
                                 '())))
                   _%lvars133041%_
                   _%tlvars133043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134027
                                                      (_%k132952%_
                                                       (let ((__tmp134028
                                                              (lambda (_%svar133064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar133065%_
                               _%r133066%_)
                        (cons (cons _%svar133064%_ _%tlvar133065%_)
                              _%r133066%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp134028
                  _%vars133054%_
                  _%svars133039%_
                  _%tlvars133043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134029
                                                  __tmp134027))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134036
                                           __tmp134030
                                           __tmp134026))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp134037
                                    __tmp134025))
                                 '()))
                     '()))
              (__tmp134023
               (cons _%$lp133031%_ (cons _%$target133025%_ _%linit133047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp134024
                                                   __tmp134023)))))
                                      (let ((_%body133052%_
                                             (let ((__tmp134039
                                                    (cons (cons (cons _%$target133025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl133029%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target132950%_
                                 _%rlen133023%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134038
                                                    (_%recur132857%_
                                                     _%tl133020%_
                                                     _%vars132949%_
                                                     _%$tl133029%_
                                                     _%E132951%_
                                                     _%make-loop133050%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134039
                                                __tmp134038))))
                                        (let ((__tmp134043
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target132950%_)))
                                              (__tmp134040
                                               (if (zero? _%rlen133023%_)
                                                   _%body133052%_
                                                   (let ((__tmp134041
                                                          (let ((__tmp134042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target132950%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp134042 _%rlen133023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp134041
                                                      _%body133052%_
                                                      _%E132951%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134043
                                           __tmp134040
                                           _%E132951%_))))))))
                          (if (pair? _%body133006133013%_)
                              (let ((_%hd133010133071%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body133006133013%_)))
                                    (_%tl133011133073%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body133006133013%_))))
                                (let* ((_%hd133076%_ _%hd133010133071%_)
                                       (_%tl133078%_ _%tl133011133073%_))
                                  (_%K133009133068%_
                                   _%tl133078%_
                                   _%hd133076%_)))
                              (_%E133008133017%_)))
                        (if (eq? 'null _%$e132970%_)
                            (let ((__tmp134045
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target132950%_)))
                                  (__tmp134044 (_%k132952%_ _%vars132949%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp134045
                               __tmp134044
                               _%E132951%_))
                            (if (eq? 'vector _%$e132970%_)
                                (let ((_%$e133080%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp134050
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target132950%_)))
                                        (__tmp134046
                                         (let ((__tmp134048
                                                (cons (cons (cons _%$e133080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp134049
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e132664%_
                                    _%target132950%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp134049))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp134047
                                                (_%recur132857%_
                                                 _%body132967%_
                                                 _%vars132949%_
                                                 _%$e133080%_
                                                 _%E132951%_
                                                 _%k132952%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp134048
                                            __tmp134047))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp134050
                                     __tmp134046
                                     _%E132951%_)))
                                (if (eq? 'box _%$e132970%_)
                                    (let ((_%$e133082%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp134055
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target132950%_)))
                                            (__tmp134051
                                             (let ((__tmp134053
                                                    (cons (cons (cons _%$e133082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp134054
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e132664%_
                                        _%target132950%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp134054))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134052
                                                    (_%recur132857%_
                                                     _%body132967%_
                                                     _%vars132949%_
                                                     _%$e133082%_
                                                     _%E132951%_
                                                     _%k132952%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134053
                                                __tmp134052))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp134055
                                         __tmp134051
                                         _%E132951%_)))
                                    (if (eq? 'datum _%$e132970%_)
                                        (let ((_%$e133084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp134061
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target132950%_)))
                                                (__tmp134056
                                                 (let ((__tmp134060
                                                        (cons (cons (cons _%$e133084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target132950%_))
                                  '()))
                      '()))
               (__tmp134057
                (let ((__tmp134059
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e133084%_ _%body132967%_)))
                      (__tmp134058 (_%k132952%_ _%vars132949%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp134059 __tmp134058 _%E132951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp134060
                                                    __tmp134057))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp134061
                                             __tmp134056
                                             _%E132951%_)))
                                        (_%BUG132856%_
                                         _%e132948%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e132953132960%_)
                                      (let ((_%hd132957133089%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132953132960%_)))
                                            (_%tl132958133091%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132953132960%_))))
                                        (let* ((_%tag133094%_
                                                _%hd132957133089%_)
                                               (_%body133096%_
                                                _%tl132958133091%_))
                                          (_%K132956133086%_
                                           _%body133096%_
                                           _%tag133094%_)))
                                      (_%E132955132964%_)))))
                             (_%splice-rlen132858%_
                              (lambda (_%e132910%_)
                                (let _%lp132912%_ ((_%e132914%_ _%e132910%_)
                                                   (_%n132915%_ '0))
                                  (let* ((_%e132916132923%_ _%e132914%_)
                                         (_%E132918132927%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132916132923%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132919132936%_
                                          (lambda (_%body132930%_
                                                   _%tag132931%_)
                                            (let ((_%$e132933%_ _%tag132931%_))
                                              (if (eq? 'splice _%$e132933%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx132662%_
                                                     _%where132849%_))
                                                  (if (eq? 'cons _%$e132933%_)
                                                      (_%lp132912%_
                                                       (cdr _%body132930%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n132915%_
                                                                '1)))
                                                      _%n132915%_))))))
                                    (if (pair? _%e132916132923%_)
                                        (let ((_%hd132920132939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132916132923%_)))
                                              (_%tl132921132941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132916132923%_))))
                                          (let* ((_%tag132944%_
                                                  _%hd132920132939%_)
                                                 (_%body132946%_
                                                  _%tl132921132941%_))
                                            (_%K132919132936%_
                                             _%body132946%_
                                             _%tag132944%_)))
                                        (_%E132918132927%_))))))
                             (_%splice-vars132859%_
                              (lambda (_%e132866%_)
                                (let _%recur132868%_ ((_%e132870%_ _%e132866%_)
                                                      (_%vars132871%_ '()))
                                  (let* ((_%e132872132879%_ _%e132870%_)
                                         (_%E132874132883%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132872132879%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132875132898%_
                                          (lambda (_%body132886%_
                                                   _%tag132887%_)
                                            (let ((_%$e132889%_ _%tag132887%_))
                                              (if (eq? 'var _%$e132889%_)
                                                  (cons _%body132886%_
                                                        _%vars132871%_)
                                                  (if (or (eq? 'cons
                                                               _%$e132889%_)
                                                          (eq? 'splice
                                                               _%$e132889%_))
                                                      (_%recur132868%_
                                                       (cdr _%body132886%_)
                                                       (_%recur132868%_
                                                        (car _%body132886%_)
                                                        _%vars132871%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132889%_)
                      (eq? 'box _%$e132889%_))
                  (_%recur132868%_ _%body132886%_ _%vars132871%_)
                  _%vars132871%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e132872132879%_)
                                        (let ((_%hd132876132901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132872132879%_)))
                                              (_%tl132877132903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132872132879%_))))
                                          (let* ((_%tag132906%_
                                                  _%hd132876132901%_)
                                                 (_%body132908%_
                                                  _%tl132877132903%_))
                                            (_%K132875132898%_
                                             _%body132908%_
                                             _%tag132906%_)))
                                        (_%E132874132883%_))))))
                             (_%make-body132860%_
                              (lambda (_%vars132862%_)
                                (cons _%K132853%_
                                      (map (lambda (_%mvar132864%_)
                                             (let ((__tmp134062
                                                    (car _%mvar132864%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp134062
                                                _%vars132862%_
                                                _%BUG132856%_)))
                                           _%mvars132852%_)))))
                      (_%recur132857%_
                       _%hd132851%_
                       '()
                       _%target132850%_
                       _%E132854%_
                       _%make-body132860%_))))
                 (_%parse-clause132671%_
                  (lambda (_%hd132743%_ _%ids132744%_)
                    (let _%recur132746%_ ((_%e132748%_ _%hd132743%_)
                                          (_%vars132749%_ '())
                                          (_%depth132750%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e132748%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e132748%_))
                              (values '(any) _%vars132749%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e132748%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx132662%_
                                     _%hd132743%_))
                                  (if (let ((__tmp134063
                                             (lambda (_%id132755%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e132748%_
                                                  _%id132755%_)))))
                                        (declare (not safe))
                                        (__find __tmp134063 _%ids132744%_))
                                      (values (cons 'id _%e132748%_)
                                              _%vars132749%_)
                                      (if (let ((__tmp134064
                                                 (lambda (_%var132758%_)
                                                   (let ((__tmp134065
                                                          (car _%var132758%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e132748%_
                                                      __tmp134065)))))
                                            (declare (not safe))
                                            (__find __tmp134064
                                                    _%vars132749%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx132662%_
                                             _%e132748%_))
                                          (values (cons 'var _%e132748%_)
                                                  (cons (cons _%e132748%_
                                                              _%depth132750%_)
                                                        _%vars132749%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e132748%_))
                              (let* ((_%e132762132769%_ _%e132748%_)
                                     (_%E132764132773%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e132762132769%_))))
                                     (_%E132763132834%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e132762132769%_))
                                            (let ((_%e132765132777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e132762132769%_))))
                                              (let ((_%hd132766132780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e132765132777%_)))
                                                    (_%tl132767132782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e132765132777%_))))
                                                (let* ((_%hd132785%_
                                                        _%hd132766132780%_)
                                                       (_%rest132787%_
                                                        _%tl132767132782%_)
                                                       (_%make-pair132802%_
                                                        (lambda (_%tag132789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd132790%_
                         _%tl132791%_)
                  (let* ((_%hd-depth132793%_
                          (if (eq? _%tag132789%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth132750%_ '1))
                              _%depth132750%_))
                         (_g134066_
                          (_%recur132746%_
                           _%hd132790%_
                           _%vars132749%_
                           _%hd-depth132793%_)))
                    (begin
                      (let ((_g134067_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g134066_)
                                   (##values-length _g134066_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g134067_ 2)))
                            (error "Context expects 2 values" _g134067_)))
                      (let ((_%hd132795%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134066_ 0)))
                            (_%vars132796%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134066_ 1))))
                        (let ((_g134068_
                               (_%recur132746%_
                                _%tl132791%_
                                _%vars132796%_
                                _%depth132750%_)))
                          (begin
                            (let ((_g134069_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134068_)
                                         (##values-length _g134068_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134069_ 2)))
                                  (error "Context expects 2 values"
                                         _g134069_)))
                            (let ((_%tl132798%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134068_ 0)))
                                  (_%vars132799%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134068_ 1))))
                              (values (cons _%tag132789%_
                                            (cons _%hd132795%_ _%tl132798%_))
                                      _%vars132799%_)))))))))
               (_%e132803132810%_ _%rest132787%_)
               (_%E132805132814%_
                (lambda ()
                  (_%make-pair132802%_ 'cons _%hd132785%_ _%rest132787%_)))
               (_%E132804132830%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e132803132810%_))
                      (let ((_%e132806132818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132803132810%_))))
                        (let ((_%hd132807132821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132806132818%_)))
                              (_%tl132808132823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132806132818%_))))
                          (let* ((_%rest-hd132826%_ _%hd132807132821%_)
                                 (_%rest-tl132828%_ _%tl132808132823%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd132826%_))
                                (_%make-pair132802%_
                                 'splice
                                 _%hd132785%_
                                 _%rest-tl132828%_)
                                (_%make-pair132802%_
                                 'cons
                                 _%hd132785%_
                                 _%rest132787%_)))))
                      (_%E132805132814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132804132830%_))))
                                            (_%E132764132773%_)))))
                                (_%E132763132834%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e132748%_))
                                  (values '(null) _%vars132749%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e132748%_))
                                      (let ((_g134070_
                                             (_%recur132746%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e132748%_)))
                                              _%vars132749%_
                                              _%depth132750%_)))
                                        (begin
                                          (let ((_g134071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134070_)
                                                       (##values-length
                                                        _g134070_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134071_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134071_)))
                                          (let ((_%e132840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134070_ 0)))
                                                (_%vars132841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134070_
                                                    1))))
                                            (values (cons 'vector _%e132840%_)
                                                    _%vars132841%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e132748%_))
                                          (let ((_g134072_
                                                 (_%recur132746%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e132748%_)))
                                                  _%vars132749%_
                                                  _%depth132750%_)))
                                            (begin
                                              (let ((_g134073_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134072_)
                                                           (##values-length
                                                            _g134072_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134073_)))
                                              (let ((_%e132844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134072_
                                                        0)))
                                                    (_%vars132845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134072_
                                                        1))))
                                                (values (cons 'box _%e132844%_)
                                                        _%vars132845%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e132748%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e132748%_)))
                                                      _%vars132749%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx132662%_
                                                 _%e132748%_))))))))))))
          (let* ((_%e132672132685%_ _%stx132662%_)
                 (_%E132674132689%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e132672132685%_))))
                 (_%E132673132739%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132672132685%_))
                        (let ((_%e132675132693%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132672132685%_))))
                          (let ((_%hd132676132696%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132675132693%_)))
                                (_%tl132677132698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132675132693%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132677132698%_))
                                (let ((_%e132678132701%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132677132698%_))))
                                  (let ((_%hd132679132704%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132678132701%_)))
                                        (_%tl132680132706%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132678132701%_))))
                                    (let ((_%expr132709%_ _%hd132679132704%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl132680132706%_))
                                          (let ((_%e132681132711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl132680132706%_))))
                                            (let ((_%hd132682132714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e132681132711%_)))
                                                  (_%tl132683132716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e132681132711%_))))
                                              (let* ((_%ids132719%_
                                                      _%hd132682132714%_)
                                                     (_%clauses132721%_
                                                      _%tl132683132716%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids132719%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses132721%_))
                                                        (let* ((_%ids132726%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids132719%_)))
                       (_%clauses132728%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses132721%_)))
                       (_%clause-ids132730%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses132728%_)))
                       (_%E132732%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target132734%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first132736%_
                        (if (null? _%clauses132728%_)
                            _%E132732%_
                            (car _%clause-ids132730%_))))
                  (let ((__tmp134075
                         (let ((__tmp134076
                                (let ((__tmp134078
                                       (let ((__tmp134080
                                              (cons (cons (cons _%E132732%_
                                                                '())
                                                          (cons (let ((__tmp134082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target132734%_ '()))
                              (__tmp134081
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target132734%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp134082 __tmp134081))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp134079
                                              (_%generate-body132668%_
                                               (_%generate-bindings132667%_
                                                _%target132734%_
                                                _%ids132726%_
                                                _%clauses132728%_
                                                _%clause-ids132730%_
                                                _%E132732%_)
                                               (cons _%first132736%_
                                                     (cons _%expr132709%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp134080
                                          __tmp134079)))
                                      (__tmp134077
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx132662%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp134078
                                   __tmp134077))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp134076)))
                        (__tmp134074
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx132662%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp134075 __tmp134074)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx132662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx132662%_
                                                       _%ids132719%_))))))
                                          (_%E132674132689%_)))))
                                (_%E132674132689%_))))
                        (_%E132674132689%_)))))
            (_%E132673132739%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx133387%_)
        (let* ((_%identifier=?133389%_ 'free-identifier=?)
               (_%unwrap-e133391%_ 'syntax-e)
               (_%wrap-e133393%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133387%_
           _%identifier=?133389%_
           _%unwrap-e133391%_
           _%wrap-e133393%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx133395%_ _%identifier=?133396%_)
        (let* ((_%unwrap-e133398%_ 'syntax-e) (_%wrap-e133400%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133395%_
           _%identifier=?133396%_
           _%unwrap-e133398%_
           _%wrap-e133400%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx133402%_ _%identifier=?133403%_ _%unwrap-e133404%_)
        (let ((_%wrap-e133406%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133402%_
           _%identifier=?133403%_
           _%unwrap-e133404%_
           _%wrap-e133406%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g134084_
        (let ((_g134083_ (let () (declare (not safe)) (##length _g134084_))))
          (cond ((let () (declare (not safe)) (##fx= _g134083_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g134084_))
                ((let () (declare (not safe)) (##fx= _g134083_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g134084_))
                ((let () (declare (not safe)) (##fx= _g134083_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g134084_))
                ((let () (declare (not safe)) (##fx= _g134083_ 4))
                 (apply gx#macro-expand-syntax-case__% _g134084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g134084_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx132659%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx132659%_))
            (let ((__tmp134085
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx132659%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp134085 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd132617%_ . _%rest132618%_)
        (let ((_%len132620%_ (length _%hd132617%_)))
          (let _%lp132622%_ ((_%rest132624%_ _%rest132618%_))
            (let* ((_%rest132625132633%_ _%rest132624%_)
                   (_%else132627132641%_ (lambda () '#!void))
                   (_%K132629132647%_
                    (lambda (_%rest132644%_ _%hd132645%_)
                      (if (let ((__tmp134086 (length _%hd132645%_)))
                            (declare (not safe))
                            (##fx= _%len132620%_ __tmp134086))
                          (_%lp132622%_ _%rest132644%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd132645%_))))))
              (if (pair? _%rest132625132633%_)
                  (let ((_%hd132630132650%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest132625132633%_)))
                        (_%tl132631132652%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest132625132633%_))))
                    (let* ((_%hd132655%_ _%hd132630132650%_)
                           (_%rest132657%_ _%tl132631132652%_))
                      (_%K132629132647%_ _%rest132657%_ _%hd132655%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx132572%_ _%n132573%_)
        (let _%lp132575%_ ((_%rest132577%_ _%stx132572%_) (_%r132578%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132577%_))
              (let* ((_%g132579132586%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132577%_)))
                     (_%E132581132590%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132579132586%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132582132596%_
                      (lambda (_%rest132593%_ _%hd132594%_)
                        (_%lp132575%_
                         _%rest132593%_
                         (cons _%hd132594%_ _%r132578%_)))))
                (if (pair? _%g132579132586%_)
                    (let ((_%hd132583132599%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132579132586%_)))
                          (_%tl132584132601%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132579132586%_))))
                      (let* ((_%hd132604%_ _%hd132583132599%_)
                             (_%rest132606%_ _%tl132584132601%_))
                        (_%K132582132596%_ _%rest132606%_ _%hd132604%_)))
                    (_%E132581132590%_)))
              (let _%lp132608%_ ((_%n132610%_ _%n132573%_)
                                 (_%l132611%_ _%r132578%_)
                                 (_%r132612%_ _%rest132577%_))
                (if (null? _%l132611%_)
                    (values _%l132611%_ _%r132612%_)
                    (if (fxpositive? _%n132610%_)
                        (_%lp132608%_
                         (let () (declare (not safe)) (##fx- _%n132610%_ '1))
                         (cdr _%l132611%_)
                         (cons (car _%l132611%_) _%r132612%_))
                        (values (reverse _%l132611%_) _%r132612%_))))))))))
