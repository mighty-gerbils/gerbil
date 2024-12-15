(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1734278445)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp133963 (list gx#expander::t))
            (__tmp133962 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp133963
         '(id depth)
         __tmp133962
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args133959%_
        (apply make-instance gx#syntax-pattern::t _%$args133959%_)))
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
      (lambda (_%self132566133943%_ _%stx133945%_)
        (let* ((_%self133947%_ _%self132566133943%_)
               (_%self133949%_ _%self133947%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx133945%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx133409%_)
        (letrec ((_%generate133411%_
                  (lambda (_%e133651%_)
                    (letrec ((_%BUG133653%_
                              (lambda (_%q133818%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx133409%_
                                         _%e133651%_
                                         _%q133818%_))))
                             (_%local-pattern-e133654%_
                              (lambda (_%pat133816%_)
                                (let ((__tmp133964
                                       (##structure-ref
                                        _%pat133816%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp133964))))
                             (_%getvar133655%_
                              (lambda (_%q133813%_ _%vars133814%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q133813%_
                                   _%vars133814%_
                                   _%BUG133653%_))))
                             (_%getarg133656%_
                              (lambda (_%arg133779%_ _%vars133780%_)
                                (let* ((_%arg133781133788%_ _%arg133779%_)
                                       (_%E133783133792%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg133781133788%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K133784133801%_
                                        (lambda (_%e133795%_ _%tag133796%_)
                                          (let ((_%$e133798%_ _%tag133796%_))
                                            (if (eq? 'ref _%$e133798%_)
                                                (_%getvar133655%_
                                                 _%e133795%_
                                                 _%vars133780%_)
                                                (if (eq? 'pattern _%$e133798%_)
                                                    (_%local-pattern-e133654%_
                                                     _%e133795%_)
                                                    (_%BUG133653%_
                                                     _%arg133779%_)))))))
                                  (if (pair? _%arg133781133788%_)
                                      (let ((_%hd133785133804%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg133781133788%_)))
                                            (_%tl133786133806%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg133781133788%_))))
                                        (let* ((_%tag133809%_
                                                _%hd133785133804%_)
                                               (_%e133811%_
                                                _%tl133786133806%_))
                                          (_%K133784133801%_
                                           _%e133811%_
                                           _%tag133809%_)))
                                      (_%E133783133792%_))))))
                      (let _%recur133658%_ ((_%e133660%_ _%e133651%_)
                                            (_%vars133661%_ '()))
                        (let* ((_%e133662133669%_ _%e133660%_)
                               (_%E133664133673%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e133662133669%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K133665133767%_
                                (lambda (_%body133676%_ _%tag133677%_)
                                  (let ((_%$e133679%_ _%tag133677%_))
                                    (if (eq? 'datum _%$e133679%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body133676%_))
                                        (if (eq? 'term _%$e133679%_)
                                            (let ((_%id133682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body133676%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id133682%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks133685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id133682%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks133685%_)
                                                        (let ((__tmp133965
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body133676%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp133965))
                (let ((__tmp133967
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body133676%_)))
                      (__tmp133966
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body133676%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp133967
                   __tmp133966
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id133682%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body133676%_))
                                                      (_%BUG133653%_
                                                       _%e133660%_))))
                                            (if (eq? 'pattern _%$e133679%_)
                                                (_%local-pattern-e133654%_
                                                 _%body133676%_)
                                                (if (eq? 'ref _%$e133679%_)
                                                    (_%getvar133655%_
                                                     _%body133676%_
                                                     _%vars133661%_)
                                                    (if (eq? 'cons
                                                             _%$e133679%_)
                                                        (let ((__tmp133969
                                                               (_%recur133658%_
                                                                (car _%body133676%_)
                                                                _%vars133661%_))
                                                              (__tmp133968
                                                               (_%recur133658%_
                                                                (cdr _%body133676%_)
                                                                _%vars133661%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp133969
                                                           __tmp133968))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e133679%_)
                    (let ((__tmp133970
                           (_%recur133658%_ _%body133676%_ _%vars133661%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp133970))
                    (if (eq? 'box _%$e133679%_)
                        (let ((__tmp133971
                               (_%recur133658%_
                                _%body133676%_
                                _%vars133661%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp133971))
                        (if (eq? 'splice _%$e133679%_)
                            (let* ((_%body133688133699%_ _%body133676%_)
                                   (_%E133690133703%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body133688133699%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K133691133741%_
                                    (lambda (_%args133706%_
                                             _%iv133707%_
                                             _%hd133708%_
                                             _%depth133709%_)
                                      (let* ((_%targets133715%_
                                              (map (lambda (_%g133710133712%_)
                                                     (_%getarg133656%_
                                                      _%g133710133712%_
                                                      _%vars133661%_))
                                                   _%args133706%_))
                                             (_%fold-in133717%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args133706%_)))
                                             (_%fold-out133719%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args133721%_
                                              (let ((__tmp133972
                                                     (cons _%fold-out133719%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp133972
                                                 _%fold-in133717%_)))
                                             (_%lambda-body133738%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth133709%_ '1))
                                                  (let ((_%r-args133729%_
                                                         (map (lambda (_%arg133723%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg133723%_)))
                      _%args133706%_))
                (_%r-vars133730%_
                 (let ((__tmp133973
                        (lambda (_%arg133725%_ _%var133726%_ _%r133727%_)
                          (cons (cons (cdr _%arg133725%_) _%var133726%_)
                                _%r133727%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp133973
                    _%vars133661%_
                    _%args133706%_
                    _%fold-in133717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur133658%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth133709%_ '1))
                         (cons _%hd133708%_
                               (cons (cons 'var _%fold-out133719%_)
                                     _%r-args133729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars133730%_))
                                                  (let* ((_%hd-vars133736%_
                                                          (let ((__tmp133974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg133732%_ _%var133733%_ _%r133734%_)
                           (cons (cons (cdr _%arg133732%_) _%var133733%_)
                                 _%r133734%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp133974
                     _%vars133661%_
                     _%args133706%_
                     _%fold-in133717%_)))
                 (__tmp133975
                  (_%recur133658%_ _%hd133708%_ _%hd-vars133736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp133975
                                                     _%fold-out133719%_)))))
                                        (let ((__tmp133979
                                               (if (let ((__tmp133980
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets133715%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp133980 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets133715%_))
                                                   '#!void))
                                              (__tmp133976
                                               (let ((__tmp133978
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args133721%_
                                                         _%lambda-body133738%_)))
                                                     (__tmp133977
                                                      (_%recur133658%_
                                                       _%iv133707%_
                                                       _%vars133661%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp133978
                                                  __tmp133977
                                                  _%targets133715%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp133979
                                           __tmp133976))))))
                              (if (pair? _%body133688133699%_)
                                  (let ((_%hd133692133744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body133688133699%_)))
                                        (_%tl133693133746%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body133688133699%_))))
                                    (let ((_%depth133749%_ _%hd133692133744%_))
                                      (if (pair? _%tl133693133746%_)
                                          (let ((_%hd133694133751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl133693133746%_)))
                                                (_%tl133695133753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl133693133746%_))))
                                            (let ((_%hd133756%_
                                                   _%hd133694133751%_))
                                              (if (pair? _%tl133695133753%_)
                                                  (let ((_%hd133696133758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl133695133753%_)))
                                                        (_%tl133697133760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl133695133753%_))))
                                                    (let* ((_%iv133763%_
                                                            _%hd133696133758%_)
                                                           (_%args133765%_
                                                            _%tl133697133760%_))
                                                      (_%K133691133741%_
                                                       _%args133765%_
                                                       _%iv133763%_
                                                       _%hd133756%_
                                                       _%depth133749%_)))
                                                  (_%E133690133703%_))))
                                          (_%E133690133703%_))))
                                  (_%E133690133703%_)))
                            (if (eq? 'var _%$e133679%_)
                                _%body133676%_
                                (_%BUG133653%_ _%e133660%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e133662133669%_)
                              (let ((_%hd133666133770%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e133662133669%_)))
                                    (_%tl133667133772%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e133662133669%_))))
                                (let* ((_%tag133775%_ _%hd133666133770%_)
                                       (_%body133777%_ _%tl133667133772%_))
                                  (_%K133665133767%_
                                   _%body133777%_
                                   _%tag133775%_)))
                              (_%E133664133673%_)))))))
                 (_%parse133412%_
                  (lambda (_%e133453%_)
                    (letrec ((_%make-cons133455%_
                              (lambda (_%hd133643%_ _%tl133644%_)
                                (let ((_g133981_ _%hd133643%_)
                                      (_g133983_ _%tl133644%_))
                                  (begin
                                    (let ((_g133982_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133981_)
                                                 (##values-length _g133981_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133982_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133982_)))
                                    (let ((_g133984_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133983_)
                                                 (##values-length _g133983_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133984_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133984_)))
                                    (let ((_%hd-e133646%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133981_ 0)))
                                          (_%hd-vars133647%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133981_ 1))))
                                      (let ((_%tl-e133648%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133983_ 0)))
                                            (_%tl-vars133649%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133983_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e133646%_
                                                            _%tl-e133648%_))
                                                (append _%hd-vars133647%_
                                                        _%tl-vars133649%_))))))))
                             (_%make-splice133456%_
                              (lambda (_%where133579%_
                                       _%depth133580%_
                                       _%hd133581%_
                                       _%tl133582%_)
                                (let ((_g133985_ _%hd133581%_)
                                      (_g133987_ _%tl133582%_))
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
                                    (let ((_%hd-e133584%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133985_ 0)))
                                          (_%hd-vars133585%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133985_ 1))))
                                      (let ((_%tl-e133586%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133987_ 0)))
                                            (_%tl-vars133587%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133987_ 1))))
                                        (let _%lp133589%_ ((_%rest133591%_
                                                            _%hd-vars133585%_)
                                                           (_%targets133592%_
                                                            '())
                                                           (_%vars133593%_
                                                            _%tl-vars133587%_))
                                          (let* ((_%rest133594133604%_
                                                  _%rest133591%_)
                                                 (_%else133596133612%_
                                                  (lambda ()
                                                    (if (null? _%targets133592%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx133409%_
                                                           _%where133579%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth133580%_
                                    (cons _%hd-e133584%_
                                          (cons _%tl-e133586%_
                                                _%targets133592%_))))
                        _%vars133593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K133598133624%_
                                                  (lambda (_%rest133615%_
                                                           _%hd-pat133616%_
                                                           _%hd-depth*133617%_)
                                                    (let ((_%hd-depth133619%_
                                                           (fx- _%hd-depth*133617%_
                                                                _%depth133580%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth133619%_))
                                                          (_%lp133589%_
                                                           _%rest133615%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat133616%_)
                         _%targets133592%_)
                   (cons (cons _%hd-depth133619%_ _%hd-pat133616%_)
                         _%vars133593%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth133619%_))
                      (_%lp133589%_
                       _%rest133615%_
                       (cons (cons 'pattern _%hd-pat133616%_)
                             _%targets133592%_)
                       _%vars133593%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx133409%_
                         _%where133579%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest133594133604%_)
                                                (let ((_%hd133599133627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest133594133604%_)))
                                                      (_%tl133600133629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest133594133604%_))))
                                                  (if (pair? _%hd133599133627%_)
                                                      (let ((_%hd133601133632%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd133599133627%_)))
                    (_%tl133602133634%_
                     (let () (declare (not safe)) (##cdr _%hd133599133627%_))))
                (let* ((_%hd-depth*133637%_ _%hd133601133632%_)
                       (_%hd-pat133639%_ _%tl133602133634%_)
                       (_%rest133641%_ _%tl133600133629%_))
                  (_%K133598133624%_
                   _%rest133641%_
                   _%hd-pat133639%_
                   _%hd-depth*133637%_)))
              (_%else133596133612%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else133596133612%_))))))))))
                             (_%recur133457%_
                              (lambda (_%e133462%_ _%is-e?133463%_)
                                (if (_%is-e?133463%_ _%e133462%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx133409%_))
                                    (if (gx#syntax-local-pattern? _%e133462%_)
                                        (let* ((_%pat133467%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e133462%_)))
                                               (_%depth133469%_
                                                (##structure-ref
                                                 _%pat133467%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth133469%_)
                                              (values (cons 'ref _%pat133467%_)
                                                      (cons (cons _%depth133469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat133467%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat133467%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e133462%_))
                                            (values (cons 'term _%e133462%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e133462%_))
                                                (let* ((_%e133473133480%_
                                                        _%e133462%_)
                                                       (_%E133475133484%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e133473133480%_))))
                                                       (_%E133474133566%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e133473133480%_))
                      (let ((_%e133476133488%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e133473133480%_))))
                        (let ((_%hd133477133491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133476133488%_)))
                              (_%tl133478133493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133476133488%_))))
                          (let* ((_%hd133496%_ _%hd133477133491%_)
                                 (_%rest133498%_ _%tl133478133493%_))
                            (if (_%is-e?133463%_ _%hd133496%_)
                                (let* ((_%e133499133506%_ _%rest133498%_)
                                       (_%E133501133510%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx133409%_
                                             _%e133462%_))))
                                       (_%E133500133524%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e133499133506%_))
                                              (let ((_%e133502133514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e133499133506%_))))
                                                (let ((_%hd133503133517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133502133514%_)))
                                                      (_%tl133504133519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133502133514%_))))
                                                  (let ((_%rest133522%_
                                                         _%hd133503133517%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133504133519%_))
                                                        (_%recur133457%_
                                                         _%rest133522%_
                                                         false)
                                                        (_%E133501133510%_)))))
                                              (_%E133501133510%_)))))
                                  (_%E133500133524%_))
                                (let _%lp133528%_ ((_%rest133530%_
                                                    _%rest133498%_)
                                                   (_%depth133531%_ '0))
                                  (let* ((_%e133532133539%_ _%rest133530%_)
                                         (_%E133534133543%_
                                          (lambda ()
                                            (if (fxpositive? _%depth133531%_)
                                                (_%make-splice133456%_
                                                 _%e133462%_
                                                 _%depth133531%_
                                                 (_%recur133457%_
                                                  _%hd133496%_
                                                  _%is-e?133463%_)
                                                 (_%recur133457%_
                                                  _%rest133530%_
                                                  _%is-e?133463%_))
                                                (_%make-cons133455%_
                                                 (_%recur133457%_
                                                  _%hd133496%_
                                                  _%is-e?133463%_)
                                                 (_%recur133457%_
                                                  _%rest133530%_
                                                  _%is-e?133463%_)))))
                                         (_%E133533133562%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e133532133539%_))
                                                (let ((_%e133535133547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e133532133539%_))))
                                                  (let ((_%hd133536133550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e133535133547%_)))
                                                        (_%tl133537133552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e133535133547%_))))
                                                    (let* ((_%rest-hd133555%_
                                                            _%hd133536133550%_)
                                                           (_%rest-tl133557%_
                                                            _%tl133537133552%_))
                                                      (if (_%is-e?133463%_
                                                           _%rest-hd133555%_)
                                                          (_%lp133528%_
                                                           _%rest-tl133557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth133531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth133531%_)
                      (_%make-splice133456%_
                       _%e133462%_
                       _%depth133531%_
                       (_%recur133457%_ _%hd133496%_ _%is-e?133463%_)
                       (_%recur133457%_ _%rest133530%_ _%is-e?133463%_))
                      (_%make-cons133455%_
                       (_%recur133457%_ _%hd133496%_ _%is-e?133463%_)
                       (_%recur133457%_ _%rest133530%_ _%is-e?133463%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E133534133543%_)))))
                                    (_%E133533133562%_)))))))
                      (_%E133475133484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133474133566%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e133462%_))
                                                    (let ((_g133989_
                                                           (_%recur133457%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e133462%_)))
                    _%is-e?133463%_)))
              (begin
                (let ((_g133990_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g133989_)
                             (##values-length _g133989_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133990_ 2)))
                      (error "Context expects 2 values" _g133990_)))
                (let ((_%e133571%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133989_ 0)))
                      (_%vars133572%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133989_ 1))))
                  (values (cons 'vector _%e133571%_) _%vars133572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e133462%_))
                                                        (let ((_g133991_
                                                               (_%recur133457%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e133462%_)))
                        _%is-e?133463%_)))
                  (begin
                    (let ((_g133992_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g133991_)
                                 (##values-length _g133991_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g133992_ 2)))
                          (error "Context expects 2 values" _g133992_)))
                    (let ((_%e133575%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133991_ 0)))
                          (_%vars133576%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133991_ 1))))
                      (values (cons 'box _%e133575%_) _%vars133576%_))))
                (values (cons 'datum _%e133462%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g133993_
                             (_%recur133457%_ _%e133453%_ gx#ellipsis?)))
                        (begin
                          (let ((_g133994_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g133993_)
                                       (##values-length _g133993_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g133994_ 2)))
                                (error "Context expects 2 values" _g133994_)))
                          (let ((_%tree133459%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133993_ 0)))
                                (_%vars133460%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133993_ 1))))
                            (if (null? _%vars133460%_)
                                _%tree133459%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx133409%_
                                   _%vars133460%_))))))))))
          (let* ((_%e133413133423%_ _%stx133409%_)
                 (_%E133415133427%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx133409%_))))
                 (_%E133414133449%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e133413133423%_))
                        (let ((_%e133416133431%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e133413133423%_))))
                          (let ((_%hd133417133434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133416133431%_)))
                                (_%tl133418133436%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133416133431%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133418133436%_))
                                (let ((_%e133419133439%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl133418133436%_))))
                                  (let ((_%hd133420133442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133419133439%_)))
                                        (_%tl133421133444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133419133439%_))))
                                    (let ((_%form133447%_ _%hd133420133442%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl133421133444%_))
                                          (let ((__tmp133996
                                                 (_%generate133411%_
                                                  (_%parse133412%_
                                                   _%form133447%_)))
                                                (__tmp133995
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx133409%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp133996
                                             __tmp133995))
                                          (_%E133415133427%_)))))
                                (_%E133415133427%_))))
                        (_%E133415133427%_)))))
            (_%E133414133449%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx132658%_
               _%identifier=?132659%_
               _%unwrap-e132660%_
               _%wrap-e132661%_)
        (letrec ((_%generate-bindings132663%_
                  (lambda (_%target133273%_
                           _%ids133274%_
                           _%clauses133275%_
                           _%clause-ids133276%_
                           _%E133277%_)
                    (letrec ((_%generate1133279%_
                              (lambda (_%clause133376%_
                                       _%clause-id133377%_
                                       _%E133378%_)
                                (cons (cons _%clause-id133377%_ '())
                                      (cons (let ((__tmp133998
                                                   (cons _%target133273%_ '()))
                                                  (__tmp133997
                                                   (_%generate-clause132665%_
                                                    _%target133273%_
                                                    _%ids133274%_
                                                    _%clause133376%_
                                                    _%E133378%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp133998
                                               __tmp133997))
                                            '())))))
                      (let _%lp133281%_ ((_%rest133283%_ _%clauses133275%_)
                                         (_%rest-ids133284%_
                                          _%clause-ids133276%_)
                                         (_%bindings133285%_ '()))
                        (let* ((_%rest133286133294%_ _%rest133283%_)
                               (_%else133288133302%_
                                (lambda () _%bindings133285%_))
                               (_%K133290133364%_
                                (lambda (_%rest133305%_ _%clause133306%_)
                                  (let* ((_%rest-ids133307133314%_
                                          _%rest-ids133284%_)
                                         (_%E133309133318%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids133307133314%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K133310133352%_
                                          (lambda (_%rest-ids133321%_
                                                   _%clause-id133322%_)
                                            (let* ((_%rest-ids133323133331%_
                                                    _%rest-ids133321%_)
                                                   (_%else133325133339%_
                                                    (lambda ()
                                                      (cons (_%generate1133279%_
                                                             _%clause133306%_
                                                             _%clause-id133322%_
                                                             _%E133277%_)
                                                            _%bindings133285%_)))
                                                   (_%K133327133344%_
                                                    (lambda (_%next-clause-id133342%_)
                                                      (_%lp133281%_
                                                       _%rest133305%_
                                                       _%rest-ids133321%_
                                                       (cons (_%generate1133279%_
                                                              _%clause133306%_
                                                              _%clause-id133322%_
                                                              _%next-clause-id133342%_)
                                                             _%bindings133285%_)))))
                                              (if (pair? _%rest-ids133323133331%_)
                                                  (let* ((_%hd133328133347%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids133323133331%_)))
                                                         (_%next-clause-id133350%_
                                                          _%hd133328133347%_))
                                                    (_%K133327133344%_
                                                     _%next-clause-id133350%_))
                                                  (_%else133325133339%_))))))
                                    (if (pair? _%rest-ids133307133314%_)
                                        (let ((_%hd133311133355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids133307133314%_)))
                                              (_%tl133312133357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids133307133314%_))))
                                          (let* ((_%clause-id133360%_
                                                  _%hd133311133355%_)
                                                 (_%rest-ids133362%_
                                                  _%tl133312133357%_))
                                            (_%K133310133352%_
                                             _%rest-ids133362%_
                                             _%clause-id133360%_)))
                                        (_%E133309133318%_))))))
                          (if (pair? _%rest133286133294%_)
                              (let ((_%hd133291133367%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest133286133294%_)))
                                    (_%tl133292133369%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest133286133294%_))))
                                (let* ((_%clause133372%_ _%hd133291133367%_)
                                       (_%rest133374%_ _%tl133292133369%_))
                                  (_%K133290133364%_
                                   _%rest133374%_
                                   _%clause133372%_)))
                              (_%else133288133302%_)))))))
                 (_%generate-body132664%_
                  (lambda (_%bindings133233%_ _%body133234%_)
                    (let _%recur133236%_ ((_%rest133238%_ _%bindings133233%_))
                      (let* ((_%rest133239133247%_ _%rest133238%_)
                             (_%else133241133255%_ (lambda () _%body133234%_))
                             (_%K133243133261%_
                              (lambda (_%rest133258%_ _%hd133259%_)
                                (let ((__tmp134000 (cons _%hd133259%_ '()))
                                      (__tmp133999
                                       (_%recur133236%_ _%rest133258%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp134000
                                   __tmp133999)))))
                        (if (pair? _%rest133239133247%_)
                            (let ((_%hd133244133264%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest133239133247%_)))
                                  (_%tl133245133266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest133239133247%_))))
                              (let* ((_%hd133269%_ _%hd133244133264%_)
                                     (_%rest133271%_ _%tl133245133266%_))
                                (_%K133243133261%_
                                 _%rest133271%_
                                 _%hd133269%_)))
                            (_%else133241133255%_))))))
                 (_%generate-clause132665%_
                  (lambda (_%target133096%_
                           _%ids133097%_
                           _%clause133098%_
                           _%E133099%_)
                    (letrec ((_%generate1133101%_
                              (lambda (_%hd133188%_
                                       _%fender133189%_
                                       _%body133190%_)
                                (let ((_g134001_
                                       (_%parse-clause132667%_
                                        _%hd133188%_
                                        _%ids133097%_)))
                                  (begin
                                    (let ((_g134002_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134001_)
                                                 (##values-length _g134001_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134002_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134002_)))
                                    (let ((_%e133192%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134001_ 0)))
                                          (_%mvars133193%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134001_ 1))))
                                      (let* ((_%pvars133195%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars133193%_))))
                                             (_%E133197%_
                                              (cons _%E133099%_
                                                    (cons _%target133096%_
                                                          '())))
                                             (_%K133230%_
                                              (let ((__tmp134003
                                                     (let ((__tmp134005
                                                            (map (lambda (_%mvar133199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar133200%_)
                           (let* ((_%mvar133201133208%_ _%mvar133199%_)
                                  (_%E133203133212%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar133201133208%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K133204133218%_
                                   (lambda (_%depth133215%_ _%id133216%_)
                                     (cons _%id133216%_
                                           (cons (let ((__tmp134007
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id133216%_)))
                                                       (__tmp134006
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar133200%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp134007
                                                    __tmp134006
                                                    _%depth133215%_))
                                                 '())))))
                             (if (pair? _%mvar133201133208%_)
                                 (let ((_%hd133205133221%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar133201133208%_)))
                                       (_%tl133206133223%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar133201133208%_))))
                                   (let* ((_%id133226%_ _%hd133205133221%_)
                                          (_%depth133228%_ _%tl133206133223%_))
                                     (_%K133204133218%_
                                      _%depth133228%_
                                      _%id133226%_)))
                                 (_%E133203133212%_))))
                         _%mvars133193%_
                         _%pvars133195%_))
                   (__tmp134004
                    (if (eq? _%fender133189%_ '#t)
                        _%body133190%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender133189%_
                           _%body133190%_
                           _%E133197%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp134005 __tmp134004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars133195%_
                                                 __tmp134003))))
                                        (_%generate-match132666%_
                                         _%hd133188%_
                                         _%target133096%_
                                         _%e133192%_
                                         _%mvars133193%_
                                         _%K133230%_
                                         _%E133197%_))))))))
                      (let* ((_%e133102133122%_ _%clause133098%_)
                             (_%E133111133126%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e133102133122%_))))
                             (_%E133104133160%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133102133122%_))
                                    (let ((_%e133112133130%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133102133122%_))))
                                      (let ((_%hd133113133133%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133112133130%_)))
                                            (_%tl133114133135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133112133130%_))))
                                        (let ((_%hd133138%_
                                               _%hd133113133133%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133114133135%_))
                                              (let ((_%e133115133140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133114133135%_))))
                                                (let ((_%hd133116133143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133115133140%_)))
                                                      (_%tl133117133145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133115133140%_))))
                                                  (let ((_%fender133148%_
                                                         _%hd133116133143%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl133117133145%_))
                                                        (let ((_%e133118133150%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl133117133145%_))))
                  (let ((_%hd133119133153%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133118133150%_)))
                        (_%tl133120133155%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133118133150%_))))
                    (let ((_%body133158%_ _%hd133119133153%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl133120133155%_))
                          (_%generate1133101%_
                           _%hd133138%_
                           _%fender133148%_
                           _%body133158%_)
                          (_%E133111133126%_)))))
                (_%E133111133126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133111133126%_)))))
                                    (_%E133111133126%_))))
                             (_%E133103133184%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133102133122%_))
                                    (let ((_%e133105133164%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133102133122%_))))
                                      (let ((_%hd133106133167%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133105133164%_)))
                                            (_%tl133107133169%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133105133164%_))))
                                        (let ((_%hd133172%_
                                               _%hd133106133167%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133107133169%_))
                                              (let ((_%e133108133174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133107133169%_))))
                                                (let ((_%hd133109133177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133108133174%_)))
                                                      (_%tl133110133179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133108133174%_))))
                                                  (let ((_%body133182%_
                                                         _%hd133109133177%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133110133179%_))
                                                        (_%generate1133101%_
                                                         _%hd133172%_
                                                         '#t
                                                         _%body133182%_)
                                                        (_%E133104133160%_)))))
                                              (_%E133104133160%_)))))
                                    (_%E133104133160%_)))))
                        (_%E133103133184%_)))))
                 (_%generate-match132666%_
                  (lambda (_%where132845%_
                           _%target132846%_
                           _%hd132847%_
                           _%mvars132848%_
                           _%K132849%_
                           _%E132850%_)
                    (letrec ((_%BUG132852%_
                              (lambda (_%q133094%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx132658%_
                                         _%hd132847%_
                                         _%q133094%_))))
                             (_%recur132853%_
                              (lambda (_%e132944%_
                                       _%vars132945%_
                                       _%target132946%_
                                       _%E132947%_
                                       _%k132948%_)
                                (let* ((_%e132949132956%_ _%e132944%_)
                                       (_%E132951132960%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e132949132956%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K132952133082%_
                                        (lambda (_%body132963%_ _%tag132964%_)
                                          (let ((_%$e132966%_ _%tag132964%_))
                                            (if (eq? 'any _%$e132966%_)
                                                (_%k132948%_ _%vars132945%_)
                                                (if (eq? 'id _%$e132966%_)
                                                    (let ((__tmp134012
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target132946%_)))
                                                          (__tmp134008
                                                           (let ((__tmp134010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134011
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e132661%_
                                    _%body132963%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?132659%_
                             __tmp134011
                             _%target132946%_)))
                         (__tmp134009 (_%k132948%_ _%vars132945%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp134010 __tmp134009 _%E132947%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp134012 __tmp134008 _%E132947%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e132966%_)
                                                        (_%k132948%_
                                                         (cons (cons _%body132963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target132946%_)
                       _%vars132945%_))
                (if (eq? 'cons _%$e132966%_)
                    (let ((_%$e132969%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd132970%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl132971%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp134018
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target132946%_)))
                            (__tmp134013
                             (let ((__tmp134017
                                    (cons (cons (cons _%$e132969%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e132660%_
                                                         _%target132946%_))
                                                      '()))
                                          '()))
                                   (__tmp134014
                                    (let ((__tmp134016
                                           (cons (cons (cons _%$hd132970%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e132969%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl132971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e132969%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp134015
                                           (let* ((_%body132972132979%_
                                                   _%body132963%_)
                                                  (_%E132974132983%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body132972132979%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K132975132991%_
                                                   (lambda (_%tl132986%_
                                                            _%hd132987%_)
                                                     (_%recur132853%_
                                                      _%hd132987%_
                                                      _%vars132945%_
                                                      _%$hd132970%_
                                                      _%E132947%_
                                                      (lambda (_%vars132989%_)
                                                        (_%recur132853%_
                                                         _%tl132986%_
                                                         _%vars132989%_
                                                         _%$tl132971%_
                                                         _%E132947%_
                                                         _%k132948%_))))))
                                             (if (pair? _%body132972132979%_)
                                                 (let ((_%hd132976132994%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body132972132979%_)))
                                                       (_%tl132977132996%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body132972132979%_))))
                                                   (let* ((_%hd132999%_
                                                           _%hd132976132994%_)
                                                          (_%tl133001%_
                                                           _%tl132977132996%_))
                                                     (_%K132975132991%_
                                                      _%tl133001%_
                                                      _%hd132999%_)))
                                                 (_%E132974132983%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp134016
                                       __tmp134015))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp134017
                                __tmp134014))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp134018
                         __tmp134013
                         _%E132947%_)))
                    (if (eq? 'splice _%$e132966%_)
                        (let* ((_%body133002133009%_ _%body132963%_)
                               (_%E133004133013%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body133002133009%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K133005133064%_
                                (lambda (_%tl133016%_ _%hd133017%_)
                                  (let* ((_%rlen133019%_
                                          (_%splice-rlen132854%_ _%tl133016%_))
                                         (_%$target133021%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd133023%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl133025%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp133027%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e133029%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd133031%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl133033%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars133035%_
                                          (_%splice-vars132855%_ _%hd133017%_))
                                         (_%lvars133037%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133035%_)))
                                         (_%tlvars133039%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133035%_)))
                                         (_%linit133043%_
                                          (map (lambda (_%var133041%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars133037%_)))
                                    (letrec ((_%make-loop133046%_
                                              (lambda (_%vars133050%_)
                                                (let ((__tmp134020
                                                       (cons (cons (cons _%$lp133027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp134033
                                        (cons _%$hd133023%_ _%lvars133037%_))
                                       (__tmp134021
                                        (let ((__tmp134032
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd133023%_)))
                                              (__tmp134026
                                               (let ((__tmp134031
                                                      (cons (cons (cons _%$lp-e133029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e132660%_
                                   _%$hd133023%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134027
                                                      (let ((__tmp134030
                                                             (cons (cons (cons _%$lp-hd133031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e133029%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl133033%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e133029%_))
                                             '()))
                                 '())))
                    (__tmp134028
                     (_%recur132853%_
                      _%hd133017%_
                      '()
                      _%$lp-hd133031%_
                      _%E132947%_
                      (lambda (_%hdvars133052%_)
                        (cons _%$lp133027%_
                              (cons _%$lp-tl133033%_
                                    (map (lambda (_%svar133054%_
                                                  _%lvar133055%_)
                                           (let ((__tmp134029
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar133054%_
                                                     _%hdvars133052%_
                                                     _%BUG132852%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp134029
                                              _%lvar133055%_)))
                                         _%svars133035%_
                                         _%lvars133037%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp134030 __tmp134028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134031
                                                  __tmp134027)))
                                              (__tmp134022
                                               (let ((__tmp134025
                                                      (map (lambda (_%lvar133057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar133058%_)
                     (cons (cons _%tlvar133058%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar133057%_))
                                 '())))
                   _%lvars133037%_
                   _%tlvars133039%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134023
                                                      (_%k132948%_
                                                       (let ((__tmp134024
                                                              (lambda (_%svar133060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar133061%_
                               _%r133062%_)
                        (cons (cons _%svar133060%_ _%tlvar133061%_)
                              _%r133062%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp134024
                  _%vars133050%_
                  _%svars133035%_
                  _%tlvars133039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134025
                                                  __tmp134023))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134032
                                           __tmp134026
                                           __tmp134022))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp134033
                                    __tmp134021))
                                 '()))
                     '()))
              (__tmp134019
               (cons _%$lp133027%_ (cons _%$target133021%_ _%linit133043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp134020
                                                   __tmp134019)))))
                                      (let ((_%body133048%_
                                             (let ((__tmp134035
                                                    (cons (cons (cons _%$target133021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl133025%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target132946%_
                                 _%rlen133019%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134034
                                                    (_%recur132853%_
                                                     _%tl133016%_
                                                     _%vars132945%_
                                                     _%$tl133025%_
                                                     _%E132947%_
                                                     _%make-loop133046%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134035
                                                __tmp134034))))
                                        (let ((__tmp134039
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target132946%_)))
                                              (__tmp134036
                                               (if (zero? _%rlen133019%_)
                                                   _%body133048%_
                                                   (let ((__tmp134037
                                                          (let ((__tmp134038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target132946%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp134038 _%rlen133019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp134037
                                                      _%body133048%_
                                                      _%E132947%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134039
                                           __tmp134036
                                           _%E132947%_))))))))
                          (if (pair? _%body133002133009%_)
                              (let ((_%hd133006133067%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body133002133009%_)))
                                    (_%tl133007133069%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body133002133009%_))))
                                (let* ((_%hd133072%_ _%hd133006133067%_)
                                       (_%tl133074%_ _%tl133007133069%_))
                                  (_%K133005133064%_
                                   _%tl133074%_
                                   _%hd133072%_)))
                              (_%E133004133013%_)))
                        (if (eq? 'null _%$e132966%_)
                            (let ((__tmp134041
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target132946%_)))
                                  (__tmp134040 (_%k132948%_ _%vars132945%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp134041
                               __tmp134040
                               _%E132947%_))
                            (if (eq? 'vector _%$e132966%_)
                                (let ((_%$e133076%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp134046
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target132946%_)))
                                        (__tmp134042
                                         (let ((__tmp134044
                                                (cons (cons (cons _%$e133076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp134045
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e132660%_
                                    _%target132946%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp134045))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp134043
                                                (_%recur132853%_
                                                 _%body132963%_
                                                 _%vars132945%_
                                                 _%$e133076%_
                                                 _%E132947%_
                                                 _%k132948%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp134044
                                            __tmp134043))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp134046
                                     __tmp134042
                                     _%E132947%_)))
                                (if (eq? 'box _%$e132966%_)
                                    (let ((_%$e133078%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp134051
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target132946%_)))
                                            (__tmp134047
                                             (let ((__tmp134049
                                                    (cons (cons (cons _%$e133078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp134050
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e132660%_
                                        _%target132946%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp134050))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134048
                                                    (_%recur132853%_
                                                     _%body132963%_
                                                     _%vars132945%_
                                                     _%$e133078%_
                                                     _%E132947%_
                                                     _%k132948%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134049
                                                __tmp134048))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp134051
                                         __tmp134047
                                         _%E132947%_)))
                                    (if (eq? 'datum _%$e132966%_)
                                        (let ((_%$e133080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp134057
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target132946%_)))
                                                (__tmp134052
                                                 (let ((__tmp134056
                                                        (cons (cons (cons _%$e133080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target132946%_))
                                  '()))
                      '()))
               (__tmp134053
                (let ((__tmp134055
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e133080%_ _%body132963%_)))
                      (__tmp134054 (_%k132948%_ _%vars132945%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp134055 __tmp134054 _%E132947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp134056
                                                    __tmp134053))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp134057
                                             __tmp134052
                                             _%E132947%_)))
                                        (_%BUG132852%_
                                         _%e132944%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e132949132956%_)
                                      (let ((_%hd132953133085%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132949132956%_)))
                                            (_%tl132954133087%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132949132956%_))))
                                        (let* ((_%tag133090%_
                                                _%hd132953133085%_)
                                               (_%body133092%_
                                                _%tl132954133087%_))
                                          (_%K132952133082%_
                                           _%body133092%_
                                           _%tag133090%_)))
                                      (_%E132951132960%_)))))
                             (_%splice-rlen132854%_
                              (lambda (_%e132906%_)
                                (let _%lp132908%_ ((_%e132910%_ _%e132906%_)
                                                   (_%n132911%_ '0))
                                  (let* ((_%e132912132919%_ _%e132910%_)
                                         (_%E132914132923%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132912132919%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132915132932%_
                                          (lambda (_%body132926%_
                                                   _%tag132927%_)
                                            (let ((_%$e132929%_ _%tag132927%_))
                                              (if (eq? 'splice _%$e132929%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx132658%_
                                                     _%where132845%_))
                                                  (if (eq? 'cons _%$e132929%_)
                                                      (_%lp132908%_
                                                       (cdr _%body132926%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n132911%_
                                                                '1)))
                                                      _%n132911%_))))))
                                    (if (pair? _%e132912132919%_)
                                        (let ((_%hd132916132935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132912132919%_)))
                                              (_%tl132917132937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132912132919%_))))
                                          (let* ((_%tag132940%_
                                                  _%hd132916132935%_)
                                                 (_%body132942%_
                                                  _%tl132917132937%_))
                                            (_%K132915132932%_
                                             _%body132942%_
                                             _%tag132940%_)))
                                        (_%E132914132923%_))))))
                             (_%splice-vars132855%_
                              (lambda (_%e132862%_)
                                (let _%recur132864%_ ((_%e132866%_ _%e132862%_)
                                                      (_%vars132867%_ '()))
                                  (let* ((_%e132868132875%_ _%e132866%_)
                                         (_%E132870132879%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132868132875%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132871132894%_
                                          (lambda (_%body132882%_
                                                   _%tag132883%_)
                                            (let ((_%$e132885%_ _%tag132883%_))
                                              (if (eq? 'var _%$e132885%_)
                                                  (cons _%body132882%_
                                                        _%vars132867%_)
                                                  (if (or (eq? 'cons
                                                               _%$e132885%_)
                                                          (eq? 'splice
                                                               _%$e132885%_))
                                                      (_%recur132864%_
                                                       (cdr _%body132882%_)
                                                       (_%recur132864%_
                                                        (car _%body132882%_)
                                                        _%vars132867%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132885%_)
                      (eq? 'box _%$e132885%_))
                  (_%recur132864%_ _%body132882%_ _%vars132867%_)
                  _%vars132867%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e132868132875%_)
                                        (let ((_%hd132872132897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132868132875%_)))
                                              (_%tl132873132899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132868132875%_))))
                                          (let* ((_%tag132902%_
                                                  _%hd132872132897%_)
                                                 (_%body132904%_
                                                  _%tl132873132899%_))
                                            (_%K132871132894%_
                                             _%body132904%_
                                             _%tag132902%_)))
                                        (_%E132870132879%_))))))
                             (_%make-body132856%_
                              (lambda (_%vars132858%_)
                                (cons _%K132849%_
                                      (map (lambda (_%mvar132860%_)
                                             (let ((__tmp134058
                                                    (car _%mvar132860%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp134058
                                                _%vars132858%_
                                                _%BUG132852%_)))
                                           _%mvars132848%_)))))
                      (_%recur132853%_
                       _%hd132847%_
                       '()
                       _%target132846%_
                       _%E132850%_
                       _%make-body132856%_))))
                 (_%parse-clause132667%_
                  (lambda (_%hd132739%_ _%ids132740%_)
                    (let _%recur132742%_ ((_%e132744%_ _%hd132739%_)
                                          (_%vars132745%_ '())
                                          (_%depth132746%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e132744%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e132744%_))
                              (values '(any) _%vars132745%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e132744%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx132658%_
                                     _%hd132739%_))
                                  (if (let ((__tmp134059
                                             (lambda (_%id132751%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e132744%_
                                                  _%id132751%_)))))
                                        (declare (not safe))
                                        (__find __tmp134059 _%ids132740%_))
                                      (values (cons 'id _%e132744%_)
                                              _%vars132745%_)
                                      (if (let ((__tmp134060
                                                 (lambda (_%var132754%_)
                                                   (let ((__tmp134061
                                                          (car _%var132754%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e132744%_
                                                      __tmp134061)))))
                                            (declare (not safe))
                                            (__find __tmp134060
                                                    _%vars132745%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx132658%_
                                             _%e132744%_))
                                          (values (cons 'var _%e132744%_)
                                                  (cons (cons _%e132744%_
                                                              _%depth132746%_)
                                                        _%vars132745%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e132744%_))
                              (let* ((_%e132758132765%_ _%e132744%_)
                                     (_%E132760132769%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e132758132765%_))))
                                     (_%E132759132830%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e132758132765%_))
                                            (let ((_%e132761132773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e132758132765%_))))
                                              (let ((_%hd132762132776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e132761132773%_)))
                                                    (_%tl132763132778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e132761132773%_))))
                                                (let* ((_%hd132781%_
                                                        _%hd132762132776%_)
                                                       (_%rest132783%_
                                                        _%tl132763132778%_)
                                                       (_%make-pair132798%_
                                                        (lambda (_%tag132785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd132786%_
                         _%tl132787%_)
                  (let* ((_%hd-depth132789%_
                          (if (eq? _%tag132785%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth132746%_ '1))
                              _%depth132746%_))
                         (_g134062_
                          (_%recur132742%_
                           _%hd132786%_
                           _%vars132745%_
                           _%hd-depth132789%_)))
                    (begin
                      (let ((_g134063_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g134062_)
                                   (##values-length _g134062_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g134063_ 2)))
                            (error "Context expects 2 values" _g134063_)))
                      (let ((_%hd132791%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134062_ 0)))
                            (_%vars132792%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134062_ 1))))
                        (let ((_g134064_
                               (_%recur132742%_
                                _%tl132787%_
                                _%vars132792%_
                                _%depth132746%_)))
                          (begin
                            (let ((_g134065_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134064_)
                                         (##values-length _g134064_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134065_ 2)))
                                  (error "Context expects 2 values"
                                         _g134065_)))
                            (let ((_%tl132794%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134064_ 0)))
                                  (_%vars132795%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134064_ 1))))
                              (values (cons _%tag132785%_
                                            (cons _%hd132791%_ _%tl132794%_))
                                      _%vars132795%_)))))))))
               (_%e132799132806%_ _%rest132783%_)
               (_%E132801132810%_
                (lambda ()
                  (_%make-pair132798%_ 'cons _%hd132781%_ _%rest132783%_)))
               (_%E132800132826%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e132799132806%_))
                      (let ((_%e132802132814%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132799132806%_))))
                        (let ((_%hd132803132817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132802132814%_)))
                              (_%tl132804132819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132802132814%_))))
                          (let* ((_%rest-hd132822%_ _%hd132803132817%_)
                                 (_%rest-tl132824%_ _%tl132804132819%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd132822%_))
                                (_%make-pair132798%_
                                 'splice
                                 _%hd132781%_
                                 _%rest-tl132824%_)
                                (_%make-pair132798%_
                                 'cons
                                 _%hd132781%_
                                 _%rest132783%_)))))
                      (_%E132801132810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132800132826%_))))
                                            (_%E132760132769%_)))))
                                (_%E132759132830%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e132744%_))
                                  (values '(null) _%vars132745%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e132744%_))
                                      (let ((_g134066_
                                             (_%recur132742%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e132744%_)))
                                              _%vars132745%_
                                              _%depth132746%_)))
                                        (begin
                                          (let ((_g134067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134066_)
                                                       (##values-length
                                                        _g134066_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134067_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134067_)))
                                          (let ((_%e132836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134066_ 0)))
                                                (_%vars132837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134066_
                                                    1))))
                                            (values (cons 'vector _%e132836%_)
                                                    _%vars132837%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e132744%_))
                                          (let ((_g134068_
                                                 (_%recur132742%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e132744%_)))
                                                  _%vars132745%_
                                                  _%depth132746%_)))
                                            (begin
                                              (let ((_g134069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134068_)
                                                           (##values-length
                                                            _g134068_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134069_)))
                                              (let ((_%e132840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134068_
                                                        0)))
                                                    (_%vars132841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134068_
                                                        1))))
                                                (values (cons 'box _%e132840%_)
                                                        _%vars132841%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e132744%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e132744%_)))
                                                      _%vars132745%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx132658%_
                                                 _%e132744%_))))))))))))
          (let* ((_%e132668132681%_ _%stx132658%_)
                 (_%E132670132685%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e132668132681%_))))
                 (_%E132669132735%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132668132681%_))
                        (let ((_%e132671132689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132668132681%_))))
                          (let ((_%hd132672132692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132671132689%_)))
                                (_%tl132673132694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132671132689%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132673132694%_))
                                (let ((_%e132674132697%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132673132694%_))))
                                  (let ((_%hd132675132700%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132674132697%_)))
                                        (_%tl132676132702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132674132697%_))))
                                    (let ((_%expr132705%_ _%hd132675132700%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl132676132702%_))
                                          (let ((_%e132677132707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl132676132702%_))))
                                            (let ((_%hd132678132710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e132677132707%_)))
                                                  (_%tl132679132712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e132677132707%_))))
                                              (let* ((_%ids132715%_
                                                      _%hd132678132710%_)
                                                     (_%clauses132717%_
                                                      _%tl132679132712%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids132715%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses132717%_))
                                                        (let* ((_%ids132722%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids132715%_)))
                       (_%clauses132724%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses132717%_)))
                       (_%clause-ids132726%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses132724%_)))
                       (_%E132728%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target132730%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first132732%_
                        (if (null? _%clauses132724%_)
                            _%E132728%_
                            (car _%clause-ids132726%_))))
                  (let ((__tmp134071
                         (let ((__tmp134072
                                (let ((__tmp134074
                                       (let ((__tmp134076
                                              (cons (cons (cons _%E132728%_
                                                                '())
                                                          (cons (let ((__tmp134078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target132730%_ '()))
                              (__tmp134077
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target132730%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp134078 __tmp134077))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp134075
                                              (_%generate-body132664%_
                                               (_%generate-bindings132663%_
                                                _%target132730%_
                                                _%ids132722%_
                                                _%clauses132724%_
                                                _%clause-ids132726%_
                                                _%E132728%_)
                                               (cons _%first132732%_
                                                     (cons _%expr132705%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp134076
                                          __tmp134075)))
                                      (__tmp134073
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx132658%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp134074
                                   __tmp134073))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp134072)))
                        (__tmp134070
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx132658%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp134071 __tmp134070)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx132658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx132658%_
                                                       _%ids132715%_))))))
                                          (_%E132670132685%_)))))
                                (_%E132670132685%_))))
                        (_%E132670132685%_)))))
            (_%E132669132735%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx133383%_)
        (let* ((_%identifier=?133385%_ 'free-identifier=?)
               (_%unwrap-e133387%_ 'syntax-e)
               (_%wrap-e133389%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133383%_
           _%identifier=?133385%_
           _%unwrap-e133387%_
           _%wrap-e133389%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx133391%_ _%identifier=?133392%_)
        (let* ((_%unwrap-e133394%_ 'syntax-e) (_%wrap-e133396%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133391%_
           _%identifier=?133392%_
           _%unwrap-e133394%_
           _%wrap-e133396%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx133398%_ _%identifier=?133399%_ _%unwrap-e133400%_)
        (let ((_%wrap-e133402%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133398%_
           _%identifier=?133399%_
           _%unwrap-e133400%_
           _%wrap-e133402%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g134080_
        (let ((_g134079_ (let () (declare (not safe)) (##length _g134080_))))
          (cond ((let () (declare (not safe)) (##fx= _g134079_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g134080_))
                ((let () (declare (not safe)) (##fx= _g134079_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g134080_))
                ((let () (declare (not safe)) (##fx= _g134079_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g134080_))
                ((let () (declare (not safe)) (##fx= _g134079_ 4))
                 (apply gx#macro-expand-syntax-case__% _g134080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g134080_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx132655%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx132655%_))
            (let ((__tmp134081
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx132655%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp134081 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd132613%_ . _%rest132614%_)
        (let ((_%len132616%_ (length _%hd132613%_)))
          (let _%lp132618%_ ((_%rest132620%_ _%rest132614%_))
            (let* ((_%rest132621132629%_ _%rest132620%_)
                   (_%else132623132637%_ (lambda () '#!void))
                   (_%K132625132643%_
                    (lambda (_%rest132640%_ _%hd132641%_)
                      (if (let ((__tmp134082 (length _%hd132641%_)))
                            (declare (not safe))
                            (##fx= _%len132616%_ __tmp134082))
                          (_%lp132618%_ _%rest132640%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd132641%_))))))
              (if (pair? _%rest132621132629%_)
                  (let ((_%hd132626132646%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest132621132629%_)))
                        (_%tl132627132648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest132621132629%_))))
                    (let* ((_%hd132651%_ _%hd132626132646%_)
                           (_%rest132653%_ _%tl132627132648%_))
                      (_%K132625132643%_ _%rest132653%_ _%hd132651%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx132568%_ _%n132569%_)
        (let _%lp132571%_ ((_%rest132573%_ _%stx132568%_) (_%r132574%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132573%_))
              (let* ((_%g132575132582%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132573%_)))
                     (_%E132577132586%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132575132582%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132578132592%_
                      (lambda (_%rest132589%_ _%hd132590%_)
                        (_%lp132571%_
                         _%rest132589%_
                         (cons _%hd132590%_ _%r132574%_)))))
                (if (pair? _%g132575132582%_)
                    (let ((_%hd132579132595%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132575132582%_)))
                          (_%tl132580132597%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132575132582%_))))
                      (let* ((_%hd132600%_ _%hd132579132595%_)
                             (_%rest132602%_ _%tl132580132597%_))
                        (_%K132578132592%_ _%rest132602%_ _%hd132600%_)))
                    (_%E132577132586%_)))
              (let _%lp132604%_ ((_%n132606%_ _%n132569%_)
                                 (_%l132607%_ _%r132574%_)
                                 (_%r132608%_ _%rest132573%_))
                (if (null? _%l132607%_)
                    (values _%l132607%_ _%r132608%_)
                    (if (fxpositive? _%n132606%_)
                        (_%lp132604%_
                         (let () (declare (not safe)) (##fx- _%n132606%_ '1))
                         (cdr _%l132607%_)
                         (cons (car _%l132607%_) _%r132608%_))
                        (values (reverse _%l132607%_) _%r132608%_))))))))))
