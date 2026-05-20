(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1779274772)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp190925 (list gx#expander::t))
            (__tmp190924 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp190925
         '(id depth)
         __tmp190924
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args190921%_
        (apply make-instance gx#syntax-pattern::t _%$args190921%_)))
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
      (lambda (_%self190907%_ _%stx190908%_)
        (let ((_%self190911%_ _%self190907%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx190908%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx190374%_)
        (letrec ((_%generate190376%_
                  (lambda (_%e190616%_)
                    (letrec ((_%BUG190618%_
                              (lambda (_%q190783%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx190374%_
                                         _%e190616%_
                                         _%q190783%_))))
                             (_%local-pattern-e190619%_
                              (lambda (_%pat190781%_)
                                (let ((__tmp190926
                                       (##structure-ref
                                        _%pat190781%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp190926))))
                             (_%getvar190620%_
                              (lambda (_%q190778%_ _%vars190779%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q190778%_
                                   _%vars190779%_
                                   _%BUG190618%_))))
                             (_%getarg190621%_
                              (lambda (_%arg190744%_ _%vars190745%_)
                                (let* ((_%arg190746190753%_ _%arg190744%_)
                                       (_%E190748190757%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg190746190753%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K190749190766%_
                                        (lambda (_%e190760%_ _%tag190761%_)
                                          (let ((_%$e190763%_ _%tag190761%_))
                                            (if (eq? 'ref _%$e190763%_)
                                                (_%getvar190620%_
                                                 _%e190760%_
                                                 _%vars190745%_)
                                                (if (eq? 'pattern _%$e190763%_)
                                                    (_%local-pattern-e190619%_
                                                     _%e190760%_)
                                                    (_%BUG190618%_
                                                     _%arg190744%_)))))))
                                  (if (pair? _%arg190746190753%_)
                                      (let ((_%hd190750190769%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg190746190753%_)))
                                            (_%tl190751190771%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg190746190753%_))))
                                        (let* ((_%tag190774%_
                                                _%hd190750190769%_)
                                               (_%e190776%_
                                                _%tl190751190771%_))
                                          (_%K190749190766%_
                                           _%e190776%_
                                           _%tag190774%_)))
                                      (_%E190748190757%_))))))
                      (let _%recur190623%_ ((_%e190625%_ _%e190616%_)
                                            (_%vars190626%_ '()))
                        (let* ((_%e190627190634%_ _%e190625%_)
                               (_%E190629190638%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e190627190634%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K190630190732%_
                                (lambda (_%body190641%_ _%tag190642%_)
                                  (let ((_%$e190644%_ _%tag190642%_))
                                    (if (eq? 'datum _%$e190644%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body190641%_))
                                        (if (eq? 'term _%$e190644%_)
                                            (let ((_%id190647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body190641%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id190647%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks190650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id190647%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks190650%_)
                                                        (let ((__tmp190927
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body190641%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp190927))
                (let ((__tmp190929
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body190641%_)))
                      (__tmp190928
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body190641%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp190929
                   __tmp190928
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id190647%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body190641%_))
                                                      (_%BUG190618%_
                                                       _%e190625%_))))
                                            (if (eq? 'pattern _%$e190644%_)
                                                (_%local-pattern-e190619%_
                                                 _%body190641%_)
                                                (if (eq? 'ref _%$e190644%_)
                                                    (_%getvar190620%_
                                                     _%body190641%_
                                                     _%vars190626%_)
                                                    (if (eq? 'cons
                                                             _%$e190644%_)
                                                        (let ((__tmp190931
                                                               (_%recur190623%_
                                                                (car _%body190641%_)
                                                                _%vars190626%_))
                                                              (__tmp190930
                                                               (_%recur190623%_
                                                                (cdr _%body190641%_)
                                                                _%vars190626%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp190931
                                                           __tmp190930))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e190644%_)
                    (let ((__tmp190932
                           (_%recur190623%_ _%body190641%_ _%vars190626%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp190932))
                    (if (eq? 'box _%$e190644%_)
                        (let ((__tmp190933
                               (_%recur190623%_
                                _%body190641%_
                                _%vars190626%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp190933))
                        (if (eq? 'splice _%$e190644%_)
                            (let* ((_%body190653190664%_ _%body190641%_)
                                   (_%E190655190668%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body190653190664%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K190656190706%_
                                    (lambda (_%args190671%_
                                             _%iv190672%_
                                             _%hd190673%_
                                             _%depth190674%_)
                                      (let* ((_%targets190680%_
                                              (map (lambda (_%g190675190677%_)
                                                     (_%getarg190621%_
                                                      _%g190675190677%_
                                                      _%vars190626%_))
                                                   _%args190671%_))
                                             (_%fold-in190682%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args190671%_)))
                                             (_%fold-out190684%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args190686%_
                                              (let ((__tmp190934
                                                     (cons _%fold-out190684%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp190934
                                                 _%fold-in190682%_)))
                                             (_%lambda-body190703%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth190674%_ '1))
                                                  (let ((_%r-args190694%_
                                                         (map (lambda (_%arg190688%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg190688%_)))
                      _%args190671%_))
                (_%r-vars190695%_
                 (let ((__tmp190935
                        (lambda (_%arg190690%_ _%var190691%_ _%r190692%_)
                          (cons (cons (cdr _%arg190690%_) _%var190691%_)
                                _%r190692%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp190935
                    _%vars190626%_
                    _%args190671%_
                    _%fold-in190682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur190623%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth190674%_ '1))
                         (cons _%hd190673%_
                               (cons (cons 'var _%fold-out190684%_)
                                     _%r-args190694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars190695%_))
                                                  (let* ((_%hd-vars190701%_
                                                          (let ((__tmp190936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg190697%_ _%var190698%_ _%r190699%_)
                           (cons (cons (cdr _%arg190697%_) _%var190698%_)
                                 _%r190699%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp190936
                     _%vars190626%_
                     _%args190671%_
                     _%fold-in190682%_)))
                 (__tmp190937
                  (_%recur190623%_ _%hd190673%_ _%hd-vars190701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp190937
                                                     _%fold-out190684%_)))))
                                        (let ((__tmp190941
                                               (if (let ((__tmp190942
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets190680%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp190942 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets190680%_))
                                                   '#!void))
                                              (__tmp190938
                                               (let ((__tmp190940
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args190686%_
                                                         _%lambda-body190703%_)))
                                                     (__tmp190939
                                                      (_%recur190623%_
                                                       _%iv190672%_
                                                       _%vars190626%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp190940
                                                  __tmp190939
                                                  _%targets190680%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp190941
                                           __tmp190938))))))
                              (if (pair? _%body190653190664%_)
                                  (let ((_%hd190657190709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body190653190664%_)))
                                        (_%tl190658190711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body190653190664%_))))
                                    (let ((_%depth190714%_ _%hd190657190709%_))
                                      (if (pair? _%tl190658190711%_)
                                          (let ((_%hd190659190716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl190658190711%_)))
                                                (_%tl190660190718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl190658190711%_))))
                                            (let ((_%hd190721%_
                                                   _%hd190659190716%_))
                                              (if (pair? _%tl190660190718%_)
                                                  (let ((_%hd190661190723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl190660190718%_)))
                                                        (_%tl190662190725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl190660190718%_))))
                                                    (let* ((_%iv190728%_
                                                            _%hd190661190723%_)
                                                           (_%args190730%_
                                                            _%tl190662190725%_))
                                                      (_%K190656190706%_
                                                       _%args190730%_
                                                       _%iv190728%_
                                                       _%hd190721%_
                                                       _%depth190714%_)))
                                                  (_%E190655190668%_))))
                                          (_%E190655190668%_))))
                                  (_%E190655190668%_)))
                            (if (eq? 'var _%$e190644%_)
                                _%body190641%_
                                (_%BUG190618%_ _%e190625%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e190627190634%_)
                              (let ((_%hd190631190735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e190627190634%_)))
                                    (_%tl190632190737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e190627190634%_))))
                                (let* ((_%tag190740%_ _%hd190631190735%_)
                                       (_%body190742%_ _%tl190632190737%_))
                                  (_%K190630190732%_
                                   _%body190742%_
                                   _%tag190740%_)))
                              (_%E190629190638%_)))))))
                 (_%parse190377%_
                  (lambda (_%e190418%_)
                    (letrec ((_%make-cons190420%_
                              (lambda (_%hd190608%_ _%tl190609%_)
                                (let ((_g190943_ _%hd190608%_)
                                      (_g190945_ _%tl190609%_))
                                  (begin
                                    (let ((_g190944_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190943_)
                                                 (##values-length _g190943_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190944_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190944_)))
                                    (let ((_g190946_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190945_)
                                                 (##values-length _g190945_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190946_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190946_)))
                                    (let ((_%hd-e190611%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190943_ 0)))
                                          (_%hd-vars190612%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190943_ 1))))
                                      (let ((_%tl-e190613%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190945_ 0)))
                                            (_%tl-vars190614%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190945_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e190611%_
                                                            _%tl-e190613%_))
                                                (append _%hd-vars190612%_
                                                        _%tl-vars190614%_))))))))
                             (_%make-splice190421%_
                              (lambda (_%where190544%_
                                       _%depth190545%_
                                       _%hd190546%_
                                       _%tl190547%_)
                                (let ((_g190947_ _%hd190546%_)
                                      (_g190949_ _%tl190547%_))
                                  (begin
                                    (let ((_g190948_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190947_)
                                                 (##values-length _g190947_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190948_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190948_)))
                                    (let ((_g190950_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190949_)
                                                 (##values-length _g190949_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190950_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190950_)))
                                    (let ((_%hd-e190549%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190947_ 0)))
                                          (_%hd-vars190550%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190947_ 1))))
                                      (let ((_%tl-e190551%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190949_ 0)))
                                            (_%tl-vars190552%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190949_ 1))))
                                        (let _%lp190554%_ ((_%rest190556%_
                                                            _%hd-vars190550%_)
                                                           (_%targets190557%_
                                                            '())
                                                           (_%vars190558%_
                                                            _%tl-vars190552%_))
                                          (let* ((_%rest190559190569%_
                                                  _%rest190556%_)
                                                 (_%else190561190577%_
                                                  (lambda ()
                                                    (if (null? _%targets190557%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx190374%_
                                                           _%where190544%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth190545%_
                                    (cons _%hd-e190549%_
                                          (cons _%tl-e190551%_
                                                _%targets190557%_))))
                        _%vars190558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K190563190589%_
                                                  (lambda (_%rest190580%_
                                                           _%hd-pat190581%_
                                                           _%hd-depth*190582%_)
                                                    (let ((_%hd-depth190584%_
                                                           (fx- _%hd-depth*190582%_
                                                                _%depth190545%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth190584%_))
                                                          (_%lp190554%_
                                                           _%rest190580%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat190581%_)
                         _%targets190557%_)
                   (cons (cons _%hd-depth190584%_ _%hd-pat190581%_)
                         _%vars190558%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth190584%_))
                      (_%lp190554%_
                       _%rest190580%_
                       (cons (cons 'pattern _%hd-pat190581%_)
                             _%targets190557%_)
                       _%vars190558%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx190374%_
                         _%where190544%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest190559190569%_)
                                                (let ((_%hd190564190592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest190559190569%_)))
                                                      (_%tl190565190594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest190559190569%_))))
                                                  (if (pair? _%hd190564190592%_)
                                                      (let ((_%hd190566190597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd190564190592%_)))
                    (_%tl190567190599%_
                     (let () (declare (not safe)) (##cdr _%hd190564190592%_))))
                (let* ((_%hd-depth*190602%_ _%hd190566190597%_)
                       (_%hd-pat190604%_ _%tl190567190599%_)
                       (_%rest190606%_ _%tl190565190594%_))
                  (_%K190563190589%_
                   _%rest190606%_
                   _%hd-pat190604%_
                   _%hd-depth*190602%_)))
              (_%else190561190577%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else190561190577%_))))))))))
                             (_%recur190422%_
                              (lambda (_%e190427%_ _%is-e?190428%_)
                                (if (_%is-e?190428%_ _%e190427%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx190374%_))
                                    (if (gx#syntax-local-pattern? _%e190427%_)
                                        (let* ((_%pat190432%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e190427%_)))
                                               (_%depth190434%_
                                                (##structure-ref
                                                 _%pat190432%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth190434%_)
                                              (values (cons 'ref _%pat190432%_)
                                                      (cons (cons _%depth190434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat190432%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat190432%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e190427%_))
                                            (values (cons 'term _%e190427%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e190427%_))
                                                (let* ((_%e190438190445%_
                                                        _%e190427%_)
                                                       (_%E190440190449%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e190438190445%_))))
                                                       (_%E190439190531%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e190438190445%_))
                      (let ((_%e190441190453%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e190438190445%_))))
                        (let ((_%hd190442190456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190441190453%_)))
                              (_%tl190443190458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190441190453%_))))
                          (let* ((_%hd190461%_ _%hd190442190456%_)
                                 (_%rest190463%_ _%tl190443190458%_))
                            (if (_%is-e?190428%_ _%hd190461%_)
                                (let* ((_%e190464190471%_ _%rest190463%_)
                                       (_%E190466190475%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx190374%_
                                             _%e190427%_))))
                                       (_%E190465190489%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e190464190471%_))
                                              (let ((_%e190467190479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e190464190471%_))))
                                                (let ((_%hd190468190482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190467190479%_)))
                                                      (_%tl190469190484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190467190479%_))))
                                                  (let ((_%rest190487%_
                                                         _%hd190468190482%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190469190484%_))
                                                        (_%recur190422%_
                                                         _%rest190487%_
                                                         false)
                                                        (_%E190466190475%_)))))
                                              (_%E190466190475%_)))))
                                  (_%E190465190489%_))
                                (let _%lp190493%_ ((_%rest190495%_
                                                    _%rest190463%_)
                                                   (_%depth190496%_ '0))
                                  (let* ((_%e190497190504%_ _%rest190495%_)
                                         (_%E190499190508%_
                                          (lambda ()
                                            (if (fxpositive? _%depth190496%_)
                                                (_%make-splice190421%_
                                                 _%e190427%_
                                                 _%depth190496%_
                                                 (_%recur190422%_
                                                  _%hd190461%_
                                                  _%is-e?190428%_)
                                                 (_%recur190422%_
                                                  _%rest190495%_
                                                  _%is-e?190428%_))
                                                (_%make-cons190420%_
                                                 (_%recur190422%_
                                                  _%hd190461%_
                                                  _%is-e?190428%_)
                                                 (_%recur190422%_
                                                  _%rest190495%_
                                                  _%is-e?190428%_)))))
                                         (_%E190498190527%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e190497190504%_))
                                                (let ((_%e190500190512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e190497190504%_))))
                                                  (let ((_%hd190501190515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e190500190512%_)))
                                                        (_%tl190502190517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e190500190512%_))))
                                                    (let* ((_%rest-hd190520%_
                                                            _%hd190501190515%_)
                                                           (_%rest-tl190522%_
                                                            _%tl190502190517%_))
                                                      (if (_%is-e?190428%_
                                                           _%rest-hd190520%_)
                                                          (_%lp190493%_
                                                           _%rest-tl190522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth190496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth190496%_)
                      (_%make-splice190421%_
                       _%e190427%_
                       _%depth190496%_
                       (_%recur190422%_ _%hd190461%_ _%is-e?190428%_)
                       (_%recur190422%_ _%rest190495%_ _%is-e?190428%_))
                      (_%make-cons190420%_
                       (_%recur190422%_ _%hd190461%_ _%is-e?190428%_)
                       (_%recur190422%_ _%rest190495%_ _%is-e?190428%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E190499190508%_)))))
                                    (_%E190498190527%_)))))))
                      (_%E190440190449%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E190439190531%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e190427%_))
                                                    (let ((_g190951_
                                                           (_%recur190422%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e190427%_)))
                    _%is-e?190428%_)))
              (begin
                (let ((_g190952_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g190951_)
                             (##values-length _g190951_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g190952_ 2)))
                      (error "Context expects 2 values" _g190952_)))
                (let ((_%e190536%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190951_ 0)))
                      (_%vars190537%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190951_ 1))))
                  (values (cons 'vector _%e190536%_) _%vars190537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e190427%_))
                                                        (let ((_g190953_
                                                               (_%recur190422%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e190427%_)))
                        _%is-e?190428%_)))
                  (begin
                    (let ((_g190954_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g190953_)
                                 (##values-length _g190953_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g190954_ 2)))
                          (error "Context expects 2 values" _g190954_)))
                    (let ((_%e190540%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190953_ 0)))
                          (_%vars190541%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190953_ 1))))
                      (values (cons 'box _%e190540%_) _%vars190541%_))))
                (values (cons 'datum _%e190427%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g190955_
                             (_%recur190422%_ _%e190418%_ gx#ellipsis?)))
                        (begin
                          (let ((_g190956_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g190955_)
                                       (##values-length _g190955_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g190956_ 2)))
                                (error "Context expects 2 values" _g190956_)))
                          (let ((_%tree190424%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190955_ 0)))
                                (_%vars190425%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190955_ 1))))
                            (if (null? _%vars190425%_)
                                _%tree190424%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx190374%_
                                   _%vars190425%_))))))))))
          (let* ((_%e190378190388%_ _%stx190374%_)
                 (_%E190380190392%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx190374%_))))
                 (_%E190379190414%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e190378190388%_))
                        (let ((_%e190381190396%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e190378190388%_))))
                          (let ((_%hd190382190399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190381190396%_)))
                                (_%tl190383190401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190381190396%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190383190401%_))
                                (let ((_%e190384190404%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl190383190401%_))))
                                  (let ((_%hd190385190407%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190384190404%_)))
                                        (_%tl190386190409%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190384190404%_))))
                                    (let ((_%form190412%_ _%hd190385190407%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190386190409%_))
                                          (let ((__tmp190958
                                                 (_%generate190376%_
                                                  (_%parse190377%_
                                                   _%form190412%_)))
                                                (__tmp190957
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx190374%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp190958
                                             __tmp190957))
                                          (_%E190380190392%_)))))
                                (_%E190380190392%_))))
                        (_%E190380190392%_)))))
            (_%E190379190414%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx189623%_
               _%identifier=?189624%_
               _%unwrap-e189625%_
               _%wrap-e189626%_)
        (letrec ((_%generate-bindings189628%_
                  (lambda (_%target190238%_
                           _%ids190239%_
                           _%clauses190240%_
                           _%clause-ids190241%_
                           _%E190242%_)
                    (letrec ((_%generate1190244%_
                              (lambda (_%clause190341%_
                                       _%clause-id190342%_
                                       _%E190343%_)
                                (cons (cons _%clause-id190342%_ '())
                                      (cons (let ((__tmp190960
                                                   (cons _%target190238%_ '()))
                                                  (__tmp190959
                                                   (_%generate-clause189630%_
                                                    _%target190238%_
                                                    _%ids190239%_
                                                    _%clause190341%_
                                                    _%E190343%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp190960
                                               __tmp190959))
                                            '())))))
                      (let _%lp190246%_ ((_%rest190248%_ _%clauses190240%_)
                                         (_%rest-ids190249%_
                                          _%clause-ids190241%_)
                                         (_%bindings190250%_ '()))
                        (let* ((_%rest190251190259%_ _%rest190248%_)
                               (_%else190253190267%_
                                (lambda () _%bindings190250%_))
                               (_%K190255190329%_
                                (lambda (_%rest190270%_ _%clause190271%_)
                                  (let* ((_%rest-ids190272190279%_
                                          _%rest-ids190249%_)
                                         (_%E190274190283%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids190272190279%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K190275190317%_
                                          (lambda (_%rest-ids190286%_
                                                   _%clause-id190287%_)
                                            (let* ((_%rest-ids190288190296%_
                                                    _%rest-ids190286%_)
                                                   (_%else190290190304%_
                                                    (lambda ()
                                                      (cons (_%generate1190244%_
                                                             _%clause190271%_
                                                             _%clause-id190287%_
                                                             _%E190242%_)
                                                            _%bindings190250%_)))
                                                   (_%K190292190309%_
                                                    (lambda (_%next-clause-id190307%_)
                                                      (_%lp190246%_
                                                       _%rest190270%_
                                                       _%rest-ids190286%_
                                                       (cons (_%generate1190244%_
                                                              _%clause190271%_
                                                              _%clause-id190287%_
                                                              _%next-clause-id190307%_)
                                                             _%bindings190250%_)))))
                                              (if (pair? _%rest-ids190288190296%_)
                                                  (let* ((_%hd190293190312%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids190288190296%_)))
                                                         (_%next-clause-id190315%_
                                                          _%hd190293190312%_))
                                                    (_%K190292190309%_
                                                     _%next-clause-id190315%_))
                                                  (_%else190290190304%_))))))
                                    (if (pair? _%rest-ids190272190279%_)
                                        (let ((_%hd190276190320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids190272190279%_)))
                                              (_%tl190277190322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids190272190279%_))))
                                          (let* ((_%clause-id190325%_
                                                  _%hd190276190320%_)
                                                 (_%rest-ids190327%_
                                                  _%tl190277190322%_))
                                            (_%K190275190317%_
                                             _%rest-ids190327%_
                                             _%clause-id190325%_)))
                                        (_%E190274190283%_))))))
                          (if (pair? _%rest190251190259%_)
                              (let ((_%hd190256190332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest190251190259%_)))
                                    (_%tl190257190334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest190251190259%_))))
                                (let* ((_%clause190337%_ _%hd190256190332%_)
                                       (_%rest190339%_ _%tl190257190334%_))
                                  (_%K190255190329%_
                                   _%rest190339%_
                                   _%clause190337%_)))
                              (_%else190253190267%_)))))))
                 (_%generate-body189629%_
                  (lambda (_%bindings190198%_ _%body190199%_)
                    (let _%recur190201%_ ((_%rest190203%_ _%bindings190198%_))
                      (let* ((_%rest190204190212%_ _%rest190203%_)
                             (_%else190206190220%_ (lambda () _%body190199%_))
                             (_%K190208190226%_
                              (lambda (_%rest190223%_ _%hd190224%_)
                                (let ((__tmp190962 (cons _%hd190224%_ '()))
                                      (__tmp190961
                                       (_%recur190201%_ _%rest190223%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp190962
                                   __tmp190961)))))
                        (if (pair? _%rest190204190212%_)
                            (let ((_%hd190209190229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest190204190212%_)))
                                  (_%tl190210190231%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest190204190212%_))))
                              (let* ((_%hd190234%_ _%hd190209190229%_)
                                     (_%rest190236%_ _%tl190210190231%_))
                                (_%K190208190226%_
                                 _%rest190236%_
                                 _%hd190234%_)))
                            (_%else190206190220%_))))))
                 (_%generate-clause189630%_
                  (lambda (_%target190061%_
                           _%ids190062%_
                           _%clause190063%_
                           _%E190064%_)
                    (letrec ((_%generate1190066%_
                              (lambda (_%hd190153%_
                                       _%fender190154%_
                                       _%body190155%_)
                                (let ((_g190963_
                                       (_%parse-clause189632%_
                                        _%hd190153%_
                                        _%ids190062%_)))
                                  (begin
                                    (let ((_g190964_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190963_)
                                                 (##values-length _g190963_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190964_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190964_)))
                                    (let ((_%e190157%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190963_ 0)))
                                          (_%mvars190158%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190963_ 1))))
                                      (let* ((_%pvars190160%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars190158%_))))
                                             (_%E190162%_
                                              (cons _%E190064%_
                                                    (cons _%target190061%_
                                                          '())))
                                             (_%K190195%_
                                              (let ((__tmp190965
                                                     (let ((__tmp190967
                                                            (map (lambda (_%mvar190164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar190165%_)
                           (let* ((_%mvar190166190173%_ _%mvar190164%_)
                                  (_%E190168190177%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar190166190173%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K190169190183%_
                                   (lambda (_%depth190180%_ _%id190181%_)
                                     (cons _%id190181%_
                                           (cons (let ((__tmp190969
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id190181%_)))
                                                       (__tmp190968
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar190165%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp190969
                                                    __tmp190968
                                                    _%depth190180%_))
                                                 '())))))
                             (if (pair? _%mvar190166190173%_)
                                 (let ((_%hd190170190186%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar190166190173%_)))
                                       (_%tl190171190188%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar190166190173%_))))
                                   (let* ((_%id190191%_ _%hd190170190186%_)
                                          (_%depth190193%_ _%tl190171190188%_))
                                     (_%K190169190183%_
                                      _%depth190193%_
                                      _%id190191%_)))
                                 (_%E190168190177%_))))
                         _%mvars190158%_
                         _%pvars190160%_))
                   (__tmp190966
                    (if (eq? _%fender190154%_ '#t)
                        _%body190155%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender190154%_
                           _%body190155%_
                           _%E190162%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp190967 __tmp190966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars190160%_
                                                 __tmp190965))))
                                        (_%generate-match189631%_
                                         _%hd190153%_
                                         _%target190061%_
                                         _%e190157%_
                                         _%mvars190158%_
                                         _%K190195%_
                                         _%E190162%_))))))))
                      (let* ((_%e190067190087%_ _%clause190063%_)
                             (_%E190076190091%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e190067190087%_))))
                             (_%E190069190125%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e190067190087%_))
                                    (let ((_%e190077190095%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e190067190087%_))))
                                      (let ((_%hd190078190098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190077190095%_)))
                                            (_%tl190079190100%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190077190095%_))))
                                        (let ((_%hd190103%_
                                               _%hd190078190098%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190079190100%_))
                                              (let ((_%e190080190105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl190079190100%_))))
                                                (let ((_%hd190081190108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190080190105%_)))
                                                      (_%tl190082190110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190080190105%_))))
                                                  (let ((_%fender190113%_
                                                         _%hd190081190108%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl190082190110%_))
                                                        (let ((_%e190083190115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl190082190110%_))))
                  (let ((_%hd190084190118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190083190115%_)))
                        (_%tl190085190120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190083190115%_))))
                    (let ((_%body190123%_ _%hd190084190118%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190085190120%_))
                          (_%generate1190066%_
                           _%hd190103%_
                           _%fender190113%_
                           _%body190123%_)
                          (_%E190076190091%_)))))
                (_%E190076190091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E190076190091%_)))))
                                    (_%E190076190091%_))))
                             (_%E190068190149%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e190067190087%_))
                                    (let ((_%e190070190129%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e190067190087%_))))
                                      (let ((_%hd190071190132%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e190070190129%_)))
                                            (_%tl190072190134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e190070190129%_))))
                                        (let ((_%hd190137%_
                                               _%hd190071190132%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190072190134%_))
                                              (let ((_%e190073190139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl190072190134%_))))
                                                (let ((_%hd190074190142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190073190139%_)))
                                                      (_%tl190075190144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190073190139%_))))
                                                  (let ((_%body190147%_
                                                         _%hd190074190142%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190075190144%_))
                                                        (_%generate1190066%_
                                                         _%hd190137%_
                                                         '#t
                                                         _%body190147%_)
                                                        (_%E190069190125%_)))))
                                              (_%E190069190125%_)))))
                                    (_%E190069190125%_)))))
                        (_%E190068190149%_)))))
                 (_%generate-match189631%_
                  (lambda (_%where189810%_
                           _%target189811%_
                           _%hd189812%_
                           _%mvars189813%_
                           _%K189814%_
                           _%E189815%_)
                    (letrec ((_%BUG189817%_
                              (lambda (_%q190059%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx189623%_
                                         _%hd189812%_
                                         _%q190059%_))))
                             (_%recur189818%_
                              (lambda (_%e189909%_
                                       _%vars189910%_
                                       _%target189911%_
                                       _%E189912%_
                                       _%k189913%_)
                                (let* ((_%e189914189921%_ _%e189909%_)
                                       (_%E189916189925%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e189914189921%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K189917190047%_
                                        (lambda (_%body189928%_ _%tag189929%_)
                                          (let ((_%$e189931%_ _%tag189929%_))
                                            (if (eq? 'any _%$e189931%_)
                                                (_%k189913%_ _%vars189910%_)
                                                (if (eq? 'id _%$e189931%_)
                                                    (let ((__tmp190974
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target189911%_)))
                                                          (__tmp190970
                                                           (let ((__tmp190972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190973
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e189626%_
                                    _%body189928%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?189624%_
                             __tmp190973
                             _%target189911%_)))
                         (__tmp190971 (_%k189913%_ _%vars189910%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp190972 __tmp190971 _%E189912%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp190974 __tmp190970 _%E189912%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e189931%_)
                                                        (_%k189913%_
                                                         (cons (cons _%body189928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target189911%_)
                       _%vars189910%_))
                (if (eq? 'cons _%$e189931%_)
                    (let ((_%$e189934%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd189935%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl189936%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp190980
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target189911%_)))
                            (__tmp190975
                             (let ((__tmp190979
                                    (cons (cons (cons _%$e189934%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e189625%_
                                                         _%target189911%_))
                                                      '()))
                                          '()))
                                   (__tmp190976
                                    (let ((__tmp190978
                                           (cons (cons (cons _%$hd189935%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e189934%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl189936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e189934%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp190977
                                           (let* ((_%body189937189944%_
                                                   _%body189928%_)
                                                  (_%E189939189948%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body189937189944%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K189940189956%_
                                                   (lambda (_%tl189951%_
                                                            _%hd189952%_)
                                                     (_%recur189818%_
                                                      _%hd189952%_
                                                      _%vars189910%_
                                                      _%$hd189935%_
                                                      _%E189912%_
                                                      (lambda (_%vars189954%_)
                                                        (_%recur189818%_
                                                         _%tl189951%_
                                                         _%vars189954%_
                                                         _%$tl189936%_
                                                         _%E189912%_
                                                         _%k189913%_))))))
                                             (if (pair? _%body189937189944%_)
                                                 (let ((_%hd189941189959%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body189937189944%_)))
                                                       (_%tl189942189961%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body189937189944%_))))
                                                   (let* ((_%hd189964%_
                                                           _%hd189941189959%_)
                                                          (_%tl189966%_
                                                           _%tl189942189961%_))
                                                     (_%K189940189956%_
                                                      _%tl189966%_
                                                      _%hd189964%_)))
                                                 (_%E189939189948%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp190978
                                       __tmp190977))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp190979
                                __tmp190976))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp190980
                         __tmp190975
                         _%E189912%_)))
                    (if (eq? 'splice _%$e189931%_)
                        (let* ((_%body189967189974%_ _%body189928%_)
                               (_%E189969189978%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body189967189974%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K189970190029%_
                                (lambda (_%tl189981%_ _%hd189982%_)
                                  (let* ((_%rlen189984%_
                                          (_%splice-rlen189819%_ _%tl189981%_))
                                         (_%$target189986%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd189988%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl189990%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp189992%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e189994%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd189996%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl189998%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars190000%_
                                          (_%splice-vars189820%_ _%hd189982%_))
                                         (_%lvars190002%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars190000%_)))
                                         (_%tlvars190004%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars190000%_)))
                                         (_%linit190008%_
                                          (map (lambda (_%var190006%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars190002%_)))
                                    (letrec ((_%make-loop190011%_
                                              (lambda (_%vars190015%_)
                                                (let ((__tmp190982
                                                       (cons (cons (cons _%$lp189992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp190995
                                        (cons _%$hd189988%_ _%lvars190002%_))
                                       (__tmp190983
                                        (let ((__tmp190994
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd189988%_)))
                                              (__tmp190988
                                               (let ((__tmp190993
                                                      (cons (cons (cons _%$lp-e189994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e189625%_
                                   _%$hd189988%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190989
                                                      (let ((__tmp190992
                                                             (cons (cons (cons _%$lp-hd189996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e189994%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl189998%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e189994%_))
                                             '()))
                                 '())))
                    (__tmp190990
                     (_%recur189818%_
                      _%hd189982%_
                      '()
                      _%$lp-hd189996%_
                      _%E189912%_
                      (lambda (_%hdvars190017%_)
                        (cons _%$lp189992%_
                              (cons _%$lp-tl189998%_
                                    (map (lambda (_%svar190019%_
                                                  _%lvar190020%_)
                                           (let ((__tmp190991
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar190019%_
                                                     _%hdvars190017%_
                                                     _%BUG189817%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp190991
                                              _%lvar190020%_)))
                                         _%svars190000%_
                                         _%lvars190002%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp190992 __tmp190990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190993
                                                  __tmp190989)))
                                              (__tmp190984
                                               (let ((__tmp190987
                                                      (map (lambda (_%lvar190022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar190023%_)
                     (cons (cons _%tlvar190023%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar190022%_))
                                 '())))
                   _%lvars190002%_
                   _%tlvars190004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190985
                                                      (_%k189913%_
                                                       (let ((__tmp190986
                                                              (lambda (_%svar190025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar190026%_
                               _%r190027%_)
                        (cons (cons _%svar190025%_ _%tlvar190026%_)
                              _%r190027%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp190986
                  _%vars190015%_
                  _%svars190000%_
                  _%tlvars190004%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190987
                                                  __tmp190985))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190994
                                           __tmp190988
                                           __tmp190984))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp190995
                                    __tmp190983))
                                 '()))
                     '()))
              (__tmp190981
               (cons _%$lp189992%_ (cons _%$target189986%_ _%linit190008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp190982
                                                   __tmp190981)))))
                                      (let ((_%body190013%_
                                             (let ((__tmp190997
                                                    (cons (cons (cons _%$target189986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl189990%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target189911%_
                                 _%rlen189984%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190996
                                                    (_%recur189818%_
                                                     _%tl189981%_
                                                     _%vars189910%_
                                                     _%$tl189990%_
                                                     _%E189912%_
                                                     _%make-loop190011%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190997
                                                __tmp190996))))
                                        (let ((__tmp191001
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target189911%_)))
                                              (__tmp190998
                                               (if (zero? _%rlen189984%_)
                                                   _%body190013%_
                                                   (let ((__tmp190999
                                                          (let ((__tmp191000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target189911%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp191000 _%rlen189984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp190999
                                                      _%body190013%_
                                                      _%E189912%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp191001
                                           __tmp190998
                                           _%E189912%_))))))))
                          (if (pair? _%body189967189974%_)
                              (let ((_%hd189971190032%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body189967189974%_)))
                                    (_%tl189972190034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body189967189974%_))))
                                (let* ((_%hd190037%_ _%hd189971190032%_)
                                       (_%tl190039%_ _%tl189972190034%_))
                                  (_%K189970190029%_
                                   _%tl190039%_
                                   _%hd190037%_)))
                              (_%E189969189978%_)))
                        (if (eq? 'null _%$e189931%_)
                            (let ((__tmp191003
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target189911%_)))
                                  (__tmp191002 (_%k189913%_ _%vars189910%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp191003
                               __tmp191002
                               _%E189912%_))
                            (if (eq? 'vector _%$e189931%_)
                                (let ((_%$e190041%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp191008
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target189911%_)))
                                        (__tmp191004
                                         (let ((__tmp191006
                                                (cons (cons (cons _%$e190041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp191007
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e189625%_
                                    _%target189911%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp191007))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp191005
                                                (_%recur189818%_
                                                 _%body189928%_
                                                 _%vars189910%_
                                                 _%$e190041%_
                                                 _%E189912%_
                                                 _%k189913%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp191006
                                            __tmp191005))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp191008
                                     __tmp191004
                                     _%E189912%_)))
                                (if (eq? 'box _%$e189931%_)
                                    (let ((_%$e190043%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp191013
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target189911%_)))
                                            (__tmp191009
                                             (let ((__tmp191011
                                                    (cons (cons (cons _%$e190043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp191012
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e189625%_
                                        _%target189911%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp191012))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp191010
                                                    (_%recur189818%_
                                                     _%body189928%_
                                                     _%vars189910%_
                                                     _%$e190043%_
                                                     _%E189912%_
                                                     _%k189913%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp191011
                                                __tmp191010))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp191013
                                         __tmp191009
                                         _%E189912%_)))
                                    (if (eq? 'datum _%$e189931%_)
                                        (let ((_%$e190045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp191019
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target189911%_)))
                                                (__tmp191014
                                                 (let ((__tmp191018
                                                        (cons (cons (cons _%$e190045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target189911%_))
                                  '()))
                      '()))
               (__tmp191015
                (let ((__tmp191017
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e190045%_ _%body189928%_)))
                      (__tmp191016 (_%k189913%_ _%vars189910%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp191017 __tmp191016 _%E189912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp191018
                                                    __tmp191015))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp191019
                                             __tmp191014
                                             _%E189912%_)))
                                        (_%BUG189817%_
                                         _%e189909%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e189914189921%_)
                                      (let ((_%hd189918190050%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189914189921%_)))
                                            (_%tl189919190052%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189914189921%_))))
                                        (let* ((_%tag190055%_
                                                _%hd189918190050%_)
                                               (_%body190057%_
                                                _%tl189919190052%_))
                                          (_%K189917190047%_
                                           _%body190057%_
                                           _%tag190055%_)))
                                      (_%E189916189925%_)))))
                             (_%splice-rlen189819%_
                              (lambda (_%e189871%_)
                                (let _%lp189873%_ ((_%e189875%_ _%e189871%_)
                                                   (_%n189876%_ '0))
                                  (let* ((_%e189877189884%_ _%e189875%_)
                                         (_%E189879189888%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189877189884%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189880189897%_
                                          (lambda (_%body189891%_
                                                   _%tag189892%_)
                                            (let ((_%$e189894%_ _%tag189892%_))
                                              (if (eq? 'splice _%$e189894%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx189623%_
                                                     _%where189810%_))
                                                  (if (eq? 'cons _%$e189894%_)
                                                      (_%lp189873%_
                                                       (cdr _%body189891%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n189876%_
                                                                '1)))
                                                      _%n189876%_))))))
                                    (if (pair? _%e189877189884%_)
                                        (let ((_%hd189881189900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189877189884%_)))
                                              (_%tl189882189902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189877189884%_))))
                                          (let* ((_%tag189905%_
                                                  _%hd189881189900%_)
                                                 (_%body189907%_
                                                  _%tl189882189902%_))
                                            (_%K189880189897%_
                                             _%body189907%_
                                             _%tag189905%_)))
                                        (_%E189879189888%_))))))
                             (_%splice-vars189820%_
                              (lambda (_%e189827%_)
                                (let _%recur189829%_ ((_%e189831%_ _%e189827%_)
                                                      (_%vars189832%_ '()))
                                  (let* ((_%e189833189840%_ _%e189831%_)
                                         (_%E189835189844%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189833189840%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189836189859%_
                                          (lambda (_%body189847%_
                                                   _%tag189848%_)
                                            (let ((_%$e189850%_ _%tag189848%_))
                                              (if (eq? 'var _%$e189850%_)
                                                  (cons _%body189847%_
                                                        _%vars189832%_)
                                                  (if (or (eq? 'cons
                                                               _%$e189850%_)
                                                          (eq? 'splice
                                                               _%$e189850%_))
                                                      (_%recur189829%_
                                                       (cdr _%body189847%_)
                                                       (_%recur189829%_
                                                        (car _%body189847%_)
                                                        _%vars189832%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e189850%_)
                      (eq? 'box _%$e189850%_))
                  (_%recur189829%_ _%body189847%_ _%vars189832%_)
                  _%vars189832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e189833189840%_)
                                        (let ((_%hd189837189862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189833189840%_)))
                                              (_%tl189838189864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189833189840%_))))
                                          (let* ((_%tag189867%_
                                                  _%hd189837189862%_)
                                                 (_%body189869%_
                                                  _%tl189838189864%_))
                                            (_%K189836189859%_
                                             _%body189869%_
                                             _%tag189867%_)))
                                        (_%E189835189844%_))))))
                             (_%make-body189821%_
                              (lambda (_%vars189823%_)
                                (cons _%K189814%_
                                      (map (lambda (_%mvar189825%_)
                                             (let ((__tmp191020
                                                    (car _%mvar189825%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp191020
                                                _%vars189823%_
                                                _%BUG189817%_)))
                                           _%mvars189813%_)))))
                      (_%recur189818%_
                       _%hd189812%_
                       '()
                       _%target189811%_
                       _%E189815%_
                       _%make-body189821%_))))
                 (_%parse-clause189632%_
                  (lambda (_%hd189704%_ _%ids189705%_)
                    (let _%recur189707%_ ((_%e189709%_ _%hd189704%_)
                                          (_%vars189710%_ '())
                                          (_%depth189711%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e189709%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e189709%_))
                              (values '(any) _%vars189710%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e189709%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx189623%_
                                     _%hd189704%_))
                                  (if (let ((__tmp191021
                                             (lambda (_%id189716%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e189709%_
                                                  _%id189716%_)))))
                                        (declare (not safe))
                                        (__find __tmp191021 _%ids189705%_))
                                      (values (cons 'id _%e189709%_)
                                              _%vars189710%_)
                                      (if (let ((__tmp191022
                                                 (lambda (_%var189719%_)
                                                   (let ((__tmp191023
                                                          (car _%var189719%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e189709%_
                                                      __tmp191023)))))
                                            (declare (not safe))
                                            (__find __tmp191022
                                                    _%vars189710%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx189623%_
                                             _%e189709%_))
                                          (values (cons 'var _%e189709%_)
                                                  (cons (cons _%e189709%_
                                                              _%depth189711%_)
                                                        _%vars189710%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e189709%_))
                              (let* ((_%e189723189730%_ _%e189709%_)
                                     (_%E189725189734%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e189723189730%_))))
                                     (_%E189724189795%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e189723189730%_))
                                            (let ((_%e189726189738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e189723189730%_))))
                                              (let ((_%hd189727189741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e189726189738%_)))
                                                    (_%tl189728189743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e189726189738%_))))
                                                (let* ((_%hd189746%_
                                                        _%hd189727189741%_)
                                                       (_%rest189748%_
                                                        _%tl189728189743%_)
                                                       (_%make-pair189763%_
                                                        (lambda (_%tag189750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd189751%_
                         _%tl189752%_)
                  (let* ((_%hd-depth189754%_
                          (if (eq? _%tag189750%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth189711%_ '1))
                              _%depth189711%_))
                         (_g191024_
                          (_%recur189707%_
                           _%hd189751%_
                           _%vars189710%_
                           _%hd-depth189754%_)))
                    (begin
                      (let ((_g191025_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g191024_)
                                   (##values-length _g191024_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g191025_ 2)))
                            (error "Context expects 2 values" _g191025_)))
                      (let ((_%hd189756%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g191024_ 0)))
                            (_%vars189757%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g191024_ 1))))
                        (let ((_g191026_
                               (_%recur189707%_
                                _%tl189752%_
                                _%vars189757%_
                                _%depth189711%_)))
                          (begin
                            (let ((_g191027_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g191026_)
                                         (##values-length _g191026_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g191027_ 2)))
                                  (error "Context expects 2 values"
                                         _g191027_)))
                            (let ((_%tl189759%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g191026_ 0)))
                                  (_%vars189760%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g191026_ 1))))
                              (values (cons _%tag189750%_
                                            (cons _%hd189756%_ _%tl189759%_))
                                      _%vars189760%_)))))))))
               (_%e189764189771%_ _%rest189748%_)
               (_%E189766189775%_
                (lambda ()
                  (_%make-pair189763%_ 'cons _%hd189746%_ _%rest189748%_)))
               (_%E189765189791%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e189764189771%_))
                      (let ((_%e189767189779%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189764189771%_))))
                        (let ((_%hd189768189782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189767189779%_)))
                              (_%tl189769189784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189767189779%_))))
                          (let* ((_%rest-hd189787%_ _%hd189768189782%_)
                                 (_%rest-tl189789%_ _%tl189769189784%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd189787%_))
                                (_%make-pair189763%_
                                 'splice
                                 _%hd189746%_
                                 _%rest-tl189789%_)
                                (_%make-pair189763%_
                                 'cons
                                 _%hd189746%_
                                 _%rest189748%_)))))
                      (_%E189766189775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189765189791%_))))
                                            (_%E189725189734%_)))))
                                (_%E189724189795%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e189709%_))
                                  (values '(null) _%vars189710%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e189709%_))
                                      (let ((_g191028_
                                             (_%recur189707%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e189709%_)))
                                              _%vars189710%_
                                              _%depth189711%_)))
                                        (begin
                                          (let ((_g191029_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191028_)
                                                       (##values-length
                                                        _g191028_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191029_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191029_)))
                                          (let ((_%e189801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191028_ 0)))
                                                (_%vars189802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191028_
                                                    1))))
                                            (values (cons 'vector _%e189801%_)
                                                    _%vars189802%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e189709%_))
                                          (let ((_g191030_
                                                 (_%recur189707%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e189709%_)))
                                                  _%vars189710%_
                                                  _%depth189711%_)))
                                            (begin
                                              (let ((_g191031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g191030_)
                                                           (##values-length
                                                            _g191030_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g191031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g191031_)))
                                              (let ((_%e189805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g191030_
                                                        0)))
                                                    (_%vars189806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g191030_
                                                        1))))
                                                (values (cons 'box _%e189805%_)
                                                        _%vars189806%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e189709%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e189709%_)))
                                                      _%vars189710%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx189623%_
                                                 _%e189709%_))))))))))))
          (let* ((_%e189633189646%_ _%stx189623%_)
                 (_%E189635189650%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e189633189646%_))))
                 (_%E189634189700%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189633189646%_))
                        (let ((_%e189636189654%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189633189646%_))))
                          (let ((_%hd189637189657%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189636189654%_)))
                                (_%tl189638189659%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189636189654%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189638189659%_))
                                (let ((_%e189639189662%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189638189659%_))))
                                  (let ((_%hd189640189665%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189639189662%_)))
                                        (_%tl189641189667%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189639189662%_))))
                                    (let ((_%expr189670%_ _%hd189640189665%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189641189667%_))
                                          (let ((_%e189642189672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl189641189667%_))))
                                            (let ((_%hd189643189675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189642189672%_)))
                                                  (_%tl189644189677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189642189672%_))))
                                              (let* ((_%ids189680%_
                                                      _%hd189643189675%_)
                                                     (_%clauses189682%_
                                                      _%tl189644189677%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids189680%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses189682%_))
                                                        (let* ((_%ids189687%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids189680%_)))
                       (_%clauses189689%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses189682%_)))
                       (_%clause-ids189691%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses189689%_)))
                       (_%E189693%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target189695%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first189697%_
                        (if (null? _%clauses189689%_)
                            _%E189693%_
                            (car _%clause-ids189691%_))))
                  (let ((__tmp191033
                         (let ((__tmp191034
                                (let ((__tmp191036
                                       (let ((__tmp191038
                                              (cons (cons (cons _%E189693%_
                                                                '())
                                                          (cons (let ((__tmp191040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target189695%_ '()))
                              (__tmp191039
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target189695%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp191040 __tmp191039))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp191037
                                              (_%generate-body189629%_
                                               (_%generate-bindings189628%_
                                                _%target189695%_
                                                _%ids189687%_
                                                _%clauses189689%_
                                                _%clause-ids189691%_
                                                _%E189693%_)
                                               (cons _%first189697%_
                                                     (cons _%expr189670%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp191038
                                          __tmp191037)))
                                      (__tmp191035
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx189623%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp191036
                                   __tmp191035))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp191034)))
                        (__tmp191032
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx189623%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp191033 __tmp191032)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx189623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx189623%_
                                                       _%ids189680%_))))))
                                          (_%E189635189650%_)))))
                                (_%E189635189650%_))))
                        (_%E189635189650%_)))))
            (_%E189634189700%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx190348%_)
        (let* ((_%identifier=?190350%_ 'free-identifier=?)
               (_%unwrap-e190352%_ 'syntax-e)
               (_%wrap-e190354%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190348%_
           _%identifier=?190350%_
           _%unwrap-e190352%_
           _%wrap-e190354%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx190356%_ _%identifier=?190357%_)
        (let* ((_%unwrap-e190359%_ 'syntax-e) (_%wrap-e190361%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190356%_
           _%identifier=?190357%_
           _%unwrap-e190359%_
           _%wrap-e190361%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx190363%_ _%identifier=?190364%_ _%unwrap-e190365%_)
        (let ((_%wrap-e190367%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190363%_
           _%identifier=?190364%_
           _%unwrap-e190365%_
           _%wrap-e190367%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g191041_
        (let ((_g191042_ (let () (declare (not safe)) (##length _g191041_))))
          (cond ((let () (declare (not safe)) (##fx= _g191042_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g191041_))
                ((let () (declare (not safe)) (##fx= _g191042_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g191041_))
                ((let () (declare (not safe)) (##fx= _g191042_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g191041_))
                ((let () (declare (not safe)) (##fx= _g191042_ 4))
                 (apply gx#macro-expand-syntax-case__% _g191041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g191041_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx189620%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx189620%_))
            (let ((__tmp191043
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx189620%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp191043 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd189578%_ . _%rest189579%_)
        (let ((_%len189581%_ (length _%hd189578%_)))
          (let _%lp189583%_ ((_%rest189585%_ _%rest189579%_))
            (let* ((_%rest189586189594%_ _%rest189585%_)
                   (_%else189588189602%_ (lambda () '#!void))
                   (_%K189590189608%_
                    (lambda (_%rest189605%_ _%hd189606%_)
                      (if (let ((__tmp191044 (length _%hd189606%_)))
                            (declare (not safe))
                            (##fx= _%len189581%_ __tmp191044))
                          (_%lp189583%_ _%rest189605%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd189606%_))))))
              (if (pair? _%rest189586189594%_)
                  (let ((_%hd189591189611%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest189586189594%_)))
                        (_%tl189592189613%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest189586189594%_))))
                    (let* ((_%hd189616%_ _%hd189591189611%_)
                           (_%rest189618%_ _%tl189592189613%_))
                      (_%K189590189608%_ _%rest189618%_ _%hd189616%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx189528%_ _%n189529%_)
        (let _%lp189531%_ ((_%rest189534%_ _%stx189528%_) (_%r189536%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189534%_))
              (let* ((_%g189538189545%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189534%_)))
                     (_%E189540189549%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189538189545%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189541189556%_
                      (lambda (_%rest189552%_ _%hd189553%_)
                        (_%lp189531%_
                         _%rest189552%_
                         (cons _%hd189553%_ _%r189536%_)))))
                (if (pair? _%g189538189545%_)
                    (let ((_%hd189542189559%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189538189545%_)))
                          (_%tl189543189561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189538189545%_))))
                      (let* ((_%hd189564%_ _%hd189542189559%_)
                             (_%rest189566%_ _%tl189543189561%_))
                        (_%K189541189556%_ _%rest189566%_ _%hd189564%_)))
                    (_%E189540189549%_)))
              (let _%lp189568%_ ((_%n189570%_ _%n189529%_)
                                 (_%l189571%_ _%r189536%_)
                                 (_%r189573%_ _%rest189534%_))
                (if (null? _%l189571%_)
                    (values _%l189571%_ _%r189573%_)
                    (if (fxpositive? _%n189570%_)
                        (_%lp189568%_
                         (let () (declare (not safe)) (##fx- _%n189570%_ '1))
                         (cdr _%l189571%_)
                         (cons (car _%l189571%_) _%r189573%_))
                        (values (reverse! _%l189571%_) _%r189573%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx189478%_ _%n189479%_)
        (let _%lp189481%_ ((_%rest189484%_ _%stx189478%_) (_%r189486%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189484%_))
              (let* ((_%g189488189495%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189484%_)))
                     (_%E189490189499%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189488189495%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189491189506%_
                      (lambda (_%rest189502%_ _%hd189503%_)
                        (_%lp189481%_
                         _%rest189502%_
                         (cons _%hd189503%_ _%r189486%_)))))
                (if (pair? _%g189488189495%_)
                    (let ((_%hd189492189509%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189488189495%_)))
                          (_%tl189493189511%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189488189495%_))))
                      (let* ((_%hd189514%_ _%hd189492189509%_)
                             (_%rest189516%_ _%tl189493189511%_))
                        (_%K189491189506%_ _%rest189516%_ _%hd189514%_)))
                    (_%E189490189499%_)))
              (let _%lp189518%_ ((_%n189520%_ _%n189479%_)
                                 (_%l189521%_ _%r189486%_)
                                 (_%r189523%_ _%rest189484%_))
                (if (null? _%l189521%_)
                    (vector _%l189521%_ _%r189523%_)
                    (if (fxpositive? _%n189520%_)
                        (_%lp189518%_
                         (let () (declare (not safe)) (##fx- _%n189520%_ '1))
                         (cdr _%l189521%_)
                         (cons (car _%l189521%_) _%r189523%_))
                        (vector (reverse! _%l189521%_) _%r189523%_))))))))))
