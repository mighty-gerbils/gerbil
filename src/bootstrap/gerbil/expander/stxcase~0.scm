(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712823027)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp130956 (list gx#expander::t))
            (__tmp130955 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp130956
         '(id depth)
         __tmp130955
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args130952%_
        (apply make-instance gx#syntax-pattern::t _%$args130952%_)))
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
      (lambda (_%self129559130936%_ _%stx130938%_)
        (let* ((_%self130940%_ _%self129559130936%_)
               (_%self130942%_ _%self130940%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx130938%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx130402%_)
        (letrec ((_%generate130404%_
                  (lambda (_%e130644%_)
                    (letrec ((_%BUG130646%_
                              (lambda (_%q130811%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx130402%_
                                         _%e130644%_
                                         _%q130811%_))))
                             (_%local-pattern-e130647%_
                              (lambda (_%pat130809%_)
                                (let ((__tmp130957
                                       (##structure-ref
                                        _%pat130809%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp130957))))
                             (_%getvar130648%_
                              (lambda (_%q130806%_ _%vars130807%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q130806%_
                                   _%vars130807%_
                                   _%BUG130646%_))))
                             (_%getarg130649%_
                              (lambda (_%arg130772%_ _%vars130773%_)
                                (let* ((_%arg130774130781%_ _%arg130772%_)
                                       (_%E130776130785%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg130774130781%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K130777130794%_
                                        (lambda (_%e130788%_ _%tag130789%_)
                                          (let ((_%$e130791%_ _%tag130789%_))
                                            (if (eq? 'ref _%$e130791%_)
                                                (_%getvar130648%_
                                                 _%e130788%_
                                                 _%vars130773%_)
                                                (if (eq? 'pattern _%$e130791%_)
                                                    (_%local-pattern-e130647%_
                                                     _%e130788%_)
                                                    (_%BUG130646%_
                                                     _%arg130772%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg130774130781%_))
                                      (let ((_%hd130778130797%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg130774130781%_)))
                                            (_%tl130779130799%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg130774130781%_))))
                                        (let* ((_%tag130802%_
                                                _%hd130778130797%_)
                                               (_%e130804%_
                                                _%tl130779130799%_))
                                          (_%K130777130794%_
                                           _%e130804%_
                                           _%tag130802%_)))
                                      (_%E130776130785%_))))))
                      (let _%recur130651%_ ((_%e130653%_ _%e130644%_)
                                            (_%vars130654%_ '()))
                        (let* ((_%e130655130662%_ _%e130653%_)
                               (_%E130657130666%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e130655130662%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K130658130760%_
                                (lambda (_%body130669%_ _%tag130670%_)
                                  (let ((_%$e130672%_ _%tag130670%_))
                                    (if (eq? 'datum _%$e130672%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body130669%_))
                                        (if (eq? 'term _%$e130672%_)
                                            (let ((_%id130675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body130669%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id130675%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks130678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id130675%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks130678%_)
                                                        (let ((__tmp130958
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body130669%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp130958))
                (let ((__tmp130960
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body130669%_)))
                      (__tmp130959
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body130669%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp130960
                   __tmp130959
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id130675%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body130669%_))
                                                      (_%BUG130646%_
                                                       _%e130653%_))))
                                            (if (eq? 'pattern _%$e130672%_)
                                                (_%local-pattern-e130647%_
                                                 _%body130669%_)
                                                (if (eq? 'ref _%$e130672%_)
                                                    (_%getvar130648%_
                                                     _%body130669%_
                                                     _%vars130654%_)
                                                    (if (eq? 'cons
                                                             _%$e130672%_)
                                                        (let ((__tmp130962
                                                               (_%recur130651%_
                                                                (car _%body130669%_)
                                                                _%vars130654%_))
                                                              (__tmp130961
                                                               (_%recur130651%_
                                                                (cdr _%body130669%_)
                                                                _%vars130654%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp130962
                                                           __tmp130961))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e130672%_)
                    (let ((__tmp130963
                           (_%recur130651%_ _%body130669%_ _%vars130654%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp130963))
                    (if (eq? 'box _%$e130672%_)
                        (let ((__tmp130964
                               (_%recur130651%_
                                _%body130669%_
                                _%vars130654%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp130964))
                        (if (eq? 'splice _%$e130672%_)
                            (let* ((_%body130681130692%_ _%body130669%_)
                                   (_%E130683130696%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body130681130692%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K130684130734%_
                                    (lambda (_%args130699%_
                                             _%iv130700%_
                                             _%hd130701%_
                                             _%depth130702%_)
                                      (let* ((_%targets130708%_
                                              (map (lambda (_%g130703130705%_)
                                                     (_%getarg130649%_
                                                      _%g130703130705%_
                                                      _%vars130654%_))
                                                   _%args130699%_))
                                             (_%fold-in130710%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args130699%_)))
                                             (_%fold-out130712%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args130714%_
                                              (let ((__tmp130965
                                                     (cons _%fold-out130712%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp130965
                                                 _%fold-in130710%_)))
                                             (_%lambda-body130731%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth130702%_ '1))
                                                  (let ((_%r-args130722%_
                                                         (map (lambda (_%arg130716%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg130716%_)))
                      _%args130699%_))
                (_%r-vars130723%_
                 (let ((__tmp130966
                        (lambda (_%arg130718%_ _%var130719%_ _%r130720%_)
                          (cons (cons (cdr _%arg130718%_) _%var130719%_)
                                _%r130720%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp130966
                    _%vars130654%_
                    _%args130699%_
                    _%fold-in130710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur130651%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth130702%_ '1))
                         (cons _%hd130701%_
                               (cons (cons 'var _%fold-out130712%_)
                                     _%r-args130722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars130723%_))
                                                  (let* ((_%hd-vars130729%_
                                                          (let ((__tmp130967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg130725%_ _%var130726%_ _%r130727%_)
                           (cons (cons (cdr _%arg130725%_) _%var130726%_)
                                 _%r130727%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp130967
                     _%vars130654%_
                     _%args130699%_
                     _%fold-in130710%_)))
                 (__tmp130968
                  (_%recur130651%_ _%hd130701%_ _%hd-vars130729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp130968
                                                     _%fold-out130712%_)))))
                                        (let ((__tmp130972
                                               (if (let ((__tmp130973
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets130708%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp130973 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets130708%_))
                                                   '#!void))
                                              (__tmp130969
                                               (let ((__tmp130971
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args130714%_
                                                         _%lambda-body130731%_)))
                                                     (__tmp130970
                                                      (_%recur130651%_
                                                       _%iv130700%_
                                                       _%vars130654%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp130971
                                                  __tmp130970
                                                  _%targets130708%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp130972
                                           __tmp130969))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body130681130692%_))
                                  (let ((_%hd130685130737%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body130681130692%_)))
                                        (_%tl130686130739%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body130681130692%_))))
                                    (let ((_%depth130742%_ _%hd130685130737%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl130686130739%_))
                                          (let ((_%hd130687130744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl130686130739%_)))
                                                (_%tl130688130746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl130686130739%_))))
                                            (let ((_%hd130749%_
                                                   _%hd130687130744%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl130688130746%_))
                                                  (let ((_%hd130689130751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl130688130746%_)))
                                                        (_%tl130690130753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl130688130746%_))))
                                                    (let* ((_%iv130756%_
                                                            _%hd130689130751%_)
                                                           (_%args130758%_
                                                            _%tl130690130753%_))
                                                      (_%K130684130734%_
                                                       _%args130758%_
                                                       _%iv130756%_
                                                       _%hd130749%_
                                                       _%depth130742%_)))
                                                  (_%E130683130696%_))))
                                          (_%E130683130696%_))))
                                  (_%E130683130696%_)))
                            (if (eq? 'var _%$e130672%_)
                                _%body130669%_
                                (_%BUG130646%_ _%e130653%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e130655130662%_))
                              (let ((_%hd130659130763%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e130655130662%_)))
                                    (_%tl130660130765%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e130655130662%_))))
                                (let* ((_%tag130768%_ _%hd130659130763%_)
                                       (_%body130770%_ _%tl130660130765%_))
                                  (_%K130658130760%_
                                   _%body130770%_
                                   _%tag130768%_)))
                              (_%E130657130666%_)))))))
                 (_%parse130405%_
                  (lambda (_%e130446%_)
                    (letrec ((_%make-cons130448%_
                              (lambda (_%hd130636%_ _%tl130637%_)
                                (let ((_g130974_ _%hd130636%_)
                                      (_g130976_ _%tl130637%_))
                                  (begin
                                    (let ((_g130975_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130974_)
                                                 (##vector-length _g130974_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130975_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130975_)))
                                    (let ((_g130977_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130976_)
                                                 (##vector-length _g130976_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130977_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130977_)))
                                    (let ((_%hd-e130639%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130974_ 0)))
                                          (_%hd-vars130640%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130974_ 1))))
                                      (let ((_%tl-e130641%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130976_ 0)))
                                            (_%tl-vars130642%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130976_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e130639%_
                                                            _%tl-e130641%_))
                                                (append _%hd-vars130640%_
                                                        _%tl-vars130642%_))))))))
                             (_%make-splice130449%_
                              (lambda (_%where130572%_
                                       _%depth130573%_
                                       _%hd130574%_
                                       _%tl130575%_)
                                (let ((_g130978_ _%hd130574%_)
                                      (_g130980_ _%tl130575%_))
                                  (begin
                                    (let ((_g130979_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130978_)
                                                 (##vector-length _g130978_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130979_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130979_)))
                                    (let ((_g130981_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130980_)
                                                 (##vector-length _g130980_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130981_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130981_)))
                                    (let ((_%hd-e130577%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130978_ 0)))
                                          (_%hd-vars130578%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130978_ 1))))
                                      (let ((_%tl-e130579%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130980_ 0)))
                                            (_%tl-vars130580%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130980_ 1))))
                                        (let _%lp130582%_ ((_%rest130584%_
                                                            _%hd-vars130578%_)
                                                           (_%targets130585%_
                                                            '())
                                                           (_%vars130586%_
                                                            _%tl-vars130580%_))
                                          (let* ((_%rest130587130597%_
                                                  _%rest130584%_)
                                                 (_%else130589130605%_
                                                  (lambda ()
                                                    (if (null? _%targets130585%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx130402%_
                                                           _%where130572%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth130573%_
                                    (cons _%hd-e130577%_
                                          (cons _%tl-e130579%_
                                                _%targets130585%_))))
                        _%vars130586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K130591130617%_
                                                  (lambda (_%rest130608%_
                                                           _%hd-pat130609%_
                                                           _%hd-depth*130610%_)
                                                    (let ((_%hd-depth130612%_
                                                           (fx- _%hd-depth*130610%_
                                                                _%depth130573%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth130612%_))
                                                          (_%lp130582%_
                                                           _%rest130608%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat130609%_)
                         _%targets130585%_)
                   (cons (cons _%hd-depth130612%_ _%hd-pat130609%_)
                         _%vars130586%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth130612%_))
                      (_%lp130582%_
                       _%rest130608%_
                       (cons (cons 'pattern _%hd-pat130609%_)
                             _%targets130585%_)
                       _%vars130586%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx130402%_
                         _%where130572%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest130587130597%_))
                                                (let ((_%hd130592130620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest130587130597%_)))
                                                      (_%tl130593130622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest130587130597%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd130592130620%_))
                                                      (let ((_%hd130594130625%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd130592130620%_)))
                    (_%tl130595130627%_
                     (let () (declare (not safe)) (##cdr _%hd130592130620%_))))
                (let* ((_%hd-depth*130630%_ _%hd130594130625%_)
                       (_%hd-pat130632%_ _%tl130595130627%_)
                       (_%rest130634%_ _%tl130593130622%_))
                  (_%K130591130617%_
                   _%rest130634%_
                   _%hd-pat130632%_
                   _%hd-depth*130630%_)))
              (_%else130589130605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else130589130605%_))))))))))
                             (_%recur130450%_
                              (lambda (_%e130455%_ _%is-e?130456%_)
                                (if (_%is-e?130456%_ _%e130455%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx130402%_))
                                    (if (gx#syntax-local-pattern? _%e130455%_)
                                        (let* ((_%pat130460%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e130455%_)))
                                               (_%depth130462%_
                                                (##structure-ref
                                                 _%pat130460%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth130462%_)
                                              (values (cons 'ref _%pat130460%_)
                                                      (cons (cons _%depth130462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat130460%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat130460%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e130455%_))
                                            (values (cons 'term _%e130455%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e130455%_))
                                                (let* ((_%e130466130473%_
                                                        _%e130455%_)
                                                       (_%E130468130477%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e130466130473%_))))
                                                       (_%E130467130559%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e130466130473%_))
                      (let ((_%e130469130481%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130466130473%_))))
                        (let ((_%hd130470130484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130469130481%_)))
                              (_%tl130471130486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130469130481%_))))
                          (let* ((_%hd130489%_ _%hd130470130484%_)
                                 (_%rest130491%_ _%tl130471130486%_))
                            (if '#t
                                (if (_%is-e?130456%_ _%hd130489%_)
                                    (let* ((_%e130492130499%_ _%rest130491%_)
                                           (_%E130494130503%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx130402%_
                                                 _%e130455%_))))
                                           (_%E130493130517%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e130492130499%_))
                                                  (let ((_%e130495130507%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e130492130499%_))))
                                                    (let ((_%hd130496130510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e130495130507%_)))
                                                          (_%tl130497130512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e130495130507%_))))
                                                      (let ((_%rest130515%_
                                                             _%hd130496130510%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl130497130512%_))
                                                            (if '#t
                                                                (_%recur130450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest130515%_
                         false)
                        (_%E130494130503%_))
                    (_%E130494130503%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130494130503%_)))))
                                      (_%E130493130517%_))
                                    (let _%lp130521%_ ((_%rest130523%_
                                                        _%rest130491%_)
                                                       (_%depth130524%_ '0))
                                      (let* ((_%e130525130532%_ _%rest130523%_)
                                             (_%E130527130536%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth130524%_)
                                                    (_%make-splice130449%_
                                                     _%e130455%_
                                                     _%depth130524%_
                                                     (_%recur130450%_
                                                      _%hd130489%_
                                                      _%is-e?130456%_)
                                                     (_%recur130450%_
                                                      _%rest130523%_
                                                      _%is-e?130456%_))
                                                    (_%make-cons130448%_
                                                     (_%recur130450%_
                                                      _%hd130489%_
                                                      _%is-e?130456%_)
                                                     (_%recur130450%_
                                                      _%rest130523%_
                                                      _%is-e?130456%_)))))
                                             (_%E130526130555%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e130525130532%_))
                                                    (let ((_%e130528130540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e130525130532%_))))
                                                      (let ((_%hd130529130543%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e130528130540%_)))
                    (_%tl130530130545%_
                     (let () (declare (not safe)) (##cdr _%e130528130540%_))))
                (let* ((_%rest-hd130548%_ _%hd130529130543%_)
                       (_%rest-tl130550%_ _%tl130530130545%_))
                  (if '#t
                      (if (_%is-e?130456%_ _%rest-hd130548%_)
                          (_%lp130521%_
                           _%rest-tl130550%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth130524%_ '1)))
                          (if (fxpositive? _%depth130524%_)
                              (_%make-splice130449%_
                               _%e130455%_
                               _%depth130524%_
                               (_%recur130450%_ _%hd130489%_ _%is-e?130456%_)
                               (_%recur130450%_
                                _%rest130523%_
                                _%is-e?130456%_))
                              (_%make-cons130448%_
                               (_%recur130450%_ _%hd130489%_ _%is-e?130456%_)
                               (_%recur130450%_
                                _%rest130523%_
                                _%is-e?130456%_))))
                      (_%E130527130536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E130527130536%_)))))
                                        (_%E130526130555%_))))
                                (_%E130468130477%_)))))
                      (_%E130468130477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130467130559%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e130455%_))
                                                    (let ((_g130982_
                                                           (_%recur130450%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e130455%_)))
                    _%is-e?130456%_)))
              (begin
                (let ((_g130983_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g130982_)
                             (##vector-length _g130982_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g130983_ 2)))
                      (error "Context expects 2 values" _g130983_)))
                (let ((_%e130564%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130982_ 0)))
                      (_%vars130565%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130982_ 1))))
                  (values (cons 'vector _%e130564%_) _%vars130565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e130455%_))
                                                        (let ((_g130984_
                                                               (_%recur130450%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e130455%_)))
                        _%is-e?130456%_)))
                  (begin
                    (let ((_g130985_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g130984_)
                                 (##vector-length _g130984_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g130985_ 2)))
                          (error "Context expects 2 values" _g130985_)))
                    (let ((_%e130568%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130984_ 0)))
                          (_%vars130569%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130984_ 1))))
                      (values (cons 'box _%e130568%_) _%vars130569%_))))
                (values (cons 'datum _%e130455%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g130986_
                             (_%recur130450%_ _%e130446%_ gx#ellipsis?)))
                        (begin
                          (let ((_g130987_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g130986_)
                                       (##vector-length _g130986_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g130987_ 2)))
                                (error "Context expects 2 values" _g130987_)))
                          (let ((_%tree130452%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130986_ 0)))
                                (_%vars130453%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130986_ 1))))
                            (if (null? _%vars130453%_)
                                _%tree130452%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx130402%_
                                   _%vars130453%_))))))))))
          (let* ((_%e130406130416%_ _%stx130402%_)
                 (_%E130408130420%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx130402%_))))
                 (_%E130407130442%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130406130416%_))
                        (let ((_%e130409130424%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130406130416%_))))
                          (let ((_%hd130410130427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130409130424%_)))
                                (_%tl130411130429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130409130424%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130411130429%_))
                                (let ((_%e130412130432%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130411130429%_))))
                                  (let ((_%hd130413130435%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130412130432%_)))
                                        (_%tl130414130437%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130412130432%_))))
                                    (let ((_%form130440%_ _%hd130413130435%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl130414130437%_))
                                          (if '#t
                                              (let ((__tmp130989
                                                     (_%generate130404%_
                                                      (_%parse130405%_
                                                       _%form130440%_)))
                                                    (__tmp130988
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx130402%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp130989
                                                 __tmp130988))
                                              (_%E130408130420%_))
                                          (_%E130408130420%_)))))
                                (_%E130408130420%_))))
                        (_%E130408130420%_)))))
            (_%E130407130442%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx129651%_
               _%identifier=?129652%_
               _%unwrap-e129653%_
               _%wrap-e129654%_)
        (letrec ((_%generate-bindings129656%_
                  (lambda (_%target130266%_
                           _%ids130267%_
                           _%clauses130268%_
                           _%clause-ids130269%_
                           _%E130270%_)
                    (letrec ((_%generate1130272%_
                              (lambda (_%clause130369%_
                                       _%clause-id130370%_
                                       _%E130371%_)
                                (cons (cons _%clause-id130370%_ '())
                                      (cons (let ((__tmp130991
                                                   (cons _%target130266%_ '()))
                                                  (__tmp130990
                                                   (_%generate-clause129658%_
                                                    _%target130266%_
                                                    _%ids130267%_
                                                    _%clause130369%_
                                                    _%E130371%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp130991
                                               __tmp130990))
                                            '())))))
                      (let _%lp130274%_ ((_%rest130276%_ _%clauses130268%_)
                                         (_%rest-ids130277%_
                                          _%clause-ids130269%_)
                                         (_%bindings130278%_ '()))
                        (let* ((_%rest130279130287%_ _%rest130276%_)
                               (_%else130281130295%_
                                (lambda () _%bindings130278%_))
                               (_%K130283130357%_
                                (lambda (_%rest130298%_ _%clause130299%_)
                                  (let* ((_%rest-ids130300130307%_
                                          _%rest-ids130277%_)
                                         (_%E130302130311%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130300130307%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130303130345%_
                                          (lambda (_%rest-ids130314%_
                                                   _%clause-id130315%_)
                                            (let* ((_%rest-ids130316130324%_
                                                    _%rest-ids130314%_)
                                                   (_%else130318130332%_
                                                    (lambda ()
                                                      (cons (_%generate1130272%_
                                                             _%clause130299%_
                                                             _%clause-id130315%_
                                                             _%E130270%_)
                                                            _%bindings130278%_)))
                                                   (_%K130320130337%_
                                                    (lambda (_%next-clause-id130335%_)
                                                      (_%lp130274%_
                                                       _%rest130298%_
                                                       _%rest-ids130314%_
                                                       (cons (_%generate1130272%_
                                                              _%clause130299%_
                                                              _%clause-id130315%_
                                                              _%next-clause-id130335%_)
                                                             _%bindings130278%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130316130324%_))
                                                  (let* ((_%hd130321130340%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130316130324%_)))
                                                         (_%next-clause-id130343%_
                                                          _%hd130321130340%_))
                                                    (_%K130320130337%_
                                                     _%next-clause-id130343%_))
                                                  (_%else130318130332%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130300130307%_))
                                        (let ((_%hd130304130348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130300130307%_)))
                                              (_%tl130305130350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130300130307%_))))
                                          (let* ((_%clause-id130353%_
                                                  _%hd130304130348%_)
                                                 (_%rest-ids130355%_
                                                  _%tl130305130350%_))
                                            (_%K130303130345%_
                                             _%rest-ids130355%_
                                             _%clause-id130353%_)))
                                        (_%E130302130311%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130279130287%_))
                              (let ((_%hd130284130360%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130279130287%_)))
                                    (_%tl130285130362%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130279130287%_))))
                                (let* ((_%clause130365%_ _%hd130284130360%_)
                                       (_%rest130367%_ _%tl130285130362%_))
                                  (_%K130283130357%_
                                   _%rest130367%_
                                   _%clause130365%_)))
                              (_%else130281130295%_)))))))
                 (_%generate-body129657%_
                  (lambda (_%bindings130226%_ _%body130227%_)
                    (let _%recur130229%_ ((_%rest130231%_ _%bindings130226%_))
                      (let* ((_%rest130232130240%_ _%rest130231%_)
                             (_%else130234130248%_ (lambda () _%body130227%_))
                             (_%K130236130254%_
                              (lambda (_%rest130251%_ _%hd130252%_)
                                (let ((__tmp130993 (cons _%hd130252%_ '()))
                                      (__tmp130992
                                       (_%recur130229%_ _%rest130251%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp130993
                                   __tmp130992)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130232130240%_))
                            (let ((_%hd130237130257%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130232130240%_)))
                                  (_%tl130238130259%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130232130240%_))))
                              (let* ((_%hd130262%_ _%hd130237130257%_)
                                     (_%rest130264%_ _%tl130238130259%_))
                                (_%K130236130254%_
                                 _%rest130264%_
                                 _%hd130262%_)))
                            (_%else130234130248%_))))))
                 (_%generate-clause129658%_
                  (lambda (_%target130089%_
                           _%ids130090%_
                           _%clause130091%_
                           _%E130092%_)
                    (letrec ((_%generate1130094%_
                              (lambda (_%hd130181%_
                                       _%fender130182%_
                                       _%body130183%_)
                                (let ((_g130994_
                                       (_%parse-clause129660%_
                                        _%hd130181%_
                                        _%ids130090%_)))
                                  (begin
                                    (let ((_g130995_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130994_)
                                                 (##vector-length _g130994_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130995_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130995_)))
                                    (let ((_%e130185%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130994_ 0)))
                                          (_%mvars130186%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130994_ 1))))
                                      (let* ((_%pvars130188%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130186%_))))
                                             (_%E130190%_
                                              (cons _%E130092%_
                                                    (cons _%target130089%_
                                                          '())))
                                             (_%K130223%_
                                              (let ((__tmp130996
                                                     (let ((__tmp130998
                                                            (map (lambda (_%mvar130192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130193%_)
                           (let* ((_%mvar130194130201%_ _%mvar130192%_)
                                  (_%E130196130205%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130194130201%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130197130211%_
                                   (lambda (_%depth130208%_ _%id130209%_)
                                     (cons _%id130209%_
                                           (cons (let ((__tmp131000
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130209%_)))
                                                       (__tmp130999
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130193%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131000
                                                    __tmp130999
                                                    _%depth130208%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130194130201%_))
                                 (let ((_%hd130198130214%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130194130201%_)))
                                       (_%tl130199130216%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130194130201%_))))
                                   (let* ((_%id130219%_ _%hd130198130214%_)
                                          (_%depth130221%_ _%tl130199130216%_))
                                     (_%K130197130211%_
                                      _%depth130221%_
                                      _%id130219%_)))
                                 (_%E130196130205%_))))
                         _%mvars130186%_
                         _%pvars130188%_))
                   (__tmp130997
                    (if (eq? _%fender130182%_ '#t)
                        _%body130183%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130182%_
                           _%body130183%_
                           _%E130190%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp130998 __tmp130997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130188%_
                                                 __tmp130996))))
                                        (_%generate-match129659%_
                                         _%hd130181%_
                                         _%target130089%_
                                         _%e130185%_
                                         _%mvars130186%_
                                         _%K130223%_
                                         _%E130190%_))))))))
                      (let* ((_%e130095130115%_ _%clause130091%_)
                             (_%E130104130119%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130095130115%_))))
                             (_%E130097130153%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130095130115%_))
                                    (let ((_%e130105130123%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130095130115%_))))
                                      (let ((_%hd130106130126%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130105130123%_)))
                                            (_%tl130107130128%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130105130123%_))))
                                        (let ((_%hd130131%_
                                               _%hd130106130126%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130107130128%_))
                                              (let ((_%e130108130133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130107130128%_))))
                                                (let ((_%hd130109130136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130108130133%_)))
                                                      (_%tl130110130138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130108130133%_))))
                                                  (let ((_%fender130141%_
                                                         _%hd130109130136%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130110130138%_))
                                                        (let ((_%e130111130143%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130110130138%_))))
                  (let ((_%hd130112130146%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130111130143%_)))
                        (_%tl130113130148%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130111130143%_))))
                    (let ((_%body130151%_ _%hd130112130146%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130113130148%_))
                          (if '#t
                              (_%generate1130094%_
                               _%hd130131%_
                               _%fender130141%_
                               _%body130151%_)
                              (_%E130104130119%_))
                          (_%E130104130119%_)))))
                (_%E130104130119%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130104130119%_)))))
                                    (_%E130104130119%_))))
                             (_%E130096130177%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130095130115%_))
                                    (let ((_%e130098130157%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130095130115%_))))
                                      (let ((_%hd130099130160%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130098130157%_)))
                                            (_%tl130100130162%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130098130157%_))))
                                        (let ((_%hd130165%_
                                               _%hd130099130160%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130100130162%_))
                                              (let ((_%e130101130167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130100130162%_))))
                                                (let ((_%hd130102130170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130101130167%_)))
                                                      (_%tl130103130172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130101130167%_))))
                                                  (let ((_%body130175%_
                                                         _%hd130102130170%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130103130172%_))
                                                        (if '#t
                                                            (_%generate1130094%_
                                                             _%hd130165%_
                                                             '#t
                                                             _%body130175%_)
                                                            (_%E130097130153%_))
                                                        (_%E130097130153%_)))))
                                              (_%E130097130153%_)))))
                                    (_%E130097130153%_)))))
                        (_%E130096130177%_)))))
                 (_%generate-match129659%_
                  (lambda (_%where129838%_
                           _%target129839%_
                           _%hd129840%_
                           _%mvars129841%_
                           _%K129842%_
                           _%E129843%_)
                    (letrec ((_%BUG129845%_
                              (lambda (_%q130087%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx129651%_
                                         _%hd129840%_
                                         _%q130087%_))))
                             (_%recur129846%_
                              (lambda (_%e129937%_
                                       _%vars129938%_
                                       _%target129939%_
                                       _%E129940%_
                                       _%k129941%_)
                                (let* ((_%e129942129949%_ _%e129937%_)
                                       (_%E129944129953%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e129942129949%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K129945130075%_
                                        (lambda (_%body129956%_ _%tag129957%_)
                                          (let ((_%$e129959%_ _%tag129957%_))
                                            (if (eq? 'any _%$e129959%_)
                                                (_%k129941%_ _%vars129938%_)
                                                (if (eq? 'id _%$e129959%_)
                                                    (let ((__tmp131005
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target129939%_)))
                                                          (__tmp131001
                                                           (let ((__tmp131003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131004
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e129654%_
                                    _%body129956%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?129652%_
                             __tmp131004
                             _%target129939%_)))
                         (__tmp131002 (_%k129941%_ _%vars129938%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131003 __tmp131002 _%E129940%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131005 __tmp131001 _%E129940%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e129959%_)
                                                        (_%k129941%_
                                                         (cons (cons _%body129956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target129939%_)
                       _%vars129938%_))
                (if (eq? 'cons _%$e129959%_)
                    (let ((_%$e129962%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd129963%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl129964%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131011
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target129939%_)))
                            (__tmp131006
                             (let ((__tmp131010
                                    (cons (cons (cons _%$e129962%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e129653%_
                                                         _%target129939%_))
                                                      '()))
                                          '()))
                                   (__tmp131007
                                    (let ((__tmp131009
                                           (cons (cons (cons _%$hd129963%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e129962%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl129964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e129962%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131008
                                           (let* ((_%body129965129972%_
                                                   _%body129956%_)
                                                  (_%E129967129976%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body129965129972%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K129968129984%_
                                                   (lambda (_%tl129979%_
                                                            _%hd129980%_)
                                                     (_%recur129846%_
                                                      _%hd129980%_
                                                      _%vars129938%_
                                                      _%$hd129963%_
                                                      _%E129940%_
                                                      (lambda (_%vars129982%_)
                                                        (_%recur129846%_
                                                         _%tl129979%_
                                                         _%vars129982%_
                                                         _%$tl129964%_
                                                         _%E129940%_
                                                         _%k129941%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body129965129972%_))
                                                 (let ((_%hd129969129987%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body129965129972%_)))
                                                       (_%tl129970129989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body129965129972%_))))
                                                   (let* ((_%hd129992%_
                                                           _%hd129969129987%_)
                                                          (_%tl129994%_
                                                           _%tl129970129989%_))
                                                     (_%K129968129984%_
                                                      _%tl129994%_
                                                      _%hd129992%_)))
                                                 (_%E129967129976%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131009
                                       __tmp131008))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131010
                                __tmp131007))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131011
                         __tmp131006
                         _%E129940%_)))
                    (if (eq? 'splice _%$e129959%_)
                        (let* ((_%body129995130002%_ _%body129956%_)
                               (_%E129997130006%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body129995130002%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K129998130057%_
                                (lambda (_%tl130009%_ _%hd130010%_)
                                  (let* ((_%rlen130012%_
                                          (_%splice-rlen129847%_ _%tl130009%_))
                                         (_%$target130014%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130016%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130018%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130020%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130022%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130024%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130026%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130028%_
                                          (_%splice-vars129848%_ _%hd130010%_))
                                         (_%lvars130030%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130028%_)))
                                         (_%tlvars130032%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130028%_)))
                                         (_%linit130036%_
                                          (map (lambda (_%var130034%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130030%_)))
                                    (letrec ((_%make-loop130039%_
                                              (lambda (_%vars130043%_)
                                                (let ((__tmp131013
                                                       (cons (cons (cons _%$lp130020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131026
                                        (cons _%$hd130016%_ _%lvars130030%_))
                                       (__tmp131014
                                        (let ((__tmp131025
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130016%_)))
                                              (__tmp131019
                                               (let ((__tmp131024
                                                      (cons (cons (cons _%$lp-e130022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e129653%_
                                   _%$hd130016%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131020
                                                      (let ((__tmp131023
                                                             (cons (cons (cons _%$lp-hd130024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130022%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130026%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130022%_))
                                             '()))
                                 '())))
                    (__tmp131021
                     (_%recur129846%_
                      _%hd130010%_
                      '()
                      _%$lp-hd130024%_
                      _%E129940%_
                      (lambda (_%hdvars130045%_)
                        (cons _%$lp130020%_
                              (cons _%$lp-tl130026%_
                                    (map (lambda (_%svar130047%_
                                                  _%lvar130048%_)
                                           (let ((__tmp131022
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130047%_
                                                     _%hdvars130045%_
                                                     _%BUG129845%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131022
                                              _%lvar130048%_)))
                                         _%svars130028%_
                                         _%lvars130030%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131023 __tmp131021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131024
                                                  __tmp131020)))
                                              (__tmp131015
                                               (let ((__tmp131018
                                                      (map (lambda (_%lvar130050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130051%_)
                     (cons (cons _%tlvar130051%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130050%_))
                                 '())))
                   _%lvars130030%_
                   _%tlvars130032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131016
                                                      (_%k129941%_
                                                       (let ((__tmp131017
                                                              (lambda (_%svar130053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130054%_
                               _%r130055%_)
                        (cons (cons _%svar130053%_ _%tlvar130054%_)
                              _%r130055%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131017
                  _%vars130043%_
                  _%svars130028%_
                  _%tlvars130032%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131018
                                                  __tmp131016))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131025
                                           __tmp131019
                                           __tmp131015))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131026
                                    __tmp131014))
                                 '()))
                     '()))
              (__tmp131012
               (cons _%$lp130020%_ (cons _%$target130014%_ _%linit130036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131013
                                                   __tmp131012)))))
                                      (let ((_%body130041%_
                                             (let ((__tmp131028
                                                    (cons (cons (cons _%$target130014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130018%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target129939%_
                                 _%rlen130012%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131027
                                                    (_%recur129846%_
                                                     _%tl130009%_
                                                     _%vars129938%_
                                                     _%$tl130018%_
                                                     _%E129940%_
                                                     _%make-loop130039%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131028
                                                __tmp131027))))
                                        (let ((__tmp131032
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target129939%_)))
                                              (__tmp131029
                                               (if (zero? _%rlen130012%_)
                                                   _%body130041%_
                                                   (let ((__tmp131030
                                                          (let ((__tmp131031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target129939%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131031 _%rlen130012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131030
                                                      _%body130041%_
                                                      _%E129940%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131032
                                           __tmp131029
                                           _%E129940%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body129995130002%_))
                              (let ((_%hd129999130060%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body129995130002%_)))
                                    (_%tl130000130062%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body129995130002%_))))
                                (let* ((_%hd130065%_ _%hd129999130060%_)
                                       (_%tl130067%_ _%tl130000130062%_))
                                  (_%K129998130057%_
                                   _%tl130067%_
                                   _%hd130065%_)))
                              (_%E129997130006%_)))
                        (if (eq? 'null _%$e129959%_)
                            (let ((__tmp131034
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target129939%_)))
                                  (__tmp131033 (_%k129941%_ _%vars129938%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131034
                               __tmp131033
                               _%E129940%_))
                            (if (eq? 'vector _%$e129959%_)
                                (let ((_%$e130069%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131039
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target129939%_)))
                                        (__tmp131035
                                         (let ((__tmp131037
                                                (cons (cons (cons _%$e130069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131038
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e129653%_
                                    _%target129939%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131038))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131036
                                                (_%recur129846%_
                                                 _%body129956%_
                                                 _%vars129938%_
                                                 _%$e130069%_
                                                 _%E129940%_
                                                 _%k129941%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131037
                                            __tmp131036))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131039
                                     __tmp131035
                                     _%E129940%_)))
                                (if (eq? 'box _%$e129959%_)
                                    (let ((_%$e130071%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131044
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target129939%_)))
                                            (__tmp131040
                                             (let ((__tmp131042
                                                    (cons (cons (cons _%$e130071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131043
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e129653%_
                                        _%target129939%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131043))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131041
                                                    (_%recur129846%_
                                                     _%body129956%_
                                                     _%vars129938%_
                                                     _%$e130071%_
                                                     _%E129940%_
                                                     _%k129941%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131042
                                                __tmp131041))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131044
                                         __tmp131040
                                         _%E129940%_)))
                                    (if (eq? 'datum _%$e129959%_)
                                        (let ((_%$e130073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131050
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target129939%_)))
                                                (__tmp131045
                                                 (let ((__tmp131049
                                                        (cons (cons (cons _%$e130073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target129939%_))
                                  '()))
                      '()))
               (__tmp131046
                (let ((__tmp131048
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130073%_ _%body129956%_)))
                      (__tmp131047 (_%k129941%_ _%vars129938%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131048 __tmp131047 _%E129940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131049
                                                    __tmp131046))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131050
                                             __tmp131045
                                             _%E129940%_)))
                                        (_%BUG129845%_
                                         _%e129937%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e129942129949%_))
                                      (let ((_%hd129946130078%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e129942129949%_)))
                                            (_%tl129947130080%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e129942129949%_))))
                                        (let* ((_%tag130083%_
                                                _%hd129946130078%_)
                                               (_%body130085%_
                                                _%tl129947130080%_))
                                          (_%K129945130075%_
                                           _%body130085%_
                                           _%tag130083%_)))
                                      (_%E129944129953%_)))))
                             (_%splice-rlen129847%_
                              (lambda (_%e129899%_)
                                (let _%lp129901%_ ((_%e129903%_ _%e129899%_)
                                                   (_%n129904%_ '0))
                                  (let* ((_%e129905129912%_ _%e129903%_)
                                         (_%E129907129916%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129905129912%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129908129925%_
                                          (lambda (_%body129919%_
                                                   _%tag129920%_)
                                            (let ((_%$e129922%_ _%tag129920%_))
                                              (if (eq? 'splice _%$e129922%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx129651%_
                                                     _%where129838%_))
                                                  (if (eq? 'cons _%$e129922%_)
                                                      (_%lp129901%_
                                                       (cdr _%body129919%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n129904%_
                                                                '1)))
                                                      _%n129904%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129905129912%_))
                                        (let ((_%hd129909129928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129905129912%_)))
                                              (_%tl129910129930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129905129912%_))))
                                          (let* ((_%tag129933%_
                                                  _%hd129909129928%_)
                                                 (_%body129935%_
                                                  _%tl129910129930%_))
                                            (_%K129908129925%_
                                             _%body129935%_
                                             _%tag129933%_)))
                                        (_%E129907129916%_))))))
                             (_%splice-vars129848%_
                              (lambda (_%e129855%_)
                                (let _%recur129857%_ ((_%e129859%_ _%e129855%_)
                                                      (_%vars129860%_ '()))
                                  (let* ((_%e129861129868%_ _%e129859%_)
                                         (_%E129863129872%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129861129868%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129864129887%_
                                          (lambda (_%body129875%_
                                                   _%tag129876%_)
                                            (let ((_%$e129878%_ _%tag129876%_))
                                              (if (eq? 'var _%$e129878%_)
                                                  (cons _%body129875%_
                                                        _%vars129860%_)
                                                  (if (or (eq? 'cons
                                                               _%$e129878%_)
                                                          (eq? 'splice
                                                               _%$e129878%_))
                                                      (_%recur129857%_
                                                       (cdr _%body129875%_)
                                                       (_%recur129857%_
                                                        (car _%body129875%_)
                                                        _%vars129860%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e129878%_)
                      (eq? 'box _%$e129878%_))
                  (_%recur129857%_ _%body129875%_ _%vars129860%_)
                  _%vars129860%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129861129868%_))
                                        (let ((_%hd129865129890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129861129868%_)))
                                              (_%tl129866129892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129861129868%_))))
                                          (let* ((_%tag129895%_
                                                  _%hd129865129890%_)
                                                 (_%body129897%_
                                                  _%tl129866129892%_))
                                            (_%K129864129887%_
                                             _%body129897%_
                                             _%tag129895%_)))
                                        (_%E129863129872%_))))))
                             (_%make-body129849%_
                              (lambda (_%vars129851%_)
                                (cons _%K129842%_
                                      (map (lambda (_%mvar129853%_)
                                             (let ((__tmp131051
                                                    (car _%mvar129853%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131051
                                                _%vars129851%_
                                                _%BUG129845%_)))
                                           _%mvars129841%_)))))
                      (_%recur129846%_
                       _%hd129840%_
                       '()
                       _%target129839%_
                       _%E129843%_
                       _%make-body129849%_))))
                 (_%parse-clause129660%_
                  (lambda (_%hd129732%_ _%ids129733%_)
                    (let _%recur129735%_ ((_%e129737%_ _%hd129732%_)
                                          (_%vars129738%_ '())
                                          (_%depth129739%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e129737%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e129737%_))
                              (values '(any) _%vars129738%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e129737%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx129651%_
                                     _%hd129732%_))
                                  (if (let ((__tmp131052
                                             (lambda (_%id129744%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e129737%_
                                                  _%id129744%_)))))
                                        (declare (not safe))
                                        (__find __tmp131052 _%ids129733%_))
                                      (values (cons 'id _%e129737%_)
                                              _%vars129738%_)
                                      (if (let ((__tmp131053
                                                 (lambda (_%var129747%_)
                                                   (let ((__tmp131054
                                                          (car _%var129747%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e129737%_
                                                      __tmp131054)))))
                                            (declare (not safe))
                                            (__find __tmp131053
                                                    _%vars129738%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx129651%_
                                             _%e129737%_))
                                          (values (cons 'var _%e129737%_)
                                                  (cons (cons _%e129737%_
                                                              _%depth129739%_)
                                                        _%vars129738%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e129737%_))
                              (let* ((_%e129751129758%_ _%e129737%_)
                                     (_%E129753129762%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e129751129758%_))))
                                     (_%E129752129823%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e129751129758%_))
                                            (let ((_%e129754129766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e129751129758%_))))
                                              (let ((_%hd129755129769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e129754129766%_)))
                                                    (_%tl129756129771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e129754129766%_))))
                                                (let* ((_%hd129774%_
                                                        _%hd129755129769%_)
                                                       (_%rest129776%_
                                                        _%tl129756129771%_))
                                                  (if '#t
                                                      (let* ((_%make-pair129791%_
                                                              (lambda (_%tag129778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd129779%_
                               _%tl129780%_)
                        (let* ((_%hd-depth129782%_
                                (if (eq? _%tag129778%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth129739%_ '1))
                                    _%depth129739%_))
                               (_g131055_
                                (_%recur129735%_
                                 _%hd129779%_
                                 _%vars129738%_
                                 _%hd-depth129782%_)))
                          (begin
                            (let ((_g131056_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g131055_)
                                         (##vector-length _g131055_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g131056_ 2)))
                                  (error "Context expects 2 values"
                                         _g131056_)))
                            (let ((_%hd129784%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131055_ 0)))
                                  (_%vars129785%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131055_ 1))))
                              (let ((_g131057_
                                     (_%recur129735%_
                                      _%tl129780%_
                                      _%vars129785%_
                                      _%depth129739%_)))
                                (begin
                                  (let ((_g131058_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g131057_)
                                               (##vector-length _g131057_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g131058_ 2)))
                                        (error "Context expects 2 values"
                                               _g131058_)))
                                  (let ((_%tl129787%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g131057_ 0)))
                                        (_%vars129788%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g131057_ 1))))
                                    (values (cons _%tag129778%_
                                                  (cons _%hd129784%_
                                                        _%tl129787%_))
                                            _%vars129788%_)))))))))
                     (_%e129792129799%_ _%rest129776%_)
                     (_%E129794129803%_
                      (lambda ()
                        (_%make-pair129791%_
                         'cons
                         _%hd129774%_
                         _%rest129776%_)))
                     (_%E129793129819%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e129792129799%_))
                            (let ((_%e129795129807%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e129792129799%_))))
                              (let ((_%hd129796129810%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129795129807%_)))
                                    (_%tl129797129812%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129795129807%_))))
                                (let* ((_%rest-hd129815%_ _%hd129796129810%_)
                                       (_%rest-tl129817%_ _%tl129797129812%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd129815%_))
                                          (_%make-pair129791%_
                                           'splice
                                           _%hd129774%_
                                           _%rest-tl129817%_)
                                          (_%make-pair129791%_
                                           'cons
                                           _%hd129774%_
                                           _%rest129776%_))
                                      (_%E129794129803%_)))))
                            (_%E129794129803%_)))))
                (_%E129793129819%_))
              (_%E129753129762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E129753129762%_)))))
                                (_%E129752129823%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e129737%_))
                                  (values '(null) _%vars129738%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e129737%_))
                                      (let ((_g131059_
                                             (_%recur129735%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e129737%_)))
                                              _%vars129738%_
                                              _%depth129739%_)))
                                        (begin
                                          (let ((_g131060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131059_)
                                                       (##vector-length
                                                        _g131059_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131060_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131060_)))
                                          (let ((_%e129829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131059_ 0)))
                                                (_%vars129830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131059_
                                                    1))))
                                            (values (cons 'vector _%e129829%_)
                                                    _%vars129830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e129737%_))
                                          (let ((_g131061_
                                                 (_%recur129735%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e129737%_)))
                                                  _%vars129738%_
                                                  _%depth129739%_)))
                                            (begin
                                              (let ((_g131062_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131061_)
                                                           (##vector-length
                                                            _g131061_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131062_)))
                                              (let ((_%e129833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131061_
                                                        0)))
                                                    (_%vars129834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131061_
                                                        1))))
                                                (values (cons 'box _%e129833%_)
                                                        _%vars129834%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e129737%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e129737%_)))
                                                      _%vars129738%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx129651%_
                                                 _%e129737%_))))))))))))
          (let* ((_%e129661129674%_ _%stx129651%_)
                 (_%E129663129678%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e129661129674%_))))
                 (_%E129662129728%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129661129674%_))
                        (let ((_%e129664129682%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129661129674%_))))
                          (let ((_%hd129665129685%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129664129682%_)))
                                (_%tl129666129687%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129664129682%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129666129687%_))
                                (let ((_%e129667129690%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129666129687%_))))
                                  (let ((_%hd129668129693%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129667129690%_)))
                                        (_%tl129669129695%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129667129690%_))))
                                    (let ((_%expr129698%_ _%hd129668129693%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl129669129695%_))
                                          (let ((_%e129670129700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl129669129695%_))))
                                            (let ((_%hd129671129703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e129670129700%_)))
                                                  (_%tl129672129705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e129670129700%_))))
                                              (let* ((_%ids129708%_
                                                      _%hd129671129703%_)
                                                     (_%clauses129710%_
                                                      _%tl129672129705%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids129708%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx129651%_
                   _%ids129708%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses129710%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx129651%_))
                    (let* ((_%ids129715%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids129708%_)))
                           (_%clauses129717%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses129710%_)))
                           (_%clause-ids129719%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses129717%_)))
                           (_%E129721%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target129723%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first129725%_
                            (if (null? _%clauses129717%_)
                                _%E129721%_
                                (car _%clause-ids129719%_))))
                      (let ((__tmp131064
                             (let ((__tmp131065
                                    (let ((__tmp131067
                                           (let ((__tmp131069
                                                  (cons (cons (cons _%E129721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp131071 (cons _%target129723%_ '()))
                                  (__tmp131070
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target129723%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp131071 __tmp131070))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp131068
                                                  (_%generate-body129657%_
                                                   (_%generate-bindings129656%_
                                                    _%target129723%_
                                                    _%ids129715%_
                                                    _%clauses129717%_
                                                    _%clause-ids129719%_
                                                    _%E129721%_)
                                                   (cons _%first129725%_
                                                         (cons _%expr129698%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp131069
                                              __tmp131068)))
                                          (__tmp131066
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx129651%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp131067
                                       __tmp131066))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp131065)))
                            (__tmp131063
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx129651%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp131064 __tmp131063)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129663129678%_)))))
                                          (_%E129663129678%_)))))
                                (_%E129663129678%_))))
                        (_%E129663129678%_)))))
            (_%E129662129728%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx130376%_)
        (let* ((_%identifier=?130378%_ 'free-identifier=?)
               (_%unwrap-e130380%_ 'syntax-e)
               (_%wrap-e130382%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130376%_
           _%identifier=?130378%_
           _%unwrap-e130380%_
           _%wrap-e130382%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx130384%_ _%identifier=?130385%_)
        (let* ((_%unwrap-e130387%_ 'syntax-e) (_%wrap-e130389%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130384%_
           _%identifier=?130385%_
           _%unwrap-e130387%_
           _%wrap-e130389%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx130391%_ _%identifier=?130392%_ _%unwrap-e130393%_)
        (let ((_%wrap-e130395%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130391%_
           _%identifier=?130392%_
           _%unwrap-e130393%_
           _%wrap-e130395%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131073_
        (let ((_g131072_ (let () (declare (not safe)) (##length _g131073_))))
          (cond ((let () (declare (not safe)) (##fx= _g131072_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131073_))
                ((let () (declare (not safe)) (##fx= _g131072_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131073_))
                ((let () (declare (not safe)) (##fx= _g131072_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131073_))
                ((let () (declare (not safe)) (##fx= _g131072_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131073_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx129648%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx129648%_))
            (let ((__tmp131074
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx129648%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131074 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd129606%_ . _%rest129607%_)
        (let ((_%len129609%_ (length _%hd129606%_)))
          (let _%lp129611%_ ((_%rest129613%_ _%rest129607%_))
            (let* ((_%rest129614129622%_ _%rest129613%_)
                   (_%else129616129630%_ (lambda () '#!void))
                   (_%K129618129636%_
                    (lambda (_%rest129633%_ _%hd129634%_)
                      (if (let ((__tmp131075 (length _%hd129634%_)))
                            (declare (not safe))
                            (##fx= _%len129609%_ __tmp131075))
                          (_%lp129611%_ _%rest129633%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd129634%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest129614129622%_))
                  (let ((_%hd129619129639%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest129614129622%_)))
                        (_%tl129620129641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest129614129622%_))))
                    (let* ((_%hd129644%_ _%hd129619129639%_)
                           (_%rest129646%_ _%tl129620129641%_))
                      (_%K129618129636%_ _%rest129646%_ _%hd129644%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx129561%_ _%n129562%_)
        (let _%lp129564%_ ((_%rest129566%_ _%stx129561%_) (_%r129567%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest129566%_))
              (let* ((_%g129568129575%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest129566%_)))
                     (_%E129570129579%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g129568129575%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K129571129585%_
                      (lambda (_%rest129582%_ _%hd129583%_)
                        (_%lp129564%_
                         _%rest129582%_
                         (cons _%hd129583%_ _%r129567%_)))))
                (if (let () (declare (not safe)) (##pair? _%g129568129575%_))
                    (let ((_%hd129572129588%_
                           (let ()
                             (declare (not safe))
                             (##car _%g129568129575%_)))
                          (_%tl129573129590%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g129568129575%_))))
                      (let* ((_%hd129593%_ _%hd129572129588%_)
                             (_%rest129595%_ _%tl129573129590%_))
                        (_%K129571129585%_ _%rest129595%_ _%hd129593%_)))
                    (_%E129570129579%_)))
              (let _%lp129597%_ ((_%n129599%_ _%n129562%_)
                                 (_%l129600%_ _%r129567%_)
                                 (_%r129601%_ _%rest129566%_))
                (if (null? _%l129600%_)
                    (values _%l129600%_ _%r129601%_)
                    (if (fxpositive? _%n129599%_)
                        (_%lp129597%_
                         (let () (declare (not safe)) (##fx- _%n129599%_ '1))
                         (cdr _%l129600%_)
                         (cons (car _%l129600%_) _%r129601%_))
                        (values (reverse _%l129600%_) _%r129601%_))))))))))
