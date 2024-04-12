(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712846034)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp130959 (list gx#expander::t))
            (__tmp130958 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp130959
         '(id depth)
         __tmp130958
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args130955%_
        (apply make-instance gx#syntax-pattern::t _%$args130955%_)))
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
      (lambda (_%self129562130939%_ _%stx130941%_)
        (let* ((_%self130943%_ _%self129562130939%_)
               (_%self130945%_ _%self130943%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx130941%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx130405%_)
        (letrec ((_%generate130407%_
                  (lambda (_%e130647%_)
                    (letrec ((_%BUG130649%_
                              (lambda (_%q130814%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx130405%_
                                         _%e130647%_
                                         _%q130814%_))))
                             (_%local-pattern-e130650%_
                              (lambda (_%pat130812%_)
                                (let ((__tmp130960
                                       (##structure-ref
                                        _%pat130812%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp130960))))
                             (_%getvar130651%_
                              (lambda (_%q130809%_ _%vars130810%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q130809%_
                                   _%vars130810%_
                                   _%BUG130649%_))))
                             (_%getarg130652%_
                              (lambda (_%arg130775%_ _%vars130776%_)
                                (let* ((_%arg130777130784%_ _%arg130775%_)
                                       (_%E130779130788%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg130777130784%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K130780130797%_
                                        (lambda (_%e130791%_ _%tag130792%_)
                                          (let ((_%$e130794%_ _%tag130792%_))
                                            (if (eq? 'ref _%$e130794%_)
                                                (_%getvar130651%_
                                                 _%e130791%_
                                                 _%vars130776%_)
                                                (if (eq? 'pattern _%$e130794%_)
                                                    (_%local-pattern-e130650%_
                                                     _%e130791%_)
                                                    (_%BUG130649%_
                                                     _%arg130775%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg130777130784%_))
                                      (let ((_%hd130781130800%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg130777130784%_)))
                                            (_%tl130782130802%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg130777130784%_))))
                                        (let* ((_%tag130805%_
                                                _%hd130781130800%_)
                                               (_%e130807%_
                                                _%tl130782130802%_))
                                          (_%K130780130797%_
                                           _%e130807%_
                                           _%tag130805%_)))
                                      (_%E130779130788%_))))))
                      (let _%recur130654%_ ((_%e130656%_ _%e130647%_)
                                            (_%vars130657%_ '()))
                        (let* ((_%e130658130665%_ _%e130656%_)
                               (_%E130660130669%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e130658130665%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K130661130763%_
                                (lambda (_%body130672%_ _%tag130673%_)
                                  (let ((_%$e130675%_ _%tag130673%_))
                                    (if (eq? 'datum _%$e130675%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body130672%_))
                                        (if (eq? 'term _%$e130675%_)
                                            (let ((_%id130678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body130672%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id130678%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks130681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id130678%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks130681%_)
                                                        (let ((__tmp130961
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body130672%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp130961))
                (let ((__tmp130963
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body130672%_)))
                      (__tmp130962
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body130672%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp130963
                   __tmp130962
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id130678%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body130672%_))
                                                      (_%BUG130649%_
                                                       _%e130656%_))))
                                            (if (eq? 'pattern _%$e130675%_)
                                                (_%local-pattern-e130650%_
                                                 _%body130672%_)
                                                (if (eq? 'ref _%$e130675%_)
                                                    (_%getvar130651%_
                                                     _%body130672%_
                                                     _%vars130657%_)
                                                    (if (eq? 'cons
                                                             _%$e130675%_)
                                                        (let ((__tmp130965
                                                               (_%recur130654%_
                                                                (car _%body130672%_)
                                                                _%vars130657%_))
                                                              (__tmp130964
                                                               (_%recur130654%_
                                                                (cdr _%body130672%_)
                                                                _%vars130657%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp130965
                                                           __tmp130964))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e130675%_)
                    (let ((__tmp130966
                           (_%recur130654%_ _%body130672%_ _%vars130657%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp130966))
                    (if (eq? 'box _%$e130675%_)
                        (let ((__tmp130967
                               (_%recur130654%_
                                _%body130672%_
                                _%vars130657%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp130967))
                        (if (eq? 'splice _%$e130675%_)
                            (let* ((_%body130684130695%_ _%body130672%_)
                                   (_%E130686130699%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body130684130695%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K130687130737%_
                                    (lambda (_%args130702%_
                                             _%iv130703%_
                                             _%hd130704%_
                                             _%depth130705%_)
                                      (let* ((_%targets130711%_
                                              (map (lambda (_%g130706130708%_)
                                                     (_%getarg130652%_
                                                      _%g130706130708%_
                                                      _%vars130657%_))
                                                   _%args130702%_))
                                             (_%fold-in130713%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args130702%_)))
                                             (_%fold-out130715%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args130717%_
                                              (let ((__tmp130968
                                                     (cons _%fold-out130715%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp130968
                                                 _%fold-in130713%_)))
                                             (_%lambda-body130734%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth130705%_ '1))
                                                  (let ((_%r-args130725%_
                                                         (map (lambda (_%arg130719%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg130719%_)))
                      _%args130702%_))
                (_%r-vars130726%_
                 (let ((__tmp130969
                        (lambda (_%arg130721%_ _%var130722%_ _%r130723%_)
                          (cons (cons (cdr _%arg130721%_) _%var130722%_)
                                _%r130723%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp130969
                    _%vars130657%_
                    _%args130702%_
                    _%fold-in130713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur130654%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth130705%_ '1))
                         (cons _%hd130704%_
                               (cons (cons 'var _%fold-out130715%_)
                                     _%r-args130725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars130726%_))
                                                  (let* ((_%hd-vars130732%_
                                                          (let ((__tmp130970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg130728%_ _%var130729%_ _%r130730%_)
                           (cons (cons (cdr _%arg130728%_) _%var130729%_)
                                 _%r130730%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp130970
                     _%vars130657%_
                     _%args130702%_
                     _%fold-in130713%_)))
                 (__tmp130971
                  (_%recur130654%_ _%hd130704%_ _%hd-vars130732%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp130971
                                                     _%fold-out130715%_)))))
                                        (let ((__tmp130975
                                               (if (let ((__tmp130976
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets130711%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp130976 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets130711%_))
                                                   '#!void))
                                              (__tmp130972
                                               (let ((__tmp130974
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args130717%_
                                                         _%lambda-body130734%_)))
                                                     (__tmp130973
                                                      (_%recur130654%_
                                                       _%iv130703%_
                                                       _%vars130657%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp130974
                                                  __tmp130973
                                                  _%targets130711%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp130975
                                           __tmp130972))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body130684130695%_))
                                  (let ((_%hd130688130740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body130684130695%_)))
                                        (_%tl130689130742%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body130684130695%_))))
                                    (let ((_%depth130745%_ _%hd130688130740%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl130689130742%_))
                                          (let ((_%hd130690130747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl130689130742%_)))
                                                (_%tl130691130749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl130689130742%_))))
                                            (let ((_%hd130752%_
                                                   _%hd130690130747%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl130691130749%_))
                                                  (let ((_%hd130692130754%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl130691130749%_)))
                                                        (_%tl130693130756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl130691130749%_))))
                                                    (let* ((_%iv130759%_
                                                            _%hd130692130754%_)
                                                           (_%args130761%_
                                                            _%tl130693130756%_))
                                                      (_%K130687130737%_
                                                       _%args130761%_
                                                       _%iv130759%_
                                                       _%hd130752%_
                                                       _%depth130745%_)))
                                                  (_%E130686130699%_))))
                                          (_%E130686130699%_))))
                                  (_%E130686130699%_)))
                            (if (eq? 'var _%$e130675%_)
                                _%body130672%_
                                (_%BUG130649%_ _%e130656%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e130658130665%_))
                              (let ((_%hd130662130766%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e130658130665%_)))
                                    (_%tl130663130768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e130658130665%_))))
                                (let* ((_%tag130771%_ _%hd130662130766%_)
                                       (_%body130773%_ _%tl130663130768%_))
                                  (_%K130661130763%_
                                   _%body130773%_
                                   _%tag130771%_)))
                              (_%E130660130669%_)))))))
                 (_%parse130408%_
                  (lambda (_%e130449%_)
                    (letrec ((_%make-cons130451%_
                              (lambda (_%hd130639%_ _%tl130640%_)
                                (let ((_g130977_ _%hd130639%_)
                                      (_g130979_ _%tl130640%_))
                                  (begin
                                    (let ((_g130978_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130977_)
                                                 (##vector-length _g130977_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130978_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130978_)))
                                    (let ((_g130980_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130979_)
                                                 (##vector-length _g130979_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130980_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130980_)))
                                    (let ((_%hd-e130642%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130977_ 0)))
                                          (_%hd-vars130643%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130977_ 1))))
                                      (let ((_%tl-e130644%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130979_ 0)))
                                            (_%tl-vars130645%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130979_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e130642%_
                                                            _%tl-e130644%_))
                                                (append _%hd-vars130643%_
                                                        _%tl-vars130645%_))))))))
                             (_%make-splice130452%_
                              (lambda (_%where130575%_
                                       _%depth130576%_
                                       _%hd130577%_
                                       _%tl130578%_)
                                (let ((_g130981_ _%hd130577%_)
                                      (_g130983_ _%tl130578%_))
                                  (begin
                                    (let ((_g130982_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130981_)
                                                 (##vector-length _g130981_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130982_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130982_)))
                                    (let ((_g130984_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130983_)
                                                 (##vector-length _g130983_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130984_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130984_)))
                                    (let ((_%hd-e130580%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130981_ 0)))
                                          (_%hd-vars130581%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130981_ 1))))
                                      (let ((_%tl-e130582%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130983_ 0)))
                                            (_%tl-vars130583%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130983_ 1))))
                                        (let _%lp130585%_ ((_%rest130587%_
                                                            _%hd-vars130581%_)
                                                           (_%targets130588%_
                                                            '())
                                                           (_%vars130589%_
                                                            _%tl-vars130583%_))
                                          (let* ((_%rest130590130600%_
                                                  _%rest130587%_)
                                                 (_%else130592130608%_
                                                  (lambda ()
                                                    (if (null? _%targets130588%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx130405%_
                                                           _%where130575%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth130576%_
                                    (cons _%hd-e130580%_
                                          (cons _%tl-e130582%_
                                                _%targets130588%_))))
                        _%vars130589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K130594130620%_
                                                  (lambda (_%rest130611%_
                                                           _%hd-pat130612%_
                                                           _%hd-depth*130613%_)
                                                    (let ((_%hd-depth130615%_
                                                           (fx- _%hd-depth*130613%_
                                                                _%depth130576%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth130615%_))
                                                          (_%lp130585%_
                                                           _%rest130611%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat130612%_)
                         _%targets130588%_)
                   (cons (cons _%hd-depth130615%_ _%hd-pat130612%_)
                         _%vars130589%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth130615%_))
                      (_%lp130585%_
                       _%rest130611%_
                       (cons (cons 'pattern _%hd-pat130612%_)
                             _%targets130588%_)
                       _%vars130589%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx130405%_
                         _%where130575%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest130590130600%_))
                                                (let ((_%hd130595130623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest130590130600%_)))
                                                      (_%tl130596130625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest130590130600%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd130595130623%_))
                                                      (let ((_%hd130597130628%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd130595130623%_)))
                    (_%tl130598130630%_
                     (let () (declare (not safe)) (##cdr _%hd130595130623%_))))
                (let* ((_%hd-depth*130633%_ _%hd130597130628%_)
                       (_%hd-pat130635%_ _%tl130598130630%_)
                       (_%rest130637%_ _%tl130596130625%_))
                  (_%K130594130620%_
                   _%rest130637%_
                   _%hd-pat130635%_
                   _%hd-depth*130633%_)))
              (_%else130592130608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else130592130608%_))))))))))
                             (_%recur130453%_
                              (lambda (_%e130458%_ _%is-e?130459%_)
                                (if (_%is-e?130459%_ _%e130458%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx130405%_))
                                    (if (gx#syntax-local-pattern? _%e130458%_)
                                        (let* ((_%pat130463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e130458%_)))
                                               (_%depth130465%_
                                                (##structure-ref
                                                 _%pat130463%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth130465%_)
                                              (values (cons 'ref _%pat130463%_)
                                                      (cons (cons _%depth130465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat130463%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat130463%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e130458%_))
                                            (values (cons 'term _%e130458%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e130458%_))
                                                (let* ((_%e130469130476%_
                                                        _%e130458%_)
                                                       (_%E130471130480%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e130469130476%_))))
                                                       (_%E130470130562%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e130469130476%_))
                      (let ((_%e130472130484%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130469130476%_))))
                        (let ((_%hd130473130487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130472130484%_)))
                              (_%tl130474130489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130472130484%_))))
                          (let* ((_%hd130492%_ _%hd130473130487%_)
                                 (_%rest130494%_ _%tl130474130489%_))
                            (if (_%is-e?130459%_ _%hd130492%_)
                                (let* ((_%e130495130502%_ _%rest130494%_)
                                       (_%E130497130506%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx130405%_
                                             _%e130458%_))))
                                       (_%E130496130520%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e130495130502%_))
                                              (let ((_%e130498130510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e130495130502%_))))
                                                (let ((_%hd130499130513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130498130510%_)))
                                                      (_%tl130500130515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130498130510%_))))
                                                  (let ((_%rest130518%_
                                                         _%hd130499130513%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130500130515%_))
                                                        (_%recur130453%_
                                                         _%rest130518%_
                                                         false)
                                                        (_%E130497130506%_)))))
                                              (_%E130497130506%_)))))
                                  (_%E130496130520%_))
                                (let _%lp130524%_ ((_%rest130526%_
                                                    _%rest130494%_)
                                                   (_%depth130527%_ '0))
                                  (let* ((_%e130528130535%_ _%rest130526%_)
                                         (_%E130530130539%_
                                          (lambda ()
                                            (if (fxpositive? _%depth130527%_)
                                                (_%make-splice130452%_
                                                 _%e130458%_
                                                 _%depth130527%_
                                                 (_%recur130453%_
                                                  _%hd130492%_
                                                  _%is-e?130459%_)
                                                 (_%recur130453%_
                                                  _%rest130526%_
                                                  _%is-e?130459%_))
                                                (_%make-cons130451%_
                                                 (_%recur130453%_
                                                  _%hd130492%_
                                                  _%is-e?130459%_)
                                                 (_%recur130453%_
                                                  _%rest130526%_
                                                  _%is-e?130459%_)))))
                                         (_%E130529130558%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e130528130535%_))
                                                (let ((_%e130531130543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e130528130535%_))))
                                                  (let ((_%hd130532130546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e130531130543%_)))
                                                        (_%tl130533130548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e130531130543%_))))
                                                    (let* ((_%rest-hd130551%_
                                                            _%hd130532130546%_)
                                                           (_%rest-tl130553%_
                                                            _%tl130533130548%_))
                                                      (if (_%is-e?130459%_
                                                           _%rest-hd130551%_)
                                                          (_%lp130524%_
                                                           _%rest-tl130553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth130527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth130527%_)
                      (_%make-splice130452%_
                       _%e130458%_
                       _%depth130527%_
                       (_%recur130453%_ _%hd130492%_ _%is-e?130459%_)
                       (_%recur130453%_ _%rest130526%_ _%is-e?130459%_))
                      (_%make-cons130451%_
                       (_%recur130453%_ _%hd130492%_ _%is-e?130459%_)
                       (_%recur130453%_ _%rest130526%_ _%is-e?130459%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130530130539%_)))))
                                    (_%E130529130558%_)))))))
                      (_%E130471130480%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130470130562%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e130458%_))
                                                    (let ((_g130985_
                                                           (_%recur130453%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e130458%_)))
                    _%is-e?130459%_)))
              (begin
                (let ((_g130986_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g130985_)
                             (##vector-length _g130985_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g130986_ 2)))
                      (error "Context expects 2 values" _g130986_)))
                (let ((_%e130567%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130985_ 0)))
                      (_%vars130568%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130985_ 1))))
                  (values (cons 'vector _%e130567%_) _%vars130568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e130458%_))
                                                        (let ((_g130987_
                                                               (_%recur130453%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e130458%_)))
                        _%is-e?130459%_)))
                  (begin
                    (let ((_g130988_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g130987_)
                                 (##vector-length _g130987_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g130988_ 2)))
                          (error "Context expects 2 values" _g130988_)))
                    (let ((_%e130571%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130987_ 0)))
                          (_%vars130572%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130987_ 1))))
                      (values (cons 'box _%e130571%_) _%vars130572%_))))
                (values (cons 'datum _%e130458%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g130989_
                             (_%recur130453%_ _%e130449%_ gx#ellipsis?)))
                        (begin
                          (let ((_g130990_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g130989_)
                                       (##vector-length _g130989_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g130990_ 2)))
                                (error "Context expects 2 values" _g130990_)))
                          (let ((_%tree130455%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130989_ 0)))
                                (_%vars130456%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130989_ 1))))
                            (if (null? _%vars130456%_)
                                _%tree130455%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx130405%_
                                   _%vars130456%_))))))))))
          (let* ((_%e130409130419%_ _%stx130405%_)
                 (_%E130411130423%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx130405%_))))
                 (_%E130410130445%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130409130419%_))
                        (let ((_%e130412130427%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130409130419%_))))
                          (let ((_%hd130413130430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130412130427%_)))
                                (_%tl130414130432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130412130427%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130414130432%_))
                                (let ((_%e130415130435%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130414130432%_))))
                                  (let ((_%hd130416130438%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130415130435%_)))
                                        (_%tl130417130440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130415130435%_))))
                                    (let ((_%form130443%_ _%hd130416130438%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl130417130440%_))
                                          (let ((__tmp130992
                                                 (_%generate130407%_
                                                  (_%parse130408%_
                                                   _%form130443%_)))
                                                (__tmp130991
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx130405%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp130992
                                             __tmp130991))
                                          (_%E130411130423%_)))))
                                (_%E130411130423%_))))
                        (_%E130411130423%_)))))
            (_%E130410130445%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx129654%_
               _%identifier=?129655%_
               _%unwrap-e129656%_
               _%wrap-e129657%_)
        (letrec ((_%generate-bindings129659%_
                  (lambda (_%target130269%_
                           _%ids130270%_
                           _%clauses130271%_
                           _%clause-ids130272%_
                           _%E130273%_)
                    (letrec ((_%generate1130275%_
                              (lambda (_%clause130372%_
                                       _%clause-id130373%_
                                       _%E130374%_)
                                (cons (cons _%clause-id130373%_ '())
                                      (cons (let ((__tmp130994
                                                   (cons _%target130269%_ '()))
                                                  (__tmp130993
                                                   (_%generate-clause129661%_
                                                    _%target130269%_
                                                    _%ids130270%_
                                                    _%clause130372%_
                                                    _%E130374%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp130994
                                               __tmp130993))
                                            '())))))
                      (let _%lp130277%_ ((_%rest130279%_ _%clauses130271%_)
                                         (_%rest-ids130280%_
                                          _%clause-ids130272%_)
                                         (_%bindings130281%_ '()))
                        (let* ((_%rest130282130290%_ _%rest130279%_)
                               (_%else130284130298%_
                                (lambda () _%bindings130281%_))
                               (_%K130286130360%_
                                (lambda (_%rest130301%_ _%clause130302%_)
                                  (let* ((_%rest-ids130303130310%_
                                          _%rest-ids130280%_)
                                         (_%E130305130314%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130303130310%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130306130348%_
                                          (lambda (_%rest-ids130317%_
                                                   _%clause-id130318%_)
                                            (let* ((_%rest-ids130319130327%_
                                                    _%rest-ids130317%_)
                                                   (_%else130321130335%_
                                                    (lambda ()
                                                      (cons (_%generate1130275%_
                                                             _%clause130302%_
                                                             _%clause-id130318%_
                                                             _%E130273%_)
                                                            _%bindings130281%_)))
                                                   (_%K130323130340%_
                                                    (lambda (_%next-clause-id130338%_)
                                                      (_%lp130277%_
                                                       _%rest130301%_
                                                       _%rest-ids130317%_
                                                       (cons (_%generate1130275%_
                                                              _%clause130302%_
                                                              _%clause-id130318%_
                                                              _%next-clause-id130338%_)
                                                             _%bindings130281%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130319130327%_))
                                                  (let* ((_%hd130324130343%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130319130327%_)))
                                                         (_%next-clause-id130346%_
                                                          _%hd130324130343%_))
                                                    (_%K130323130340%_
                                                     _%next-clause-id130346%_))
                                                  (_%else130321130335%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130303130310%_))
                                        (let ((_%hd130307130351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130303130310%_)))
                                              (_%tl130308130353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130303130310%_))))
                                          (let* ((_%clause-id130356%_
                                                  _%hd130307130351%_)
                                                 (_%rest-ids130358%_
                                                  _%tl130308130353%_))
                                            (_%K130306130348%_
                                             _%rest-ids130358%_
                                             _%clause-id130356%_)))
                                        (_%E130305130314%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130282130290%_))
                              (let ((_%hd130287130363%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130282130290%_)))
                                    (_%tl130288130365%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130282130290%_))))
                                (let* ((_%clause130368%_ _%hd130287130363%_)
                                       (_%rest130370%_ _%tl130288130365%_))
                                  (_%K130286130360%_
                                   _%rest130370%_
                                   _%clause130368%_)))
                              (_%else130284130298%_)))))))
                 (_%generate-body129660%_
                  (lambda (_%bindings130229%_ _%body130230%_)
                    (let _%recur130232%_ ((_%rest130234%_ _%bindings130229%_))
                      (let* ((_%rest130235130243%_ _%rest130234%_)
                             (_%else130237130251%_ (lambda () _%body130230%_))
                             (_%K130239130257%_
                              (lambda (_%rest130254%_ _%hd130255%_)
                                (let ((__tmp130996 (cons _%hd130255%_ '()))
                                      (__tmp130995
                                       (_%recur130232%_ _%rest130254%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp130996
                                   __tmp130995)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130235130243%_))
                            (let ((_%hd130240130260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130235130243%_)))
                                  (_%tl130241130262%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130235130243%_))))
                              (let* ((_%hd130265%_ _%hd130240130260%_)
                                     (_%rest130267%_ _%tl130241130262%_))
                                (_%K130239130257%_
                                 _%rest130267%_
                                 _%hd130265%_)))
                            (_%else130237130251%_))))))
                 (_%generate-clause129661%_
                  (lambda (_%target130092%_
                           _%ids130093%_
                           _%clause130094%_
                           _%E130095%_)
                    (letrec ((_%generate1130097%_
                              (lambda (_%hd130184%_
                                       _%fender130185%_
                                       _%body130186%_)
                                (let ((_g130997_
                                       (_%parse-clause129663%_
                                        _%hd130184%_
                                        _%ids130093%_)))
                                  (begin
                                    (let ((_g130998_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130997_)
                                                 (##vector-length _g130997_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130998_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130998_)))
                                    (let ((_%e130188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130997_ 0)))
                                          (_%mvars130189%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130997_ 1))))
                                      (let* ((_%pvars130191%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130189%_))))
                                             (_%E130193%_
                                              (cons _%E130095%_
                                                    (cons _%target130092%_
                                                          '())))
                                             (_%K130226%_
                                              (let ((__tmp130999
                                                     (let ((__tmp131001
                                                            (map (lambda (_%mvar130195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130196%_)
                           (let* ((_%mvar130197130204%_ _%mvar130195%_)
                                  (_%E130199130208%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130197130204%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130200130214%_
                                   (lambda (_%depth130211%_ _%id130212%_)
                                     (cons _%id130212%_
                                           (cons (let ((__tmp131003
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130212%_)))
                                                       (__tmp131002
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130196%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131003
                                                    __tmp131002
                                                    _%depth130211%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130197130204%_))
                                 (let ((_%hd130201130217%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130197130204%_)))
                                       (_%tl130202130219%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130197130204%_))))
                                   (let* ((_%id130222%_ _%hd130201130217%_)
                                          (_%depth130224%_ _%tl130202130219%_))
                                     (_%K130200130214%_
                                      _%depth130224%_
                                      _%id130222%_)))
                                 (_%E130199130208%_))))
                         _%mvars130189%_
                         _%pvars130191%_))
                   (__tmp131000
                    (if (eq? _%fender130185%_ '#t)
                        _%body130186%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130185%_
                           _%body130186%_
                           _%E130193%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp131001 __tmp131000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130191%_
                                                 __tmp130999))))
                                        (_%generate-match129662%_
                                         _%hd130184%_
                                         _%target130092%_
                                         _%e130188%_
                                         _%mvars130189%_
                                         _%K130226%_
                                         _%E130193%_))))))))
                      (let* ((_%e130098130118%_ _%clause130094%_)
                             (_%E130107130122%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130098130118%_))))
                             (_%E130100130156%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130098130118%_))
                                    (let ((_%e130108130126%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130098130118%_))))
                                      (let ((_%hd130109130129%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130108130126%_)))
                                            (_%tl130110130131%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130108130126%_))))
                                        (let ((_%hd130134%_
                                               _%hd130109130129%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130110130131%_))
                                              (let ((_%e130111130136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130110130131%_))))
                                                (let ((_%hd130112130139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130111130136%_)))
                                                      (_%tl130113130141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130111130136%_))))
                                                  (let ((_%fender130144%_
                                                         _%hd130112130139%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130113130141%_))
                                                        (let ((_%e130114130146%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130113130141%_))))
                  (let ((_%hd130115130149%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130114130146%_)))
                        (_%tl130116130151%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130114130146%_))))
                    (let ((_%body130154%_ _%hd130115130149%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130116130151%_))
                          (_%generate1130097%_
                           _%hd130134%_
                           _%fender130144%_
                           _%body130154%_)
                          (_%E130107130122%_)))))
                (_%E130107130122%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130107130122%_)))))
                                    (_%E130107130122%_))))
                             (_%E130099130180%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130098130118%_))
                                    (let ((_%e130101130160%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130098130118%_))))
                                      (let ((_%hd130102130163%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130101130160%_)))
                                            (_%tl130103130165%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130101130160%_))))
                                        (let ((_%hd130168%_
                                               _%hd130102130163%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130103130165%_))
                                              (let ((_%e130104130170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130103130165%_))))
                                                (let ((_%hd130105130173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130104130170%_)))
                                                      (_%tl130106130175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130104130170%_))))
                                                  (let ((_%body130178%_
                                                         _%hd130105130173%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130106130175%_))
                                                        (_%generate1130097%_
                                                         _%hd130168%_
                                                         '#t
                                                         _%body130178%_)
                                                        (_%E130100130156%_)))))
                                              (_%E130100130156%_)))))
                                    (_%E130100130156%_)))))
                        (_%E130099130180%_)))))
                 (_%generate-match129662%_
                  (lambda (_%where129841%_
                           _%target129842%_
                           _%hd129843%_
                           _%mvars129844%_
                           _%K129845%_
                           _%E129846%_)
                    (letrec ((_%BUG129848%_
                              (lambda (_%q130090%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx129654%_
                                         _%hd129843%_
                                         _%q130090%_))))
                             (_%recur129849%_
                              (lambda (_%e129940%_
                                       _%vars129941%_
                                       _%target129942%_
                                       _%E129943%_
                                       _%k129944%_)
                                (let* ((_%e129945129952%_ _%e129940%_)
                                       (_%E129947129956%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e129945129952%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K129948130078%_
                                        (lambda (_%body129959%_ _%tag129960%_)
                                          (let ((_%$e129962%_ _%tag129960%_))
                                            (if (eq? 'any _%$e129962%_)
                                                (_%k129944%_ _%vars129941%_)
                                                (if (eq? 'id _%$e129962%_)
                                                    (let ((__tmp131008
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target129942%_)))
                                                          (__tmp131004
                                                           (let ((__tmp131006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131007
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e129657%_
                                    _%body129959%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?129655%_
                             __tmp131007
                             _%target129942%_)))
                         (__tmp131005 (_%k129944%_ _%vars129941%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131006 __tmp131005 _%E129943%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131008 __tmp131004 _%E129943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e129962%_)
                                                        (_%k129944%_
                                                         (cons (cons _%body129959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target129942%_)
                       _%vars129941%_))
                (if (eq? 'cons _%$e129962%_)
                    (let ((_%$e129965%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd129966%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl129967%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131014
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target129942%_)))
                            (__tmp131009
                             (let ((__tmp131013
                                    (cons (cons (cons _%$e129965%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e129656%_
                                                         _%target129942%_))
                                                      '()))
                                          '()))
                                   (__tmp131010
                                    (let ((__tmp131012
                                           (cons (cons (cons _%$hd129966%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e129965%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl129967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e129965%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131011
                                           (let* ((_%body129968129975%_
                                                   _%body129959%_)
                                                  (_%E129970129979%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body129968129975%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K129971129987%_
                                                   (lambda (_%tl129982%_
                                                            _%hd129983%_)
                                                     (_%recur129849%_
                                                      _%hd129983%_
                                                      _%vars129941%_
                                                      _%$hd129966%_
                                                      _%E129943%_
                                                      (lambda (_%vars129985%_)
                                                        (_%recur129849%_
                                                         _%tl129982%_
                                                         _%vars129985%_
                                                         _%$tl129967%_
                                                         _%E129943%_
                                                         _%k129944%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body129968129975%_))
                                                 (let ((_%hd129972129990%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body129968129975%_)))
                                                       (_%tl129973129992%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body129968129975%_))))
                                                   (let* ((_%hd129995%_
                                                           _%hd129972129990%_)
                                                          (_%tl129997%_
                                                           _%tl129973129992%_))
                                                     (_%K129971129987%_
                                                      _%tl129997%_
                                                      _%hd129995%_)))
                                                 (_%E129970129979%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131012
                                       __tmp131011))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131013
                                __tmp131010))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131014
                         __tmp131009
                         _%E129943%_)))
                    (if (eq? 'splice _%$e129962%_)
                        (let* ((_%body129998130005%_ _%body129959%_)
                               (_%E130000130009%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body129998130005%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K130001130060%_
                                (lambda (_%tl130012%_ _%hd130013%_)
                                  (let* ((_%rlen130015%_
                                          (_%splice-rlen129850%_ _%tl130012%_))
                                         (_%$target130017%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130019%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130021%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130023%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130025%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130027%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130029%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130031%_
                                          (_%splice-vars129851%_ _%hd130013%_))
                                         (_%lvars130033%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130031%_)))
                                         (_%tlvars130035%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130031%_)))
                                         (_%linit130039%_
                                          (map (lambda (_%var130037%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130033%_)))
                                    (letrec ((_%make-loop130042%_
                                              (lambda (_%vars130046%_)
                                                (let ((__tmp131016
                                                       (cons (cons (cons _%$lp130023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131029
                                        (cons _%$hd130019%_ _%lvars130033%_))
                                       (__tmp131017
                                        (let ((__tmp131028
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130019%_)))
                                              (__tmp131022
                                               (let ((__tmp131027
                                                      (cons (cons (cons _%$lp-e130025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e129656%_
                                   _%$hd130019%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131023
                                                      (let ((__tmp131026
                                                             (cons (cons (cons _%$lp-hd130027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130025%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130029%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130025%_))
                                             '()))
                                 '())))
                    (__tmp131024
                     (_%recur129849%_
                      _%hd130013%_
                      '()
                      _%$lp-hd130027%_
                      _%E129943%_
                      (lambda (_%hdvars130048%_)
                        (cons _%$lp130023%_
                              (cons _%$lp-tl130029%_
                                    (map (lambda (_%svar130050%_
                                                  _%lvar130051%_)
                                           (let ((__tmp131025
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130050%_
                                                     _%hdvars130048%_
                                                     _%BUG129848%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131025
                                              _%lvar130051%_)))
                                         _%svars130031%_
                                         _%lvars130033%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131026 __tmp131024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131027
                                                  __tmp131023)))
                                              (__tmp131018
                                               (let ((__tmp131021
                                                      (map (lambda (_%lvar130053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130054%_)
                     (cons (cons _%tlvar130054%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130053%_))
                                 '())))
                   _%lvars130033%_
                   _%tlvars130035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131019
                                                      (_%k129944%_
                                                       (let ((__tmp131020
                                                              (lambda (_%svar130056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130057%_
                               _%r130058%_)
                        (cons (cons _%svar130056%_ _%tlvar130057%_)
                              _%r130058%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131020
                  _%vars130046%_
                  _%svars130031%_
                  _%tlvars130035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131021
                                                  __tmp131019))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131028
                                           __tmp131022
                                           __tmp131018))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131029
                                    __tmp131017))
                                 '()))
                     '()))
              (__tmp131015
               (cons _%$lp130023%_ (cons _%$target130017%_ _%linit130039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131016
                                                   __tmp131015)))))
                                      (let ((_%body130044%_
                                             (let ((__tmp131031
                                                    (cons (cons (cons _%$target130017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130021%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target129942%_
                                 _%rlen130015%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131030
                                                    (_%recur129849%_
                                                     _%tl130012%_
                                                     _%vars129941%_
                                                     _%$tl130021%_
                                                     _%E129943%_
                                                     _%make-loop130042%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131031
                                                __tmp131030))))
                                        (let ((__tmp131035
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target129942%_)))
                                              (__tmp131032
                                               (if (zero? _%rlen130015%_)
                                                   _%body130044%_
                                                   (let ((__tmp131033
                                                          (let ((__tmp131034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target129942%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131034 _%rlen130015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131033
                                                      _%body130044%_
                                                      _%E129943%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131035
                                           __tmp131032
                                           _%E129943%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body129998130005%_))
                              (let ((_%hd130002130063%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body129998130005%_)))
                                    (_%tl130003130065%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body129998130005%_))))
                                (let* ((_%hd130068%_ _%hd130002130063%_)
                                       (_%tl130070%_ _%tl130003130065%_))
                                  (_%K130001130060%_
                                   _%tl130070%_
                                   _%hd130068%_)))
                              (_%E130000130009%_)))
                        (if (eq? 'null _%$e129962%_)
                            (let ((__tmp131037
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target129942%_)))
                                  (__tmp131036 (_%k129944%_ _%vars129941%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131037
                               __tmp131036
                               _%E129943%_))
                            (if (eq? 'vector _%$e129962%_)
                                (let ((_%$e130072%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131042
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target129942%_)))
                                        (__tmp131038
                                         (let ((__tmp131040
                                                (cons (cons (cons _%$e130072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131041
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e129656%_
                                    _%target129942%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131041))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131039
                                                (_%recur129849%_
                                                 _%body129959%_
                                                 _%vars129941%_
                                                 _%$e130072%_
                                                 _%E129943%_
                                                 _%k129944%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131040
                                            __tmp131039))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131042
                                     __tmp131038
                                     _%E129943%_)))
                                (if (eq? 'box _%$e129962%_)
                                    (let ((_%$e130074%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131047
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target129942%_)))
                                            (__tmp131043
                                             (let ((__tmp131045
                                                    (cons (cons (cons _%$e130074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131046
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e129656%_
                                        _%target129942%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131046))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131044
                                                    (_%recur129849%_
                                                     _%body129959%_
                                                     _%vars129941%_
                                                     _%$e130074%_
                                                     _%E129943%_
                                                     _%k129944%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131045
                                                __tmp131044))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131047
                                         __tmp131043
                                         _%E129943%_)))
                                    (if (eq? 'datum _%$e129962%_)
                                        (let ((_%$e130076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131053
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target129942%_)))
                                                (__tmp131048
                                                 (let ((__tmp131052
                                                        (cons (cons (cons _%$e130076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target129942%_))
                                  '()))
                      '()))
               (__tmp131049
                (let ((__tmp131051
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130076%_ _%body129959%_)))
                      (__tmp131050 (_%k129944%_ _%vars129941%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131051 __tmp131050 _%E129943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131052
                                                    __tmp131049))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131053
                                             __tmp131048
                                             _%E129943%_)))
                                        (_%BUG129848%_
                                         _%e129940%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e129945129952%_))
                                      (let ((_%hd129949130081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e129945129952%_)))
                                            (_%tl129950130083%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e129945129952%_))))
                                        (let* ((_%tag130086%_
                                                _%hd129949130081%_)
                                               (_%body130088%_
                                                _%tl129950130083%_))
                                          (_%K129948130078%_
                                           _%body130088%_
                                           _%tag130086%_)))
                                      (_%E129947129956%_)))))
                             (_%splice-rlen129850%_
                              (lambda (_%e129902%_)
                                (let _%lp129904%_ ((_%e129906%_ _%e129902%_)
                                                   (_%n129907%_ '0))
                                  (let* ((_%e129908129915%_ _%e129906%_)
                                         (_%E129910129919%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129908129915%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129911129928%_
                                          (lambda (_%body129922%_
                                                   _%tag129923%_)
                                            (let ((_%$e129925%_ _%tag129923%_))
                                              (if (eq? 'splice _%$e129925%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx129654%_
                                                     _%where129841%_))
                                                  (if (eq? 'cons _%$e129925%_)
                                                      (_%lp129904%_
                                                       (cdr _%body129922%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n129907%_
                                                                '1)))
                                                      _%n129907%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129908129915%_))
                                        (let ((_%hd129912129931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129908129915%_)))
                                              (_%tl129913129933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129908129915%_))))
                                          (let* ((_%tag129936%_
                                                  _%hd129912129931%_)
                                                 (_%body129938%_
                                                  _%tl129913129933%_))
                                            (_%K129911129928%_
                                             _%body129938%_
                                             _%tag129936%_)))
                                        (_%E129910129919%_))))))
                             (_%splice-vars129851%_
                              (lambda (_%e129858%_)
                                (let _%recur129860%_ ((_%e129862%_ _%e129858%_)
                                                      (_%vars129863%_ '()))
                                  (let* ((_%e129864129871%_ _%e129862%_)
                                         (_%E129866129875%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129864129871%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129867129890%_
                                          (lambda (_%body129878%_
                                                   _%tag129879%_)
                                            (let ((_%$e129881%_ _%tag129879%_))
                                              (if (eq? 'var _%$e129881%_)
                                                  (cons _%body129878%_
                                                        _%vars129863%_)
                                                  (if (or (eq? 'cons
                                                               _%$e129881%_)
                                                          (eq? 'splice
                                                               _%$e129881%_))
                                                      (_%recur129860%_
                                                       (cdr _%body129878%_)
                                                       (_%recur129860%_
                                                        (car _%body129878%_)
                                                        _%vars129863%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e129881%_)
                      (eq? 'box _%$e129881%_))
                  (_%recur129860%_ _%body129878%_ _%vars129863%_)
                  _%vars129863%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129864129871%_))
                                        (let ((_%hd129868129893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129864129871%_)))
                                              (_%tl129869129895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129864129871%_))))
                                          (let* ((_%tag129898%_
                                                  _%hd129868129893%_)
                                                 (_%body129900%_
                                                  _%tl129869129895%_))
                                            (_%K129867129890%_
                                             _%body129900%_
                                             _%tag129898%_)))
                                        (_%E129866129875%_))))))
                             (_%make-body129852%_
                              (lambda (_%vars129854%_)
                                (cons _%K129845%_
                                      (map (lambda (_%mvar129856%_)
                                             (let ((__tmp131054
                                                    (car _%mvar129856%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131054
                                                _%vars129854%_
                                                _%BUG129848%_)))
                                           _%mvars129844%_)))))
                      (_%recur129849%_
                       _%hd129843%_
                       '()
                       _%target129842%_
                       _%E129846%_
                       _%make-body129852%_))))
                 (_%parse-clause129663%_
                  (lambda (_%hd129735%_ _%ids129736%_)
                    (let _%recur129738%_ ((_%e129740%_ _%hd129735%_)
                                          (_%vars129741%_ '())
                                          (_%depth129742%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e129740%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e129740%_))
                              (values '(any) _%vars129741%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e129740%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx129654%_
                                     _%hd129735%_))
                                  (if (let ((__tmp131055
                                             (lambda (_%id129747%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e129740%_
                                                  _%id129747%_)))))
                                        (declare (not safe))
                                        (__find __tmp131055 _%ids129736%_))
                                      (values (cons 'id _%e129740%_)
                                              _%vars129741%_)
                                      (if (let ((__tmp131056
                                                 (lambda (_%var129750%_)
                                                   (let ((__tmp131057
                                                          (car _%var129750%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e129740%_
                                                      __tmp131057)))))
                                            (declare (not safe))
                                            (__find __tmp131056
                                                    _%vars129741%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx129654%_
                                             _%e129740%_))
                                          (values (cons 'var _%e129740%_)
                                                  (cons (cons _%e129740%_
                                                              _%depth129742%_)
                                                        _%vars129741%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e129740%_))
                              (let* ((_%e129754129761%_ _%e129740%_)
                                     (_%E129756129765%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e129754129761%_))))
                                     (_%E129755129826%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e129754129761%_))
                                            (let ((_%e129757129769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e129754129761%_))))
                                              (let ((_%hd129758129772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e129757129769%_)))
                                                    (_%tl129759129774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e129757129769%_))))
                                                (let* ((_%hd129777%_
                                                        _%hd129758129772%_)
                                                       (_%rest129779%_
                                                        _%tl129759129774%_)
                                                       (_%make-pair129794%_
                                                        (lambda (_%tag129781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd129782%_
                         _%tl129783%_)
                  (let* ((_%hd-depth129785%_
                          (if (eq? _%tag129781%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth129742%_ '1))
                              _%depth129742%_))
                         (_g131058_
                          (_%recur129738%_
                           _%hd129782%_
                           _%vars129741%_
                           _%hd-depth129785%_)))
                    (begin
                      (let ((_g131059_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g131058_)
                                   (##vector-length _g131058_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g131059_ 2)))
                            (error "Context expects 2 values" _g131059_)))
                      (let ((_%hd129787%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131058_ 0)))
                            (_%vars129788%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131058_ 1))))
                        (let ((_g131060_
                               (_%recur129738%_
                                _%tl129783%_
                                _%vars129788%_
                                _%depth129742%_)))
                          (begin
                            (let ((_g131061_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g131060_)
                                         (##vector-length _g131060_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g131061_ 2)))
                                  (error "Context expects 2 values"
                                         _g131061_)))
                            (let ((_%tl129790%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131060_ 0)))
                                  (_%vars129791%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131060_ 1))))
                              (values (cons _%tag129781%_
                                            (cons _%hd129787%_ _%tl129790%_))
                                      _%vars129791%_)))))))))
               (_%e129795129802%_ _%rest129779%_)
               (_%E129797129806%_
                (lambda ()
                  (_%make-pair129794%_ 'cons _%hd129777%_ _%rest129779%_)))
               (_%E129796129822%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e129795129802%_))
                      (let ((_%e129798129810%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e129795129802%_))))
                        (let ((_%hd129799129813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129798129810%_)))
                              (_%tl129800129815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129798129810%_))))
                          (let* ((_%rest-hd129818%_ _%hd129799129813%_)
                                 (_%rest-tl129820%_ _%tl129800129815%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd129818%_))
                                (_%make-pair129794%_
                                 'splice
                                 _%hd129777%_
                                 _%rest-tl129820%_)
                                (_%make-pair129794%_
                                 'cons
                                 _%hd129777%_
                                 _%rest129779%_)))))
                      (_%E129797129806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129796129822%_))))
                                            (_%E129756129765%_)))))
                                (_%E129755129826%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e129740%_))
                                  (values '(null) _%vars129741%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e129740%_))
                                      (let ((_g131062_
                                             (_%recur129738%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e129740%_)))
                                              _%vars129741%_
                                              _%depth129742%_)))
                                        (begin
                                          (let ((_g131063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131062_)
                                                       (##vector-length
                                                        _g131062_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131063_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131063_)))
                                          (let ((_%e129832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131062_ 0)))
                                                (_%vars129833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131062_
                                                    1))))
                                            (values (cons 'vector _%e129832%_)
                                                    _%vars129833%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e129740%_))
                                          (let ((_g131064_
                                                 (_%recur129738%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e129740%_)))
                                                  _%vars129741%_
                                                  _%depth129742%_)))
                                            (begin
                                              (let ((_g131065_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131064_)
                                                           (##vector-length
                                                            _g131064_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131065_)))
                                              (let ((_%e129836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131064_
                                                        0)))
                                                    (_%vars129837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131064_
                                                        1))))
                                                (values (cons 'box _%e129836%_)
                                                        _%vars129837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e129740%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e129740%_)))
                                                      _%vars129741%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx129654%_
                                                 _%e129740%_))))))))))))
          (let* ((_%e129664129677%_ _%stx129654%_)
                 (_%E129666129681%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e129664129677%_))))
                 (_%E129665129731%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129664129677%_))
                        (let ((_%e129667129685%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129664129677%_))))
                          (let ((_%hd129668129688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129667129685%_)))
                                (_%tl129669129690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129667129685%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129669129690%_))
                                (let ((_%e129670129693%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129669129690%_))))
                                  (let ((_%hd129671129696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129670129693%_)))
                                        (_%tl129672129698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129670129693%_))))
                                    (let ((_%expr129701%_ _%hd129671129696%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl129672129698%_))
                                          (let ((_%e129673129703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl129672129698%_))))
                                            (let ((_%hd129674129706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e129673129703%_)))
                                                  (_%tl129675129708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e129673129703%_))))
                                              (let* ((_%ids129711%_
                                                      _%hd129674129706%_)
                                                     (_%clauses129713%_
                                                      _%tl129675129708%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids129711%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses129713%_))
                                                        (let* ((_%ids129718%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids129711%_)))
                       (_%clauses129720%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses129713%_)))
                       (_%clause-ids129722%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses129720%_)))
                       (_%E129724%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target129726%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first129728%_
                        (if (null? _%clauses129720%_)
                            _%E129724%_
                            (car _%clause-ids129722%_))))
                  (let ((__tmp131067
                         (let ((__tmp131068
                                (let ((__tmp131070
                                       (let ((__tmp131072
                                              (cons (cons (cons _%E129724%_
                                                                '())
                                                          (cons (let ((__tmp131074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target129726%_ '()))
                              (__tmp131073
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target129726%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp131074 __tmp131073))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp131071
                                              (_%generate-body129660%_
                                               (_%generate-bindings129659%_
                                                _%target129726%_
                                                _%ids129718%_
                                                _%clauses129720%_
                                                _%clause-ids129722%_
                                                _%E129724%_)
                                               (cons _%first129728%_
                                                     (cons _%expr129701%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp131072
                                          __tmp131071)))
                                      (__tmp131069
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx129654%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp131070
                                   __tmp131069))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp131068)))
                        (__tmp131066
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx129654%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp131067 __tmp131066)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx129654%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx129654%_
                                                       _%ids129711%_))))))
                                          (_%E129666129681%_)))))
                                (_%E129666129681%_))))
                        (_%E129666129681%_)))))
            (_%E129665129731%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx130379%_)
        (let* ((_%identifier=?130381%_ 'free-identifier=?)
               (_%unwrap-e130383%_ 'syntax-e)
               (_%wrap-e130385%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130379%_
           _%identifier=?130381%_
           _%unwrap-e130383%_
           _%wrap-e130385%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx130387%_ _%identifier=?130388%_)
        (let* ((_%unwrap-e130390%_ 'syntax-e) (_%wrap-e130392%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130387%_
           _%identifier=?130388%_
           _%unwrap-e130390%_
           _%wrap-e130392%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx130394%_ _%identifier=?130395%_ _%unwrap-e130396%_)
        (let ((_%wrap-e130398%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130394%_
           _%identifier=?130395%_
           _%unwrap-e130396%_
           _%wrap-e130398%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131076_
        (let ((_g131075_ (let () (declare (not safe)) (##length _g131076_))))
          (cond ((let () (declare (not safe)) (##fx= _g131075_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131076_))
                ((let () (declare (not safe)) (##fx= _g131075_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131076_))
                ((let () (declare (not safe)) (##fx= _g131075_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131076_))
                ((let () (declare (not safe)) (##fx= _g131075_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131076_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx129651%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx129651%_))
            (let ((__tmp131077
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx129651%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131077 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd129609%_ . _%rest129610%_)
        (let ((_%len129612%_ (length _%hd129609%_)))
          (let _%lp129614%_ ((_%rest129616%_ _%rest129610%_))
            (let* ((_%rest129617129625%_ _%rest129616%_)
                   (_%else129619129633%_ (lambda () '#!void))
                   (_%K129621129639%_
                    (lambda (_%rest129636%_ _%hd129637%_)
                      (if (let ((__tmp131078 (length _%hd129637%_)))
                            (declare (not safe))
                            (##fx= _%len129612%_ __tmp131078))
                          (_%lp129614%_ _%rest129636%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd129637%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest129617129625%_))
                  (let ((_%hd129622129642%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest129617129625%_)))
                        (_%tl129623129644%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest129617129625%_))))
                    (let* ((_%hd129647%_ _%hd129622129642%_)
                           (_%rest129649%_ _%tl129623129644%_))
                      (_%K129621129639%_ _%rest129649%_ _%hd129647%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx129564%_ _%n129565%_)
        (let _%lp129567%_ ((_%rest129569%_ _%stx129564%_) (_%r129570%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest129569%_))
              (let* ((_%g129571129578%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest129569%_)))
                     (_%E129573129582%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g129571129578%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K129574129588%_
                      (lambda (_%rest129585%_ _%hd129586%_)
                        (_%lp129567%_
                         _%rest129585%_
                         (cons _%hd129586%_ _%r129570%_)))))
                (if (let () (declare (not safe)) (##pair? _%g129571129578%_))
                    (let ((_%hd129575129591%_
                           (let ()
                             (declare (not safe))
                             (##car _%g129571129578%_)))
                          (_%tl129576129593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g129571129578%_))))
                      (let* ((_%hd129596%_ _%hd129575129591%_)
                             (_%rest129598%_ _%tl129576129593%_))
                        (_%K129574129588%_ _%rest129598%_ _%hd129596%_)))
                    (_%E129573129582%_)))
              (let _%lp129600%_ ((_%n129602%_ _%n129565%_)
                                 (_%l129603%_ _%r129570%_)
                                 (_%r129604%_ _%rest129569%_))
                (if (null? _%l129603%_)
                    (values _%l129603%_ _%r129604%_)
                    (if (fxpositive? _%n129602%_)
                        (_%lp129600%_
                         (let () (declare (not safe)) (##fx- _%n129602%_ '1))
                         (cdr _%l129603%_)
                         (cons (car _%l129603%_) _%r129604%_))
                        (values (reverse _%l129603%_) _%r129604%_))))))))))
