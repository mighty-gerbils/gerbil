(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1734357962)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp134056 (list gx#expander::t))
            (__tmp134055 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp134056
         '(id depth)
         __tmp134055
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args134052%_
        (apply make-instance gx#syntax-pattern::t _%$args134052%_)))
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
      (lambda (_%self132659134036%_ _%stx134038%_)
        (let* ((_%self134040%_ _%self132659134036%_)
               (_%self134042%_ _%self134040%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx134038%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx133502%_)
        (letrec ((_%generate133504%_
                  (lambda (_%e133744%_)
                    (letrec ((_%BUG133746%_
                              (lambda (_%q133911%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx133502%_
                                         _%e133744%_
                                         _%q133911%_))))
                             (_%local-pattern-e133747%_
                              (lambda (_%pat133909%_)
                                (let ((__tmp134057
                                       (##structure-ref
                                        _%pat133909%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp134057))))
                             (_%getvar133748%_
                              (lambda (_%q133906%_ _%vars133907%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q133906%_
                                   _%vars133907%_
                                   _%BUG133746%_))))
                             (_%getarg133749%_
                              (lambda (_%arg133872%_ _%vars133873%_)
                                (let* ((_%arg133874133881%_ _%arg133872%_)
                                       (_%E133876133885%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg133874133881%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K133877133894%_
                                        (lambda (_%e133888%_ _%tag133889%_)
                                          (let ((_%$e133891%_ _%tag133889%_))
                                            (if (eq? 'ref _%$e133891%_)
                                                (_%getvar133748%_
                                                 _%e133888%_
                                                 _%vars133873%_)
                                                (if (eq? 'pattern _%$e133891%_)
                                                    (_%local-pattern-e133747%_
                                                     _%e133888%_)
                                                    (_%BUG133746%_
                                                     _%arg133872%_)))))))
                                  (if (pair? _%arg133874133881%_)
                                      (let ((_%hd133878133897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg133874133881%_)))
                                            (_%tl133879133899%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg133874133881%_))))
                                        (let* ((_%tag133902%_
                                                _%hd133878133897%_)
                                               (_%e133904%_
                                                _%tl133879133899%_))
                                          (_%K133877133894%_
                                           _%e133904%_
                                           _%tag133902%_)))
                                      (_%E133876133885%_))))))
                      (let _%recur133751%_ ((_%e133753%_ _%e133744%_)
                                            (_%vars133754%_ '()))
                        (let* ((_%e133755133762%_ _%e133753%_)
                               (_%E133757133766%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e133755133762%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K133758133860%_
                                (lambda (_%body133769%_ _%tag133770%_)
                                  (let ((_%$e133772%_ _%tag133770%_))
                                    (if (eq? 'datum _%$e133772%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body133769%_))
                                        (if (eq? 'term _%$e133772%_)
                                            (let ((_%id133775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body133769%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id133775%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks133778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id133775%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks133778%_)
                                                        (let ((__tmp134058
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body133769%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp134058))
                (let ((__tmp134060
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body133769%_)))
                      (__tmp134059
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body133769%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp134060
                   __tmp134059
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id133775%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body133769%_))
                                                      (_%BUG133746%_
                                                       _%e133753%_))))
                                            (if (eq? 'pattern _%$e133772%_)
                                                (_%local-pattern-e133747%_
                                                 _%body133769%_)
                                                (if (eq? 'ref _%$e133772%_)
                                                    (_%getvar133748%_
                                                     _%body133769%_
                                                     _%vars133754%_)
                                                    (if (eq? 'cons
                                                             _%$e133772%_)
                                                        (let ((__tmp134062
                                                               (_%recur133751%_
                                                                (car _%body133769%_)
                                                                _%vars133754%_))
                                                              (__tmp134061
                                                               (_%recur133751%_
                                                                (cdr _%body133769%_)
                                                                _%vars133754%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp134062
                                                           __tmp134061))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e133772%_)
                    (let ((__tmp134063
                           (_%recur133751%_ _%body133769%_ _%vars133754%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp134063))
                    (if (eq? 'box _%$e133772%_)
                        (let ((__tmp134064
                               (_%recur133751%_
                                _%body133769%_
                                _%vars133754%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp134064))
                        (if (eq? 'splice _%$e133772%_)
                            (let* ((_%body133781133792%_ _%body133769%_)
                                   (_%E133783133796%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body133781133792%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K133784133834%_
                                    (lambda (_%args133799%_
                                             _%iv133800%_
                                             _%hd133801%_
                                             _%depth133802%_)
                                      (let* ((_%targets133808%_
                                              (map (lambda (_%g133803133805%_)
                                                     (_%getarg133749%_
                                                      _%g133803133805%_
                                                      _%vars133754%_))
                                                   _%args133799%_))
                                             (_%fold-in133810%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args133799%_)))
                                             (_%fold-out133812%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args133814%_
                                              (let ((__tmp134065
                                                     (cons _%fold-out133812%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp134065
                                                 _%fold-in133810%_)))
                                             (_%lambda-body133831%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth133802%_ '1))
                                                  (let ((_%r-args133822%_
                                                         (map (lambda (_%arg133816%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg133816%_)))
                      _%args133799%_))
                (_%r-vars133823%_
                 (let ((__tmp134066
                        (lambda (_%arg133818%_ _%var133819%_ _%r133820%_)
                          (cons (cons (cdr _%arg133818%_) _%var133819%_)
                                _%r133820%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp134066
                    _%vars133754%_
                    _%args133799%_
                    _%fold-in133810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur133751%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth133802%_ '1))
                         (cons _%hd133801%_
                               (cons (cons 'var _%fold-out133812%_)
                                     _%r-args133822%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars133823%_))
                                                  (let* ((_%hd-vars133829%_
                                                          (let ((__tmp134067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg133825%_ _%var133826%_ _%r133827%_)
                           (cons (cons (cdr _%arg133825%_) _%var133826%_)
                                 _%r133827%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp134067
                     _%vars133754%_
                     _%args133799%_
                     _%fold-in133810%_)))
                 (__tmp134068
                  (_%recur133751%_ _%hd133801%_ _%hd-vars133829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp134068
                                                     _%fold-out133812%_)))))
                                        (let ((__tmp134072
                                               (if (let ((__tmp134073
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets133808%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp134073 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets133808%_))
                                                   '#!void))
                                              (__tmp134069
                                               (let ((__tmp134071
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args133814%_
                                                         _%lambda-body133831%_)))
                                                     (__tmp134070
                                                      (_%recur133751%_
                                                       _%iv133800%_
                                                       _%vars133754%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp134071
                                                  __tmp134070
                                                  _%targets133808%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp134072
                                           __tmp134069))))))
                              (if (pair? _%body133781133792%_)
                                  (let ((_%hd133785133837%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body133781133792%_)))
                                        (_%tl133786133839%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body133781133792%_))))
                                    (let ((_%depth133842%_ _%hd133785133837%_))
                                      (if (pair? _%tl133786133839%_)
                                          (let ((_%hd133787133844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl133786133839%_)))
                                                (_%tl133788133846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl133786133839%_))))
                                            (let ((_%hd133849%_
                                                   _%hd133787133844%_))
                                              (if (pair? _%tl133788133846%_)
                                                  (let ((_%hd133789133851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl133788133846%_)))
                                                        (_%tl133790133853%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl133788133846%_))))
                                                    (let* ((_%iv133856%_
                                                            _%hd133789133851%_)
                                                           (_%args133858%_
                                                            _%tl133790133853%_))
                                                      (_%K133784133834%_
                                                       _%args133858%_
                                                       _%iv133856%_
                                                       _%hd133849%_
                                                       _%depth133842%_)))
                                                  (_%E133783133796%_))))
                                          (_%E133783133796%_))))
                                  (_%E133783133796%_)))
                            (if (eq? 'var _%$e133772%_)
                                _%body133769%_
                                (_%BUG133746%_ _%e133753%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e133755133762%_)
                              (let ((_%hd133759133863%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e133755133762%_)))
                                    (_%tl133760133865%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e133755133762%_))))
                                (let* ((_%tag133868%_ _%hd133759133863%_)
                                       (_%body133870%_ _%tl133760133865%_))
                                  (_%K133758133860%_
                                   _%body133870%_
                                   _%tag133868%_)))
                              (_%E133757133766%_)))))))
                 (_%parse133505%_
                  (lambda (_%e133546%_)
                    (letrec ((_%make-cons133548%_
                              (lambda (_%hd133736%_ _%tl133737%_)
                                (let ((_g134074_ _%hd133736%_)
                                      (_g134076_ _%tl133737%_))
                                  (begin
                                    (let ((_g134075_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134074_)
                                                 (##values-length _g134074_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134075_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134075_)))
                                    (let ((_g134077_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134076_)
                                                 (##values-length _g134076_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134077_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134077_)))
                                    (let ((_%hd-e133739%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134074_ 0)))
                                          (_%hd-vars133740%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134074_ 1))))
                                      (let ((_%tl-e133741%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134076_ 0)))
                                            (_%tl-vars133742%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134076_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e133739%_
                                                            _%tl-e133741%_))
                                                (append _%hd-vars133740%_
                                                        _%tl-vars133742%_))))))))
                             (_%make-splice133549%_
                              (lambda (_%where133672%_
                                       _%depth133673%_
                                       _%hd133674%_
                                       _%tl133675%_)
                                (let ((_g134078_ _%hd133674%_)
                                      (_g134080_ _%tl133675%_))
                                  (begin
                                    (let ((_g134079_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134078_)
                                                 (##values-length _g134078_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134079_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134079_)))
                                    (let ((_g134081_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134080_)
                                                 (##values-length _g134080_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134081_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134081_)))
                                    (let ((_%hd-e133677%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134078_ 0)))
                                          (_%hd-vars133678%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134078_ 1))))
                                      (let ((_%tl-e133679%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134080_ 0)))
                                            (_%tl-vars133680%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134080_ 1))))
                                        (let _%lp133682%_ ((_%rest133684%_
                                                            _%hd-vars133678%_)
                                                           (_%targets133685%_
                                                            '())
                                                           (_%vars133686%_
                                                            _%tl-vars133680%_))
                                          (let* ((_%rest133687133697%_
                                                  _%rest133684%_)
                                                 (_%else133689133705%_
                                                  (lambda ()
                                                    (if (null? _%targets133685%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx133502%_
                                                           _%where133672%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth133673%_
                                    (cons _%hd-e133677%_
                                          (cons _%tl-e133679%_
                                                _%targets133685%_))))
                        _%vars133686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K133691133717%_
                                                  (lambda (_%rest133708%_
                                                           _%hd-pat133709%_
                                                           _%hd-depth*133710%_)
                                                    (let ((_%hd-depth133712%_
                                                           (fx- _%hd-depth*133710%_
                                                                _%depth133673%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth133712%_))
                                                          (_%lp133682%_
                                                           _%rest133708%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat133709%_)
                         _%targets133685%_)
                   (cons (cons _%hd-depth133712%_ _%hd-pat133709%_)
                         _%vars133686%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth133712%_))
                      (_%lp133682%_
                       _%rest133708%_
                       (cons (cons 'pattern _%hd-pat133709%_)
                             _%targets133685%_)
                       _%vars133686%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx133502%_
                         _%where133672%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest133687133697%_)
                                                (let ((_%hd133692133720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest133687133697%_)))
                                                      (_%tl133693133722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest133687133697%_))))
                                                  (if (pair? _%hd133692133720%_)
                                                      (let ((_%hd133694133725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd133692133720%_)))
                    (_%tl133695133727%_
                     (let () (declare (not safe)) (##cdr _%hd133692133720%_))))
                (let* ((_%hd-depth*133730%_ _%hd133694133725%_)
                       (_%hd-pat133732%_ _%tl133695133727%_)
                       (_%rest133734%_ _%tl133693133722%_))
                  (_%K133691133717%_
                   _%rest133734%_
                   _%hd-pat133732%_
                   _%hd-depth*133730%_)))
              (_%else133689133705%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else133689133705%_))))))))))
                             (_%recur133550%_
                              (lambda (_%e133555%_ _%is-e?133556%_)
                                (if (_%is-e?133556%_ _%e133555%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx133502%_))
                                    (if (gx#syntax-local-pattern? _%e133555%_)
                                        (let* ((_%pat133560%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e133555%_)))
                                               (_%depth133562%_
                                                (##structure-ref
                                                 _%pat133560%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth133562%_)
                                              (values (cons 'ref _%pat133560%_)
                                                      (cons (cons _%depth133562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat133560%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat133560%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e133555%_))
                                            (values (cons 'term _%e133555%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e133555%_))
                                                (let* ((_%e133566133573%_
                                                        _%e133555%_)
                                                       (_%E133568133577%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e133566133573%_))))
                                                       (_%E133567133659%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e133566133573%_))
                      (let ((_%e133569133581%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e133566133573%_))))
                        (let ((_%hd133570133584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133569133581%_)))
                              (_%tl133571133586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133569133581%_))))
                          (let* ((_%hd133589%_ _%hd133570133584%_)
                                 (_%rest133591%_ _%tl133571133586%_))
                            (if (_%is-e?133556%_ _%hd133589%_)
                                (let* ((_%e133592133599%_ _%rest133591%_)
                                       (_%E133594133603%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx133502%_
                                             _%e133555%_))))
                                       (_%E133593133617%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e133592133599%_))
                                              (let ((_%e133595133607%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e133592133599%_))))
                                                (let ((_%hd133596133610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133595133607%_)))
                                                      (_%tl133597133612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133595133607%_))))
                                                  (let ((_%rest133615%_
                                                         _%hd133596133610%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133597133612%_))
                                                        (_%recur133550%_
                                                         _%rest133615%_
                                                         false)
                                                        (_%E133594133603%_)))))
                                              (_%E133594133603%_)))))
                                  (_%E133593133617%_))
                                (let _%lp133621%_ ((_%rest133623%_
                                                    _%rest133591%_)
                                                   (_%depth133624%_ '0))
                                  (let* ((_%e133625133632%_ _%rest133623%_)
                                         (_%E133627133636%_
                                          (lambda ()
                                            (if (fxpositive? _%depth133624%_)
                                                (_%make-splice133549%_
                                                 _%e133555%_
                                                 _%depth133624%_
                                                 (_%recur133550%_
                                                  _%hd133589%_
                                                  _%is-e?133556%_)
                                                 (_%recur133550%_
                                                  _%rest133623%_
                                                  _%is-e?133556%_))
                                                (_%make-cons133548%_
                                                 (_%recur133550%_
                                                  _%hd133589%_
                                                  _%is-e?133556%_)
                                                 (_%recur133550%_
                                                  _%rest133623%_
                                                  _%is-e?133556%_)))))
                                         (_%E133626133655%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e133625133632%_))
                                                (let ((_%e133628133640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e133625133632%_))))
                                                  (let ((_%hd133629133643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e133628133640%_)))
                                                        (_%tl133630133645%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e133628133640%_))))
                                                    (let* ((_%rest-hd133648%_
                                                            _%hd133629133643%_)
                                                           (_%rest-tl133650%_
                                                            _%tl133630133645%_))
                                                      (if (_%is-e?133556%_
                                                           _%rest-hd133648%_)
                                                          (_%lp133621%_
                                                           _%rest-tl133650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth133624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth133624%_)
                      (_%make-splice133549%_
                       _%e133555%_
                       _%depth133624%_
                       (_%recur133550%_ _%hd133589%_ _%is-e?133556%_)
                       (_%recur133550%_ _%rest133623%_ _%is-e?133556%_))
                      (_%make-cons133548%_
                       (_%recur133550%_ _%hd133589%_ _%is-e?133556%_)
                       (_%recur133550%_ _%rest133623%_ _%is-e?133556%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E133627133636%_)))))
                                    (_%E133626133655%_)))))))
                      (_%E133568133577%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133567133659%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e133555%_))
                                                    (let ((_g134082_
                                                           (_%recur133550%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e133555%_)))
                    _%is-e?133556%_)))
              (begin
                (let ((_g134083_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g134082_)
                             (##values-length _g134082_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134083_ 2)))
                      (error "Context expects 2 values" _g134083_)))
                (let ((_%e133664%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g134082_ 0)))
                      (_%vars133665%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g134082_ 1))))
                  (values (cons 'vector _%e133664%_) _%vars133665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e133555%_))
                                                        (let ((_g134084_
                                                               (_%recur133550%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e133555%_)))
                        _%is-e?133556%_)))
                  (begin
                    (let ((_g134085_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g134084_)
                                 (##values-length _g134084_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g134085_ 2)))
                          (error "Context expects 2 values" _g134085_)))
                    (let ((_%e133668%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g134084_ 0)))
                          (_%vars133669%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g134084_ 1))))
                      (values (cons 'box _%e133668%_) _%vars133669%_))))
                (values (cons 'datum _%e133555%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g134086_
                             (_%recur133550%_ _%e133546%_ gx#ellipsis?)))
                        (begin
                          (let ((_g134087_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g134086_)
                                       (##values-length _g134086_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g134087_ 2)))
                                (error "Context expects 2 values" _g134087_)))
                          (let ((_%tree133552%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g134086_ 0)))
                                (_%vars133553%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g134086_ 1))))
                            (if (null? _%vars133553%_)
                                _%tree133552%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx133502%_
                                   _%vars133553%_))))))))))
          (let* ((_%e133506133516%_ _%stx133502%_)
                 (_%E133508133520%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx133502%_))))
                 (_%E133507133542%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e133506133516%_))
                        (let ((_%e133509133524%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e133506133516%_))))
                          (let ((_%hd133510133527%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133509133524%_)))
                                (_%tl133511133529%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133509133524%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133511133529%_))
                                (let ((_%e133512133532%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl133511133529%_))))
                                  (let ((_%hd133513133535%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133512133532%_)))
                                        (_%tl133514133537%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133512133532%_))))
                                    (let ((_%form133540%_ _%hd133513133535%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl133514133537%_))
                                          (let ((__tmp134089
                                                 (_%generate133504%_
                                                  (_%parse133505%_
                                                   _%form133540%_)))
                                                (__tmp134088
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx133502%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp134089
                                             __tmp134088))
                                          (_%E133508133520%_)))))
                                (_%E133508133520%_))))
                        (_%E133508133520%_)))))
            (_%E133507133542%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx132751%_
               _%identifier=?132752%_
               _%unwrap-e132753%_
               _%wrap-e132754%_)
        (letrec ((_%generate-bindings132756%_
                  (lambda (_%target133366%_
                           _%ids133367%_
                           _%clauses133368%_
                           _%clause-ids133369%_
                           _%E133370%_)
                    (letrec ((_%generate1133372%_
                              (lambda (_%clause133469%_
                                       _%clause-id133470%_
                                       _%E133471%_)
                                (cons (cons _%clause-id133470%_ '())
                                      (cons (let ((__tmp134091
                                                   (cons _%target133366%_ '()))
                                                  (__tmp134090
                                                   (_%generate-clause132758%_
                                                    _%target133366%_
                                                    _%ids133367%_
                                                    _%clause133469%_
                                                    _%E133471%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp134091
                                               __tmp134090))
                                            '())))))
                      (let _%lp133374%_ ((_%rest133376%_ _%clauses133368%_)
                                         (_%rest-ids133377%_
                                          _%clause-ids133369%_)
                                         (_%bindings133378%_ '()))
                        (let* ((_%rest133379133387%_ _%rest133376%_)
                               (_%else133381133395%_
                                (lambda () _%bindings133378%_))
                               (_%K133383133457%_
                                (lambda (_%rest133398%_ _%clause133399%_)
                                  (let* ((_%rest-ids133400133407%_
                                          _%rest-ids133377%_)
                                         (_%E133402133411%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids133400133407%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K133403133445%_
                                          (lambda (_%rest-ids133414%_
                                                   _%clause-id133415%_)
                                            (let* ((_%rest-ids133416133424%_
                                                    _%rest-ids133414%_)
                                                   (_%else133418133432%_
                                                    (lambda ()
                                                      (cons (_%generate1133372%_
                                                             _%clause133399%_
                                                             _%clause-id133415%_
                                                             _%E133370%_)
                                                            _%bindings133378%_)))
                                                   (_%K133420133437%_
                                                    (lambda (_%next-clause-id133435%_)
                                                      (_%lp133374%_
                                                       _%rest133398%_
                                                       _%rest-ids133414%_
                                                       (cons (_%generate1133372%_
                                                              _%clause133399%_
                                                              _%clause-id133415%_
                                                              _%next-clause-id133435%_)
                                                             _%bindings133378%_)))))
                                              (if (pair? _%rest-ids133416133424%_)
                                                  (let* ((_%hd133421133440%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids133416133424%_)))
                                                         (_%next-clause-id133443%_
                                                          _%hd133421133440%_))
                                                    (_%K133420133437%_
                                                     _%next-clause-id133443%_))
                                                  (_%else133418133432%_))))))
                                    (if (pair? _%rest-ids133400133407%_)
                                        (let ((_%hd133404133448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids133400133407%_)))
                                              (_%tl133405133450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids133400133407%_))))
                                          (let* ((_%clause-id133453%_
                                                  _%hd133404133448%_)
                                                 (_%rest-ids133455%_
                                                  _%tl133405133450%_))
                                            (_%K133403133445%_
                                             _%rest-ids133455%_
                                             _%clause-id133453%_)))
                                        (_%E133402133411%_))))))
                          (if (pair? _%rest133379133387%_)
                              (let ((_%hd133384133460%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest133379133387%_)))
                                    (_%tl133385133462%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest133379133387%_))))
                                (let* ((_%clause133465%_ _%hd133384133460%_)
                                       (_%rest133467%_ _%tl133385133462%_))
                                  (_%K133383133457%_
                                   _%rest133467%_
                                   _%clause133465%_)))
                              (_%else133381133395%_)))))))
                 (_%generate-body132757%_
                  (lambda (_%bindings133326%_ _%body133327%_)
                    (let _%recur133329%_ ((_%rest133331%_ _%bindings133326%_))
                      (let* ((_%rest133332133340%_ _%rest133331%_)
                             (_%else133334133348%_ (lambda () _%body133327%_))
                             (_%K133336133354%_
                              (lambda (_%rest133351%_ _%hd133352%_)
                                (let ((__tmp134093 (cons _%hd133352%_ '()))
                                      (__tmp134092
                                       (_%recur133329%_ _%rest133351%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp134093
                                   __tmp134092)))))
                        (if (pair? _%rest133332133340%_)
                            (let ((_%hd133337133357%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest133332133340%_)))
                                  (_%tl133338133359%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest133332133340%_))))
                              (let* ((_%hd133362%_ _%hd133337133357%_)
                                     (_%rest133364%_ _%tl133338133359%_))
                                (_%K133336133354%_
                                 _%rest133364%_
                                 _%hd133362%_)))
                            (_%else133334133348%_))))))
                 (_%generate-clause132758%_
                  (lambda (_%target133189%_
                           _%ids133190%_
                           _%clause133191%_
                           _%E133192%_)
                    (letrec ((_%generate1133194%_
                              (lambda (_%hd133281%_
                                       _%fender133282%_
                                       _%body133283%_)
                                (let ((_g134094_
                                       (_%parse-clause132760%_
                                        _%hd133281%_
                                        _%ids133190%_)))
                                  (begin
                                    (let ((_g134095_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134094_)
                                                 (##values-length _g134094_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134095_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134095_)))
                                    (let ((_%e133285%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134094_ 0)))
                                          (_%mvars133286%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134094_ 1))))
                                      (let* ((_%pvars133288%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars133286%_))))
                                             (_%E133290%_
                                              (cons _%E133192%_
                                                    (cons _%target133189%_
                                                          '())))
                                             (_%K133323%_
                                              (let ((__tmp134096
                                                     (let ((__tmp134098
                                                            (map (lambda (_%mvar133292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar133293%_)
                           (let* ((_%mvar133294133301%_ _%mvar133292%_)
                                  (_%E133296133305%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar133294133301%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K133297133311%_
                                   (lambda (_%depth133308%_ _%id133309%_)
                                     (cons _%id133309%_
                                           (cons (let ((__tmp134100
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id133309%_)))
                                                       (__tmp134099
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar133293%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp134100
                                                    __tmp134099
                                                    _%depth133308%_))
                                                 '())))))
                             (if (pair? _%mvar133294133301%_)
                                 (let ((_%hd133298133314%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar133294133301%_)))
                                       (_%tl133299133316%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar133294133301%_))))
                                   (let* ((_%id133319%_ _%hd133298133314%_)
                                          (_%depth133321%_ _%tl133299133316%_))
                                     (_%K133297133311%_
                                      _%depth133321%_
                                      _%id133319%_)))
                                 (_%E133296133305%_))))
                         _%mvars133286%_
                         _%pvars133288%_))
                   (__tmp134097
                    (if (eq? _%fender133282%_ '#t)
                        _%body133283%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender133282%_
                           _%body133283%_
                           _%E133290%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp134098 __tmp134097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars133288%_
                                                 __tmp134096))))
                                        (_%generate-match132759%_
                                         _%hd133281%_
                                         _%target133189%_
                                         _%e133285%_
                                         _%mvars133286%_
                                         _%K133323%_
                                         _%E133290%_))))))))
                      (let* ((_%e133195133215%_ _%clause133191%_)
                             (_%E133204133219%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e133195133215%_))))
                             (_%E133197133253%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133195133215%_))
                                    (let ((_%e133205133223%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133195133215%_))))
                                      (let ((_%hd133206133226%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133205133223%_)))
                                            (_%tl133207133228%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133205133223%_))))
                                        (let ((_%hd133231%_
                                               _%hd133206133226%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133207133228%_))
                                              (let ((_%e133208133233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133207133228%_))))
                                                (let ((_%hd133209133236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133208133233%_)))
                                                      (_%tl133210133238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133208133233%_))))
                                                  (let ((_%fender133241%_
                                                         _%hd133209133236%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl133210133238%_))
                                                        (let ((_%e133211133243%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl133210133238%_))))
                  (let ((_%hd133212133246%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133211133243%_)))
                        (_%tl133213133248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133211133243%_))))
                    (let ((_%body133251%_ _%hd133212133246%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl133213133248%_))
                          (_%generate1133194%_
                           _%hd133231%_
                           _%fender133241%_
                           _%body133251%_)
                          (_%E133204133219%_)))))
                (_%E133204133219%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133204133219%_)))))
                                    (_%E133204133219%_))))
                             (_%E133196133277%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133195133215%_))
                                    (let ((_%e133198133257%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133195133215%_))))
                                      (let ((_%hd133199133260%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133198133257%_)))
                                            (_%tl133200133262%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133198133257%_))))
                                        (let ((_%hd133265%_
                                               _%hd133199133260%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133200133262%_))
                                              (let ((_%e133201133267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133200133262%_))))
                                                (let ((_%hd133202133270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133201133267%_)))
                                                      (_%tl133203133272%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133201133267%_))))
                                                  (let ((_%body133275%_
                                                         _%hd133202133270%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133203133272%_))
                                                        (_%generate1133194%_
                                                         _%hd133265%_
                                                         '#t
                                                         _%body133275%_)
                                                        (_%E133197133253%_)))))
                                              (_%E133197133253%_)))))
                                    (_%E133197133253%_)))))
                        (_%E133196133277%_)))))
                 (_%generate-match132759%_
                  (lambda (_%where132938%_
                           _%target132939%_
                           _%hd132940%_
                           _%mvars132941%_
                           _%K132942%_
                           _%E132943%_)
                    (letrec ((_%BUG132945%_
                              (lambda (_%q133187%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx132751%_
                                         _%hd132940%_
                                         _%q133187%_))))
                             (_%recur132946%_
                              (lambda (_%e133037%_
                                       _%vars133038%_
                                       _%target133039%_
                                       _%E133040%_
                                       _%k133041%_)
                                (let* ((_%e133042133049%_ _%e133037%_)
                                       (_%E133044133053%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e133042133049%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K133045133175%_
                                        (lambda (_%body133056%_ _%tag133057%_)
                                          (let ((_%$e133059%_ _%tag133057%_))
                                            (if (eq? 'any _%$e133059%_)
                                                (_%k133041%_ _%vars133038%_)
                                                (if (eq? 'id _%$e133059%_)
                                                    (let ((__tmp134105
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target133039%_)))
                                                          (__tmp134101
                                                           (let ((__tmp134103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134104
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e132754%_
                                    _%body133056%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?132752%_
                             __tmp134104
                             _%target133039%_)))
                         (__tmp134102 (_%k133041%_ _%vars133038%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp134103 __tmp134102 _%E133040%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp134105 __tmp134101 _%E133040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e133059%_)
                                                        (_%k133041%_
                                                         (cons (cons _%body133056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target133039%_)
                       _%vars133038%_))
                (if (eq? 'cons _%$e133059%_)
                    (let ((_%$e133062%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd133063%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl133064%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp134111
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target133039%_)))
                            (__tmp134106
                             (let ((__tmp134110
                                    (cons (cons (cons _%$e133062%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e132753%_
                                                         _%target133039%_))
                                                      '()))
                                          '()))
                                   (__tmp134107
                                    (let ((__tmp134109
                                           (cons (cons (cons _%$hd133063%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e133062%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl133064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e133062%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp134108
                                           (let* ((_%body133065133072%_
                                                   _%body133056%_)
                                                  (_%E133067133076%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body133065133072%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K133068133084%_
                                                   (lambda (_%tl133079%_
                                                            _%hd133080%_)
                                                     (_%recur132946%_
                                                      _%hd133080%_
                                                      _%vars133038%_
                                                      _%$hd133063%_
                                                      _%E133040%_
                                                      (lambda (_%vars133082%_)
                                                        (_%recur132946%_
                                                         _%tl133079%_
                                                         _%vars133082%_
                                                         _%$tl133064%_
                                                         _%E133040%_
                                                         _%k133041%_))))))
                                             (if (pair? _%body133065133072%_)
                                                 (let ((_%hd133069133087%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body133065133072%_)))
                                                       (_%tl133070133089%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body133065133072%_))))
                                                   (let* ((_%hd133092%_
                                                           _%hd133069133087%_)
                                                          (_%tl133094%_
                                                           _%tl133070133089%_))
                                                     (_%K133068133084%_
                                                      _%tl133094%_
                                                      _%hd133092%_)))
                                                 (_%E133067133076%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp134109
                                       __tmp134108))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp134110
                                __tmp134107))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp134111
                         __tmp134106
                         _%E133040%_)))
                    (if (eq? 'splice _%$e133059%_)
                        (let* ((_%body133095133102%_ _%body133056%_)
                               (_%E133097133106%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body133095133102%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K133098133157%_
                                (lambda (_%tl133109%_ _%hd133110%_)
                                  (let* ((_%rlen133112%_
                                          (_%splice-rlen132947%_ _%tl133109%_))
                                         (_%$target133114%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd133116%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl133118%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp133120%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e133122%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd133124%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl133126%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars133128%_
                                          (_%splice-vars132948%_ _%hd133110%_))
                                         (_%lvars133130%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133128%_)))
                                         (_%tlvars133132%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133128%_)))
                                         (_%linit133136%_
                                          (map (lambda (_%var133134%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars133130%_)))
                                    (letrec ((_%make-loop133139%_
                                              (lambda (_%vars133143%_)
                                                (let ((__tmp134113
                                                       (cons (cons (cons _%$lp133120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp134126
                                        (cons _%$hd133116%_ _%lvars133130%_))
                                       (__tmp134114
                                        (let ((__tmp134125
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd133116%_)))
                                              (__tmp134119
                                               (let ((__tmp134124
                                                      (cons (cons (cons _%$lp-e133122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e132753%_
                                   _%$hd133116%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134120
                                                      (let ((__tmp134123
                                                             (cons (cons (cons _%$lp-hd133124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e133122%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl133126%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e133122%_))
                                             '()))
                                 '())))
                    (__tmp134121
                     (_%recur132946%_
                      _%hd133110%_
                      '()
                      _%$lp-hd133124%_
                      _%E133040%_
                      (lambda (_%hdvars133145%_)
                        (cons _%$lp133120%_
                              (cons _%$lp-tl133126%_
                                    (map (lambda (_%svar133147%_
                                                  _%lvar133148%_)
                                           (let ((__tmp134122
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar133147%_
                                                     _%hdvars133145%_
                                                     _%BUG132945%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp134122
                                              _%lvar133148%_)))
                                         _%svars133128%_
                                         _%lvars133130%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp134123 __tmp134121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134124
                                                  __tmp134120)))
                                              (__tmp134115
                                               (let ((__tmp134118
                                                      (map (lambda (_%lvar133150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar133151%_)
                     (cons (cons _%tlvar133151%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar133150%_))
                                 '())))
                   _%lvars133130%_
                   _%tlvars133132%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134116
                                                      (_%k133041%_
                                                       (let ((__tmp134117
                                                              (lambda (_%svar133153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar133154%_
                               _%r133155%_)
                        (cons (cons _%svar133153%_ _%tlvar133154%_)
                              _%r133155%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp134117
                  _%vars133143%_
                  _%svars133128%_
                  _%tlvars133132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134118
                                                  __tmp134116))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134125
                                           __tmp134119
                                           __tmp134115))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp134126
                                    __tmp134114))
                                 '()))
                     '()))
              (__tmp134112
               (cons _%$lp133120%_ (cons _%$target133114%_ _%linit133136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp134113
                                                   __tmp134112)))))
                                      (let ((_%body133141%_
                                             (let ((__tmp134128
                                                    (cons (cons (cons _%$target133114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl133118%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target133039%_
                                 _%rlen133112%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134127
                                                    (_%recur132946%_
                                                     _%tl133109%_
                                                     _%vars133038%_
                                                     _%$tl133118%_
                                                     _%E133040%_
                                                     _%make-loop133139%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134128
                                                __tmp134127))))
                                        (let ((__tmp134132
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target133039%_)))
                                              (__tmp134129
                                               (if (zero? _%rlen133112%_)
                                                   _%body133141%_
                                                   (let ((__tmp134130
                                                          (let ((__tmp134131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target133039%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp134131 _%rlen133112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp134130
                                                      _%body133141%_
                                                      _%E133040%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134132
                                           __tmp134129
                                           _%E133040%_))))))))
                          (if (pair? _%body133095133102%_)
                              (let ((_%hd133099133160%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body133095133102%_)))
                                    (_%tl133100133162%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body133095133102%_))))
                                (let* ((_%hd133165%_ _%hd133099133160%_)
                                       (_%tl133167%_ _%tl133100133162%_))
                                  (_%K133098133157%_
                                   _%tl133167%_
                                   _%hd133165%_)))
                              (_%E133097133106%_)))
                        (if (eq? 'null _%$e133059%_)
                            (let ((__tmp134134
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target133039%_)))
                                  (__tmp134133 (_%k133041%_ _%vars133038%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp134134
                               __tmp134133
                               _%E133040%_))
                            (if (eq? 'vector _%$e133059%_)
                                (let ((_%$e133169%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp134139
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target133039%_)))
                                        (__tmp134135
                                         (let ((__tmp134137
                                                (cons (cons (cons _%$e133169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp134138
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e132753%_
                                    _%target133039%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp134138))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp134136
                                                (_%recur132946%_
                                                 _%body133056%_
                                                 _%vars133038%_
                                                 _%$e133169%_
                                                 _%E133040%_
                                                 _%k133041%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp134137
                                            __tmp134136))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp134139
                                     __tmp134135
                                     _%E133040%_)))
                                (if (eq? 'box _%$e133059%_)
                                    (let ((_%$e133171%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp134144
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target133039%_)))
                                            (__tmp134140
                                             (let ((__tmp134142
                                                    (cons (cons (cons _%$e133171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp134143
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e132753%_
                                        _%target133039%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp134143))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134141
                                                    (_%recur132946%_
                                                     _%body133056%_
                                                     _%vars133038%_
                                                     _%$e133171%_
                                                     _%E133040%_
                                                     _%k133041%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134142
                                                __tmp134141))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp134144
                                         __tmp134140
                                         _%E133040%_)))
                                    (if (eq? 'datum _%$e133059%_)
                                        (let ((_%$e133173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp134150
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target133039%_)))
                                                (__tmp134145
                                                 (let ((__tmp134149
                                                        (cons (cons (cons _%$e133173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target133039%_))
                                  '()))
                      '()))
               (__tmp134146
                (let ((__tmp134148
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e133173%_ _%body133056%_)))
                      (__tmp134147 (_%k133041%_ _%vars133038%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp134148 __tmp134147 _%E133040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp134149
                                                    __tmp134146))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp134150
                                             __tmp134145
                                             _%E133040%_)))
                                        (_%BUG132945%_
                                         _%e133037%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e133042133049%_)
                                      (let ((_%hd133046133178%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133042133049%_)))
                                            (_%tl133047133180%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133042133049%_))))
                                        (let* ((_%tag133183%_
                                                _%hd133046133178%_)
                                               (_%body133185%_
                                                _%tl133047133180%_))
                                          (_%K133045133175%_
                                           _%body133185%_
                                           _%tag133183%_)))
                                      (_%E133044133053%_)))))
                             (_%splice-rlen132947%_
                              (lambda (_%e132999%_)
                                (let _%lp133001%_ ((_%e133003%_ _%e132999%_)
                                                   (_%n133004%_ '0))
                                  (let* ((_%e133005133012%_ _%e133003%_)
                                         (_%E133007133016%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e133005133012%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K133008133025%_
                                          (lambda (_%body133019%_
                                                   _%tag133020%_)
                                            (let ((_%$e133022%_ _%tag133020%_))
                                              (if (eq? 'splice _%$e133022%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx132751%_
                                                     _%where132938%_))
                                                  (if (eq? 'cons _%$e133022%_)
                                                      (_%lp133001%_
                                                       (cdr _%body133019%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n133004%_
                                                                '1)))
                                                      _%n133004%_))))))
                                    (if (pair? _%e133005133012%_)
                                        (let ((_%hd133009133028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133005133012%_)))
                                              (_%tl133010133030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133005133012%_))))
                                          (let* ((_%tag133033%_
                                                  _%hd133009133028%_)
                                                 (_%body133035%_
                                                  _%tl133010133030%_))
                                            (_%K133008133025%_
                                             _%body133035%_
                                             _%tag133033%_)))
                                        (_%E133007133016%_))))))
                             (_%splice-vars132948%_
                              (lambda (_%e132955%_)
                                (let _%recur132957%_ ((_%e132959%_ _%e132955%_)
                                                      (_%vars132960%_ '()))
                                  (let* ((_%e132961132968%_ _%e132959%_)
                                         (_%E132963132972%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132961132968%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132964132987%_
                                          (lambda (_%body132975%_
                                                   _%tag132976%_)
                                            (let ((_%$e132978%_ _%tag132976%_))
                                              (if (eq? 'var _%$e132978%_)
                                                  (cons _%body132975%_
                                                        _%vars132960%_)
                                                  (if (or (eq? 'cons
                                                               _%$e132978%_)
                                                          (eq? 'splice
                                                               _%$e132978%_))
                                                      (_%recur132957%_
                                                       (cdr _%body132975%_)
                                                       (_%recur132957%_
                                                        (car _%body132975%_)
                                                        _%vars132960%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132978%_)
                      (eq? 'box _%$e132978%_))
                  (_%recur132957%_ _%body132975%_ _%vars132960%_)
                  _%vars132960%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e132961132968%_)
                                        (let ((_%hd132965132990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132961132968%_)))
                                              (_%tl132966132992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132961132968%_))))
                                          (let* ((_%tag132995%_
                                                  _%hd132965132990%_)
                                                 (_%body132997%_
                                                  _%tl132966132992%_))
                                            (_%K132964132987%_
                                             _%body132997%_
                                             _%tag132995%_)))
                                        (_%E132963132972%_))))))
                             (_%make-body132949%_
                              (lambda (_%vars132951%_)
                                (cons _%K132942%_
                                      (map (lambda (_%mvar132953%_)
                                             (let ((__tmp134151
                                                    (car _%mvar132953%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp134151
                                                _%vars132951%_
                                                _%BUG132945%_)))
                                           _%mvars132941%_)))))
                      (_%recur132946%_
                       _%hd132940%_
                       '()
                       _%target132939%_
                       _%E132943%_
                       _%make-body132949%_))))
                 (_%parse-clause132760%_
                  (lambda (_%hd132832%_ _%ids132833%_)
                    (let _%recur132835%_ ((_%e132837%_ _%hd132832%_)
                                          (_%vars132838%_ '())
                                          (_%depth132839%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e132837%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e132837%_))
                              (values '(any) _%vars132838%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e132837%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx132751%_
                                     _%hd132832%_))
                                  (if (let ((__tmp134152
                                             (lambda (_%id132844%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e132837%_
                                                  _%id132844%_)))))
                                        (declare (not safe))
                                        (__find __tmp134152 _%ids132833%_))
                                      (values (cons 'id _%e132837%_)
                                              _%vars132838%_)
                                      (if (let ((__tmp134153
                                                 (lambda (_%var132847%_)
                                                   (let ((__tmp134154
                                                          (car _%var132847%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e132837%_
                                                      __tmp134154)))))
                                            (declare (not safe))
                                            (__find __tmp134153
                                                    _%vars132838%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx132751%_
                                             _%e132837%_))
                                          (values (cons 'var _%e132837%_)
                                                  (cons (cons _%e132837%_
                                                              _%depth132839%_)
                                                        _%vars132838%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e132837%_))
                              (let* ((_%e132851132858%_ _%e132837%_)
                                     (_%E132853132862%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e132851132858%_))))
                                     (_%E132852132923%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e132851132858%_))
                                            (let ((_%e132854132866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e132851132858%_))))
                                              (let ((_%hd132855132869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e132854132866%_)))
                                                    (_%tl132856132871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e132854132866%_))))
                                                (let* ((_%hd132874%_
                                                        _%hd132855132869%_)
                                                       (_%rest132876%_
                                                        _%tl132856132871%_)
                                                       (_%make-pair132891%_
                                                        (lambda (_%tag132878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd132879%_
                         _%tl132880%_)
                  (let* ((_%hd-depth132882%_
                          (if (eq? _%tag132878%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth132839%_ '1))
                              _%depth132839%_))
                         (_g134155_
                          (_%recur132835%_
                           _%hd132879%_
                           _%vars132838%_
                           _%hd-depth132882%_)))
                    (begin
                      (let ((_g134156_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g134155_)
                                   (##values-length _g134155_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g134156_ 2)))
                            (error "Context expects 2 values" _g134156_)))
                      (let ((_%hd132884%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134155_ 0)))
                            (_%vars132885%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134155_ 1))))
                        (let ((_g134157_
                               (_%recur132835%_
                                _%tl132880%_
                                _%vars132885%_
                                _%depth132839%_)))
                          (begin
                            (let ((_g134158_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134157_)
                                         (##values-length _g134157_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134158_ 2)))
                                  (error "Context expects 2 values"
                                         _g134158_)))
                            (let ((_%tl132887%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134157_ 0)))
                                  (_%vars132888%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134157_ 1))))
                              (values (cons _%tag132878%_
                                            (cons _%hd132884%_ _%tl132887%_))
                                      _%vars132888%_)))))))))
               (_%e132892132899%_ _%rest132876%_)
               (_%E132894132903%_
                (lambda ()
                  (_%make-pair132891%_ 'cons _%hd132874%_ _%rest132876%_)))
               (_%E132893132919%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e132892132899%_))
                      (let ((_%e132895132907%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132892132899%_))))
                        (let ((_%hd132896132910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132895132907%_)))
                              (_%tl132897132912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132895132907%_))))
                          (let* ((_%rest-hd132915%_ _%hd132896132910%_)
                                 (_%rest-tl132917%_ _%tl132897132912%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd132915%_))
                                (_%make-pair132891%_
                                 'splice
                                 _%hd132874%_
                                 _%rest-tl132917%_)
                                (_%make-pair132891%_
                                 'cons
                                 _%hd132874%_
                                 _%rest132876%_)))))
                      (_%E132894132903%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132893132919%_))))
                                            (_%E132853132862%_)))))
                                (_%E132852132923%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e132837%_))
                                  (values '(null) _%vars132838%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e132837%_))
                                      (let ((_g134159_
                                             (_%recur132835%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e132837%_)))
                                              _%vars132838%_
                                              _%depth132839%_)))
                                        (begin
                                          (let ((_g134160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134159_)
                                                       (##values-length
                                                        _g134159_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134160_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134160_)))
                                          (let ((_%e132929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134159_ 0)))
                                                (_%vars132930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134159_
                                                    1))))
                                            (values (cons 'vector _%e132929%_)
                                                    _%vars132930%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e132837%_))
                                          (let ((_g134161_
                                                 (_%recur132835%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e132837%_)))
                                                  _%vars132838%_
                                                  _%depth132839%_)))
                                            (begin
                                              (let ((_g134162_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134161_)
                                                           (##values-length
                                                            _g134161_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134162_)))
                                              (let ((_%e132933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134161_
                                                        0)))
                                                    (_%vars132934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134161_
                                                        1))))
                                                (values (cons 'box _%e132933%_)
                                                        _%vars132934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e132837%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e132837%_)))
                                                      _%vars132838%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx132751%_
                                                 _%e132837%_))))))))))))
          (let* ((_%e132761132774%_ _%stx132751%_)
                 (_%E132763132778%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e132761132774%_))))
                 (_%E132762132828%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132761132774%_))
                        (let ((_%e132764132782%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132761132774%_))))
                          (let ((_%hd132765132785%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132764132782%_)))
                                (_%tl132766132787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132764132782%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132766132787%_))
                                (let ((_%e132767132790%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132766132787%_))))
                                  (let ((_%hd132768132793%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132767132790%_)))
                                        (_%tl132769132795%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132767132790%_))))
                                    (let ((_%expr132798%_ _%hd132768132793%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl132769132795%_))
                                          (let ((_%e132770132800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl132769132795%_))))
                                            (let ((_%hd132771132803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e132770132800%_)))
                                                  (_%tl132772132805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e132770132800%_))))
                                              (let* ((_%ids132808%_
                                                      _%hd132771132803%_)
                                                     (_%clauses132810%_
                                                      _%tl132772132805%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids132808%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses132810%_))
                                                        (let* ((_%ids132815%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids132808%_)))
                       (_%clauses132817%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses132810%_)))
                       (_%clause-ids132819%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses132817%_)))
                       (_%E132821%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target132823%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first132825%_
                        (if (null? _%clauses132817%_)
                            _%E132821%_
                            (car _%clause-ids132819%_))))
                  (let ((__tmp134164
                         (let ((__tmp134165
                                (let ((__tmp134167
                                       (let ((__tmp134169
                                              (cons (cons (cons _%E132821%_
                                                                '())
                                                          (cons (let ((__tmp134171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target132823%_ '()))
                              (__tmp134170
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target132823%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp134171 __tmp134170))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp134168
                                              (_%generate-body132757%_
                                               (_%generate-bindings132756%_
                                                _%target132823%_
                                                _%ids132815%_
                                                _%clauses132817%_
                                                _%clause-ids132819%_
                                                _%E132821%_)
                                               (cons _%first132825%_
                                                     (cons _%expr132798%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp134169
                                          __tmp134168)))
                                      (__tmp134166
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx132751%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp134167
                                   __tmp134166))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp134165)))
                        (__tmp134163
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx132751%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp134164 __tmp134163)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx132751%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx132751%_
                                                       _%ids132808%_))))))
                                          (_%E132763132778%_)))))
                                (_%E132763132778%_))))
                        (_%E132763132778%_)))))
            (_%E132762132828%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx133476%_)
        (let* ((_%identifier=?133478%_ 'free-identifier=?)
               (_%unwrap-e133480%_ 'syntax-e)
               (_%wrap-e133482%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133476%_
           _%identifier=?133478%_
           _%unwrap-e133480%_
           _%wrap-e133482%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx133484%_ _%identifier=?133485%_)
        (let* ((_%unwrap-e133487%_ 'syntax-e) (_%wrap-e133489%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133484%_
           _%identifier=?133485%_
           _%unwrap-e133487%_
           _%wrap-e133489%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx133491%_ _%identifier=?133492%_ _%unwrap-e133493%_)
        (let ((_%wrap-e133495%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133491%_
           _%identifier=?133492%_
           _%unwrap-e133493%_
           _%wrap-e133495%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g134173_
        (let ((_g134172_ (let () (declare (not safe)) (##length _g134173_))))
          (cond ((let () (declare (not safe)) (##fx= _g134172_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g134173_))
                ((let () (declare (not safe)) (##fx= _g134172_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g134173_))
                ((let () (declare (not safe)) (##fx= _g134172_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g134173_))
                ((let () (declare (not safe)) (##fx= _g134172_ 4))
                 (apply gx#macro-expand-syntax-case__% _g134173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g134173_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx132748%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx132748%_))
            (let ((__tmp134174
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx132748%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp134174 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd132706%_ . _%rest132707%_)
        (let ((_%len132709%_ (length _%hd132706%_)))
          (let _%lp132711%_ ((_%rest132713%_ _%rest132707%_))
            (let* ((_%rest132714132722%_ _%rest132713%_)
                   (_%else132716132730%_ (lambda () '#!void))
                   (_%K132718132736%_
                    (lambda (_%rest132733%_ _%hd132734%_)
                      (if (let ((__tmp134175 (length _%hd132734%_)))
                            (declare (not safe))
                            (##fx= _%len132709%_ __tmp134175))
                          (_%lp132711%_ _%rest132733%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd132734%_))))))
              (if (pair? _%rest132714132722%_)
                  (let ((_%hd132719132739%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest132714132722%_)))
                        (_%tl132720132741%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest132714132722%_))))
                    (let* ((_%hd132744%_ _%hd132719132739%_)
                           (_%rest132746%_ _%tl132720132741%_))
                      (_%K132718132736%_ _%rest132746%_ _%hd132744%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx132661%_ _%n132662%_)
        (let _%lp132664%_ ((_%rest132666%_ _%stx132661%_) (_%r132667%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132666%_))
              (let* ((_%g132668132675%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132666%_)))
                     (_%E132670132679%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132668132675%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132671132685%_
                      (lambda (_%rest132682%_ _%hd132683%_)
                        (_%lp132664%_
                         _%rest132682%_
                         (cons _%hd132683%_ _%r132667%_)))))
                (if (pair? _%g132668132675%_)
                    (let ((_%hd132672132688%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132668132675%_)))
                          (_%tl132673132690%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132668132675%_))))
                      (let* ((_%hd132693%_ _%hd132672132688%_)
                             (_%rest132695%_ _%tl132673132690%_))
                        (_%K132671132685%_ _%rest132695%_ _%hd132693%_)))
                    (_%E132670132679%_)))
              (let _%lp132697%_ ((_%n132699%_ _%n132662%_)
                                 (_%l132700%_ _%r132667%_)
                                 (_%r132701%_ _%rest132666%_))
                (if (null? _%l132700%_)
                    (values _%l132700%_ _%r132701%_)
                    (if (fxpositive? _%n132699%_)
                        (_%lp132697%_
                         (let () (declare (not safe)) (##fx- _%n132699%_ '1))
                         (cdr _%l132700%_)
                         (cons (car _%l132700%_) _%r132701%_))
                        (values (reverse _%l132700%_) _%r132701%_))))))))))
