(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712786279)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp130958 (list gx#expander::t))
            (__tmp130957 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp130958
         '(id depth)
         __tmp130957
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args130954%_
        (apply make-instance gx#syntax-pattern::t _%$args130954%_)))
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
      (lambda (_%self129561130938%_ _%stx130940%_)
        (let* ((_%self130942%_ _%self129561130938%_)
               (_%self130944%_ _%self130942%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx130940%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx130404%_)
        (letrec ((_%generate130406%_
                  (lambda (_%e130646%_)
                    (letrec ((_%BUG130648%_
                              (lambda (_%q130813%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx130404%_
                                         _%e130646%_
                                         _%q130813%_))))
                             (_%local-pattern-e130649%_
                              (lambda (_%pat130811%_)
                                (let ((__tmp130959
                                       (##structure-ref
                                        _%pat130811%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp130959))))
                             (_%getvar130650%_
                              (lambda (_%q130808%_ _%vars130809%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q130808%_
                                   _%vars130809%_
                                   _%BUG130648%_))))
                             (_%getarg130651%_
                              (lambda (_%arg130774%_ _%vars130775%_)
                                (let* ((_%arg130776130783%_ _%arg130774%_)
                                       (_%E130778130787%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg130776130783%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K130779130796%_
                                        (lambda (_%e130790%_ _%tag130791%_)
                                          (let ((_%$e130793%_ _%tag130791%_))
                                            (if (eq? 'ref _%$e130793%_)
                                                (_%getvar130650%_
                                                 _%e130790%_
                                                 _%vars130775%_)
                                                (if (eq? 'pattern _%$e130793%_)
                                                    (_%local-pattern-e130649%_
                                                     _%e130790%_)
                                                    (_%BUG130648%_
                                                     _%arg130774%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg130776130783%_))
                                      (let ((_%hd130780130799%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg130776130783%_)))
                                            (_%tl130781130801%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg130776130783%_))))
                                        (let* ((_%tag130804%_
                                                _%hd130780130799%_)
                                               (_%e130806%_
                                                _%tl130781130801%_))
                                          (_%K130779130796%_
                                           _%e130806%_
                                           _%tag130804%_)))
                                      (_%E130778130787%_))))))
                      (let _%recur130653%_ ((_%e130655%_ _%e130646%_)
                                            (_%vars130656%_ '()))
                        (let* ((_%e130657130664%_ _%e130655%_)
                               (_%E130659130668%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e130657130664%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K130660130762%_
                                (lambda (_%body130671%_ _%tag130672%_)
                                  (let ((_%$e130674%_ _%tag130672%_))
                                    (if (eq? 'datum _%$e130674%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body130671%_))
                                        (if (eq? 'term _%$e130674%_)
                                            (let ((_%id130677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body130671%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id130677%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks130680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id130677%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks130680%_)
                                                        (let ((__tmp130960
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body130671%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp130960))
                (let ((__tmp130962
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body130671%_)))
                      (__tmp130961
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body130671%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp130962
                   __tmp130961
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id130677%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body130671%_))
                                                      (_%BUG130648%_
                                                       _%e130655%_))))
                                            (if (eq? 'pattern _%$e130674%_)
                                                (_%local-pattern-e130649%_
                                                 _%body130671%_)
                                                (if (eq? 'ref _%$e130674%_)
                                                    (_%getvar130650%_
                                                     _%body130671%_
                                                     _%vars130656%_)
                                                    (if (eq? 'cons
                                                             _%$e130674%_)
                                                        (let ((__tmp130964
                                                               (_%recur130653%_
                                                                (car _%body130671%_)
                                                                _%vars130656%_))
                                                              (__tmp130963
                                                               (_%recur130653%_
                                                                (cdr _%body130671%_)
                                                                _%vars130656%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp130964
                                                           __tmp130963))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e130674%_)
                    (let ((__tmp130965
                           (_%recur130653%_ _%body130671%_ _%vars130656%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp130965))
                    (if (eq? 'box _%$e130674%_)
                        (let ((__tmp130966
                               (_%recur130653%_
                                _%body130671%_
                                _%vars130656%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp130966))
                        (if (eq? 'splice _%$e130674%_)
                            (let* ((_%body130683130694%_ _%body130671%_)
                                   (_%E130685130698%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body130683130694%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K130686130736%_
                                    (lambda (_%args130701%_
                                             _%iv130702%_
                                             _%hd130703%_
                                             _%depth130704%_)
                                      (let* ((_%targets130710%_
                                              (map (lambda (_%g130705130707%_)
                                                     (_%getarg130651%_
                                                      _%g130705130707%_
                                                      _%vars130656%_))
                                                   _%args130701%_))
                                             (_%fold-in130712%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args130701%_)))
                                             (_%fold-out130714%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args130716%_
                                              (let ((__tmp130967
                                                     (cons _%fold-out130714%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp130967
                                                 _%fold-in130712%_)))
                                             (_%lambda-body130733%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth130704%_ '1))
                                                  (let ((_%r-args130724%_
                                                         (map (lambda (_%arg130718%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg130718%_)))
                      _%args130701%_))
                (_%r-vars130725%_
                 (let ((__tmp130968
                        (lambda (_%arg130720%_ _%var130721%_ _%r130722%_)
                          (cons (cons (cdr _%arg130720%_) _%var130721%_)
                                _%r130722%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp130968
                    _%vars130656%_
                    _%args130701%_
                    _%fold-in130712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur130653%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth130704%_ '1))
                         (cons _%hd130703%_
                               (cons (cons 'var _%fold-out130714%_)
                                     _%r-args130724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars130725%_))
                                                  (let* ((_%hd-vars130731%_
                                                          (let ((__tmp130969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg130727%_ _%var130728%_ _%r130729%_)
                           (cons (cons (cdr _%arg130727%_) _%var130728%_)
                                 _%r130729%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp130969
                     _%vars130656%_
                     _%args130701%_
                     _%fold-in130712%_)))
                 (__tmp130970
                  (_%recur130653%_ _%hd130703%_ _%hd-vars130731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp130970
                                                     _%fold-out130714%_)))))
                                        (let ((__tmp130974
                                               (if (let ((__tmp130975
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets130710%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp130975 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets130710%_))
                                                   '#!void))
                                              (__tmp130971
                                               (let ((__tmp130973
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args130716%_
                                                         _%lambda-body130733%_)))
                                                     (__tmp130972
                                                      (_%recur130653%_
                                                       _%iv130702%_
                                                       _%vars130656%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp130973
                                                  __tmp130972
                                                  _%targets130710%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp130974
                                           __tmp130971))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body130683130694%_))
                                  (let ((_%hd130687130739%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body130683130694%_)))
                                        (_%tl130688130741%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body130683130694%_))))
                                    (let ((_%depth130744%_ _%hd130687130739%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl130688130741%_))
                                          (let ((_%hd130689130746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl130688130741%_)))
                                                (_%tl130690130748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl130688130741%_))))
                                            (let ((_%hd130751%_
                                                   _%hd130689130746%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl130690130748%_))
                                                  (let ((_%hd130691130753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl130690130748%_)))
                                                        (_%tl130692130755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl130690130748%_))))
                                                    (let* ((_%iv130758%_
                                                            _%hd130691130753%_)
                                                           (_%args130760%_
                                                            _%tl130692130755%_))
                                                      (_%K130686130736%_
                                                       _%args130760%_
                                                       _%iv130758%_
                                                       _%hd130751%_
                                                       _%depth130744%_)))
                                                  (_%E130685130698%_))))
                                          (_%E130685130698%_))))
                                  (_%E130685130698%_)))
                            (if (eq? 'var _%$e130674%_)
                                _%body130671%_
                                (_%BUG130648%_ _%e130655%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e130657130664%_))
                              (let ((_%hd130661130765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e130657130664%_)))
                                    (_%tl130662130767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e130657130664%_))))
                                (let* ((_%tag130770%_ _%hd130661130765%_)
                                       (_%body130772%_ _%tl130662130767%_))
                                  (_%K130660130762%_
                                   _%body130772%_
                                   _%tag130770%_)))
                              (_%E130659130668%_)))))))
                 (_%parse130407%_
                  (lambda (_%e130448%_)
                    (letrec ((_%make-cons130450%_
                              (lambda (_%hd130638%_ _%tl130639%_)
                                (let ((_g130976_ _%hd130638%_)
                                      (_g130978_ _%tl130639%_))
                                  (begin
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
                                    (let ((_%hd-e130641%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130976_ 0)))
                                          (_%hd-vars130642%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130976_ 1))))
                                      (let ((_%tl-e130643%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130978_ 0)))
                                            (_%tl-vars130644%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130978_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e130641%_
                                                            _%tl-e130643%_))
                                                (append _%hd-vars130642%_
                                                        _%tl-vars130644%_))))))))
                             (_%make-splice130451%_
                              (lambda (_%where130574%_
                                       _%depth130575%_
                                       _%hd130576%_
                                       _%tl130577%_)
                                (let ((_g130980_ _%hd130576%_)
                                      (_g130982_ _%tl130577%_))
                                  (begin
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
                                    (let ((_g130983_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130982_)
                                                 (##vector-length _g130982_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130983_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130983_)))
                                    (let ((_%hd-e130579%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130980_ 0)))
                                          (_%hd-vars130580%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130980_ 1))))
                                      (let ((_%tl-e130581%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130982_ 0)))
                                            (_%tl-vars130582%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130982_ 1))))
                                        (let _%lp130584%_ ((_%rest130586%_
                                                            _%hd-vars130580%_)
                                                           (_%targets130587%_
                                                            '())
                                                           (_%vars130588%_
                                                            _%tl-vars130582%_))
                                          (let* ((_%rest130589130599%_
                                                  _%rest130586%_)
                                                 (_%else130591130607%_
                                                  (lambda ()
                                                    (if (null? _%targets130587%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx130404%_
                                                           _%where130574%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth130575%_
                                    (cons _%hd-e130579%_
                                          (cons _%tl-e130581%_
                                                _%targets130587%_))))
                        _%vars130588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K130593130619%_
                                                  (lambda (_%rest130610%_
                                                           _%hd-pat130611%_
                                                           _%hd-depth*130612%_)
                                                    (let ((_%hd-depth130614%_
                                                           (fx- _%hd-depth*130612%_
                                                                _%depth130575%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth130614%_))
                                                          (_%lp130584%_
                                                           _%rest130610%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat130611%_)
                         _%targets130587%_)
                   (cons (cons _%hd-depth130614%_ _%hd-pat130611%_)
                         _%vars130588%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth130614%_))
                      (_%lp130584%_
                       _%rest130610%_
                       (cons (cons 'pattern _%hd-pat130611%_)
                             _%targets130587%_)
                       _%vars130588%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx130404%_
                         _%where130574%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest130589130599%_))
                                                (let ((_%hd130594130622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest130589130599%_)))
                                                      (_%tl130595130624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest130589130599%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd130594130622%_))
                                                      (let ((_%hd130596130627%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd130594130622%_)))
                    (_%tl130597130629%_
                     (let () (declare (not safe)) (##cdr _%hd130594130622%_))))
                (let* ((_%hd-depth*130632%_ _%hd130596130627%_)
                       (_%hd-pat130634%_ _%tl130597130629%_)
                       (_%rest130636%_ _%tl130595130624%_))
                  (_%K130593130619%_
                   _%rest130636%_
                   _%hd-pat130634%_
                   _%hd-depth*130632%_)))
              (_%else130591130607%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else130591130607%_))))))))))
                             (_%recur130452%_
                              (lambda (_%e130457%_ _%is-e?130458%_)
                                (if (_%is-e?130458%_ _%e130457%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx130404%_))
                                    (if (gx#syntax-local-pattern? _%e130457%_)
                                        (let* ((_%pat130462%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e130457%_)))
                                               (_%depth130464%_
                                                (##structure-ref
                                                 _%pat130462%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth130464%_)
                                              (values (cons 'ref _%pat130462%_)
                                                      (cons (cons _%depth130464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat130462%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat130462%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e130457%_))
                                            (values (cons 'term _%e130457%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e130457%_))
                                                (let* ((_%e130468130475%_
                                                        _%e130457%_)
                                                       (_%E130470130479%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e130468130475%_))))
                                                       (_%E130469130561%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e130468130475%_))
                      (let ((_%e130471130483%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130468130475%_))))
                        (let ((_%hd130472130486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130471130483%_)))
                              (_%tl130473130488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130471130483%_))))
                          (let* ((_%hd130491%_ _%hd130472130486%_)
                                 (_%rest130493%_ _%tl130473130488%_))
                            (if '#t
                                (if (_%is-e?130458%_ _%hd130491%_)
                                    (let* ((_%e130494130501%_ _%rest130493%_)
                                           (_%E130496130505%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx130404%_
                                                 _%e130457%_))))
                                           (_%E130495130519%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e130494130501%_))
                                                  (let ((_%e130497130509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e130494130501%_))))
                                                    (let ((_%hd130498130512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e130497130509%_)))
                                                          (_%tl130499130514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e130497130509%_))))
                                                      (let ((_%rest130517%_
                                                             _%hd130498130512%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl130499130514%_))
                                                            (if '#t
                                                                (_%recur130452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest130517%_
                         false)
                        (_%E130496130505%_))
                    (_%E130496130505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130496130505%_)))))
                                      (_%E130495130519%_))
                                    (let _%lp130523%_ ((_%rest130525%_
                                                        _%rest130493%_)
                                                       (_%depth130526%_ '0))
                                      (let* ((_%e130527130534%_ _%rest130525%_)
                                             (_%E130529130538%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth130526%_)
                                                    (_%make-splice130451%_
                                                     _%e130457%_
                                                     _%depth130526%_
                                                     (_%recur130452%_
                                                      _%hd130491%_
                                                      _%is-e?130458%_)
                                                     (_%recur130452%_
                                                      _%rest130525%_
                                                      _%is-e?130458%_))
                                                    (_%make-cons130450%_
                                                     (_%recur130452%_
                                                      _%hd130491%_
                                                      _%is-e?130458%_)
                                                     (_%recur130452%_
                                                      _%rest130525%_
                                                      _%is-e?130458%_)))))
                                             (_%E130528130557%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e130527130534%_))
                                                    (let ((_%e130530130542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e130527130534%_))))
                                                      (let ((_%hd130531130545%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e130530130542%_)))
                    (_%tl130532130547%_
                     (let () (declare (not safe)) (##cdr _%e130530130542%_))))
                (let* ((_%rest-hd130550%_ _%hd130531130545%_)
                       (_%rest-tl130552%_ _%tl130532130547%_))
                  (if '#t
                      (if (_%is-e?130458%_ _%rest-hd130550%_)
                          (_%lp130523%_
                           _%rest-tl130552%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth130526%_ '1)))
                          (if (fxpositive? _%depth130526%_)
                              (_%make-splice130451%_
                               _%e130457%_
                               _%depth130526%_
                               (_%recur130452%_ _%hd130491%_ _%is-e?130458%_)
                               (_%recur130452%_
                                _%rest130525%_
                                _%is-e?130458%_))
                              (_%make-cons130450%_
                               (_%recur130452%_ _%hd130491%_ _%is-e?130458%_)
                               (_%recur130452%_
                                _%rest130525%_
                                _%is-e?130458%_))))
                      (_%E130529130538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E130529130538%_)))))
                                        (_%E130528130557%_))))
                                (_%E130470130479%_)))))
                      (_%E130470130479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130469130561%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e130457%_))
                                                    (let ((_g130984_
                                                           (_%recur130452%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e130457%_)))
                    _%is-e?130458%_)))
              (begin
                (let ((_g130985_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g130984_)
                             (##vector-length _g130984_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g130985_ 2)))
                      (error "Context expects 2 values" _g130985_)))
                (let ((_%e130566%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130984_ 0)))
                      (_%vars130567%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g130984_ 1))))
                  (values (cons 'vector _%e130566%_) _%vars130567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e130457%_))
                                                        (let ((_g130986_
                                                               (_%recur130452%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e130457%_)))
                        _%is-e?130458%_)))
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
                    (let ((_%e130570%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130986_ 0)))
                          (_%vars130571%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g130986_ 1))))
                      (values (cons 'box _%e130570%_) _%vars130571%_))))
                (values (cons 'datum _%e130457%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g130988_
                             (_%recur130452%_ _%e130448%_ gx#ellipsis?)))
                        (begin
                          (let ((_g130989_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g130988_)
                                       (##vector-length _g130988_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g130989_ 2)))
                                (error "Context expects 2 values" _g130989_)))
                          (let ((_%tree130454%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130988_ 0)))
                                (_%vars130455%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g130988_ 1))))
                            (if (null? _%vars130455%_)
                                _%tree130454%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx130404%_
                                   _%vars130455%_))))))))))
          (let* ((_%e130408130418%_ _%stx130404%_)
                 (_%E130410130422%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx130404%_))))
                 (_%E130409130444%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130408130418%_))
                        (let ((_%e130411130426%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130408130418%_))))
                          (let ((_%hd130412130429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130411130426%_)))
                                (_%tl130413130431%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130411130426%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130413130431%_))
                                (let ((_%e130414130434%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130413130431%_))))
                                  (let ((_%hd130415130437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130414130434%_)))
                                        (_%tl130416130439%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130414130434%_))))
                                    (let ((_%form130442%_ _%hd130415130437%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl130416130439%_))
                                          (if '#t
                                              (let ((__tmp130991
                                                     (_%generate130406%_
                                                      (_%parse130407%_
                                                       _%form130442%_)))
                                                    (__tmp130990
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx130404%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp130991
                                                 __tmp130990))
                                              (_%E130410130422%_))
                                          (_%E130410130422%_)))))
                                (_%E130410130422%_))))
                        (_%E130410130422%_)))))
            (_%E130409130444%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx129653%_
               _%identifier=?129654%_
               _%unwrap-e129655%_
               _%wrap-e129656%_)
        (letrec ((_%generate-bindings129658%_
                  (lambda (_%target130268%_
                           _%ids130269%_
                           _%clauses130270%_
                           _%clause-ids130271%_
                           _%E130272%_)
                    (letrec ((_%generate1130274%_
                              (lambda (_%clause130371%_
                                       _%clause-id130372%_
                                       _%E130373%_)
                                (cons (cons _%clause-id130372%_ '())
                                      (cons (let ((__tmp130993
                                                   (cons _%target130268%_ '()))
                                                  (__tmp130992
                                                   (_%generate-clause129660%_
                                                    _%target130268%_
                                                    _%ids130269%_
                                                    _%clause130371%_
                                                    _%E130373%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp130993
                                               __tmp130992))
                                            '())))))
                      (let _%lp130276%_ ((_%rest130278%_ _%clauses130270%_)
                                         (_%rest-ids130279%_
                                          _%clause-ids130271%_)
                                         (_%bindings130280%_ '()))
                        (let* ((_%rest130281130289%_ _%rest130278%_)
                               (_%else130283130297%_
                                (lambda () _%bindings130280%_))
                               (_%K130285130359%_
                                (lambda (_%rest130300%_ _%clause130301%_)
                                  (let* ((_%rest-ids130302130309%_
                                          _%rest-ids130279%_)
                                         (_%E130304130313%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130302130309%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130305130347%_
                                          (lambda (_%rest-ids130316%_
                                                   _%clause-id130317%_)
                                            (let* ((_%rest-ids130318130326%_
                                                    _%rest-ids130316%_)
                                                   (_%else130320130334%_
                                                    (lambda ()
                                                      (cons (_%generate1130274%_
                                                             _%clause130301%_
                                                             _%clause-id130317%_
                                                             _%E130272%_)
                                                            _%bindings130280%_)))
                                                   (_%K130322130339%_
                                                    (lambda (_%next-clause-id130337%_)
                                                      (_%lp130276%_
                                                       _%rest130300%_
                                                       _%rest-ids130316%_
                                                       (cons (_%generate1130274%_
                                                              _%clause130301%_
                                                              _%clause-id130317%_
                                                              _%next-clause-id130337%_)
                                                             _%bindings130280%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130318130326%_))
                                                  (let* ((_%hd130323130342%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130318130326%_)))
                                                         (_%next-clause-id130345%_
                                                          _%hd130323130342%_))
                                                    (_%K130322130339%_
                                                     _%next-clause-id130345%_))
                                                  (_%else130320130334%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130302130309%_))
                                        (let ((_%hd130306130350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130302130309%_)))
                                              (_%tl130307130352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130302130309%_))))
                                          (let* ((_%clause-id130355%_
                                                  _%hd130306130350%_)
                                                 (_%rest-ids130357%_
                                                  _%tl130307130352%_))
                                            (_%K130305130347%_
                                             _%rest-ids130357%_
                                             _%clause-id130355%_)))
                                        (_%E130304130313%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130281130289%_))
                              (let ((_%hd130286130362%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130281130289%_)))
                                    (_%tl130287130364%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130281130289%_))))
                                (let* ((_%clause130367%_ _%hd130286130362%_)
                                       (_%rest130369%_ _%tl130287130364%_))
                                  (_%K130285130359%_
                                   _%rest130369%_
                                   _%clause130367%_)))
                              (_%else130283130297%_)))))))
                 (_%generate-body129659%_
                  (lambda (_%bindings130228%_ _%body130229%_)
                    (let _%recur130231%_ ((_%rest130233%_ _%bindings130228%_))
                      (let* ((_%rest130234130242%_ _%rest130233%_)
                             (_%else130236130250%_ (lambda () _%body130229%_))
                             (_%K130238130256%_
                              (lambda (_%rest130253%_ _%hd130254%_)
                                (let ((__tmp130995 (cons _%hd130254%_ '()))
                                      (__tmp130994
                                       (_%recur130231%_ _%rest130253%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp130995
                                   __tmp130994)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130234130242%_))
                            (let ((_%hd130239130259%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130234130242%_)))
                                  (_%tl130240130261%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130234130242%_))))
                              (let* ((_%hd130264%_ _%hd130239130259%_)
                                     (_%rest130266%_ _%tl130240130261%_))
                                (_%K130238130256%_
                                 _%rest130266%_
                                 _%hd130264%_)))
                            (_%else130236130250%_))))))
                 (_%generate-clause129660%_
                  (lambda (_%target130091%_
                           _%ids130092%_
                           _%clause130093%_
                           _%E130094%_)
                    (letrec ((_%generate1130096%_
                              (lambda (_%hd130183%_
                                       _%fender130184%_
                                       _%body130185%_)
                                (let ((_g130996_
                                       (_%parse-clause129662%_
                                        _%hd130183%_
                                        _%ids130092%_)))
                                  (begin
                                    (let ((_g130997_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130996_)
                                                 (##vector-length _g130996_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130997_ 2)))
                                          (error "Context expects 2 values"
                                                 _g130997_)))
                                    (let ((_%e130187%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130996_ 0)))
                                          (_%mvars130188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130996_ 1))))
                                      (let* ((_%pvars130190%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130188%_))))
                                             (_%E130192%_
                                              (cons _%E130094%_
                                                    (cons _%target130091%_
                                                          '())))
                                             (_%K130225%_
                                              (let ((__tmp130998
                                                     (let ((__tmp131000
                                                            (map (lambda (_%mvar130194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130195%_)
                           (let* ((_%mvar130196130203%_ _%mvar130194%_)
                                  (_%E130198130207%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130196130203%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130199130213%_
                                   (lambda (_%depth130210%_ _%id130211%_)
                                     (cons _%id130211%_
                                           (cons (let ((__tmp131002
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130211%_)))
                                                       (__tmp131001
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130195%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131002
                                                    __tmp131001
                                                    _%depth130210%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130196130203%_))
                                 (let ((_%hd130200130216%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130196130203%_)))
                                       (_%tl130201130218%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130196130203%_))))
                                   (let* ((_%id130221%_ _%hd130200130216%_)
                                          (_%depth130223%_ _%tl130201130218%_))
                                     (_%K130199130213%_
                                      _%depth130223%_
                                      _%id130221%_)))
                                 (_%E130198130207%_))))
                         _%mvars130188%_
                         _%pvars130190%_))
                   (__tmp130999
                    (if (eq? _%fender130184%_ '#t)
                        _%body130185%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130184%_
                           _%body130185%_
                           _%E130192%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp131000 __tmp130999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130190%_
                                                 __tmp130998))))
                                        (_%generate-match129661%_
                                         _%hd130183%_
                                         _%target130091%_
                                         _%e130187%_
                                         _%mvars130188%_
                                         _%K130225%_
                                         _%E130192%_))))))))
                      (let* ((_%e130097130117%_ _%clause130093%_)
                             (_%E130106130121%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130097130117%_))))
                             (_%E130099130155%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130097130117%_))
                                    (let ((_%e130107130125%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130097130117%_))))
                                      (let ((_%hd130108130128%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130107130125%_)))
                                            (_%tl130109130130%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130107130125%_))))
                                        (let ((_%hd130133%_
                                               _%hd130108130128%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130109130130%_))
                                              (let ((_%e130110130135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130109130130%_))))
                                                (let ((_%hd130111130138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130110130135%_)))
                                                      (_%tl130112130140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130110130135%_))))
                                                  (let ((_%fender130143%_
                                                         _%hd130111130138%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130112130140%_))
                                                        (let ((_%e130113130145%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130112130140%_))))
                  (let ((_%hd130114130148%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130113130145%_)))
                        (_%tl130115130150%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130113130145%_))))
                    (let ((_%body130153%_ _%hd130114130148%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130115130150%_))
                          (if '#t
                              (_%generate1130096%_
                               _%hd130133%_
                               _%fender130143%_
                               _%body130153%_)
                              (_%E130106130121%_))
                          (_%E130106130121%_)))))
                (_%E130106130121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130106130121%_)))))
                                    (_%E130106130121%_))))
                             (_%E130098130179%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130097130117%_))
                                    (let ((_%e130100130159%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130097130117%_))))
                                      (let ((_%hd130101130162%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130100130159%_)))
                                            (_%tl130102130164%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130100130159%_))))
                                        (let ((_%hd130167%_
                                               _%hd130101130162%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130102130164%_))
                                              (let ((_%e130103130169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130102130164%_))))
                                                (let ((_%hd130104130172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130103130169%_)))
                                                      (_%tl130105130174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130103130169%_))))
                                                  (let ((_%body130177%_
                                                         _%hd130104130172%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130105130174%_))
                                                        (if '#t
                                                            (_%generate1130096%_
                                                             _%hd130167%_
                                                             '#t
                                                             _%body130177%_)
                                                            (_%E130099130155%_))
                                                        (_%E130099130155%_)))))
                                              (_%E130099130155%_)))))
                                    (_%E130099130155%_)))))
                        (_%E130098130179%_)))))
                 (_%generate-match129661%_
                  (lambda (_%where129840%_
                           _%target129841%_
                           _%hd129842%_
                           _%mvars129843%_
                           _%K129844%_
                           _%E129845%_)
                    (letrec ((_%BUG129847%_
                              (lambda (_%q130089%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx129653%_
                                         _%hd129842%_
                                         _%q130089%_))))
                             (_%recur129848%_
                              (lambda (_%e129939%_
                                       _%vars129940%_
                                       _%target129941%_
                                       _%E129942%_
                                       _%k129943%_)
                                (let* ((_%e129944129951%_ _%e129939%_)
                                       (_%E129946129955%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e129944129951%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K129947130077%_
                                        (lambda (_%body129958%_ _%tag129959%_)
                                          (let ((_%$e129961%_ _%tag129959%_))
                                            (if (eq? 'any _%$e129961%_)
                                                (_%k129943%_ _%vars129940%_)
                                                (if (eq? 'id _%$e129961%_)
                                                    (let ((__tmp131007
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target129941%_)))
                                                          (__tmp131003
                                                           (let ((__tmp131005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131006
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e129656%_
                                    _%body129958%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?129654%_
                             __tmp131006
                             _%target129941%_)))
                         (__tmp131004 (_%k129943%_ _%vars129940%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131005 __tmp131004 _%E129942%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131007 __tmp131003 _%E129942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e129961%_)
                                                        (_%k129943%_
                                                         (cons (cons _%body129958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target129941%_)
                       _%vars129940%_))
                (if (eq? 'cons _%$e129961%_)
                    (let ((_%$e129964%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd129965%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl129966%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131013
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target129941%_)))
                            (__tmp131008
                             (let ((__tmp131012
                                    (cons (cons (cons _%$e129964%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e129655%_
                                                         _%target129941%_))
                                                      '()))
                                          '()))
                                   (__tmp131009
                                    (let ((__tmp131011
                                           (cons (cons (cons _%$hd129965%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e129964%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl129966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e129964%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131010
                                           (let* ((_%body129967129974%_
                                                   _%body129958%_)
                                                  (_%E129969129978%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body129967129974%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K129970129986%_
                                                   (lambda (_%tl129981%_
                                                            _%hd129982%_)
                                                     (_%recur129848%_
                                                      _%hd129982%_
                                                      _%vars129940%_
                                                      _%$hd129965%_
                                                      _%E129942%_
                                                      (lambda (_%vars129984%_)
                                                        (_%recur129848%_
                                                         _%tl129981%_
                                                         _%vars129984%_
                                                         _%$tl129966%_
                                                         _%E129942%_
                                                         _%k129943%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body129967129974%_))
                                                 (let ((_%hd129971129989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body129967129974%_)))
                                                       (_%tl129972129991%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body129967129974%_))))
                                                   (let* ((_%hd129994%_
                                                           _%hd129971129989%_)
                                                          (_%tl129996%_
                                                           _%tl129972129991%_))
                                                     (_%K129970129986%_
                                                      _%tl129996%_
                                                      _%hd129994%_)))
                                                 (_%E129969129978%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131011
                                       __tmp131010))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131012
                                __tmp131009))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131013
                         __tmp131008
                         _%E129942%_)))
                    (if (eq? 'splice _%$e129961%_)
                        (let* ((_%body129997130004%_ _%body129958%_)
                               (_%E129999130008%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body129997130004%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K130000130059%_
                                (lambda (_%tl130011%_ _%hd130012%_)
                                  (let* ((_%rlen130014%_
                                          (_%splice-rlen129849%_ _%tl130011%_))
                                         (_%$target130016%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130018%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130020%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130022%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130024%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130026%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130028%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130030%_
                                          (_%splice-vars129850%_ _%hd130012%_))
                                         (_%lvars130032%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130030%_)))
                                         (_%tlvars130034%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130030%_)))
                                         (_%linit130038%_
                                          (map (lambda (_%var130036%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130032%_)))
                                    (letrec ((_%make-loop130041%_
                                              (lambda (_%vars130045%_)
                                                (let ((__tmp131015
                                                       (cons (cons (cons _%$lp130022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131028
                                        (cons _%$hd130018%_ _%lvars130032%_))
                                       (__tmp131016
                                        (let ((__tmp131027
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130018%_)))
                                              (__tmp131021
                                               (let ((__tmp131026
                                                      (cons (cons (cons _%$lp-e130024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e129655%_
                                   _%$hd130018%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131022
                                                      (let ((__tmp131025
                                                             (cons (cons (cons _%$lp-hd130026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130024%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130028%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130024%_))
                                             '()))
                                 '())))
                    (__tmp131023
                     (_%recur129848%_
                      _%hd130012%_
                      '()
                      _%$lp-hd130026%_
                      _%E129942%_
                      (lambda (_%hdvars130047%_)
                        (cons _%$lp130022%_
                              (cons _%$lp-tl130028%_
                                    (map (lambda (_%svar130049%_
                                                  _%lvar130050%_)
                                           (let ((__tmp131024
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130049%_
                                                     _%hdvars130047%_
                                                     _%BUG129847%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131024
                                              _%lvar130050%_)))
                                         _%svars130030%_
                                         _%lvars130032%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131025 __tmp131023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131026
                                                  __tmp131022)))
                                              (__tmp131017
                                               (let ((__tmp131020
                                                      (map (lambda (_%lvar130052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130053%_)
                     (cons (cons _%tlvar130053%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130052%_))
                                 '())))
                   _%lvars130032%_
                   _%tlvars130034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131018
                                                      (_%k129943%_
                                                       (let ((__tmp131019
                                                              (lambda (_%svar130055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130056%_
                               _%r130057%_)
                        (cons (cons _%svar130055%_ _%tlvar130056%_)
                              _%r130057%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131019
                  _%vars130045%_
                  _%svars130030%_
                  _%tlvars130034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131020
                                                  __tmp131018))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131027
                                           __tmp131021
                                           __tmp131017))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131028
                                    __tmp131016))
                                 '()))
                     '()))
              (__tmp131014
               (cons _%$lp130022%_ (cons _%$target130016%_ _%linit130038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131015
                                                   __tmp131014)))))
                                      (let ((_%body130043%_
                                             (let ((__tmp131030
                                                    (cons (cons (cons _%$target130016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130020%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target129941%_
                                 _%rlen130014%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131029
                                                    (_%recur129848%_
                                                     _%tl130011%_
                                                     _%vars129940%_
                                                     _%$tl130020%_
                                                     _%E129942%_
                                                     _%make-loop130041%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131030
                                                __tmp131029))))
                                        (let ((__tmp131034
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target129941%_)))
                                              (__tmp131031
                                               (if (zero? _%rlen130014%_)
                                                   _%body130043%_
                                                   (let ((__tmp131032
                                                          (let ((__tmp131033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target129941%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131033 _%rlen130014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131032
                                                      _%body130043%_
                                                      _%E129942%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131034
                                           __tmp131031
                                           _%E129942%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body129997130004%_))
                              (let ((_%hd130001130062%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body129997130004%_)))
                                    (_%tl130002130064%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body129997130004%_))))
                                (let* ((_%hd130067%_ _%hd130001130062%_)
                                       (_%tl130069%_ _%tl130002130064%_))
                                  (_%K130000130059%_
                                   _%tl130069%_
                                   _%hd130067%_)))
                              (_%E129999130008%_)))
                        (if (eq? 'null _%$e129961%_)
                            (let ((__tmp131036
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target129941%_)))
                                  (__tmp131035 (_%k129943%_ _%vars129940%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131036
                               __tmp131035
                               _%E129942%_))
                            (if (eq? 'vector _%$e129961%_)
                                (let ((_%$e130071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131041
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target129941%_)))
                                        (__tmp131037
                                         (let ((__tmp131039
                                                (cons (cons (cons _%$e130071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131040
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e129655%_
                                    _%target129941%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131040))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131038
                                                (_%recur129848%_
                                                 _%body129958%_
                                                 _%vars129940%_
                                                 _%$e130071%_
                                                 _%E129942%_
                                                 _%k129943%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131039
                                            __tmp131038))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131041
                                     __tmp131037
                                     _%E129942%_)))
                                (if (eq? 'box _%$e129961%_)
                                    (let ((_%$e130073%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131046
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target129941%_)))
                                            (__tmp131042
                                             (let ((__tmp131044
                                                    (cons (cons (cons _%$e130073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131045
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e129655%_
                                        _%target129941%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131045))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131043
                                                    (_%recur129848%_
                                                     _%body129958%_
                                                     _%vars129940%_
                                                     _%$e130073%_
                                                     _%E129942%_
                                                     _%k129943%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131044
                                                __tmp131043))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131046
                                         __tmp131042
                                         _%E129942%_)))
                                    (if (eq? 'datum _%$e129961%_)
                                        (let ((_%$e130075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131052
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target129941%_)))
                                                (__tmp131047
                                                 (let ((__tmp131051
                                                        (cons (cons (cons _%$e130075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target129941%_))
                                  '()))
                      '()))
               (__tmp131048
                (let ((__tmp131050
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130075%_ _%body129958%_)))
                      (__tmp131049 (_%k129943%_ _%vars129940%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131050 __tmp131049 _%E129942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131051
                                                    __tmp131048))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131052
                                             __tmp131047
                                             _%E129942%_)))
                                        (_%BUG129847%_
                                         _%e129939%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e129944129951%_))
                                      (let ((_%hd129948130080%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e129944129951%_)))
                                            (_%tl129949130082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e129944129951%_))))
                                        (let* ((_%tag130085%_
                                                _%hd129948130080%_)
                                               (_%body130087%_
                                                _%tl129949130082%_))
                                          (_%K129947130077%_
                                           _%body130087%_
                                           _%tag130085%_)))
                                      (_%E129946129955%_)))))
                             (_%splice-rlen129849%_
                              (lambda (_%e129901%_)
                                (let _%lp129903%_ ((_%e129905%_ _%e129901%_)
                                                   (_%n129906%_ '0))
                                  (let* ((_%e129907129914%_ _%e129905%_)
                                         (_%E129909129918%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129907129914%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129910129927%_
                                          (lambda (_%body129921%_
                                                   _%tag129922%_)
                                            (let ((_%$e129924%_ _%tag129922%_))
                                              (if (eq? 'splice _%$e129924%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx129653%_
                                                     _%where129840%_))
                                                  (if (eq? 'cons _%$e129924%_)
                                                      (_%lp129903%_
                                                       (cdr _%body129921%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n129906%_
                                                                '1)))
                                                      _%n129906%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129907129914%_))
                                        (let ((_%hd129911129930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129907129914%_)))
                                              (_%tl129912129932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129907129914%_))))
                                          (let* ((_%tag129935%_
                                                  _%hd129911129930%_)
                                                 (_%body129937%_
                                                  _%tl129912129932%_))
                                            (_%K129910129927%_
                                             _%body129937%_
                                             _%tag129935%_)))
                                        (_%E129909129918%_))))))
                             (_%splice-vars129850%_
                              (lambda (_%e129857%_)
                                (let _%recur129859%_ ((_%e129861%_ _%e129857%_)
                                                      (_%vars129862%_ '()))
                                  (let* ((_%e129863129870%_ _%e129861%_)
                                         (_%E129865129874%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e129863129870%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K129866129889%_
                                          (lambda (_%body129877%_
                                                   _%tag129878%_)
                                            (let ((_%$e129880%_ _%tag129878%_))
                                              (if (eq? 'var _%$e129880%_)
                                                  (cons _%body129877%_
                                                        _%vars129862%_)
                                                  (if (or (eq? 'cons
                                                               _%$e129880%_)
                                                          (eq? 'splice
                                                               _%$e129880%_))
                                                      (_%recur129859%_
                                                       (cdr _%body129877%_)
                                                       (_%recur129859%_
                                                        (car _%body129877%_)
                                                        _%vars129862%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e129880%_)
                      (eq? 'box _%$e129880%_))
                  (_%recur129859%_ _%body129877%_ _%vars129862%_)
                  _%vars129862%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e129863129870%_))
                                        (let ((_%hd129867129892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129863129870%_)))
                                              (_%tl129868129894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129863129870%_))))
                                          (let* ((_%tag129897%_
                                                  _%hd129867129892%_)
                                                 (_%body129899%_
                                                  _%tl129868129894%_))
                                            (_%K129866129889%_
                                             _%body129899%_
                                             _%tag129897%_)))
                                        (_%E129865129874%_))))))
                             (_%make-body129851%_
                              (lambda (_%vars129853%_)
                                (cons _%K129844%_
                                      (map (lambda (_%mvar129855%_)
                                             (let ((__tmp131053
                                                    (car _%mvar129855%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131053
                                                _%vars129853%_
                                                _%BUG129847%_)))
                                           _%mvars129843%_)))))
                      (_%recur129848%_
                       _%hd129842%_
                       '()
                       _%target129841%_
                       _%E129845%_
                       _%make-body129851%_))))
                 (_%parse-clause129662%_
                  (lambda (_%hd129734%_ _%ids129735%_)
                    (let _%recur129737%_ ((_%e129739%_ _%hd129734%_)
                                          (_%vars129740%_ '())
                                          (_%depth129741%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e129739%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e129739%_))
                              (values '(any) _%vars129740%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e129739%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx129653%_
                                     _%hd129734%_))
                                  (if (let ((__tmp131054
                                             (lambda (_%id129746%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e129739%_
                                                  _%id129746%_)))))
                                        (declare (not safe))
                                        (__find __tmp131054 _%ids129735%_))
                                      (values (cons 'id _%e129739%_)
                                              _%vars129740%_)
                                      (if (let ((__tmp131055
                                                 (lambda (_%var129749%_)
                                                   (let ((__tmp131056
                                                          (car _%var129749%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e129739%_
                                                      __tmp131056)))))
                                            (declare (not safe))
                                            (__find __tmp131055
                                                    _%vars129740%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx129653%_
                                             _%e129739%_))
                                          (values (cons 'var _%e129739%_)
                                                  (cons (cons _%e129739%_
                                                              _%depth129741%_)
                                                        _%vars129740%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e129739%_))
                              (let* ((_%e129753129760%_ _%e129739%_)
                                     (_%E129755129764%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e129753129760%_))))
                                     (_%E129754129825%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e129753129760%_))
                                            (let ((_%e129756129768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e129753129760%_))))
                                              (let ((_%hd129757129771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e129756129768%_)))
                                                    (_%tl129758129773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e129756129768%_))))
                                                (let* ((_%hd129776%_
                                                        _%hd129757129771%_)
                                                       (_%rest129778%_
                                                        _%tl129758129773%_))
                                                  (if '#t
                                                      (let* ((_%make-pair129793%_
                                                              (lambda (_%tag129780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd129781%_
                               _%tl129782%_)
                        (let* ((_%hd-depth129784%_
                                (if (eq? _%tag129780%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth129741%_ '1))
                                    _%depth129741%_))
                               (_g131057_
                                (_%recur129737%_
                                 _%hd129781%_
                                 _%vars129740%_
                                 _%hd-depth129784%_)))
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
                            (let ((_%hd129786%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131057_ 0)))
                                  (_%vars129787%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131057_ 1))))
                              (let ((_g131059_
                                     (_%recur129737%_
                                      _%tl129782%_
                                      _%vars129787%_
                                      _%depth129741%_)))
                                (begin
                                  (let ((_g131060_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g131059_)
                                               (##vector-length _g131059_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g131060_ 2)))
                                        (error "Context expects 2 values"
                                               _g131060_)))
                                  (let ((_%tl129789%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g131059_ 0)))
                                        (_%vars129790%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g131059_ 1))))
                                    (values (cons _%tag129780%_
                                                  (cons _%hd129786%_
                                                        _%tl129789%_))
                                            _%vars129790%_)))))))))
                     (_%e129794129801%_ _%rest129778%_)
                     (_%E129796129805%_
                      (lambda ()
                        (_%make-pair129793%_
                         'cons
                         _%hd129776%_
                         _%rest129778%_)))
                     (_%E129795129821%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e129794129801%_))
                            (let ((_%e129797129809%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e129794129801%_))))
                              (let ((_%hd129798129812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129797129809%_)))
                                    (_%tl129799129814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129797129809%_))))
                                (let* ((_%rest-hd129817%_ _%hd129798129812%_)
                                       (_%rest-tl129819%_ _%tl129799129814%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd129817%_))
                                          (_%make-pair129793%_
                                           'splice
                                           _%hd129776%_
                                           _%rest-tl129819%_)
                                          (_%make-pair129793%_
                                           'cons
                                           _%hd129776%_
                                           _%rest129778%_))
                                      (_%E129796129805%_)))))
                            (_%E129796129805%_)))))
                (_%E129795129821%_))
              (_%E129755129764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E129755129764%_)))))
                                (_%E129754129825%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e129739%_))
                                  (values '(null) _%vars129740%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e129739%_))
                                      (let ((_g131061_
                                             (_%recur129737%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e129739%_)))
                                              _%vars129740%_
                                              _%depth129741%_)))
                                        (begin
                                          (let ((_g131062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131061_)
                                                       (##vector-length
                                                        _g131061_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131062_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131062_)))
                                          (let ((_%e129831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131061_ 0)))
                                                (_%vars129832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131061_
                                                    1))))
                                            (values (cons 'vector _%e129831%_)
                                                    _%vars129832%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e129739%_))
                                          (let ((_g131063_
                                                 (_%recur129737%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e129739%_)))
                                                  _%vars129740%_
                                                  _%depth129741%_)))
                                            (begin
                                              (let ((_g131064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131063_)
                                                           (##vector-length
                                                            _g131063_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131064_)))
                                              (let ((_%e129835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131063_
                                                        0)))
                                                    (_%vars129836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131063_
                                                        1))))
                                                (values (cons 'box _%e129835%_)
                                                        _%vars129836%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e129739%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e129739%_)))
                                                      _%vars129740%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx129653%_
                                                 _%e129739%_))))))))))))
          (let* ((_%e129663129676%_ _%stx129653%_)
                 (_%E129665129680%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e129663129676%_))))
                 (_%E129664129730%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129663129676%_))
                        (let ((_%e129666129684%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129663129676%_))))
                          (let ((_%hd129667129687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129666129684%_)))
                                (_%tl129668129689%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129666129684%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129668129689%_))
                                (let ((_%e129669129692%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129668129689%_))))
                                  (let ((_%hd129670129695%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129669129692%_)))
                                        (_%tl129671129697%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129669129692%_))))
                                    (let ((_%expr129700%_ _%hd129670129695%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl129671129697%_))
                                          (let ((_%e129672129702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl129671129697%_))))
                                            (let ((_%hd129673129705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e129672129702%_)))
                                                  (_%tl129674129707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e129672129702%_))))
                                              (let* ((_%ids129710%_
                                                      _%hd129673129705%_)
                                                     (_%clauses129712%_
                                                      _%tl129674129707%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids129710%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx129653%_
                   _%ids129710%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses129712%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx129653%_))
                    (let* ((_%ids129717%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids129710%_)))
                           (_%clauses129719%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses129712%_)))
                           (_%clause-ids129721%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses129719%_)))
                           (_%E129723%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target129725%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first129727%_
                            (if (null? _%clauses129719%_)
                                _%E129723%_
                                (car _%clause-ids129721%_))))
                      (let ((__tmp131066
                             (let ((__tmp131067
                                    (let ((__tmp131069
                                           (let ((__tmp131071
                                                  (cons (cons (cons _%E129723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp131073 (cons _%target129725%_ '()))
                                  (__tmp131072
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target129725%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp131073 __tmp131072))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp131070
                                                  (_%generate-body129659%_
                                                   (_%generate-bindings129658%_
                                                    _%target129725%_
                                                    _%ids129717%_
                                                    _%clauses129719%_
                                                    _%clause-ids129721%_
                                                    _%E129723%_)
                                                   (cons _%first129727%_
                                                         (cons _%expr129700%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp131071
                                              __tmp131070)))
                                          (__tmp131068
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx129653%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp131069
                                       __tmp131068))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp131067)))
                            (__tmp131065
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx129653%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp131066 __tmp131065)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129665129680%_)))))
                                          (_%E129665129680%_)))))
                                (_%E129665129680%_))))
                        (_%E129665129680%_)))))
            (_%E129664129730%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx130378%_)
        (let* ((_%identifier=?130380%_ 'free-identifier=?)
               (_%unwrap-e130382%_ 'syntax-e)
               (_%wrap-e130384%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130378%_
           _%identifier=?130380%_
           _%unwrap-e130382%_
           _%wrap-e130384%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx130386%_ _%identifier=?130387%_)
        (let* ((_%unwrap-e130389%_ 'syntax-e) (_%wrap-e130391%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130386%_
           _%identifier=?130387%_
           _%unwrap-e130389%_
           _%wrap-e130391%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx130393%_ _%identifier=?130394%_ _%unwrap-e130395%_)
        (let ((_%wrap-e130397%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130393%_
           _%identifier=?130394%_
           _%unwrap-e130395%_
           _%wrap-e130397%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131075_
        (let ((_g131074_ (let () (declare (not safe)) (##length _g131075_))))
          (cond ((let () (declare (not safe)) (##fx= _g131074_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131075_))
                ((let () (declare (not safe)) (##fx= _g131074_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131075_))
                ((let () (declare (not safe)) (##fx= _g131074_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131075_))
                ((let () (declare (not safe)) (##fx= _g131074_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131075_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx129650%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx129650%_))
            (let ((__tmp131076
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx129650%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131076 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd129608%_ . _%rest129609%_)
        (let ((_%len129611%_ (length _%hd129608%_)))
          (let _%lp129613%_ ((_%rest129615%_ _%rest129609%_))
            (let* ((_%rest129616129624%_ _%rest129615%_)
                   (_%else129618129632%_ (lambda () '#!void))
                   (_%K129620129638%_
                    (lambda (_%rest129635%_ _%hd129636%_)
                      (if (let ((__tmp131077 (length _%hd129636%_)))
                            (declare (not safe))
                            (##fx= _%len129611%_ __tmp131077))
                          (_%lp129613%_ _%rest129635%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd129636%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest129616129624%_))
                  (let ((_%hd129621129641%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest129616129624%_)))
                        (_%tl129622129643%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest129616129624%_))))
                    (let* ((_%hd129646%_ _%hd129621129641%_)
                           (_%rest129648%_ _%tl129622129643%_))
                      (_%K129620129638%_ _%rest129648%_ _%hd129646%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx129563%_ _%n129564%_)
        (let _%lp129566%_ ((_%rest129568%_ _%stx129563%_) (_%r129569%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest129568%_))
              (let* ((_%g129570129577%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest129568%_)))
                     (_%E129572129581%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g129570129577%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K129573129587%_
                      (lambda (_%rest129584%_ _%hd129585%_)
                        (_%lp129566%_
                         _%rest129584%_
                         (cons _%hd129585%_ _%r129569%_)))))
                (if (let () (declare (not safe)) (##pair? _%g129570129577%_))
                    (let ((_%hd129574129590%_
                           (let ()
                             (declare (not safe))
                             (##car _%g129570129577%_)))
                          (_%tl129575129592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g129570129577%_))))
                      (let* ((_%hd129595%_ _%hd129574129590%_)
                             (_%rest129597%_ _%tl129575129592%_))
                        (_%K129573129587%_ _%rest129597%_ _%hd129595%_)))
                    (_%E129572129581%_)))
              (let _%lp129599%_ ((_%n129601%_ _%n129564%_)
                                 (_%l129602%_ _%r129569%_)
                                 (_%r129603%_ _%rest129568%_))
                (if (null? _%l129602%_)
                    (values _%l129602%_ _%r129603%_)
                    (if (fxpositive? _%n129601%_)
                        (_%lp129599%_
                         (let () (declare (not safe)) (##fx- _%n129601%_ '1))
                         (cdr _%l129602%_)
                         (cons (car _%l129602%_) _%r129603%_))
                        (values (reverse _%l129602%_) _%r129603%_))))))))))
