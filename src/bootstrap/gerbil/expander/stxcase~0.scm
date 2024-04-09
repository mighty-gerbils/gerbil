(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712697256)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp128890 (list gx#expander::t))
            (__tmp128889 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp128890
         '(id depth)
         __tmp128889
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args128886%_
        (apply make-instance gx#syntax-pattern::t _%$args128886%_)))
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
      (lambda (_%self128872%_ _%stx128873%_)
        (let ((_%self128876%_ _%self128872%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx128873%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx128338%_)
        (letrec ((_%generate128340%_
                  (lambda (_%e128580%_)
                    (letrec ((_%BUG128582%_
                              (lambda (_%q128747%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx128338%_
                                         _%e128580%_
                                         _%q128747%_))))
                             (_%local-pattern-e128583%_
                              (lambda (_%pat128745%_)
                                (let ((__tmp128891
                                       (##structure-ref
                                        _%pat128745%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp128891))))
                             (_%getvar128584%_
                              (lambda (_%q128742%_ _%vars128743%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q128742%_
                                   _%vars128743%_
                                   _%BUG128582%_))))
                             (_%getarg128585%_
                              (lambda (_%arg128708%_ _%vars128709%_)
                                (let* ((_%arg128710128717%_ _%arg128708%_)
                                       (_%E128712128721%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg128710128717%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K128713128730%_
                                        (lambda (_%e128724%_ _%tag128725%_)
                                          (let ((_%$e128727%_ _%tag128725%_))
                                            (if (eq? 'ref _%$e128727%_)
                                                (_%getvar128584%_
                                                 _%e128724%_
                                                 _%vars128709%_)
                                                (if (eq? 'pattern _%$e128727%_)
                                                    (_%local-pattern-e128583%_
                                                     _%e128724%_)
                                                    (_%BUG128582%_
                                                     _%arg128708%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg128710128717%_))
                                      (let ((_%hd128714128733%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg128710128717%_)))
                                            (_%tl128715128735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg128710128717%_))))
                                        (let* ((_%tag128738%_
                                                _%hd128714128733%_)
                                               (_%e128740%_
                                                _%tl128715128735%_))
                                          (_%K128713128730%_
                                           _%e128740%_
                                           _%tag128738%_)))
                                      (_%E128712128721%_))))))
                      (let _%recur128587%_ ((_%e128589%_ _%e128580%_)
                                            (_%vars128590%_ '()))
                        (let* ((_%e128591128598%_ _%e128589%_)
                               (_%E128593128602%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e128591128598%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K128594128696%_
                                (lambda (_%body128605%_ _%tag128606%_)
                                  (let ((_%$e128608%_ _%tag128606%_))
                                    (if (eq? 'datum _%$e128608%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body128605%_))
                                        (if (eq? 'term _%$e128608%_)
                                            (let ((_%id128611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body128605%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id128611%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks128614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id128611%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks128614%_)
                                                        (let ((__tmp128892
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body128605%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp128892))
                (let ((__tmp128894
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body128605%_)))
                      (__tmp128893
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body128605%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp128894
                   __tmp128893
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id128611%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body128605%_))
                                                      (_%BUG128582%_
                                                       _%e128589%_))))
                                            (if (eq? 'pattern _%$e128608%_)
                                                (_%local-pattern-e128583%_
                                                 _%body128605%_)
                                                (if (eq? 'ref _%$e128608%_)
                                                    (_%getvar128584%_
                                                     _%body128605%_
                                                     _%vars128590%_)
                                                    (if (eq? 'cons
                                                             _%$e128608%_)
                                                        (let ((__tmp128896
                                                               (_%recur128587%_
                                                                (car _%body128605%_)
                                                                _%vars128590%_))
                                                              (__tmp128895
                                                               (_%recur128587%_
                                                                (cdr _%body128605%_)
                                                                _%vars128590%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp128896
                                                           __tmp128895))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e128608%_)
                    (let ((__tmp128897
                           (_%recur128587%_ _%body128605%_ _%vars128590%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp128897))
                    (if (eq? 'box _%$e128608%_)
                        (let ((__tmp128898
                               (_%recur128587%_
                                _%body128605%_
                                _%vars128590%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp128898))
                        (if (eq? 'splice _%$e128608%_)
                            (let* ((_%body128617128628%_ _%body128605%_)
                                   (_%E128619128632%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body128617128628%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K128620128670%_
                                    (lambda (_%args128635%_
                                             _%iv128636%_
                                             _%hd128637%_
                                             _%depth128638%_)
                                      (let* ((_%targets128644%_
                                              (map (lambda (_%g128639128641%_)
                                                     (_%getarg128585%_
                                                      _%g128639128641%_
                                                      _%vars128590%_))
                                                   _%args128635%_))
                                             (_%fold-in128646%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args128635%_)))
                                             (_%fold-out128648%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args128650%_
                                              (let ((__tmp128899
                                                     (cons _%fold-out128648%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp128899
                                                 _%fold-in128646%_)))
                                             (_%lambda-body128667%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth128638%_ '1))
                                                  (let ((_%r-args128658%_
                                                         (map (lambda (_%arg128652%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg128652%_)))
                      _%args128635%_))
                (_%r-vars128659%_
                 (let ((__tmp128900
                        (lambda (_%arg128654%_ _%var128655%_ _%r128656%_)
                          (cons (cons (cdr _%arg128654%_) _%var128655%_)
                                _%r128656%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp128900
                    _%vars128590%_
                    _%args128635%_
                    _%fold-in128646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur128587%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth128638%_ '1))
                         (cons _%hd128637%_
                               (cons (cons 'var _%fold-out128648%_)
                                     _%r-args128658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars128659%_))
                                                  (let* ((_%hd-vars128665%_
                                                          (let ((__tmp128901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg128661%_ _%var128662%_ _%r128663%_)
                           (cons (cons (cdr _%arg128661%_) _%var128662%_)
                                 _%r128663%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp128901
                     _%vars128590%_
                     _%args128635%_
                     _%fold-in128646%_)))
                 (__tmp128902
                  (_%recur128587%_ _%hd128637%_ _%hd-vars128665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp128902
                                                     _%fold-out128648%_)))))
                                        (let ((__tmp128906
                                               (if (let ((__tmp128907
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets128644%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp128907 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets128644%_))
                                                   '#!void))
                                              (__tmp128903
                                               (let ((__tmp128905
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args128650%_
                                                         _%lambda-body128667%_)))
                                                     (__tmp128904
                                                      (_%recur128587%_
                                                       _%iv128636%_
                                                       _%vars128590%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp128905
                                                  __tmp128904
                                                  _%targets128644%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp128906
                                           __tmp128903))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body128617128628%_))
                                  (let ((_%hd128621128673%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body128617128628%_)))
                                        (_%tl128622128675%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body128617128628%_))))
                                    (let ((_%depth128678%_ _%hd128621128673%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl128622128675%_))
                                          (let ((_%hd128623128680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl128622128675%_)))
                                                (_%tl128624128682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl128622128675%_))))
                                            (let ((_%hd128685%_
                                                   _%hd128623128680%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl128624128682%_))
                                                  (let ((_%hd128625128687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl128624128682%_)))
                                                        (_%tl128626128689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl128624128682%_))))
                                                    (let* ((_%iv128692%_
                                                            _%hd128625128687%_)
                                                           (_%args128694%_
                                                            _%tl128626128689%_))
                                                      (_%K128620128670%_
                                                       _%args128694%_
                                                       _%iv128692%_
                                                       _%hd128685%_
                                                       _%depth128678%_)))
                                                  (_%E128619128632%_))))
                                          (_%E128619128632%_))))
                                  (_%E128619128632%_)))
                            (if (eq? 'var _%$e128608%_)
                                _%body128605%_
                                (_%BUG128582%_ _%e128589%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e128591128598%_))
                              (let ((_%hd128595128699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128591128598%_)))
                                    (_%tl128596128701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128591128598%_))))
                                (let* ((_%tag128704%_ _%hd128595128699%_)
                                       (_%body128706%_ _%tl128596128701%_))
                                  (_%K128594128696%_
                                   _%body128706%_
                                   _%tag128704%_)))
                              (_%E128593128602%_)))))))
                 (_%parse128341%_
                  (lambda (_%e128382%_)
                    (letrec ((_%make-cons128384%_
                              (lambda (_%hd128572%_ _%tl128573%_)
                                (let ((_g128908_ _%hd128572%_)
                                      (_g128910_ _%tl128573%_))
                                  (begin
                                    (let ((_g128909_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128908_)
                                                 (##vector-length _g128908_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128909_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128909_)))
                                    (let ((_g128911_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128910_)
                                                 (##vector-length _g128910_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128911_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128911_)))
                                    (let ((_%hd-e128575%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128908_ 0)))
                                          (_%hd-vars128576%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128908_ 1))))
                                      (let ((_%tl-e128577%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128910_ 0)))
                                            (_%tl-vars128578%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128910_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e128575%_
                                                            _%tl-e128577%_))
                                                (append _%hd-vars128576%_
                                                        _%tl-vars128578%_))))))))
                             (_%make-splice128385%_
                              (lambda (_%where128508%_
                                       _%depth128509%_
                                       _%hd128510%_
                                       _%tl128511%_)
                                (let ((_g128912_ _%hd128510%_)
                                      (_g128914_ _%tl128511%_))
                                  (begin
                                    (let ((_g128913_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128912_)
                                                 (##vector-length _g128912_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128913_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128913_)))
                                    (let ((_g128915_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128914_)
                                                 (##vector-length _g128914_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128915_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128915_)))
                                    (let ((_%hd-e128513%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128912_ 0)))
                                          (_%hd-vars128514%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128912_ 1))))
                                      (let ((_%tl-e128515%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128914_ 0)))
                                            (_%tl-vars128516%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128914_ 1))))
                                        (let _%lp128518%_ ((_%rest128520%_
                                                            _%hd-vars128514%_)
                                                           (_%targets128521%_
                                                            '())
                                                           (_%vars128522%_
                                                            _%tl-vars128516%_))
                                          (let* ((_%rest128523128533%_
                                                  _%rest128520%_)
                                                 (_%else128525128541%_
                                                  (lambda ()
                                                    (if (null? _%targets128521%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx128338%_
                                                           _%where128508%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth128509%_
                                    (cons _%hd-e128513%_
                                          (cons _%tl-e128515%_
                                                _%targets128521%_))))
                        _%vars128522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K128527128553%_
                                                  (lambda (_%rest128544%_
                                                           _%hd-pat128545%_
                                                           _%hd-depth*128546%_)
                                                    (let ((_%hd-depth128548%_
                                                           (fx- _%hd-depth*128546%_
                                                                _%depth128509%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth128548%_))
                                                          (_%lp128518%_
                                                           _%rest128544%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat128545%_)
                         _%targets128521%_)
                   (cons (cons _%hd-depth128548%_ _%hd-pat128545%_)
                         _%vars128522%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth128548%_))
                      (_%lp128518%_
                       _%rest128544%_
                       (cons (cons 'pattern _%hd-pat128545%_)
                             _%targets128521%_)
                       _%vars128522%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx128338%_
                         _%where128508%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest128523128533%_))
                                                (let ((_%hd128528128556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest128523128533%_)))
                                                      (_%tl128529128558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest128523128533%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd128528128556%_))
                                                      (let ((_%hd128530128561%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd128528128556%_)))
                    (_%tl128531128563%_
                     (let () (declare (not safe)) (##cdr _%hd128528128556%_))))
                (let* ((_%hd-depth*128566%_ _%hd128530128561%_)
                       (_%hd-pat128568%_ _%tl128531128563%_)
                       (_%rest128570%_ _%tl128529128558%_))
                  (_%K128527128553%_
                   _%rest128570%_
                   _%hd-pat128568%_
                   _%hd-depth*128566%_)))
              (_%else128525128541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else128525128541%_))))))))))
                             (_%recur128386%_
                              (lambda (_%e128391%_ _%is-e?128392%_)
                                (if (_%is-e?128392%_ _%e128391%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx128338%_))
                                    (if (gx#syntax-local-pattern? _%e128391%_)
                                        (let* ((_%pat128396%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e128391%_)))
                                               (_%depth128398%_
                                                (##structure-ref
                                                 _%pat128396%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth128398%_)
                                              (values (cons 'ref _%pat128396%_)
                                                      (cons (cons _%depth128398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat128396%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat128396%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e128391%_))
                                            (values (cons 'term _%e128391%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e128391%_))
                                                (let* ((_%e128402128409%_
                                                        _%e128391%_)
                                                       (_%E128404128413%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e128402128409%_))))
                                                       (_%E128403128495%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e128402128409%_))
                      (let ((_%e128405128417%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e128402128409%_))))
                        (let ((_%hd128406128420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e128405128417%_)))
                              (_%tl128407128422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e128405128417%_))))
                          (let* ((_%hd128425%_ _%hd128406128420%_)
                                 (_%rest128427%_ _%tl128407128422%_))
                            (if '#t
                                (if (_%is-e?128392%_ _%hd128425%_)
                                    (let* ((_%e128428128435%_ _%rest128427%_)
                                           (_%E128430128439%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx128338%_
                                                 _%e128391%_))))
                                           (_%E128429128453%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e128428128435%_))
                                                  (let ((_%e128431128443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e128428128435%_))))
                                                    (let ((_%hd128432128446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e128431128443%_)))
                                                          (_%tl128433128448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e128431128443%_))))
                                                      (let ((_%rest128451%_
                                                             _%hd128432128446%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl128433128448%_))
                                                            (if '#t
                                                                (_%recur128386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest128451%_
                         false)
                        (_%E128430128439%_))
                    (_%E128430128439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128430128439%_)))))
                                      (_%E128429128453%_))
                                    (let _%lp128457%_ ((_%rest128459%_
                                                        _%rest128427%_)
                                                       (_%depth128460%_ '0))
                                      (let* ((_%e128461128468%_ _%rest128459%_)
                                             (_%E128463128472%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth128460%_)
                                                    (_%make-splice128385%_
                                                     _%e128391%_
                                                     _%depth128460%_
                                                     (_%recur128386%_
                                                      _%hd128425%_
                                                      _%is-e?128392%_)
                                                     (_%recur128386%_
                                                      _%rest128459%_
                                                      _%is-e?128392%_))
                                                    (_%make-cons128384%_
                                                     (_%recur128386%_
                                                      _%hd128425%_
                                                      _%is-e?128392%_)
                                                     (_%recur128386%_
                                                      _%rest128459%_
                                                      _%is-e?128392%_)))))
                                             (_%E128462128491%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e128461128468%_))
                                                    (let ((_%e128464128476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e128461128468%_))))
                                                      (let ((_%hd128465128479%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e128464128476%_)))
                    (_%tl128466128481%_
                     (let () (declare (not safe)) (##cdr _%e128464128476%_))))
                (let* ((_%rest-hd128484%_ _%hd128465128479%_)
                       (_%rest-tl128486%_ _%tl128466128481%_))
                  (if '#t
                      (if (_%is-e?128392%_ _%rest-hd128484%_)
                          (_%lp128457%_
                           _%rest-tl128486%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth128460%_ '1)))
                          (if (fxpositive? _%depth128460%_)
                              (_%make-splice128385%_
                               _%e128391%_
                               _%depth128460%_
                               (_%recur128386%_ _%hd128425%_ _%is-e?128392%_)
                               (_%recur128386%_
                                _%rest128459%_
                                _%is-e?128392%_))
                              (_%make-cons128384%_
                               (_%recur128386%_ _%hd128425%_ _%is-e?128392%_)
                               (_%recur128386%_
                                _%rest128459%_
                                _%is-e?128392%_))))
                      (_%E128463128472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128463128472%_)))))
                                        (_%E128462128491%_))))
                                (_%E128404128413%_)))))
                      (_%E128404128413%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128403128495%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e128391%_))
                                                    (let ((_g128916_
                                                           (_%recur128386%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e128391%_)))
                    _%is-e?128392%_)))
              (begin
                (let ((_g128917_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g128916_)
                             (##vector-length _g128916_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g128917_ 2)))
                      (error "Context expects 2 values" _g128917_)))
                (let ((_%e128500%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g128916_ 0)))
                      (_%vars128501%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g128916_ 1))))
                  (values (cons 'vector _%e128500%_) _%vars128501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e128391%_))
                                                        (let ((_g128918_
                                                               (_%recur128386%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e128391%_)))
                        _%is-e?128392%_)))
                  (begin
                    (let ((_g128919_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g128918_)
                                 (##vector-length _g128918_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g128919_ 2)))
                          (error "Context expects 2 values" _g128919_)))
                    (let ((_%e128504%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g128918_ 0)))
                          (_%vars128505%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g128918_ 1))))
                      (values (cons 'box _%e128504%_) _%vars128505%_))))
                (values (cons 'datum _%e128391%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g128920_
                             (_%recur128386%_ _%e128382%_ gx#ellipsis?)))
                        (begin
                          (let ((_g128921_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g128920_)
                                       (##vector-length _g128920_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g128921_ 2)))
                                (error "Context expects 2 values" _g128921_)))
                          (let ((_%tree128388%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g128920_ 0)))
                                (_%vars128389%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g128920_ 1))))
                            (if (null? _%vars128389%_)
                                _%tree128388%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx128338%_
                                   _%vars128389%_))))))))))
          (let* ((_%e128342128352%_ _%stx128338%_)
                 (_%E128344128356%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx128338%_))))
                 (_%E128343128378%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128342128352%_))
                        (let ((_%e128345128360%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128342128352%_))))
                          (let ((_%hd128346128363%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128345128360%_)))
                                (_%tl128347128365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128345128360%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128347128365%_))
                                (let ((_%e128348128368%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128347128365%_))))
                                  (let ((_%hd128349128371%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128348128368%_)))
                                        (_%tl128350128373%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128348128368%_))))
                                    (let ((_%form128376%_ _%hd128349128371%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl128350128373%_))
                                          (if '#t
                                              (let ((__tmp128923
                                                     (_%generate128340%_
                                                      (_%parse128341%_
                                                       _%form128376%_)))
                                                    (__tmp128922
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx128338%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp128923
                                                 __tmp128922))
                                              (_%E128344128356%_))
                                          (_%E128344128356%_)))))
                                (_%E128344128356%_))))
                        (_%E128344128356%_)))))
            (_%E128343128378%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx127587%_
               _%identifier=?127588%_
               _%unwrap-e127589%_
               _%wrap-e127590%_)
        (letrec ((_%generate-bindings127592%_
                  (lambda (_%target128202%_
                           _%ids128203%_
                           _%clauses128204%_
                           _%clause-ids128205%_
                           _%E128206%_)
                    (letrec ((_%generate1128208%_
                              (lambda (_%clause128305%_
                                       _%clause-id128306%_
                                       _%E128307%_)
                                (cons (cons _%clause-id128306%_ '())
                                      (cons (let ((__tmp128925
                                                   (cons _%target128202%_ '()))
                                                  (__tmp128924
                                                   (_%generate-clause127594%_
                                                    _%target128202%_
                                                    _%ids128203%_
                                                    _%clause128305%_
                                                    _%E128307%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp128925
                                               __tmp128924))
                                            '())))))
                      (let _%lp128210%_ ((_%rest128212%_ _%clauses128204%_)
                                         (_%rest-ids128213%_
                                          _%clause-ids128205%_)
                                         (_%bindings128214%_ '()))
                        (let* ((_%rest128215128223%_ _%rest128212%_)
                               (_%else128217128231%_
                                (lambda () _%bindings128214%_))
                               (_%K128219128293%_
                                (lambda (_%rest128234%_ _%clause128235%_)
                                  (let* ((_%rest-ids128236128243%_
                                          _%rest-ids128213%_)
                                         (_%E128238128247%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128236128243%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128239128281%_
                                          (lambda (_%rest-ids128250%_
                                                   _%clause-id128251%_)
                                            (let* ((_%rest-ids128252128260%_
                                                    _%rest-ids128250%_)
                                                   (_%else128254128268%_
                                                    (lambda ()
                                                      (cons (_%generate1128208%_
                                                             _%clause128235%_
                                                             _%clause-id128251%_
                                                             _%E128206%_)
                                                            _%bindings128214%_)))
                                                   (_%K128256128273%_
                                                    (lambda (_%next-clause-id128271%_)
                                                      (_%lp128210%_
                                                       _%rest128234%_
                                                       _%rest-ids128250%_
                                                       (cons (_%generate1128208%_
                                                              _%clause128235%_
                                                              _%clause-id128251%_
                                                              _%next-clause-id128271%_)
                                                             _%bindings128214%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128252128260%_))
                                                  (let* ((_%hd128257128276%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128252128260%_)))
                                                         (_%next-clause-id128279%_
                                                          _%hd128257128276%_))
                                                    (_%K128256128273%_
                                                     _%next-clause-id128279%_))
                                                  (_%else128254128268%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128236128243%_))
                                        (let ((_%hd128240128284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128236128243%_)))
                                              (_%tl128241128286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128236128243%_))))
                                          (let* ((_%clause-id128289%_
                                                  _%hd128240128284%_)
                                                 (_%rest-ids128291%_
                                                  _%tl128241128286%_))
                                            (_%K128239128281%_
                                             _%rest-ids128291%_
                                             _%clause-id128289%_)))
                                        (_%E128238128247%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128215128223%_))
                              (let ((_%hd128220128296%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128215128223%_)))
                                    (_%tl128221128298%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128215128223%_))))
                                (let* ((_%clause128301%_ _%hd128220128296%_)
                                       (_%rest128303%_ _%tl128221128298%_))
                                  (_%K128219128293%_
                                   _%rest128303%_
                                   _%clause128301%_)))
                              (_%else128217128231%_)))))))
                 (_%generate-body127593%_
                  (lambda (_%bindings128162%_ _%body128163%_)
                    (let _%recur128165%_ ((_%rest128167%_ _%bindings128162%_))
                      (let* ((_%rest128168128176%_ _%rest128167%_)
                             (_%else128170128184%_ (lambda () _%body128163%_))
                             (_%K128172128190%_
                              (lambda (_%rest128187%_ _%hd128188%_)
                                (let ((__tmp128927 (cons _%hd128188%_ '()))
                                      (__tmp128926
                                       (_%recur128165%_ _%rest128187%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp128927
                                   __tmp128926)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128168128176%_))
                            (let ((_%hd128173128193%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128168128176%_)))
                                  (_%tl128174128195%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128168128176%_))))
                              (let* ((_%hd128198%_ _%hd128173128193%_)
                                     (_%rest128200%_ _%tl128174128195%_))
                                (_%K128172128190%_
                                 _%rest128200%_
                                 _%hd128198%_)))
                            (_%else128170128184%_))))))
                 (_%generate-clause127594%_
                  (lambda (_%target128025%_
                           _%ids128026%_
                           _%clause128027%_
                           _%E128028%_)
                    (letrec ((_%generate1128030%_
                              (lambda (_%hd128117%_
                                       _%fender128118%_
                                       _%body128119%_)
                                (let ((_g128928_
                                       (_%parse-clause127596%_
                                        _%hd128117%_
                                        _%ids128026%_)))
                                  (begin
                                    (let ((_g128929_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128928_)
                                                 (##vector-length _g128928_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128929_ 2)))
                                          (error "Context expects 2 values"
                                                 _g128929_)))
                                    (let ((_%e128121%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128928_ 0)))
                                          (_%mvars128122%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128928_ 1))))
                                      (let* ((_%pvars128124%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128122%_))))
                                             (_%E128126%_
                                              (cons _%E128028%_
                                                    (cons _%target128025%_
                                                          '())))
                                             (_%K128159%_
                                              (let ((__tmp128930
                                                     (let ((__tmp128932
                                                            (map (lambda (_%mvar128128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128129%_)
                           (let* ((_%mvar128130128137%_ _%mvar128128%_)
                                  (_%E128132128141%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128130128137%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128133128147%_
                                   (lambda (_%depth128144%_ _%id128145%_)
                                     (cons _%id128145%_
                                           (cons (let ((__tmp128934
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128145%_)))
                                                       (__tmp128933
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128129%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp128934
                                                    __tmp128933
                                                    _%depth128144%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128130128137%_))
                                 (let ((_%hd128134128150%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128130128137%_)))
                                       (_%tl128135128152%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128130128137%_))))
                                   (let* ((_%id128155%_ _%hd128134128150%_)
                                          (_%depth128157%_ _%tl128135128152%_))
                                     (_%K128133128147%_
                                      _%depth128157%_
                                      _%id128155%_)))
                                 (_%E128132128141%_))))
                         _%mvars128122%_
                         _%pvars128124%_))
                   (__tmp128931
                    (if (eq? _%fender128118%_ '#t)
                        _%body128119%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128118%_
                           _%body128119%_
                           _%E128126%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp128932 __tmp128931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128124%_
                                                 __tmp128930))))
                                        (_%generate-match127595%_
                                         _%hd128117%_
                                         _%target128025%_
                                         _%e128121%_
                                         _%mvars128122%_
                                         _%K128159%_
                                         _%E128126%_))))))))
                      (let* ((_%e128031128051%_ _%clause128027%_)
                             (_%E128040128055%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128031128051%_))))
                             (_%E128033128089%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128031128051%_))
                                    (let ((_%e128041128059%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128031128051%_))))
                                      (let ((_%hd128042128062%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128041128059%_)))
                                            (_%tl128043128064%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128041128059%_))))
                                        (let ((_%hd128067%_
                                               _%hd128042128062%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128043128064%_))
                                              (let ((_%e128044128069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128043128064%_))))
                                                (let ((_%hd128045128072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128044128069%_)))
                                                      (_%tl128046128074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128044128069%_))))
                                                  (let ((_%fender128077%_
                                                         _%hd128045128072%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128046128074%_))
                                                        (let ((_%e128047128079%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128046128074%_))))
                  (let ((_%hd128048128082%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128047128079%_)))
                        (_%tl128049128084%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128047128079%_))))
                    (let ((_%body128087%_ _%hd128048128082%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128049128084%_))
                          (if '#t
                              (_%generate1128030%_
                               _%hd128067%_
                               _%fender128077%_
                               _%body128087%_)
                              (_%E128040128055%_))
                          (_%E128040128055%_)))))
                (_%E128040128055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E128040128055%_)))))
                                    (_%E128040128055%_))))
                             (_%E128032128113%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128031128051%_))
                                    (let ((_%e128034128093%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128031128051%_))))
                                      (let ((_%hd128035128096%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128034128093%_)))
                                            (_%tl128036128098%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128034128093%_))))
                                        (let ((_%hd128101%_
                                               _%hd128035128096%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128036128098%_))
                                              (let ((_%e128037128103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128036128098%_))))
                                                (let ((_%hd128038128106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128037128103%_)))
                                                      (_%tl128039128108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128037128103%_))))
                                                  (let ((_%body128111%_
                                                         _%hd128038128106%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128039128108%_))
                                                        (if '#t
                                                            (_%generate1128030%_
                                                             _%hd128101%_
                                                             '#t
                                                             _%body128111%_)
                                                            (_%E128033128089%_))
                                                        (_%E128033128089%_)))))
                                              (_%E128033128089%_)))))
                                    (_%E128033128089%_)))))
                        (_%E128032128113%_)))))
                 (_%generate-match127595%_
                  (lambda (_%where127774%_
                           _%target127775%_
                           _%hd127776%_
                           _%mvars127777%_
                           _%K127778%_
                           _%E127779%_)
                    (letrec ((_%BUG127781%_
                              (lambda (_%q128023%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx127587%_
                                         _%hd127776%_
                                         _%q128023%_))))
                             (_%recur127782%_
                              (lambda (_%e127873%_
                                       _%vars127874%_
                                       _%target127875%_
                                       _%E127876%_
                                       _%k127877%_)
                                (let* ((_%e127878127885%_ _%e127873%_)
                                       (_%E127880127889%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e127878127885%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K127881128011%_
                                        (lambda (_%body127892%_ _%tag127893%_)
                                          (let ((_%$e127895%_ _%tag127893%_))
                                            (if (eq? 'any _%$e127895%_)
                                                (_%k127877%_ _%vars127874%_)
                                                (if (eq? 'id _%$e127895%_)
                                                    (let ((__tmp128939
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target127875%_)))
                                                          (__tmp128935
                                                           (let ((__tmp128937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128938
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e127590%_
                                    _%body127892%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?127588%_
                             __tmp128938
                             _%target127875%_)))
                         (__tmp128936 (_%k127877%_ _%vars127874%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp128937 __tmp128936 _%E127876%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp128939 __tmp128935 _%E127876%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e127895%_)
                                                        (_%k127877%_
                                                         (cons (cons _%body127892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target127875%_)
                       _%vars127874%_))
                (if (eq? 'cons _%$e127895%_)
                    (let ((_%$e127898%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd127899%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl127900%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp128945
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target127875%_)))
                            (__tmp128940
                             (let ((__tmp128944
                                    (cons (cons (cons _%$e127898%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e127589%_
                                                         _%target127875%_))
                                                      '()))
                                          '()))
                                   (__tmp128941
                                    (let ((__tmp128943
                                           (cons (cons (cons _%$hd127899%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e127898%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl127900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e127898%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp128942
                                           (let* ((_%body127901127908%_
                                                   _%body127892%_)
                                                  (_%E127903127912%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body127901127908%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K127904127920%_
                                                   (lambda (_%tl127915%_
                                                            _%hd127916%_)
                                                     (_%recur127782%_
                                                      _%hd127916%_
                                                      _%vars127874%_
                                                      _%$hd127899%_
                                                      _%E127876%_
                                                      (lambda (_%vars127918%_)
                                                        (_%recur127782%_
                                                         _%tl127915%_
                                                         _%vars127918%_
                                                         _%$tl127900%_
                                                         _%E127876%_
                                                         _%k127877%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body127901127908%_))
                                                 (let ((_%hd127905127923%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body127901127908%_)))
                                                       (_%tl127906127925%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body127901127908%_))))
                                                   (let* ((_%hd127928%_
                                                           _%hd127905127923%_)
                                                          (_%tl127930%_
                                                           _%tl127906127925%_))
                                                     (_%K127904127920%_
                                                      _%tl127930%_
                                                      _%hd127928%_)))
                                                 (_%E127903127912%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp128943
                                       __tmp128942))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp128944
                                __tmp128941))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp128945
                         __tmp128940
                         _%E127876%_)))
                    (if (eq? 'splice _%$e127895%_)
                        (let* ((_%body127931127938%_ _%body127892%_)
                               (_%E127933127942%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body127931127938%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K127934127993%_
                                (lambda (_%tl127945%_ _%hd127946%_)
                                  (let* ((_%rlen127948%_
                                          (_%splice-rlen127783%_ _%tl127945%_))
                                         (_%$target127950%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd127952%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl127954%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp127956%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e127958%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd127960%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl127962%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars127964%_
                                          (_%splice-vars127784%_ _%hd127946%_))
                                         (_%lvars127966%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars127964%_)))
                                         (_%tlvars127968%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars127964%_)))
                                         (_%linit127972%_
                                          (map (lambda (_%var127970%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars127966%_)))
                                    (letrec ((_%make-loop127975%_
                                              (lambda (_%vars127979%_)
                                                (let ((__tmp128947
                                                       (cons (cons (cons _%$lp127956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp128960
                                        (cons _%$hd127952%_ _%lvars127966%_))
                                       (__tmp128948
                                        (let ((__tmp128959
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd127952%_)))
                                              (__tmp128953
                                               (let ((__tmp128958
                                                      (cons (cons (cons _%$lp-e127958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e127589%_
                                   _%$hd127952%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp128954
                                                      (let ((__tmp128957
                                                             (cons (cons (cons _%$lp-hd127960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e127958%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl127962%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e127958%_))
                                             '()))
                                 '())))
                    (__tmp128955
                     (_%recur127782%_
                      _%hd127946%_
                      '()
                      _%$lp-hd127960%_
                      _%E127876%_
                      (lambda (_%hdvars127981%_)
                        (cons _%$lp127956%_
                              (cons _%$lp-tl127962%_
                                    (map (lambda (_%svar127983%_
                                                  _%lvar127984%_)
                                           (let ((__tmp128956
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar127983%_
                                                     _%hdvars127981%_
                                                     _%BUG127781%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp128956
                                              _%lvar127984%_)))
                                         _%svars127964%_
                                         _%lvars127966%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp128957 __tmp128955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp128958
                                                  __tmp128954)))
                                              (__tmp128949
                                               (let ((__tmp128952
                                                      (map (lambda (_%lvar127986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar127987%_)
                     (cons (cons _%tlvar127987%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar127986%_))
                                 '())))
                   _%lvars127966%_
                   _%tlvars127968%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp128950
                                                      (_%k127877%_
                                                       (let ((__tmp128951
                                                              (lambda (_%svar127989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar127990%_
                               _%r127991%_)
                        (cons (cons _%svar127989%_ _%tlvar127990%_)
                              _%r127991%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp128951
                  _%vars127979%_
                  _%svars127964%_
                  _%tlvars127968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp128952
                                                  __tmp128950))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp128959
                                           __tmp128953
                                           __tmp128949))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp128960
                                    __tmp128948))
                                 '()))
                     '()))
              (__tmp128946
               (cons _%$lp127956%_ (cons _%$target127950%_ _%linit127972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp128947
                                                   __tmp128946)))))
                                      (let ((_%body127977%_
                                             (let ((__tmp128962
                                                    (cons (cons (cons _%$target127950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl127954%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target127875%_
                                 _%rlen127948%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp128961
                                                    (_%recur127782%_
                                                     _%tl127945%_
                                                     _%vars127874%_
                                                     _%$tl127954%_
                                                     _%E127876%_
                                                     _%make-loop127975%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp128962
                                                __tmp128961))))
                                        (let ((__tmp128966
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target127875%_)))
                                              (__tmp128963
                                               (if (zero? _%rlen127948%_)
                                                   _%body127977%_
                                                   (let ((__tmp128964
                                                          (let ((__tmp128965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target127875%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp128965 _%rlen127948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp128964
                                                      _%body127977%_
                                                      _%E127876%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp128966
                                           __tmp128963
                                           _%E127876%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body127931127938%_))
                              (let ((_%hd127935127996%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body127931127938%_)))
                                    (_%tl127936127998%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body127931127938%_))))
                                (let* ((_%hd128001%_ _%hd127935127996%_)
                                       (_%tl128003%_ _%tl127936127998%_))
                                  (_%K127934127993%_
                                   _%tl128003%_
                                   _%hd128001%_)))
                              (_%E127933127942%_)))
                        (if (eq? 'null _%$e127895%_)
                            (let ((__tmp128968
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target127875%_)))
                                  (__tmp128967 (_%k127877%_ _%vars127874%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp128968
                               __tmp128967
                               _%E127876%_))
                            (if (eq? 'vector _%$e127895%_)
                                (let ((_%$e128005%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp128973
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target127875%_)))
                                        (__tmp128969
                                         (let ((__tmp128971
                                                (cons (cons (cons _%$e128005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp128972
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e127589%_
                                    _%target127875%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp128972))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp128970
                                                (_%recur127782%_
                                                 _%body127892%_
                                                 _%vars127874%_
                                                 _%$e128005%_
                                                 _%E127876%_
                                                 _%k127877%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp128971
                                            __tmp128970))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp128973
                                     __tmp128969
                                     _%E127876%_)))
                                (if (eq? 'box _%$e127895%_)
                                    (let ((_%$e128007%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp128978
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target127875%_)))
                                            (__tmp128974
                                             (let ((__tmp128976
                                                    (cons (cons (cons _%$e128007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp128977
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e127589%_
                                        _%target127875%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp128977))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp128975
                                                    (_%recur127782%_
                                                     _%body127892%_
                                                     _%vars127874%_
                                                     _%$e128007%_
                                                     _%E127876%_
                                                     _%k127877%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp128976
                                                __tmp128975))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp128978
                                         __tmp128974
                                         _%E127876%_)))
                                    (if (eq? 'datum _%$e127895%_)
                                        (let ((_%$e128009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp128984
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target127875%_)))
                                                (__tmp128979
                                                 (let ((__tmp128983
                                                        (cons (cons (cons _%$e128009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target127875%_))
                                  '()))
                      '()))
               (__tmp128980
                (let ((__tmp128982
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128009%_ _%body127892%_)))
                      (__tmp128981 (_%k127877%_ _%vars127874%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp128982 __tmp128981 _%E127876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp128983
                                                    __tmp128980))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp128984
                                             __tmp128979
                                             _%E127876%_)))
                                        (_%BUG127781%_
                                         _%e127873%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e127878127885%_))
                                      (let ((_%hd127882128014%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e127878127885%_)))
                                            (_%tl127883128016%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e127878127885%_))))
                                        (let* ((_%tag128019%_
                                                _%hd127882128014%_)
                                               (_%body128021%_
                                                _%tl127883128016%_))
                                          (_%K127881128011%_
                                           _%body128021%_
                                           _%tag128019%_)))
                                      (_%E127880127889%_)))))
                             (_%splice-rlen127783%_
                              (lambda (_%e127835%_)
                                (let _%lp127837%_ ((_%e127839%_ _%e127835%_)
                                                   (_%n127840%_ '0))
                                  (let* ((_%e127841127848%_ _%e127839%_)
                                         (_%E127843127852%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127841127848%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127844127861%_
                                          (lambda (_%body127855%_
                                                   _%tag127856%_)
                                            (let ((_%$e127858%_ _%tag127856%_))
                                              (if (eq? 'splice _%$e127858%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx127587%_
                                                     _%where127774%_))
                                                  (if (eq? 'cons _%$e127858%_)
                                                      (_%lp127837%_
                                                       (cdr _%body127855%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n127840%_
                                                                '1)))
                                                      _%n127840%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127841127848%_))
                                        (let ((_%hd127845127864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127841127848%_)))
                                              (_%tl127846127866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127841127848%_))))
                                          (let* ((_%tag127869%_
                                                  _%hd127845127864%_)
                                                 (_%body127871%_
                                                  _%tl127846127866%_))
                                            (_%K127844127861%_
                                             _%body127871%_
                                             _%tag127869%_)))
                                        (_%E127843127852%_))))))
                             (_%splice-vars127784%_
                              (lambda (_%e127791%_)
                                (let _%recur127793%_ ((_%e127795%_ _%e127791%_)
                                                      (_%vars127796%_ '()))
                                  (let* ((_%e127797127804%_ _%e127795%_)
                                         (_%E127799127808%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e127797127804%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K127800127823%_
                                          (lambda (_%body127811%_
                                                   _%tag127812%_)
                                            (let ((_%$e127814%_ _%tag127812%_))
                                              (if (eq? 'var _%$e127814%_)
                                                  (cons _%body127811%_
                                                        _%vars127796%_)
                                                  (if (or (eq? 'cons
                                                               _%$e127814%_)
                                                          (eq? 'splice
                                                               _%$e127814%_))
                                                      (_%recur127793%_
                                                       (cdr _%body127811%_)
                                                       (_%recur127793%_
                                                        (car _%body127811%_)
                                                        _%vars127796%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e127814%_)
                      (eq? 'box _%$e127814%_))
                  (_%recur127793%_ _%body127811%_ _%vars127796%_)
                  _%vars127796%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e127797127804%_))
                                        (let ((_%hd127801127826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e127797127804%_)))
                                              (_%tl127802127828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e127797127804%_))))
                                          (let* ((_%tag127831%_
                                                  _%hd127801127826%_)
                                                 (_%body127833%_
                                                  _%tl127802127828%_))
                                            (_%K127800127823%_
                                             _%body127833%_
                                             _%tag127831%_)))
                                        (_%E127799127808%_))))))
                             (_%make-body127785%_
                              (lambda (_%vars127787%_)
                                (cons _%K127778%_
                                      (map (lambda (_%mvar127789%_)
                                             (let ((__tmp128985
                                                    (car _%mvar127789%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp128985
                                                _%vars127787%_
                                                _%BUG127781%_)))
                                           _%mvars127777%_)))))
                      (_%recur127782%_
                       _%hd127776%_
                       '()
                       _%target127775%_
                       _%E127779%_
                       _%make-body127785%_))))
                 (_%parse-clause127596%_
                  (lambda (_%hd127668%_ _%ids127669%_)
                    (let _%recur127671%_ ((_%e127673%_ _%hd127668%_)
                                          (_%vars127674%_ '())
                                          (_%depth127675%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e127673%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e127673%_))
                              (values '(any) _%vars127674%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e127673%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx127587%_
                                     _%hd127668%_))
                                  (if (let ((__tmp128986
                                             (lambda (_%id127680%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e127673%_
                                                  _%id127680%_)))))
                                        (declare (not safe))
                                        (__find __tmp128986 _%ids127669%_))
                                      (values (cons 'id _%e127673%_)
                                              _%vars127674%_)
                                      (if (let ((__tmp128987
                                                 (lambda (_%var127683%_)
                                                   (let ((__tmp128988
                                                          (car _%var127683%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e127673%_
                                                      __tmp128988)))))
                                            (declare (not safe))
                                            (__find __tmp128987
                                                    _%vars127674%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx127587%_
                                             _%e127673%_))
                                          (values (cons 'var _%e127673%_)
                                                  (cons (cons _%e127673%_
                                                              _%depth127675%_)
                                                        _%vars127674%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e127673%_))
                              (let* ((_%e127687127694%_ _%e127673%_)
                                     (_%E127689127698%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e127687127694%_))))
                                     (_%E127688127759%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e127687127694%_))
                                            (let ((_%e127690127702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e127687127694%_))))
                                              (let ((_%hd127691127705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e127690127702%_)))
                                                    (_%tl127692127707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e127690127702%_))))
                                                (let* ((_%hd127710%_
                                                        _%hd127691127705%_)
                                                       (_%rest127712%_
                                                        _%tl127692127707%_))
                                                  (if '#t
                                                      (let* ((_%make-pair127727%_
                                                              (lambda (_%tag127714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd127715%_
                               _%tl127716%_)
                        (let* ((_%hd-depth127718%_
                                (if (eq? _%tag127714%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth127675%_ '1))
                                    _%depth127675%_))
                               (_g128989_
                                (_%recur127671%_
                                 _%hd127715%_
                                 _%vars127674%_
                                 _%hd-depth127718%_)))
                          (begin
                            (let ((_g128990_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g128989_)
                                         (##vector-length _g128989_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g128990_ 2)))
                                  (error "Context expects 2 values"
                                         _g128990_)))
                            (let ((_%hd127720%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g128989_ 0)))
                                  (_%vars127721%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g128989_ 1))))
                              (let ((_g128991_
                                     (_%recur127671%_
                                      _%tl127716%_
                                      _%vars127721%_
                                      _%depth127675%_)))
                                (begin
                                  (let ((_g128992_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g128991_)
                                               (##vector-length _g128991_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g128992_ 2)))
                                        (error "Context expects 2 values"
                                               _g128992_)))
                                  (let ((_%tl127723%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g128991_ 0)))
                                        (_%vars127724%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g128991_ 1))))
                                    (values (cons _%tag127714%_
                                                  (cons _%hd127720%_
                                                        _%tl127723%_))
                                            _%vars127724%_)))))))))
                     (_%e127728127735%_ _%rest127712%_)
                     (_%E127730127739%_
                      (lambda ()
                        (_%make-pair127727%_
                         'cons
                         _%hd127710%_
                         _%rest127712%_)))
                     (_%E127729127755%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e127728127735%_))
                            (let ((_%e127731127743%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e127728127735%_))))
                              (let ((_%hd127732127746%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e127731127743%_)))
                                    (_%tl127733127748%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e127731127743%_))))
                                (let* ((_%rest-hd127751%_ _%hd127732127746%_)
                                       (_%rest-tl127753%_ _%tl127733127748%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd127751%_))
                                          (_%make-pair127727%_
                                           'splice
                                           _%hd127710%_
                                           _%rest-tl127753%_)
                                          (_%make-pair127727%_
                                           'cons
                                           _%hd127710%_
                                           _%rest127712%_))
                                      (_%E127730127739%_)))))
                            (_%E127730127739%_)))))
                (_%E127729127755%_))
              (_%E127689127698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E127689127698%_)))))
                                (_%E127688127759%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e127673%_))
                                  (values '(null) _%vars127674%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e127673%_))
                                      (let ((_g128993_
                                             (_%recur127671%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e127673%_)))
                                              _%vars127674%_
                                              _%depth127675%_)))
                                        (begin
                                          (let ((_g128994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g128993_)
                                                       (##vector-length
                                                        _g128993_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g128994_ 2)))
                                                (error "Context expects 2 values"
                                                       _g128994_)))
                                          (let ((_%e127765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g128993_ 0)))
                                                (_%vars127766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g128993_
                                                    1))))
                                            (values (cons 'vector _%e127765%_)
                                                    _%vars127766%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e127673%_))
                                          (let ((_g128995_
                                                 (_%recur127671%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e127673%_)))
                                                  _%vars127674%_
                                                  _%depth127675%_)))
                                            (begin
                                              (let ((_g128996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g128995_)
                                                           (##vector-length
                                                            _g128995_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g128996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g128996_)))
                                              (let ((_%e127769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g128995_
                                                        0)))
                                                    (_%vars127770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g128995_
                                                        1))))
                                                (values (cons 'box _%e127769%_)
                                                        _%vars127770%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e127673%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e127673%_)))
                                                      _%vars127674%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx127587%_
                                                 _%e127673%_))))))))))))
          (let* ((_%e127597127610%_ _%stx127587%_)
                 (_%E127599127614%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e127597127610%_))))
                 (_%E127598127664%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e127597127610%_))
                        (let ((_%e127600127618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e127597127610%_))))
                          (let ((_%hd127601127621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127600127618%_)))
                                (_%tl127602127623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127600127618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl127602127623%_))
                                (let ((_%e127603127626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl127602127623%_))))
                                  (let ((_%hd127604127629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127603127626%_)))
                                        (_%tl127605127631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127603127626%_))))
                                    (let ((_%expr127634%_ _%hd127604127629%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl127605127631%_))
                                          (let ((_%e127606127636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl127605127631%_))))
                                            (let ((_%hd127607127639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127606127636%_)))
                                                  (_%tl127608127641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127606127636%_))))
                                              (let* ((_%ids127644%_
                                                      _%hd127607127639%_)
                                                     (_%clauses127646%_
                                                      _%tl127608127641%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids127644%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx127587%_
                   _%ids127644%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses127646%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx127587%_))
                    (let* ((_%ids127651%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids127644%_)))
                           (_%clauses127653%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses127646%_)))
                           (_%clause-ids127655%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses127653%_)))
                           (_%E127657%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target127659%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first127661%_
                            (if (null? _%clauses127653%_)
                                _%E127657%_
                                (car _%clause-ids127655%_))))
                      (let ((__tmp128998
                             (let ((__tmp128999
                                    (let ((__tmp129001
                                           (let ((__tmp129003
                                                  (cons (cons (cons _%E127657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp129005 (cons _%target127659%_ '()))
                                  (__tmp129004
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target127659%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp129005 __tmp129004))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp129002
                                                  (_%generate-body127593%_
                                                   (_%generate-bindings127592%_
                                                    _%target127659%_
                                                    _%ids127651%_
                                                    _%clauses127653%_
                                                    _%clause-ids127655%_
                                                    _%E127657%_)
                                                   (cons _%first127661%_
                                                         (cons _%expr127634%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp129003
                                              __tmp129002)))
                                          (__tmp129000
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx127587%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp129001
                                       __tmp129000))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp128999)))
                            (__tmp128997
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx127587%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp128998 __tmp128997)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E127599127614%_)))))
                                          (_%E127599127614%_)))))
                                (_%E127599127614%_))))
                        (_%E127599127614%_)))))
            (_%E127598127664%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx128312%_)
        (let* ((_%identifier=?128314%_ 'free-identifier=?)
               (_%unwrap-e128316%_ 'syntax-e)
               (_%wrap-e128318%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128312%_
           _%identifier=?128314%_
           _%unwrap-e128316%_
           _%wrap-e128318%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx128320%_ _%identifier=?128321%_)
        (let* ((_%unwrap-e128323%_ 'syntax-e) (_%wrap-e128325%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128320%_
           _%identifier=?128321%_
           _%unwrap-e128323%_
           _%wrap-e128325%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx128327%_ _%identifier=?128328%_ _%unwrap-e128329%_)
        (let ((_%wrap-e128331%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx128327%_
           _%identifier=?128328%_
           _%unwrap-e128329%_
           _%wrap-e128331%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129007_
        (let ((_g129006_ (let () (declare (not safe)) (##length _g129007_))))
          (cond ((let () (declare (not safe)) (##fx= _g129006_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g129007_))
                ((let () (declare (not safe)) (##fx= _g129006_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g129007_))
                ((let () (declare (not safe)) (##fx= _g129006_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g129007_))
                ((let () (declare (not safe)) (##fx= _g129006_ 4))
                 (apply gx#macro-expand-syntax-case__% _g129007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129007_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx127584%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx127584%_))
            (let ((__tmp129008
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx127584%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129008 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd127542%_ . _%rest127543%_)
        (let ((_%len127545%_ (length _%hd127542%_)))
          (let _%lp127547%_ ((_%rest127549%_ _%rest127543%_))
            (let* ((_%rest127550127558%_ _%rest127549%_)
                   (_%else127552127566%_ (lambda () '#!void))
                   (_%K127554127572%_
                    (lambda (_%rest127569%_ _%hd127570%_)
                      (if (let ((__tmp129009 (length _%hd127570%_)))
                            (declare (not safe))
                            (##fx= _%len127545%_ __tmp129009))
                          (_%lp127547%_ _%rest127569%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd127570%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest127550127558%_))
                  (let ((_%hd127555127575%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest127550127558%_)))
                        (_%tl127556127577%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest127550127558%_))))
                    (let* ((_%hd127580%_ _%hd127555127575%_)
                           (_%rest127582%_ _%tl127556127577%_))
                      (_%K127554127572%_ _%rest127582%_ _%hd127580%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx127497%_ _%n127498%_)
        (let _%lp127500%_ ((_%rest127502%_ _%stx127497%_) (_%r127503%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest127502%_))
              (let* ((_%g127504127511%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest127502%_)))
                     (_%E127506127515%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g127504127511%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K127507127521%_
                      (lambda (_%rest127518%_ _%hd127519%_)
                        (_%lp127500%_
                         _%rest127518%_
                         (cons _%hd127519%_ _%r127503%_)))))
                (if (let () (declare (not safe)) (##pair? _%g127504127511%_))
                    (let ((_%hd127508127524%_
                           (let ()
                             (declare (not safe))
                             (##car _%g127504127511%_)))
                          (_%tl127509127526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g127504127511%_))))
                      (let* ((_%hd127529%_ _%hd127508127524%_)
                             (_%rest127531%_ _%tl127509127526%_))
                        (_%K127507127521%_ _%rest127531%_ _%hd127529%_)))
                    (_%E127506127515%_)))
              (let _%lp127533%_ ((_%n127535%_ _%n127498%_)
                                 (_%l127536%_ _%r127503%_)
                                 (_%r127537%_ _%rest127502%_))
                (if (null? _%l127536%_)
                    (values _%l127536%_ _%r127537%_)
                    (if (fxpositive? _%n127535%_)
                        (_%lp127533%_
                         (let () (declare (not safe)) (##fx- _%n127535%_ '1))
                         (cdr _%l127536%_)
                         (cons (car _%l127536%_) _%r127537%_))
                        (values (reverse _%l127536%_) _%r127537%_))))))))))
