(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1769384629)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp145342 (list gx#expander::t))
            (__tmp145341 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp145342
         '(id depth)
         __tmp145341
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args145338%_
        (apply make-instance gx#syntax-pattern::t _%$args145338%_)))
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
      (lambda (_%self145324%_ _%stx145325%_)
        (let ((_%self145328%_ _%self145324%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx145325%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx144791%_)
        (letrec ((_%generate144793%_
                  (lambda (_%e145033%_)
                    (letrec ((_%BUG145035%_
                              (lambda (_%q145200%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx144791%_
                                         _%e145033%_
                                         _%q145200%_))))
                             (_%local-pattern-e145036%_
                              (lambda (_%pat145198%_)
                                (let ((__tmp145343
                                       (##structure-ref
                                        _%pat145198%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp145343))))
                             (_%getvar145037%_
                              (lambda (_%q145195%_ _%vars145196%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q145195%_
                                   _%vars145196%_
                                   _%BUG145035%_))))
                             (_%getarg145038%_
                              (lambda (_%arg145161%_ _%vars145162%_)
                                (let* ((_%arg145163145170%_ _%arg145161%_)
                                       (_%E145165145174%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg145163145170%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K145166145183%_
                                        (lambda (_%e145177%_ _%tag145178%_)
                                          (let ((_%$e145180%_ _%tag145178%_))
                                            (if (eq? 'ref _%$e145180%_)
                                                (_%getvar145037%_
                                                 _%e145177%_
                                                 _%vars145162%_)
                                                (if (eq? 'pattern _%$e145180%_)
                                                    (_%local-pattern-e145036%_
                                                     _%e145177%_)
                                                    (_%BUG145035%_
                                                     _%arg145161%_)))))))
                                  (if (pair? _%arg145163145170%_)
                                      (let ((_%hd145167145186%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg145163145170%_)))
                                            (_%tl145168145188%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg145163145170%_))))
                                        (let* ((_%tag145191%_
                                                _%hd145167145186%_)
                                               (_%e145193%_
                                                _%tl145168145188%_))
                                          (_%K145166145183%_
                                           _%e145193%_
                                           _%tag145191%_)))
                                      (_%E145165145174%_))))))
                      (let _%recur145040%_ ((_%e145042%_ _%e145033%_)
                                            (_%vars145043%_ '()))
                        (let* ((_%e145044145051%_ _%e145042%_)
                               (_%E145046145055%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e145044145051%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K145047145149%_
                                (lambda (_%body145058%_ _%tag145059%_)
                                  (let ((_%$e145061%_ _%tag145059%_))
                                    (if (eq? 'datum _%$e145061%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body145058%_))
                                        (if (eq? 'term _%$e145061%_)
                                            (let ((_%id145064%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body145058%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id145064%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks145067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id145064%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks145067%_)
                                                        (let ((__tmp145344
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body145058%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp145344))
                (let ((__tmp145346
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body145058%_)))
                      (__tmp145345
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body145058%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp145346
                   __tmp145345
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id145064%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body145058%_))
                                                      (_%BUG145035%_
                                                       _%e145042%_))))
                                            (if (eq? 'pattern _%$e145061%_)
                                                (_%local-pattern-e145036%_
                                                 _%body145058%_)
                                                (if (eq? 'ref _%$e145061%_)
                                                    (_%getvar145037%_
                                                     _%body145058%_
                                                     _%vars145043%_)
                                                    (if (eq? 'cons
                                                             _%$e145061%_)
                                                        (let ((__tmp145348
                                                               (_%recur145040%_
                                                                (car _%body145058%_)
                                                                _%vars145043%_))
                                                              (__tmp145347
                                                               (_%recur145040%_
                                                                (cdr _%body145058%_)
                                                                _%vars145043%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp145348
                                                           __tmp145347))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e145061%_)
                    (let ((__tmp145349
                           (_%recur145040%_ _%body145058%_ _%vars145043%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp145349))
                    (if (eq? 'box _%$e145061%_)
                        (let ((__tmp145350
                               (_%recur145040%_
                                _%body145058%_
                                _%vars145043%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp145350))
                        (if (eq? 'splice _%$e145061%_)
                            (let* ((_%body145070145081%_ _%body145058%_)
                                   (_%E145072145085%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body145070145081%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K145073145123%_
                                    (lambda (_%args145088%_
                                             _%iv145089%_
                                             _%hd145090%_
                                             _%depth145091%_)
                                      (let* ((_%targets145097%_
                                              (map (lambda (_%g145092145094%_)
                                                     (_%getarg145038%_
                                                      _%g145092145094%_
                                                      _%vars145043%_))
                                                   _%args145088%_))
                                             (_%fold-in145099%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args145088%_)))
                                             (_%fold-out145101%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args145103%_
                                              (let ((__tmp145351
                                                     (cons _%fold-out145101%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp145351
                                                 _%fold-in145099%_)))
                                             (_%lambda-body145120%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth145091%_ '1))
                                                  (let ((_%r-args145111%_
                                                         (map (lambda (_%arg145105%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg145105%_)))
                      _%args145088%_))
                (_%r-vars145112%_
                 (let ((__tmp145352
                        (lambda (_%arg145107%_ _%var145108%_ _%r145109%_)
                          (cons (cons (cdr _%arg145107%_) _%var145108%_)
                                _%r145109%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp145352
                    _%vars145043%_
                    _%args145088%_
                    _%fold-in145099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur145040%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth145091%_ '1))
                         (cons _%hd145090%_
                               (cons (cons 'var _%fold-out145101%_)
                                     _%r-args145111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars145112%_))
                                                  (let* ((_%hd-vars145118%_
                                                          (let ((__tmp145353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg145114%_ _%var145115%_ _%r145116%_)
                           (cons (cons (cdr _%arg145114%_) _%var145115%_)
                                 _%r145116%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp145353
                     _%vars145043%_
                     _%args145088%_
                     _%fold-in145099%_)))
                 (__tmp145354
                  (_%recur145040%_ _%hd145090%_ _%hd-vars145118%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp145354
                                                     _%fold-out145101%_)))))
                                        (let ((__tmp145358
                                               (if (let ((__tmp145359
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets145097%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp145359 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets145097%_))
                                                   '#!void))
                                              (__tmp145355
                                               (let ((__tmp145357
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args145103%_
                                                         _%lambda-body145120%_)))
                                                     (__tmp145356
                                                      (_%recur145040%_
                                                       _%iv145089%_
                                                       _%vars145043%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp145357
                                                  __tmp145356
                                                  _%targets145097%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp145358
                                           __tmp145355))))))
                              (if (pair? _%body145070145081%_)
                                  (let ((_%hd145074145126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body145070145081%_)))
                                        (_%tl145075145128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body145070145081%_))))
                                    (let ((_%depth145131%_ _%hd145074145126%_))
                                      (if (pair? _%tl145075145128%_)
                                          (let ((_%hd145076145133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl145075145128%_)))
                                                (_%tl145077145135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl145075145128%_))))
                                            (let ((_%hd145138%_
                                                   _%hd145076145133%_))
                                              (if (pair? _%tl145077145135%_)
                                                  (let ((_%hd145078145140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145077145135%_)))
                                                        (_%tl145079145142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145077145135%_))))
                                                    (let* ((_%iv145145%_
                                                            _%hd145078145140%_)
                                                           (_%args145147%_
                                                            _%tl145079145142%_))
                                                      (_%K145073145123%_
                                                       _%args145147%_
                                                       _%iv145145%_
                                                       _%hd145138%_
                                                       _%depth145131%_)))
                                                  (_%E145072145085%_))))
                                          (_%E145072145085%_))))
                                  (_%E145072145085%_)))
                            (if (eq? 'var _%$e145061%_)
                                _%body145058%_
                                (_%BUG145035%_ _%e145042%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e145044145051%_)
                              (let ((_%hd145048145152%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145044145051%_)))
                                    (_%tl145049145154%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145044145051%_))))
                                (let* ((_%tag145157%_ _%hd145048145152%_)
                                       (_%body145159%_ _%tl145049145154%_))
                                  (_%K145047145149%_
                                   _%body145159%_
                                   _%tag145157%_)))
                              (_%E145046145055%_)))))))
                 (_%parse144794%_
                  (lambda (_%e144835%_)
                    (letrec ((_%make-cons144837%_
                              (lambda (_%hd145025%_ _%tl145026%_)
                                (let ((_g145360_ _%hd145025%_)
                                      (_g145362_ _%tl145026%_))
                                  (begin
                                    (let ((_g145361_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145360_)
                                                 (##values-length _g145360_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145361_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145361_)))
                                    (let ((_g145363_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145362_)
                                                 (##values-length _g145362_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145363_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145363_)))
                                    (let ((_%hd-e145028%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145360_ 0)))
                                          (_%hd-vars145029%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145360_ 1))))
                                      (let ((_%tl-e145030%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145362_ 0)))
                                            (_%tl-vars145031%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145362_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e145028%_
                                                            _%tl-e145030%_))
                                                (append _%hd-vars145029%_
                                                        _%tl-vars145031%_))))))))
                             (_%make-splice144838%_
                              (lambda (_%where144961%_
                                       _%depth144962%_
                                       _%hd144963%_
                                       _%tl144964%_)
                                (let ((_g145364_ _%hd144963%_)
                                      (_g145366_ _%tl144964%_))
                                  (begin
                                    (let ((_g145365_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145364_)
                                                 (##values-length _g145364_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145365_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145365_)))
                                    (let ((_g145367_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145366_)
                                                 (##values-length _g145366_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145367_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145367_)))
                                    (let ((_%hd-e144966%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145364_ 0)))
                                          (_%hd-vars144967%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145364_ 1))))
                                      (let ((_%tl-e144968%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145366_ 0)))
                                            (_%tl-vars144969%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g145366_ 1))))
                                        (let _%lp144971%_ ((_%rest144973%_
                                                            _%hd-vars144967%_)
                                                           (_%targets144974%_
                                                            '())
                                                           (_%vars144975%_
                                                            _%tl-vars144969%_))
                                          (let* ((_%rest144976144986%_
                                                  _%rest144973%_)
                                                 (_%else144978144994%_
                                                  (lambda ()
                                                    (if (null? _%targets144974%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx144791%_
                                                           _%where144961%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth144962%_
                                    (cons _%hd-e144966%_
                                          (cons _%tl-e144968%_
                                                _%targets144974%_))))
                        _%vars144975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K144980145006%_
                                                  (lambda (_%rest144997%_
                                                           _%hd-pat144998%_
                                                           _%hd-depth*144999%_)
                                                    (let ((_%hd-depth145001%_
                                                           (fx- _%hd-depth*144999%_
                                                                _%depth144962%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth145001%_))
                                                          (_%lp144971%_
                                                           _%rest144997%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat144998%_)
                         _%targets144974%_)
                   (cons (cons _%hd-depth145001%_ _%hd-pat144998%_)
                         _%vars144975%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth145001%_))
                      (_%lp144971%_
                       _%rest144997%_
                       (cons (cons 'pattern _%hd-pat144998%_)
                             _%targets144974%_)
                       _%vars144975%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx144791%_
                         _%where144961%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest144976144986%_)
                                                (let ((_%hd144981145009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest144976144986%_)))
                                                      (_%tl144982145011%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest144976144986%_))))
                                                  (if (pair? _%hd144981145009%_)
                                                      (let ((_%hd144983145014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd144981145009%_)))
                    (_%tl144984145016%_
                     (let () (declare (not safe)) (##cdr _%hd144981145009%_))))
                (let* ((_%hd-depth*145019%_ _%hd144983145014%_)
                       (_%hd-pat145021%_ _%tl144984145016%_)
                       (_%rest145023%_ _%tl144982145011%_))
                  (_%K144980145006%_
                   _%rest145023%_
                   _%hd-pat145021%_
                   _%hd-depth*145019%_)))
              (_%else144978144994%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144978144994%_))))))))))
                             (_%recur144839%_
                              (lambda (_%e144844%_ _%is-e?144845%_)
                                (if (_%is-e?144845%_ _%e144844%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx144791%_))
                                    (if (gx#syntax-local-pattern? _%e144844%_)
                                        (let* ((_%pat144849%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e144844%_)))
                                               (_%depth144851%_
                                                (##structure-ref
                                                 _%pat144849%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth144851%_)
                                              (values (cons 'ref _%pat144849%_)
                                                      (cons (cons _%depth144851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat144849%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat144849%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e144844%_))
                                            (values (cons 'term _%e144844%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e144844%_))
                                                (let* ((_%e144855144862%_
                                                        _%e144844%_)
                                                       (_%E144857144866%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e144855144862%_))))
                                                       (_%E144856144948%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e144855144862%_))
                      (let ((_%e144858144870%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e144855144862%_))))
                        (let ((_%hd144859144873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144858144870%_)))
                              (_%tl144860144875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144858144870%_))))
                          (let* ((_%hd144878%_ _%hd144859144873%_)
                                 (_%rest144880%_ _%tl144860144875%_))
                            (if (_%is-e?144845%_ _%hd144878%_)
                                (let* ((_%e144881144888%_ _%rest144880%_)
                                       (_%E144883144892%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx144791%_
                                             _%e144844%_))))
                                       (_%E144882144906%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e144881144888%_))
                                              (let ((_%e144884144896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e144881144888%_))))
                                                (let ((_%hd144885144899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144884144896%_)))
                                                      (_%tl144886144901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144884144896%_))))
                                                  (let ((_%rest144904%_
                                                         _%hd144885144899%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144886144901%_))
                                                        (_%recur144839%_
                                                         _%rest144904%_
                                                         false)
                                                        (_%E144883144892%_)))))
                                              (_%E144883144892%_)))))
                                  (_%E144882144906%_))
                                (let _%lp144910%_ ((_%rest144912%_
                                                    _%rest144880%_)
                                                   (_%depth144913%_ '0))
                                  (let* ((_%e144914144921%_ _%rest144912%_)
                                         (_%E144916144925%_
                                          (lambda ()
                                            (if (fxpositive? _%depth144913%_)
                                                (_%make-splice144838%_
                                                 _%e144844%_
                                                 _%depth144913%_
                                                 (_%recur144839%_
                                                  _%hd144878%_
                                                  _%is-e?144845%_)
                                                 (_%recur144839%_
                                                  _%rest144912%_
                                                  _%is-e?144845%_))
                                                (_%make-cons144837%_
                                                 (_%recur144839%_
                                                  _%hd144878%_
                                                  _%is-e?144845%_)
                                                 (_%recur144839%_
                                                  _%rest144912%_
                                                  _%is-e?144845%_)))))
                                         (_%E144915144944%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e144914144921%_))
                                                (let ((_%e144917144929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e144914144921%_))))
                                                  (let ((_%hd144918144932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144917144929%_)))
                                                        (_%tl144919144934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144917144929%_))))
                                                    (let* ((_%rest-hd144937%_
                                                            _%hd144918144932%_)
                                                           (_%rest-tl144939%_
                                                            _%tl144919144934%_))
                                                      (if (_%is-e?144845%_
                                                           _%rest-hd144937%_)
                                                          (_%lp144910%_
                                                           _%rest-tl144939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth144913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth144913%_)
                      (_%make-splice144838%_
                       _%e144844%_
                       _%depth144913%_
                       (_%recur144839%_ _%hd144878%_ _%is-e?144845%_)
                       (_%recur144839%_ _%rest144912%_ _%is-e?144845%_))
                      (_%make-cons144837%_
                       (_%recur144839%_ _%hd144878%_ _%is-e?144845%_)
                       (_%recur144839%_ _%rest144912%_ _%is-e?144845%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E144916144925%_)))))
                                    (_%E144915144944%_)))))))
                      (_%E144857144866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E144856144948%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e144844%_))
                                                    (let ((_g145368_
                                                           (_%recur144839%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e144844%_)))
                    _%is-e?144845%_)))
              (begin
                (let ((_g145369_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g145368_)
                             (##values-length _g145368_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g145369_ 2)))
                      (error "Context expects 2 values" _g145369_)))
                (let ((_%e144953%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g145368_ 0)))
                      (_%vars144954%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g145368_ 1))))
                  (values (cons 'vector _%e144953%_) _%vars144954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e144844%_))
                                                        (let ((_g145370_
                                                               (_%recur144839%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e144844%_)))
                        _%is-e?144845%_)))
                  (begin
                    (let ((_g145371_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g145370_)
                                 (##values-length _g145370_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g145371_ 2)))
                          (error "Context expects 2 values" _g145371_)))
                    (let ((_%e144957%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g145370_ 0)))
                          (_%vars144958%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g145370_ 1))))
                      (values (cons 'box _%e144957%_) _%vars144958%_))))
                (values (cons 'datum _%e144844%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g145372_
                             (_%recur144839%_ _%e144835%_ gx#ellipsis?)))
                        (begin
                          (let ((_g145373_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g145372_)
                                       (##values-length _g145372_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g145373_ 2)))
                                (error "Context expects 2 values" _g145373_)))
                          (let ((_%tree144841%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g145372_ 0)))
                                (_%vars144842%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g145372_ 1))))
                            (if (null? _%vars144842%_)
                                _%tree144841%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx144791%_
                                   _%vars144842%_))))))))))
          (let* ((_%e144795144805%_ _%stx144791%_)
                 (_%E144797144809%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx144791%_))))
                 (_%E144796144831%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e144795144805%_))
                        (let ((_%e144798144813%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e144795144805%_))))
                          (let ((_%hd144799144816%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144798144813%_)))
                                (_%tl144800144818%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144798144813%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144800144818%_))
                                (let ((_%e144801144821%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl144800144818%_))))
                                  (let ((_%hd144802144824%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144801144821%_)))
                                        (_%tl144803144826%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144801144821%_))))
                                    (let ((_%form144829%_ _%hd144802144824%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144803144826%_))
                                          (let ((__tmp145375
                                                 (_%generate144793%_
                                                  (_%parse144794%_
                                                   _%form144829%_)))
                                                (__tmp145374
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx144791%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp145375
                                             __tmp145374))
                                          (_%E144797144809%_)))))
                                (_%E144797144809%_))))
                        (_%E144797144809%_)))))
            (_%E144796144831%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx144040%_
               _%identifier=?144041%_
               _%unwrap-e144042%_
               _%wrap-e144043%_)
        (letrec ((_%generate-bindings144045%_
                  (lambda (_%target144655%_
                           _%ids144656%_
                           _%clauses144657%_
                           _%clause-ids144658%_
                           _%E144659%_)
                    (letrec ((_%generate1144661%_
                              (lambda (_%clause144758%_
                                       _%clause-id144759%_
                                       _%E144760%_)
                                (cons (cons _%clause-id144759%_ '())
                                      (cons (let ((__tmp145377
                                                   (cons _%target144655%_ '()))
                                                  (__tmp145376
                                                   (_%generate-clause144047%_
                                                    _%target144655%_
                                                    _%ids144656%_
                                                    _%clause144758%_
                                                    _%E144760%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp145377
                                               __tmp145376))
                                            '())))))
                      (let _%lp144663%_ ((_%rest144665%_ _%clauses144657%_)
                                         (_%rest-ids144666%_
                                          _%clause-ids144658%_)
                                         (_%bindings144667%_ '()))
                        (let* ((_%rest144668144676%_ _%rest144665%_)
                               (_%else144670144684%_
                                (lambda () _%bindings144667%_))
                               (_%K144672144746%_
                                (lambda (_%rest144687%_ _%clause144688%_)
                                  (let* ((_%rest-ids144689144696%_
                                          _%rest-ids144666%_)
                                         (_%E144691144700%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids144689144696%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K144692144734%_
                                          (lambda (_%rest-ids144703%_
                                                   _%clause-id144704%_)
                                            (let* ((_%rest-ids144705144713%_
                                                    _%rest-ids144703%_)
                                                   (_%else144707144721%_
                                                    (lambda ()
                                                      (cons (_%generate1144661%_
                                                             _%clause144688%_
                                                             _%clause-id144704%_
                                                             _%E144659%_)
                                                            _%bindings144667%_)))
                                                   (_%K144709144726%_
                                                    (lambda (_%next-clause-id144724%_)
                                                      (_%lp144663%_
                                                       _%rest144687%_
                                                       _%rest-ids144703%_
                                                       (cons (_%generate1144661%_
                                                              _%clause144688%_
                                                              _%clause-id144704%_
                                                              _%next-clause-id144724%_)
                                                             _%bindings144667%_)))))
                                              (if (pair? _%rest-ids144705144713%_)
                                                  (let* ((_%hd144710144729%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids144705144713%_)))
                                                         (_%next-clause-id144732%_
                                                          _%hd144710144729%_))
                                                    (_%K144709144726%_
                                                     _%next-clause-id144732%_))
                                                  (_%else144707144721%_))))))
                                    (if (pair? _%rest-ids144689144696%_)
                                        (let ((_%hd144693144737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids144689144696%_)))
                                              (_%tl144694144739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids144689144696%_))))
                                          (let* ((_%clause-id144742%_
                                                  _%hd144693144737%_)
                                                 (_%rest-ids144744%_
                                                  _%tl144694144739%_))
                                            (_%K144692144734%_
                                             _%rest-ids144744%_
                                             _%clause-id144742%_)))
                                        (_%E144691144700%_))))))
                          (if (pair? _%rest144668144676%_)
                              (let ((_%hd144673144749%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest144668144676%_)))
                                    (_%tl144674144751%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest144668144676%_))))
                                (let* ((_%clause144754%_ _%hd144673144749%_)
                                       (_%rest144756%_ _%tl144674144751%_))
                                  (_%K144672144746%_
                                   _%rest144756%_
                                   _%clause144754%_)))
                              (_%else144670144684%_)))))))
                 (_%generate-body144046%_
                  (lambda (_%bindings144615%_ _%body144616%_)
                    (let _%recur144618%_ ((_%rest144620%_ _%bindings144615%_))
                      (let* ((_%rest144621144629%_ _%rest144620%_)
                             (_%else144623144637%_ (lambda () _%body144616%_))
                             (_%K144625144643%_
                              (lambda (_%rest144640%_ _%hd144641%_)
                                (let ((__tmp145379 (cons _%hd144641%_ '()))
                                      (__tmp145378
                                       (_%recur144618%_ _%rest144640%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp145379
                                   __tmp145378)))))
                        (if (pair? _%rest144621144629%_)
                            (let ((_%hd144626144646%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144621144629%_)))
                                  (_%tl144627144648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144621144629%_))))
                              (let* ((_%hd144651%_ _%hd144626144646%_)
                                     (_%rest144653%_ _%tl144627144648%_))
                                (_%K144625144643%_
                                 _%rest144653%_
                                 _%hd144651%_)))
                            (_%else144623144637%_))))))
                 (_%generate-clause144047%_
                  (lambda (_%target144478%_
                           _%ids144479%_
                           _%clause144480%_
                           _%E144481%_)
                    (letrec ((_%generate1144483%_
                              (lambda (_%hd144570%_
                                       _%fender144571%_
                                       _%body144572%_)
                                (let ((_g145380_
                                       (_%parse-clause144049%_
                                        _%hd144570%_
                                        _%ids144479%_)))
                                  (begin
                                    (let ((_g145381_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145380_)
                                                 (##values-length _g145380_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145381_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145381_)))
                                    (let ((_%e144574%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145380_ 0)))
                                          (_%mvars144575%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g145380_ 1))))
                                      (let* ((_%pvars144577%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars144575%_))))
                                             (_%E144579%_
                                              (cons _%E144481%_
                                                    (cons _%target144478%_
                                                          '())))
                                             (_%K144612%_
                                              (let ((__tmp145382
                                                     (let ((__tmp145384
                                                            (map (lambda (_%mvar144581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar144582%_)
                           (let* ((_%mvar144583144590%_ _%mvar144581%_)
                                  (_%E144585144594%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar144583144590%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K144586144600%_
                                   (lambda (_%depth144597%_ _%id144598%_)
                                     (cons _%id144598%_
                                           (cons (let ((__tmp145386
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id144598%_)))
                                                       (__tmp145385
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar144582%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp145386
                                                    __tmp145385
                                                    _%depth144597%_))
                                                 '())))))
                             (if (pair? _%mvar144583144590%_)
                                 (let ((_%hd144587144603%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar144583144590%_)))
                                       (_%tl144588144605%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar144583144590%_))))
                                   (let* ((_%id144608%_ _%hd144587144603%_)
                                          (_%depth144610%_ _%tl144588144605%_))
                                     (_%K144586144600%_
                                      _%depth144610%_
                                      _%id144608%_)))
                                 (_%E144585144594%_))))
                         _%mvars144575%_
                         _%pvars144577%_))
                   (__tmp145383
                    (if (eq? _%fender144571%_ '#t)
                        _%body144572%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender144571%_
                           _%body144572%_
                           _%E144579%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp145384 __tmp145383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars144577%_
                                                 __tmp145382))))
                                        (_%generate-match144048%_
                                         _%hd144570%_
                                         _%target144478%_
                                         _%e144574%_
                                         _%mvars144575%_
                                         _%K144612%_
                                         _%E144579%_))))))))
                      (let* ((_%e144484144504%_ _%clause144480%_)
                             (_%E144493144508%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e144484144504%_))))
                             (_%E144486144542%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144484144504%_))
                                    (let ((_%e144494144512%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144484144504%_))))
                                      (let ((_%hd144495144515%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144494144512%_)))
                                            (_%tl144496144517%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144494144512%_))))
                                        (let ((_%hd144520%_
                                               _%hd144495144515%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144496144517%_))
                                              (let ((_%e144497144522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144496144517%_))))
                                                (let ((_%hd144498144525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144497144522%_)))
                                                      (_%tl144499144527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144497144522%_))))
                                                  (let ((_%fender144530%_
                                                         _%hd144498144525%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144499144527%_))
                                                        (let ((_%e144500144532%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl144499144527%_))))
                  (let ((_%hd144501144535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144500144532%_)))
                        (_%tl144502144537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144500144532%_))))
                    (let ((_%body144540%_ _%hd144501144535%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144502144537%_))
                          (_%generate1144483%_
                           _%hd144520%_
                           _%fender144530%_
                           _%body144540%_)
                          (_%E144493144508%_)))))
                (_%E144493144508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E144493144508%_)))))
                                    (_%E144493144508%_))))
                             (_%E144485144566%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144484144504%_))
                                    (let ((_%e144487144546%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144484144504%_))))
                                      (let ((_%hd144488144549%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144487144546%_)))
                                            (_%tl144489144551%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144487144546%_))))
                                        (let ((_%hd144554%_
                                               _%hd144488144549%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144489144551%_))
                                              (let ((_%e144490144556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144489144551%_))))
                                                (let ((_%hd144491144559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144490144556%_)))
                                                      (_%tl144492144561%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144490144556%_))))
                                                  (let ((_%body144564%_
                                                         _%hd144491144559%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144492144561%_))
                                                        (_%generate1144483%_
                                                         _%hd144554%_
                                                         '#t
                                                         _%body144564%_)
                                                        (_%E144486144542%_)))))
                                              (_%E144486144542%_)))))
                                    (_%E144486144542%_)))))
                        (_%E144485144566%_)))))
                 (_%generate-match144048%_
                  (lambda (_%where144227%_
                           _%target144228%_
                           _%hd144229%_
                           _%mvars144230%_
                           _%K144231%_
                           _%E144232%_)
                    (letrec ((_%BUG144234%_
                              (lambda (_%q144476%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx144040%_
                                         _%hd144229%_
                                         _%q144476%_))))
                             (_%recur144235%_
                              (lambda (_%e144326%_
                                       _%vars144327%_
                                       _%target144328%_
                                       _%E144329%_
                                       _%k144330%_)
                                (let* ((_%e144331144338%_ _%e144326%_)
                                       (_%E144333144342%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e144331144338%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K144334144464%_
                                        (lambda (_%body144345%_ _%tag144346%_)
                                          (let ((_%$e144348%_ _%tag144346%_))
                                            (if (eq? 'any _%$e144348%_)
                                                (_%k144330%_ _%vars144327%_)
                                                (if (eq? 'id _%$e144348%_)
                                                    (let ((__tmp145391
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target144328%_)))
                                                          (__tmp145387
                                                           (let ((__tmp145389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp145390
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e144043%_
                                    _%body144345%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?144041%_
                             __tmp145390
                             _%target144328%_)))
                         (__tmp145388 (_%k144330%_ _%vars144327%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp145389 __tmp145388 _%E144329%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp145391 __tmp145387 _%E144329%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e144348%_)
                                                        (_%k144330%_
                                                         (cons (cons _%body144345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target144328%_)
                       _%vars144327%_))
                (if (eq? 'cons _%$e144348%_)
                    (let ((_%$e144351%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd144352%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl144353%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp145397
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target144328%_)))
                            (__tmp145392
                             (let ((__tmp145396
                                    (cons (cons (cons _%$e144351%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e144042%_
                                                         _%target144328%_))
                                                      '()))
                                          '()))
                                   (__tmp145393
                                    (let ((__tmp145395
                                           (cons (cons (cons _%$hd144352%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e144351%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl144353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e144351%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp145394
                                           (let* ((_%body144354144361%_
                                                   _%body144345%_)
                                                  (_%E144356144365%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body144354144361%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K144357144373%_
                                                   (lambda (_%tl144368%_
                                                            _%hd144369%_)
                                                     (_%recur144235%_
                                                      _%hd144369%_
                                                      _%vars144327%_
                                                      _%$hd144352%_
                                                      _%E144329%_
                                                      (lambda (_%vars144371%_)
                                                        (_%recur144235%_
                                                         _%tl144368%_
                                                         _%vars144371%_
                                                         _%$tl144353%_
                                                         _%E144329%_
                                                         _%k144330%_))))))
                                             (if (pair? _%body144354144361%_)
                                                 (let ((_%hd144358144376%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body144354144361%_)))
                                                       (_%tl144359144378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body144354144361%_))))
                                                   (let* ((_%hd144381%_
                                                           _%hd144358144376%_)
                                                          (_%tl144383%_
                                                           _%tl144359144378%_))
                                                     (_%K144357144373%_
                                                      _%tl144383%_
                                                      _%hd144381%_)))
                                                 (_%E144356144365%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp145395
                                       __tmp145394))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp145396
                                __tmp145393))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp145397
                         __tmp145392
                         _%E144329%_)))
                    (if (eq? 'splice _%$e144348%_)
                        (let* ((_%body144384144391%_ _%body144345%_)
                               (_%E144386144395%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body144384144391%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K144387144446%_
                                (lambda (_%tl144398%_ _%hd144399%_)
                                  (let* ((_%rlen144401%_
                                          (_%splice-rlen144236%_ _%tl144398%_))
                                         (_%$target144403%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd144405%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl144407%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp144409%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e144411%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd144413%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl144415%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars144417%_
                                          (_%splice-vars144237%_ _%hd144399%_))
                                         (_%lvars144419%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars144417%_)))
                                         (_%tlvars144421%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars144417%_)))
                                         (_%linit144425%_
                                          (map (lambda (_%var144423%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars144419%_)))
                                    (letrec ((_%make-loop144428%_
                                              (lambda (_%vars144432%_)
                                                (let ((__tmp145399
                                                       (cons (cons (cons _%$lp144409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp145412
                                        (cons _%$hd144405%_ _%lvars144419%_))
                                       (__tmp145400
                                        (let ((__tmp145411
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd144405%_)))
                                              (__tmp145405
                                               (let ((__tmp145410
                                                      (cons (cons (cons _%$lp-e144411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e144042%_
                                   _%$hd144405%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145406
                                                      (let ((__tmp145409
                                                             (cons (cons (cons _%$lp-hd144413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e144411%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl144415%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e144411%_))
                                             '()))
                                 '())))
                    (__tmp145407
                     (_%recur144235%_
                      _%hd144399%_
                      '()
                      _%$lp-hd144413%_
                      _%E144329%_
                      (lambda (_%hdvars144434%_)
                        (cons _%$lp144409%_
                              (cons _%$lp-tl144415%_
                                    (map (lambda (_%svar144436%_
                                                  _%lvar144437%_)
                                           (let ((__tmp145408
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar144436%_
                                                     _%hdvars144434%_
                                                     _%BUG144234%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp145408
                                              _%lvar144437%_)))
                                         _%svars144417%_
                                         _%lvars144419%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp145409 __tmp145407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp145410
                                                  __tmp145406)))
                                              (__tmp145401
                                               (let ((__tmp145404
                                                      (map (lambda (_%lvar144439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar144440%_)
                     (cons (cons _%tlvar144440%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar144439%_))
                                 '())))
                   _%lvars144419%_
                   _%tlvars144421%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145402
                                                      (_%k144330%_
                                                       (let ((__tmp145403
                                                              (lambda (_%svar144442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar144443%_
                               _%r144444%_)
                        (cons (cons _%svar144442%_ _%tlvar144443%_)
                              _%r144444%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp145403
                  _%vars144432%_
                  _%svars144417%_
                  _%tlvars144421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp145404
                                                  __tmp145402))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp145411
                                           __tmp145405
                                           __tmp145401))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp145412
                                    __tmp145400))
                                 '()))
                     '()))
              (__tmp145398
               (cons _%$lp144409%_ (cons _%$target144403%_ _%linit144425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp145399
                                                   __tmp145398)))))
                                      (let ((_%body144430%_
                                             (let ((__tmp145414
                                                    (cons (cons (cons _%$target144403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl144407%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target144328%_
                                 _%rlen144401%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp145413
                                                    (_%recur144235%_
                                                     _%tl144398%_
                                                     _%vars144327%_
                                                     _%$tl144407%_
                                                     _%E144329%_
                                                     _%make-loop144428%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp145414
                                                __tmp145413))))
                                        (let ((__tmp145418
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target144328%_)))
                                              (__tmp145415
                                               (if (zero? _%rlen144401%_)
                                                   _%body144430%_
                                                   (let ((__tmp145416
                                                          (let ((__tmp145417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target144328%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp145417 _%rlen144401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp145416
                                                      _%body144430%_
                                                      _%E144329%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp145418
                                           __tmp145415
                                           _%E144329%_))))))))
                          (if (pair? _%body144384144391%_)
                              (let ((_%hd144388144449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body144384144391%_)))
                                    (_%tl144389144451%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body144384144391%_))))
                                (let* ((_%hd144454%_ _%hd144388144449%_)
                                       (_%tl144456%_ _%tl144389144451%_))
                                  (_%K144387144446%_
                                   _%tl144456%_
                                   _%hd144454%_)))
                              (_%E144386144395%_)))
                        (if (eq? 'null _%$e144348%_)
                            (let ((__tmp145420
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target144328%_)))
                                  (__tmp145419 (_%k144330%_ _%vars144327%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp145420
                               __tmp145419
                               _%E144329%_))
                            (if (eq? 'vector _%$e144348%_)
                                (let ((_%$e144458%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp145425
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target144328%_)))
                                        (__tmp145421
                                         (let ((__tmp145423
                                                (cons (cons (cons _%$e144458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp145424
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e144042%_
                                    _%target144328%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp145424))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp145422
                                                (_%recur144235%_
                                                 _%body144345%_
                                                 _%vars144327%_
                                                 _%$e144458%_
                                                 _%E144329%_
                                                 _%k144330%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp145423
                                            __tmp145422))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp145425
                                     __tmp145421
                                     _%E144329%_)))
                                (if (eq? 'box _%$e144348%_)
                                    (let ((_%$e144460%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp145430
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target144328%_)))
                                            (__tmp145426
                                             (let ((__tmp145428
                                                    (cons (cons (cons _%$e144460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp145429
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e144042%_
                                        _%target144328%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp145429))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp145427
                                                    (_%recur144235%_
                                                     _%body144345%_
                                                     _%vars144327%_
                                                     _%$e144460%_
                                                     _%E144329%_
                                                     _%k144330%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp145428
                                                __tmp145427))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp145430
                                         __tmp145426
                                         _%E144329%_)))
                                    (if (eq? 'datum _%$e144348%_)
                                        (let ((_%$e144462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp145436
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target144328%_)))
                                                (__tmp145431
                                                 (let ((__tmp145435
                                                        (cons (cons (cons _%$e144462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target144328%_))
                                  '()))
                      '()))
               (__tmp145432
                (let ((__tmp145434
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e144462%_ _%body144345%_)))
                      (__tmp145433 (_%k144330%_ _%vars144327%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp145434 __tmp145433 _%E144329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp145435
                                                    __tmp145432))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp145436
                                             __tmp145431
                                             _%E144329%_)))
                                        (_%BUG144234%_
                                         _%e144326%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e144331144338%_)
                                      (let ((_%hd144335144467%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144331144338%_)))
                                            (_%tl144336144469%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144331144338%_))))
                                        (let* ((_%tag144472%_
                                                _%hd144335144467%_)
                                               (_%body144474%_
                                                _%tl144336144469%_))
                                          (_%K144334144464%_
                                           _%body144474%_
                                           _%tag144472%_)))
                                      (_%E144333144342%_)))))
                             (_%splice-rlen144236%_
                              (lambda (_%e144288%_)
                                (let _%lp144290%_ ((_%e144292%_ _%e144288%_)
                                                   (_%n144293%_ '0))
                                  (let* ((_%e144294144301%_ _%e144292%_)
                                         (_%E144296144305%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e144294144301%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K144297144314%_
                                          (lambda (_%body144308%_
                                                   _%tag144309%_)
                                            (let ((_%$e144311%_ _%tag144309%_))
                                              (if (eq? 'splice _%$e144311%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx144040%_
                                                     _%where144227%_))
                                                  (if (eq? 'cons _%$e144311%_)
                                                      (_%lp144290%_
                                                       (cdr _%body144308%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n144293%_
                                                                '1)))
                                                      _%n144293%_))))))
                                    (if (pair? _%e144294144301%_)
                                        (let ((_%hd144298144317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144294144301%_)))
                                              (_%tl144299144319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144294144301%_))))
                                          (let* ((_%tag144322%_
                                                  _%hd144298144317%_)
                                                 (_%body144324%_
                                                  _%tl144299144319%_))
                                            (_%K144297144314%_
                                             _%body144324%_
                                             _%tag144322%_)))
                                        (_%E144296144305%_))))))
                             (_%splice-vars144237%_
                              (lambda (_%e144244%_)
                                (let _%recur144246%_ ((_%e144248%_ _%e144244%_)
                                                      (_%vars144249%_ '()))
                                  (let* ((_%e144250144257%_ _%e144248%_)
                                         (_%E144252144261%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e144250144257%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K144253144276%_
                                          (lambda (_%body144264%_
                                                   _%tag144265%_)
                                            (let ((_%$e144267%_ _%tag144265%_))
                                              (if (eq? 'var _%$e144267%_)
                                                  (cons _%body144264%_
                                                        _%vars144249%_)
                                                  (if (or (eq? 'cons
                                                               _%$e144267%_)
                                                          (eq? 'splice
                                                               _%$e144267%_))
                                                      (_%recur144246%_
                                                       (cdr _%body144264%_)
                                                       (_%recur144246%_
                                                        (car _%body144264%_)
                                                        _%vars144249%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e144267%_)
                      (eq? 'box _%$e144267%_))
                  (_%recur144246%_ _%body144264%_ _%vars144249%_)
                  _%vars144249%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e144250144257%_)
                                        (let ((_%hd144254144279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144250144257%_)))
                                              (_%tl144255144281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144250144257%_))))
                                          (let* ((_%tag144284%_
                                                  _%hd144254144279%_)
                                                 (_%body144286%_
                                                  _%tl144255144281%_))
                                            (_%K144253144276%_
                                             _%body144286%_
                                             _%tag144284%_)))
                                        (_%E144252144261%_))))))
                             (_%make-body144238%_
                              (lambda (_%vars144240%_)
                                (cons _%K144231%_
                                      (map (lambda (_%mvar144242%_)
                                             (let ((__tmp145437
                                                    (car _%mvar144242%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp145437
                                                _%vars144240%_
                                                _%BUG144234%_)))
                                           _%mvars144230%_)))))
                      (_%recur144235%_
                       _%hd144229%_
                       '()
                       _%target144228%_
                       _%E144232%_
                       _%make-body144238%_))))
                 (_%parse-clause144049%_
                  (lambda (_%hd144121%_ _%ids144122%_)
                    (let _%recur144124%_ ((_%e144126%_ _%hd144121%_)
                                          (_%vars144127%_ '())
                                          (_%depth144128%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e144126%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e144126%_))
                              (values '(any) _%vars144127%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e144126%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx144040%_
                                     _%hd144121%_))
                                  (if (let ((__tmp145438
                                             (lambda (_%id144133%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e144126%_
                                                  _%id144133%_)))))
                                        (declare (not safe))
                                        (__find __tmp145438 _%ids144122%_))
                                      (values (cons 'id _%e144126%_)
                                              _%vars144127%_)
                                      (if (let ((__tmp145439
                                                 (lambda (_%var144136%_)
                                                   (let ((__tmp145440
                                                          (car _%var144136%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e144126%_
                                                      __tmp145440)))))
                                            (declare (not safe))
                                            (__find __tmp145439
                                                    _%vars144127%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx144040%_
                                             _%e144126%_))
                                          (values (cons 'var _%e144126%_)
                                                  (cons (cons _%e144126%_
                                                              _%depth144128%_)
                                                        _%vars144127%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e144126%_))
                              (let* ((_%e144140144147%_ _%e144126%_)
                                     (_%E144142144151%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e144140144147%_))))
                                     (_%E144141144212%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e144140144147%_))
                                            (let ((_%e144143144155%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e144140144147%_))))
                                              (let ((_%hd144144144158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144143144155%_)))
                                                    (_%tl144145144160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144143144155%_))))
                                                (let* ((_%hd144163%_
                                                        _%hd144144144158%_)
                                                       (_%rest144165%_
                                                        _%tl144145144160%_)
                                                       (_%make-pair144180%_
                                                        (lambda (_%tag144167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd144168%_
                         _%tl144169%_)
                  (let* ((_%hd-depth144171%_
                          (if (eq? _%tag144167%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth144128%_ '1))
                              _%depth144128%_))
                         (_g145441_
                          (_%recur144124%_
                           _%hd144168%_
                           _%vars144127%_
                           _%hd-depth144171%_)))
                    (begin
                      (let ((_g145442_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g145441_)
                                   (##values-length _g145441_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g145442_ 2)))
                            (error "Context expects 2 values" _g145442_)))
                      (let ((_%hd144173%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g145441_ 0)))
                            (_%vars144174%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g145441_ 1))))
                        (let ((_g145443_
                               (_%recur144124%_
                                _%tl144169%_
                                _%vars144174%_
                                _%depth144128%_)))
                          (begin
                            (let ((_g145444_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g145443_)
                                         (##values-length _g145443_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g145444_ 2)))
                                  (error "Context expects 2 values"
                                         _g145444_)))
                            (let ((_%tl144176%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g145443_ 0)))
                                  (_%vars144177%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g145443_ 1))))
                              (values (cons _%tag144167%_
                                            (cons _%hd144173%_ _%tl144176%_))
                                      _%vars144177%_)))))))))
               (_%e144181144188%_ _%rest144165%_)
               (_%E144183144192%_
                (lambda ()
                  (_%make-pair144180%_ 'cons _%hd144163%_ _%rest144165%_)))
               (_%E144182144208%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e144181144188%_))
                      (let ((_%e144184144196%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e144181144188%_))))
                        (let ((_%hd144185144199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144184144196%_)))
                              (_%tl144186144201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144184144196%_))))
                          (let* ((_%rest-hd144204%_ _%hd144185144199%_)
                                 (_%rest-tl144206%_ _%tl144186144201%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd144204%_))
                                (_%make-pair144180%_
                                 'splice
                                 _%hd144163%_
                                 _%rest-tl144206%_)
                                (_%make-pair144180%_
                                 'cons
                                 _%hd144163%_
                                 _%rest144165%_)))))
                      (_%E144183144192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E144182144208%_))))
                                            (_%E144142144151%_)))))
                                (_%E144141144212%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e144126%_))
                                  (values '(null) _%vars144127%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e144126%_))
                                      (let ((_g145445_
                                             (_%recur144124%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e144126%_)))
                                              _%vars144127%_
                                              _%depth144128%_)))
                                        (begin
                                          (let ((_g145446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145445_)
                                                       (##values-length
                                                        _g145445_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145446_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145446_)))
                                          (let ((_%e144218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145445_ 0)))
                                                (_%vars144219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145445_
                                                    1))))
                                            (values (cons 'vector _%e144218%_)
                                                    _%vars144219%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e144126%_))
                                          (let ((_g145447_
                                                 (_%recur144124%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e144126%_)))
                                                  _%vars144127%_
                                                  _%depth144128%_)))
                                            (begin
                                              (let ((_g145448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g145447_)
                                                           (##values-length
                                                            _g145447_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g145448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g145448_)))
                                              (let ((_%e144222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g145447_
                                                        0)))
                                                    (_%vars144223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g145447_
                                                        1))))
                                                (values (cons 'box _%e144222%_)
                                                        _%vars144223%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e144126%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e144126%_)))
                                                      _%vars144127%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx144040%_
                                                 _%e144126%_))))))))))))
          (let* ((_%e144050144063%_ _%stx144040%_)
                 (_%E144052144067%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e144050144063%_))))
                 (_%E144051144117%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e144050144063%_))
                        (let ((_%e144053144071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e144050144063%_))))
                          (let ((_%hd144054144074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144053144071%_)))
                                (_%tl144055144076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144053144071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144055144076%_))
                                (let ((_%e144056144079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl144055144076%_))))
                                  (let ((_%hd144057144082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144056144079%_)))
                                        (_%tl144058144084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144056144079%_))))
                                    (let ((_%expr144087%_ _%hd144057144082%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144058144084%_))
                                          (let ((_%e144059144089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl144058144084%_))))
                                            (let ((_%hd144060144092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144059144089%_)))
                                                  (_%tl144061144094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144059144089%_))))
                                              (let* ((_%ids144097%_
                                                      _%hd144060144092%_)
                                                     (_%clauses144099%_
                                                      _%tl144061144094%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids144097%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses144099%_))
                                                        (let* ((_%ids144104%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids144097%_)))
                       (_%clauses144106%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses144099%_)))
                       (_%clause-ids144108%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses144106%_)))
                       (_%E144110%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target144112%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first144114%_
                        (if (null? _%clauses144106%_)
                            _%E144110%_
                            (car _%clause-ids144108%_))))
                  (let ((__tmp145450
                         (let ((__tmp145451
                                (let ((__tmp145453
                                       (let ((__tmp145455
                                              (cons (cons (cons _%E144110%_
                                                                '())
                                                          (cons (let ((__tmp145457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target144112%_ '()))
                              (__tmp145456
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target144112%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp145457 __tmp145456))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp145454
                                              (_%generate-body144046%_
                                               (_%generate-bindings144045%_
                                                _%target144112%_
                                                _%ids144104%_
                                                _%clauses144106%_
                                                _%clause-ids144108%_
                                                _%E144110%_)
                                               (cons _%first144114%_
                                                     (cons _%expr144087%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp145455
                                          __tmp145454)))
                                      (__tmp145452
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx144040%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp145453
                                   __tmp145452))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp145451)))
                        (__tmp145449
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx144040%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp145450 __tmp145449)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx144040%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx144040%_
                                                       _%ids144097%_))))))
                                          (_%E144052144067%_)))))
                                (_%E144052144067%_))))
                        (_%E144052144067%_)))))
            (_%E144051144117%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx144765%_)
        (let* ((_%identifier=?144767%_ 'free-identifier=?)
               (_%unwrap-e144769%_ 'syntax-e)
               (_%wrap-e144771%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144765%_
           _%identifier=?144767%_
           _%unwrap-e144769%_
           _%wrap-e144771%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx144773%_ _%identifier=?144774%_)
        (let* ((_%unwrap-e144776%_ 'syntax-e) (_%wrap-e144778%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144773%_
           _%identifier=?144774%_
           _%unwrap-e144776%_
           _%wrap-e144778%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx144780%_ _%identifier=?144781%_ _%unwrap-e144782%_)
        (let ((_%wrap-e144784%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144780%_
           _%identifier=?144781%_
           _%unwrap-e144782%_
           _%wrap-e144784%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g145458_
        (let ((_g145459_ (let () (declare (not safe)) (##length _g145458_))))
          (cond ((let () (declare (not safe)) (##fx= _g145459_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g145458_))
                ((let () (declare (not safe)) (##fx= _g145459_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g145458_))
                ((let () (declare (not safe)) (##fx= _g145459_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g145458_))
                ((let () (declare (not safe)) (##fx= _g145459_ 4))
                 (apply gx#macro-expand-syntax-case__% _g145458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g145458_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx144037%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx144037%_))
            (let ((__tmp145460
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx144037%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp145460 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd143995%_ . _%rest143996%_)
        (let ((_%len143998%_ (length _%hd143995%_)))
          (let _%lp144000%_ ((_%rest144002%_ _%rest143996%_))
            (let* ((_%rest144003144011%_ _%rest144002%_)
                   (_%else144005144019%_ (lambda () '#!void))
                   (_%K144007144025%_
                    (lambda (_%rest144022%_ _%hd144023%_)
                      (if (let ((__tmp145461 (length _%hd144023%_)))
                            (declare (not safe))
                            (##fx= _%len143998%_ __tmp145461))
                          (_%lp144000%_ _%rest144022%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd144023%_))))))
              (if (pair? _%rest144003144011%_)
                  (let ((_%hd144008144028%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144003144011%_)))
                        (_%tl144009144030%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144003144011%_))))
                    (let* ((_%hd144033%_ _%hd144008144028%_)
                           (_%rest144035%_ _%tl144009144030%_))
                      (_%K144007144025%_ _%rest144035%_ _%hd144033%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx143945%_ _%n143946%_)
        (let _%lp143948%_ ((_%rest143951%_ _%stx143945%_) (_%r143953%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143951%_))
              (let* ((_%g143955143962%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143951%_)))
                     (_%E143957143966%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143955143962%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143958143973%_
                      (lambda (_%rest143969%_ _%hd143970%_)
                        (_%lp143948%_
                         _%rest143969%_
                         (cons _%hd143970%_ _%r143953%_)))))
                (if (pair? _%g143955143962%_)
                    (let ((_%hd143959143976%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143955143962%_)))
                          (_%tl143960143978%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143955143962%_))))
                      (let* ((_%hd143981%_ _%hd143959143976%_)
                             (_%rest143983%_ _%tl143960143978%_))
                        (_%K143958143973%_ _%rest143983%_ _%hd143981%_)))
                    (_%E143957143966%_)))
              (let _%lp143985%_ ((_%n143987%_ _%n143946%_)
                                 (_%l143988%_ _%r143953%_)
                                 (_%r143990%_ _%rest143951%_))
                (if (null? _%l143988%_)
                    (values _%l143988%_ _%r143990%_)
                    (if (fxpositive? _%n143987%_)
                        (_%lp143985%_
                         (let () (declare (not safe)) (##fx- _%n143987%_ '1))
                         (cdr _%l143988%_)
                         (cons (car _%l143988%_) _%r143990%_))
                        (values (reverse! _%l143988%_) _%r143990%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx143895%_ _%n143896%_)
        (let _%lp143898%_ ((_%rest143901%_ _%stx143895%_) (_%r143903%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143901%_))
              (let* ((_%g143905143912%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143901%_)))
                     (_%E143907143916%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143905143912%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143908143923%_
                      (lambda (_%rest143919%_ _%hd143920%_)
                        (_%lp143898%_
                         _%rest143919%_
                         (cons _%hd143920%_ _%r143903%_)))))
                (if (pair? _%g143905143912%_)
                    (let ((_%hd143909143926%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143905143912%_)))
                          (_%tl143910143928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143905143912%_))))
                      (let* ((_%hd143931%_ _%hd143909143926%_)
                             (_%rest143933%_ _%tl143910143928%_))
                        (_%K143908143923%_ _%rest143933%_ _%hd143931%_)))
                    (_%E143907143916%_)))
              (let _%lp143935%_ ((_%n143937%_ _%n143896%_)
                                 (_%l143938%_ _%r143903%_)
                                 (_%r143940%_ _%rest143901%_))
                (if (null? _%l143938%_)
                    (vector _%l143938%_ _%r143940%_)
                    (if (fxpositive? _%n143937%_)
                        (_%lp143935%_
                         (let () (declare (not safe)) (##fx- _%n143937%_ '1))
                         (cdr _%l143938%_)
                         (cons (car _%l143938%_) _%r143940%_))
                        (vector (reverse! _%l143938%_) _%r143940%_))))))))))
