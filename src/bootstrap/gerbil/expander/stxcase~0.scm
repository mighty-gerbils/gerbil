(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1756142920)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp140190 (list gx#expander::t))
            (__tmp140189 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp140190
         '(id depth)
         __tmp140189
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args140186%_
        (apply make-instance gx#syntax-pattern::t _%$args140186%_)))
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
      (lambda (_%self140172%_ _%stx140173%_)
        (let ((_%self140176%_ _%self140172%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx140173%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx139639%_)
        (letrec ((_%generate139641%_
                  (lambda (_%e139881%_)
                    (letrec ((_%BUG139883%_
                              (lambda (_%q140048%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx139639%_
                                         _%e139881%_
                                         _%q140048%_))))
                             (_%local-pattern-e139884%_
                              (lambda (_%pat140046%_)
                                (let ((__tmp140191
                                       (##structure-ref
                                        _%pat140046%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp140191))))
                             (_%getvar139885%_
                              (lambda (_%q140043%_ _%vars140044%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q140043%_
                                   _%vars140044%_
                                   _%BUG139883%_))))
                             (_%getarg139886%_
                              (lambda (_%arg140009%_ _%vars140010%_)
                                (let* ((_%arg140011140018%_ _%arg140009%_)
                                       (_%E140013140022%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg140011140018%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K140014140031%_
                                        (lambda (_%e140025%_ _%tag140026%_)
                                          (let ((_%$e140028%_ _%tag140026%_))
                                            (if (eq? 'ref _%$e140028%_)
                                                (_%getvar139885%_
                                                 _%e140025%_
                                                 _%vars140010%_)
                                                (if (eq? 'pattern _%$e140028%_)
                                                    (_%local-pattern-e139884%_
                                                     _%e140025%_)
                                                    (_%BUG139883%_
                                                     _%arg140009%_)))))))
                                  (if (pair? _%arg140011140018%_)
                                      (let ((_%hd140015140034%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg140011140018%_)))
                                            (_%tl140016140036%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg140011140018%_))))
                                        (let* ((_%tag140039%_
                                                _%hd140015140034%_)
                                               (_%e140041%_
                                                _%tl140016140036%_))
                                          (_%K140014140031%_
                                           _%e140041%_
                                           _%tag140039%_)))
                                      (_%E140013140022%_))))))
                      (let _%recur139888%_ ((_%e139890%_ _%e139881%_)
                                            (_%vars139891%_ '()))
                        (let* ((_%e139892139899%_ _%e139890%_)
                               (_%E139894139903%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e139892139899%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K139895139997%_
                                (lambda (_%body139906%_ _%tag139907%_)
                                  (let ((_%$e139909%_ _%tag139907%_))
                                    (if (eq? 'datum _%$e139909%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body139906%_))
                                        (if (eq? 'term _%$e139909%_)
                                            (let ((_%id139912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body139906%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id139912%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks139915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id139912%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks139915%_)
                                                        (let ((__tmp140192
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body139906%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp140192))
                (let ((__tmp140194
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body139906%_)))
                      (__tmp140193
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body139906%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp140194
                   __tmp140193
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id139912%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body139906%_))
                                                      (_%BUG139883%_
                                                       _%e139890%_))))
                                            (if (eq? 'pattern _%$e139909%_)
                                                (_%local-pattern-e139884%_
                                                 _%body139906%_)
                                                (if (eq? 'ref _%$e139909%_)
                                                    (_%getvar139885%_
                                                     _%body139906%_
                                                     _%vars139891%_)
                                                    (if (eq? 'cons
                                                             _%$e139909%_)
                                                        (let ((__tmp140196
                                                               (_%recur139888%_
                                                                (car _%body139906%_)
                                                                _%vars139891%_))
                                                              (__tmp140195
                                                               (_%recur139888%_
                                                                (cdr _%body139906%_)
                                                                _%vars139891%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp140196
                                                           __tmp140195))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e139909%_)
                    (let ((__tmp140197
                           (_%recur139888%_ _%body139906%_ _%vars139891%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp140197))
                    (if (eq? 'box _%$e139909%_)
                        (let ((__tmp140198
                               (_%recur139888%_
                                _%body139906%_
                                _%vars139891%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp140198))
                        (if (eq? 'splice _%$e139909%_)
                            (let* ((_%body139918139929%_ _%body139906%_)
                                   (_%E139920139933%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body139918139929%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K139921139971%_
                                    (lambda (_%args139936%_
                                             _%iv139937%_
                                             _%hd139938%_
                                             _%depth139939%_)
                                      (let* ((_%targets139945%_
                                              (map (lambda (_%g139940139942%_)
                                                     (_%getarg139886%_
                                                      _%g139940139942%_
                                                      _%vars139891%_))
                                                   _%args139936%_))
                                             (_%fold-in139947%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args139936%_)))
                                             (_%fold-out139949%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args139951%_
                                              (let ((__tmp140199
                                                     (cons _%fold-out139949%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp140199
                                                 _%fold-in139947%_)))
                                             (_%lambda-body139968%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth139939%_ '1))
                                                  (let ((_%r-args139959%_
                                                         (map (lambda (_%arg139953%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg139953%_)))
                      _%args139936%_))
                (_%r-vars139960%_
                 (let ((__tmp140200
                        (lambda (_%arg139955%_ _%var139956%_ _%r139957%_)
                          (cons (cons (cdr _%arg139955%_) _%var139956%_)
                                _%r139957%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp140200
                    _%vars139891%_
                    _%args139936%_
                    _%fold-in139947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur139888%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth139939%_ '1))
                         (cons _%hd139938%_
                               (cons (cons 'var _%fold-out139949%_)
                                     _%r-args139959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars139960%_))
                                                  (let* ((_%hd-vars139966%_
                                                          (let ((__tmp140201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg139962%_ _%var139963%_ _%r139964%_)
                           (cons (cons (cdr _%arg139962%_) _%var139963%_)
                                 _%r139964%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp140201
                     _%vars139891%_
                     _%args139936%_
                     _%fold-in139947%_)))
                 (__tmp140202
                  (_%recur139888%_ _%hd139938%_ _%hd-vars139966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp140202
                                                     _%fold-out139949%_)))))
                                        (let ((__tmp140206
                                               (if (let ((__tmp140207
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets139945%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp140207 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets139945%_))
                                                   '#!void))
                                              (__tmp140203
                                               (let ((__tmp140205
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args139951%_
                                                         _%lambda-body139968%_)))
                                                     (__tmp140204
                                                      (_%recur139888%_
                                                       _%iv139937%_
                                                       _%vars139891%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp140205
                                                  __tmp140204
                                                  _%targets139945%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp140206
                                           __tmp140203))))))
                              (if (pair? _%body139918139929%_)
                                  (let ((_%hd139922139974%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body139918139929%_)))
                                        (_%tl139923139976%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body139918139929%_))))
                                    (let ((_%depth139979%_ _%hd139922139974%_))
                                      (if (pair? _%tl139923139976%_)
                                          (let ((_%hd139924139981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl139923139976%_)))
                                                (_%tl139925139983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139923139976%_))))
                                            (let ((_%hd139986%_
                                                   _%hd139924139981%_))
                                              (if (pair? _%tl139925139983%_)
                                                  (let ((_%hd139926139988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl139925139983%_)))
                                                        (_%tl139927139990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl139925139983%_))))
                                                    (let* ((_%iv139993%_
                                                            _%hd139926139988%_)
                                                           (_%args139995%_
                                                            _%tl139927139990%_))
                                                      (_%K139921139971%_
                                                       _%args139995%_
                                                       _%iv139993%_
                                                       _%hd139986%_
                                                       _%depth139979%_)))
                                                  (_%E139920139933%_))))
                                          (_%E139920139933%_))))
                                  (_%E139920139933%_)))
                            (if (eq? 'var _%$e139909%_)
                                _%body139906%_
                                (_%BUG139883%_ _%e139890%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e139892139899%_)
                              (let ((_%hd139896140000%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139892139899%_)))
                                    (_%tl139897140002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139892139899%_))))
                                (let* ((_%tag140005%_ _%hd139896140000%_)
                                       (_%body140007%_ _%tl139897140002%_))
                                  (_%K139895139997%_
                                   _%body140007%_
                                   _%tag140005%_)))
                              (_%E139894139903%_)))))))
                 (_%parse139642%_
                  (lambda (_%e139683%_)
                    (letrec ((_%make-cons139685%_
                              (lambda (_%hd139873%_ _%tl139874%_)
                                (let ((_g140208_ _%hd139873%_)
                                      (_g140210_ _%tl139874%_))
                                  (begin
                                    (let ((_g140209_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g140208_)
                                                 (##values-length _g140208_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g140209_ 2)))
                                          (error "Context expects 2 values"
                                                 _g140209_)))
                                    (let ((_g140211_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g140210_)
                                                 (##values-length _g140210_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g140211_ 2)))
                                          (error "Context expects 2 values"
                                                 _g140211_)))
                                    (let ((_%hd-e139876%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g140208_ 0)))
                                          (_%hd-vars139877%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g140208_ 1))))
                                      (let ((_%tl-e139878%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g140210_ 0)))
                                            (_%tl-vars139879%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g140210_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e139876%_
                                                            _%tl-e139878%_))
                                                (append _%hd-vars139877%_
                                                        _%tl-vars139879%_))))))))
                             (_%make-splice139686%_
                              (lambda (_%where139809%_
                                       _%depth139810%_
                                       _%hd139811%_
                                       _%tl139812%_)
                                (let ((_g140212_ _%hd139811%_)
                                      (_g140214_ _%tl139812%_))
                                  (begin
                                    (let ((_g140213_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g140212_)
                                                 (##values-length _g140212_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g140213_ 2)))
                                          (error "Context expects 2 values"
                                                 _g140213_)))
                                    (let ((_g140215_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g140214_)
                                                 (##values-length _g140214_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g140215_ 2)))
                                          (error "Context expects 2 values"
                                                 _g140215_)))
                                    (let ((_%hd-e139814%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g140212_ 0)))
                                          (_%hd-vars139815%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g140212_ 1))))
                                      (let ((_%tl-e139816%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g140214_ 0)))
                                            (_%tl-vars139817%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g140214_ 1))))
                                        (let _%lp139819%_ ((_%rest139821%_
                                                            _%hd-vars139815%_)
                                                           (_%targets139822%_
                                                            '())
                                                           (_%vars139823%_
                                                            _%tl-vars139817%_))
                                          (let* ((_%rest139824139834%_
                                                  _%rest139821%_)
                                                 (_%else139826139842%_
                                                  (lambda ()
                                                    (if (null? _%targets139822%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx139639%_
                                                           _%where139809%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth139810%_
                                    (cons _%hd-e139814%_
                                          (cons _%tl-e139816%_
                                                _%targets139822%_))))
                        _%vars139823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K139828139854%_
                                                  (lambda (_%rest139845%_
                                                           _%hd-pat139846%_
                                                           _%hd-depth*139847%_)
                                                    (let ((_%hd-depth139849%_
                                                           (fx- _%hd-depth*139847%_
                                                                _%depth139810%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth139849%_))
                                                          (_%lp139819%_
                                                           _%rest139845%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat139846%_)
                         _%targets139822%_)
                   (cons (cons _%hd-depth139849%_ _%hd-pat139846%_)
                         _%vars139823%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth139849%_))
                      (_%lp139819%_
                       _%rest139845%_
                       (cons (cons 'pattern _%hd-pat139846%_)
                             _%targets139822%_)
                       _%vars139823%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx139639%_
                         _%where139809%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest139824139834%_)
                                                (let ((_%hd139829139857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest139824139834%_)))
                                                      (_%tl139830139859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest139824139834%_))))
                                                  (if (pair? _%hd139829139857%_)
                                                      (let ((_%hd139831139862%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd139829139857%_)))
                    (_%tl139832139864%_
                     (let () (declare (not safe)) (##cdr _%hd139829139857%_))))
                (let* ((_%hd-depth*139867%_ _%hd139831139862%_)
                       (_%hd-pat139869%_ _%tl139832139864%_)
                       (_%rest139871%_ _%tl139830139859%_))
                  (_%K139828139854%_
                   _%rest139871%_
                   _%hd-pat139869%_
                   _%hd-depth*139867%_)))
              (_%else139826139842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else139826139842%_))))))))))
                             (_%recur139687%_
                              (lambda (_%e139692%_ _%is-e?139693%_)
                                (if (_%is-e?139693%_ _%e139692%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx139639%_))
                                    (if (gx#syntax-local-pattern? _%e139692%_)
                                        (let* ((_%pat139697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e139692%_)))
                                               (_%depth139699%_
                                                (##structure-ref
                                                 _%pat139697%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth139699%_)
                                              (values (cons 'ref _%pat139697%_)
                                                      (cons (cons _%depth139699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat139697%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat139697%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e139692%_))
                                            (values (cons 'term _%e139692%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e139692%_))
                                                (let* ((_%e139703139710%_
                                                        _%e139692%_)
                                                       (_%E139705139714%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e139703139710%_))))
                                                       (_%E139704139796%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e139703139710%_))
                      (let ((_%e139706139718%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e139703139710%_))))
                        (let ((_%hd139707139721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139706139718%_)))
                              (_%tl139708139723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139706139718%_))))
                          (let* ((_%hd139726%_ _%hd139707139721%_)
                                 (_%rest139728%_ _%tl139708139723%_))
                            (if (_%is-e?139693%_ _%hd139726%_)
                                (let* ((_%e139729139736%_ _%rest139728%_)
                                       (_%E139731139740%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx139639%_
                                             _%e139692%_))))
                                       (_%E139730139754%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e139729139736%_))
                                              (let ((_%e139732139744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e139729139736%_))))
                                                (let ((_%hd139733139747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139732139744%_)))
                                                      (_%tl139734139749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139732139744%_))))
                                                  (let ((_%rest139752%_
                                                         _%hd139733139747%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139734139749%_))
                                                        (_%recur139687%_
                                                         _%rest139752%_
                                                         false)
                                                        (_%E139731139740%_)))))
                                              (_%E139731139740%_)))))
                                  (_%E139730139754%_))
                                (let _%lp139758%_ ((_%rest139760%_
                                                    _%rest139728%_)
                                                   (_%depth139761%_ '0))
                                  (let* ((_%e139762139769%_ _%rest139760%_)
                                         (_%E139764139773%_
                                          (lambda ()
                                            (if (fxpositive? _%depth139761%_)
                                                (_%make-splice139686%_
                                                 _%e139692%_
                                                 _%depth139761%_
                                                 (_%recur139687%_
                                                  _%hd139726%_
                                                  _%is-e?139693%_)
                                                 (_%recur139687%_
                                                  _%rest139760%_
                                                  _%is-e?139693%_))
                                                (_%make-cons139685%_
                                                 (_%recur139687%_
                                                  _%hd139726%_
                                                  _%is-e?139693%_)
                                                 (_%recur139687%_
                                                  _%rest139760%_
                                                  _%is-e?139693%_)))))
                                         (_%E139763139792%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e139762139769%_))
                                                (let ((_%e139765139777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e139762139769%_))))
                                                  (let ((_%hd139766139780%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139765139777%_)))
                                                        (_%tl139767139782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139765139777%_))))
                                                    (let* ((_%rest-hd139785%_
                                                            _%hd139766139780%_)
                                                           (_%rest-tl139787%_
                                                            _%tl139767139782%_))
                                                      (if (_%is-e?139693%_
                                                           _%rest-hd139785%_)
                                                          (_%lp139758%_
                                                           _%rest-tl139787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth139761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth139761%_)
                      (_%make-splice139686%_
                       _%e139692%_
                       _%depth139761%_
                       (_%recur139687%_ _%hd139726%_ _%is-e?139693%_)
                       (_%recur139687%_ _%rest139760%_ _%is-e?139693%_))
                      (_%make-cons139685%_
                       (_%recur139687%_ _%hd139726%_ _%is-e?139693%_)
                       (_%recur139687%_ _%rest139760%_ _%is-e?139693%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E139764139773%_)))))
                                    (_%E139763139792%_)))))))
                      (_%E139705139714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E139704139796%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e139692%_))
                                                    (let ((_g140216_
                                                           (_%recur139687%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e139692%_)))
                    _%is-e?139693%_)))
              (begin
                (let ((_g140217_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g140216_)
                             (##values-length _g140216_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g140217_ 2)))
                      (error "Context expects 2 values" _g140217_)))
                (let ((_%e139801%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g140216_ 0)))
                      (_%vars139802%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g140216_ 1))))
                  (values (cons 'vector _%e139801%_) _%vars139802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e139692%_))
                                                        (let ((_g140218_
                                                               (_%recur139687%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e139692%_)))
                        _%is-e?139693%_)))
                  (begin
                    (let ((_g140219_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g140218_)
                                 (##values-length _g140218_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g140219_ 2)))
                          (error "Context expects 2 values" _g140219_)))
                    (let ((_%e139805%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140218_ 0)))
                          (_%vars139806%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140218_ 1))))
                      (values (cons 'box _%e139805%_) _%vars139806%_))))
                (values (cons 'datum _%e139692%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g140220_
                             (_%recur139687%_ _%e139683%_ gx#ellipsis?)))
                        (begin
                          (let ((_g140221_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g140220_)
                                       (##values-length _g140220_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g140221_ 2)))
                                (error "Context expects 2 values" _g140221_)))
                          (let ((_%tree139689%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g140220_ 0)))
                                (_%vars139690%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g140220_ 1))))
                            (if (null? _%vars139690%_)
                                _%tree139689%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx139639%_
                                   _%vars139690%_))))))))))
          (let* ((_%e139643139653%_ _%stx139639%_)
                 (_%E139645139657%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx139639%_))))
                 (_%E139644139679%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e139643139653%_))
                        (let ((_%e139646139661%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e139643139653%_))))
                          (let ((_%hd139647139664%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139646139661%_)))
                                (_%tl139648139666%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139646139661%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139648139666%_))
                                (let ((_%e139649139669%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl139648139666%_))))
                                  (let ((_%hd139650139672%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139649139669%_)))
                                        (_%tl139651139674%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139649139669%_))))
                                    (let ((_%form139677%_ _%hd139650139672%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139651139674%_))
                                          (let ((__tmp140223
                                                 (_%generate139641%_
                                                  (_%parse139642%_
                                                   _%form139677%_)))
                                                (__tmp140222
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx139639%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp140223
                                             __tmp140222))
                                          (_%E139645139657%_)))))
                                (_%E139645139657%_))))
                        (_%E139645139657%_)))))
            (_%E139644139679%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx138888%_
               _%identifier=?138889%_
               _%unwrap-e138890%_
               _%wrap-e138891%_)
        (letrec ((_%generate-bindings138893%_
                  (lambda (_%target139503%_
                           _%ids139504%_
                           _%clauses139505%_
                           _%clause-ids139506%_
                           _%E139507%_)
                    (letrec ((_%generate1139509%_
                              (lambda (_%clause139606%_
                                       _%clause-id139607%_
                                       _%E139608%_)
                                (cons (cons _%clause-id139607%_ '())
                                      (cons (let ((__tmp140225
                                                   (cons _%target139503%_ '()))
                                                  (__tmp140224
                                                   (_%generate-clause138895%_
                                                    _%target139503%_
                                                    _%ids139504%_
                                                    _%clause139606%_
                                                    _%E139608%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp140225
                                               __tmp140224))
                                            '())))))
                      (let _%lp139511%_ ((_%rest139513%_ _%clauses139505%_)
                                         (_%rest-ids139514%_
                                          _%clause-ids139506%_)
                                         (_%bindings139515%_ '()))
                        (let* ((_%rest139516139524%_ _%rest139513%_)
                               (_%else139518139532%_
                                (lambda () _%bindings139515%_))
                               (_%K139520139594%_
                                (lambda (_%rest139535%_ _%clause139536%_)
                                  (let* ((_%rest-ids139537139544%_
                                          _%rest-ids139514%_)
                                         (_%E139539139548%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids139537139544%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K139540139582%_
                                          (lambda (_%rest-ids139551%_
                                                   _%clause-id139552%_)
                                            (let* ((_%rest-ids139553139561%_
                                                    _%rest-ids139551%_)
                                                   (_%else139555139569%_
                                                    (lambda ()
                                                      (cons (_%generate1139509%_
                                                             _%clause139536%_
                                                             _%clause-id139552%_
                                                             _%E139507%_)
                                                            _%bindings139515%_)))
                                                   (_%K139557139574%_
                                                    (lambda (_%next-clause-id139572%_)
                                                      (_%lp139511%_
                                                       _%rest139535%_
                                                       _%rest-ids139551%_
                                                       (cons (_%generate1139509%_
                                                              _%clause139536%_
                                                              _%clause-id139552%_
                                                              _%next-clause-id139572%_)
                                                             _%bindings139515%_)))))
                                              (if (pair? _%rest-ids139553139561%_)
                                                  (let* ((_%hd139558139577%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids139553139561%_)))
                                                         (_%next-clause-id139580%_
                                                          _%hd139558139577%_))
                                                    (_%K139557139574%_
                                                     _%next-clause-id139580%_))
                                                  (_%else139555139569%_))))))
                                    (if (pair? _%rest-ids139537139544%_)
                                        (let ((_%hd139541139585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids139537139544%_)))
                                              (_%tl139542139587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids139537139544%_))))
                                          (let* ((_%clause-id139590%_
                                                  _%hd139541139585%_)
                                                 (_%rest-ids139592%_
                                                  _%tl139542139587%_))
                                            (_%K139540139582%_
                                             _%rest-ids139592%_
                                             _%clause-id139590%_)))
                                        (_%E139539139548%_))))))
                          (if (pair? _%rest139516139524%_)
                              (let ((_%hd139521139597%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest139516139524%_)))
                                    (_%tl139522139599%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest139516139524%_))))
                                (let* ((_%clause139602%_ _%hd139521139597%_)
                                       (_%rest139604%_ _%tl139522139599%_))
                                  (_%K139520139594%_
                                   _%rest139604%_
                                   _%clause139602%_)))
                              (_%else139518139532%_)))))))
                 (_%generate-body138894%_
                  (lambda (_%bindings139463%_ _%body139464%_)
                    (let _%recur139466%_ ((_%rest139468%_ _%bindings139463%_))
                      (let* ((_%rest139469139477%_ _%rest139468%_)
                             (_%else139471139485%_ (lambda () _%body139464%_))
                             (_%K139473139491%_
                              (lambda (_%rest139488%_ _%hd139489%_)
                                (let ((__tmp140227 (cons _%hd139489%_ '()))
                                      (__tmp140226
                                       (_%recur139466%_ _%rest139488%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp140227
                                   __tmp140226)))))
                        (if (pair? _%rest139469139477%_)
                            (let ((_%hd139474139494%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139469139477%_)))
                                  (_%tl139475139496%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139469139477%_))))
                              (let* ((_%hd139499%_ _%hd139474139494%_)
                                     (_%rest139501%_ _%tl139475139496%_))
                                (_%K139473139491%_
                                 _%rest139501%_
                                 _%hd139499%_)))
                            (_%else139471139485%_))))))
                 (_%generate-clause138895%_
                  (lambda (_%target139326%_
                           _%ids139327%_
                           _%clause139328%_
                           _%E139329%_)
                    (letrec ((_%generate1139331%_
                              (lambda (_%hd139418%_
                                       _%fender139419%_
                                       _%body139420%_)
                                (let ((_g140228_
                                       (_%parse-clause138897%_
                                        _%hd139418%_
                                        _%ids139327%_)))
                                  (begin
                                    (let ((_g140229_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g140228_)
                                                 (##values-length _g140228_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g140229_ 2)))
                                          (error "Context expects 2 values"
                                                 _g140229_)))
                                    (let ((_%e139422%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g140228_ 0)))
                                          (_%mvars139423%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g140228_ 1))))
                                      (let* ((_%pvars139425%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars139423%_))))
                                             (_%E139427%_
                                              (cons _%E139329%_
                                                    (cons _%target139326%_
                                                          '())))
                                             (_%K139460%_
                                              (let ((__tmp140230
                                                     (let ((__tmp140232
                                                            (map (lambda (_%mvar139429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar139430%_)
                           (let* ((_%mvar139431139438%_ _%mvar139429%_)
                                  (_%E139433139442%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar139431139438%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K139434139448%_
                                   (lambda (_%depth139445%_ _%id139446%_)
                                     (cons _%id139446%_
                                           (cons (let ((__tmp140234
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id139446%_)))
                                                       (__tmp140233
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar139430%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp140234
                                                    __tmp140233
                                                    _%depth139445%_))
                                                 '())))))
                             (if (pair? _%mvar139431139438%_)
                                 (let ((_%hd139435139451%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar139431139438%_)))
                                       (_%tl139436139453%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar139431139438%_))))
                                   (let* ((_%id139456%_ _%hd139435139451%_)
                                          (_%depth139458%_ _%tl139436139453%_))
                                     (_%K139434139448%_
                                      _%depth139458%_
                                      _%id139456%_)))
                                 (_%E139433139442%_))))
                         _%mvars139423%_
                         _%pvars139425%_))
                   (__tmp140231
                    (if (eq? _%fender139419%_ '#t)
                        _%body139420%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender139419%_
                           _%body139420%_
                           _%E139427%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp140232 __tmp140231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars139425%_
                                                 __tmp140230))))
                                        (_%generate-match138896%_
                                         _%hd139418%_
                                         _%target139326%_
                                         _%e139422%_
                                         _%mvars139423%_
                                         _%K139460%_
                                         _%E139427%_))))))))
                      (let* ((_%e139332139352%_ _%clause139328%_)
                             (_%E139341139356%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e139332139352%_))))
                             (_%E139334139390%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e139332139352%_))
                                    (let ((_%e139342139360%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e139332139352%_))))
                                      (let ((_%hd139343139363%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e139342139360%_)))
                                            (_%tl139344139365%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e139342139360%_))))
                                        (let ((_%hd139368%_
                                               _%hd139343139363%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139344139365%_))
                                              (let ((_%e139345139370%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl139344139365%_))))
                                                (let ((_%hd139346139373%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139345139370%_)))
                                                      (_%tl139347139375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139345139370%_))))
                                                  (let ((_%fender139378%_
                                                         _%hd139346139373%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139347139375%_))
                                                        (let ((_%e139348139380%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl139347139375%_))))
                  (let ((_%hd139349139383%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139348139380%_)))
                        (_%tl139350139385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139348139380%_))))
                    (let ((_%body139388%_ _%hd139349139383%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl139350139385%_))
                          (_%generate1139331%_
                           _%hd139368%_
                           _%fender139378%_
                           _%body139388%_)
                          (_%E139341139356%_)))))
                (_%E139341139356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E139341139356%_)))))
                                    (_%E139341139356%_))))
                             (_%E139333139414%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e139332139352%_))
                                    (let ((_%e139335139394%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e139332139352%_))))
                                      (let ((_%hd139336139397%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e139335139394%_)))
                                            (_%tl139337139399%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e139335139394%_))))
                                        (let ((_%hd139402%_
                                               _%hd139336139397%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139337139399%_))
                                              (let ((_%e139338139404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl139337139399%_))))
                                                (let ((_%hd139339139407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139338139404%_)))
                                                      (_%tl139340139409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139338139404%_))))
                                                  (let ((_%body139412%_
                                                         _%hd139339139407%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139340139409%_))
                                                        (_%generate1139331%_
                                                         _%hd139402%_
                                                         '#t
                                                         _%body139412%_)
                                                        (_%E139334139390%_)))))
                                              (_%E139334139390%_)))))
                                    (_%E139334139390%_)))))
                        (_%E139333139414%_)))))
                 (_%generate-match138896%_
                  (lambda (_%where139075%_
                           _%target139076%_
                           _%hd139077%_
                           _%mvars139078%_
                           _%K139079%_
                           _%E139080%_)
                    (letrec ((_%BUG139082%_
                              (lambda (_%q139324%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx138888%_
                                         _%hd139077%_
                                         _%q139324%_))))
                             (_%recur139083%_
                              (lambda (_%e139174%_
                                       _%vars139175%_
                                       _%target139176%_
                                       _%E139177%_
                                       _%k139178%_)
                                (let* ((_%e139179139186%_ _%e139174%_)
                                       (_%E139181139190%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e139179139186%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K139182139312%_
                                        (lambda (_%body139193%_ _%tag139194%_)
                                          (let ((_%$e139196%_ _%tag139194%_))
                                            (if (eq? 'any _%$e139196%_)
                                                (_%k139178%_ _%vars139175%_)
                                                (if (eq? 'id _%$e139196%_)
                                                    (let ((__tmp140239
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target139176%_)))
                                                          (__tmp140235
                                                           (let ((__tmp140237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp140238
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e138891%_
                                    _%body139193%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?138889%_
                             __tmp140238
                             _%target139176%_)))
                         (__tmp140236 (_%k139178%_ _%vars139175%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp140237 __tmp140236 _%E139177%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp140239 __tmp140235 _%E139177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e139196%_)
                                                        (_%k139178%_
                                                         (cons (cons _%body139193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target139176%_)
                       _%vars139175%_))
                (if (eq? 'cons _%$e139196%_)
                    (let ((_%$e139199%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd139200%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl139201%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp140245
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target139176%_)))
                            (__tmp140240
                             (let ((__tmp140244
                                    (cons (cons (cons _%$e139199%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e138890%_
                                                         _%target139176%_))
                                                      '()))
                                          '()))
                                   (__tmp140241
                                    (let ((__tmp140243
                                           (cons (cons (cons _%$hd139200%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e139199%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl139201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e139199%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp140242
                                           (let* ((_%body139202139209%_
                                                   _%body139193%_)
                                                  (_%E139204139213%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body139202139209%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K139205139221%_
                                                   (lambda (_%tl139216%_
                                                            _%hd139217%_)
                                                     (_%recur139083%_
                                                      _%hd139217%_
                                                      _%vars139175%_
                                                      _%$hd139200%_
                                                      _%E139177%_
                                                      (lambda (_%vars139219%_)
                                                        (_%recur139083%_
                                                         _%tl139216%_
                                                         _%vars139219%_
                                                         _%$tl139201%_
                                                         _%E139177%_
                                                         _%k139178%_))))))
                                             (if (pair? _%body139202139209%_)
                                                 (let ((_%hd139206139224%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body139202139209%_)))
                                                       (_%tl139207139226%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body139202139209%_))))
                                                   (let* ((_%hd139229%_
                                                           _%hd139206139224%_)
                                                          (_%tl139231%_
                                                           _%tl139207139226%_))
                                                     (_%K139205139221%_
                                                      _%tl139231%_
                                                      _%hd139229%_)))
                                                 (_%E139204139213%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp140243
                                       __tmp140242))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp140244
                                __tmp140241))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp140245
                         __tmp140240
                         _%E139177%_)))
                    (if (eq? 'splice _%$e139196%_)
                        (let* ((_%body139232139239%_ _%body139193%_)
                               (_%E139234139243%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body139232139239%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K139235139294%_
                                (lambda (_%tl139246%_ _%hd139247%_)
                                  (let* ((_%rlen139249%_
                                          (_%splice-rlen139084%_ _%tl139246%_))
                                         (_%$target139251%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd139253%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl139255%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp139257%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e139259%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd139261%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl139263%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars139265%_
                                          (_%splice-vars139085%_ _%hd139247%_))
                                         (_%lvars139267%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars139265%_)))
                                         (_%tlvars139269%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars139265%_)))
                                         (_%linit139273%_
                                          (map (lambda (_%var139271%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars139267%_)))
                                    (letrec ((_%make-loop139276%_
                                              (lambda (_%vars139280%_)
                                                (let ((__tmp140247
                                                       (cons (cons (cons _%$lp139257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp140260
                                        (cons _%$hd139253%_ _%lvars139267%_))
                                       (__tmp140248
                                        (let ((__tmp140259
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd139253%_)))
                                              (__tmp140253
                                               (let ((__tmp140258
                                                      (cons (cons (cons _%$lp-e139259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e138890%_
                                   _%$hd139253%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp140254
                                                      (let ((__tmp140257
                                                             (cons (cons (cons _%$lp-hd139261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e139259%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl139263%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e139259%_))
                                             '()))
                                 '())))
                    (__tmp140255
                     (_%recur139083%_
                      _%hd139247%_
                      '()
                      _%$lp-hd139261%_
                      _%E139177%_
                      (lambda (_%hdvars139282%_)
                        (cons _%$lp139257%_
                              (cons _%$lp-tl139263%_
                                    (map (lambda (_%svar139284%_
                                                  _%lvar139285%_)
                                           (let ((__tmp140256
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar139284%_
                                                     _%hdvars139282%_
                                                     _%BUG139082%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp140256
                                              _%lvar139285%_)))
                                         _%svars139265%_
                                         _%lvars139267%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp140257 __tmp140255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp140258
                                                  __tmp140254)))
                                              (__tmp140249
                                               (let ((__tmp140252
                                                      (map (lambda (_%lvar139287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar139288%_)
                     (cons (cons _%tlvar139288%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar139287%_))
                                 '())))
                   _%lvars139267%_
                   _%tlvars139269%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp140250
                                                      (_%k139178%_
                                                       (let ((__tmp140251
                                                              (lambda (_%svar139290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar139291%_
                               _%r139292%_)
                        (cons (cons _%svar139290%_ _%tlvar139291%_)
                              _%r139292%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp140251
                  _%vars139280%_
                  _%svars139265%_
                  _%tlvars139269%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp140252
                                                  __tmp140250))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp140259
                                           __tmp140253
                                           __tmp140249))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp140260
                                    __tmp140248))
                                 '()))
                     '()))
              (__tmp140246
               (cons _%$lp139257%_ (cons _%$target139251%_ _%linit139273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp140247
                                                   __tmp140246)))))
                                      (let ((_%body139278%_
                                             (let ((__tmp140262
                                                    (cons (cons (cons _%$target139251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl139255%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target139176%_
                                 _%rlen139249%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp140261
                                                    (_%recur139083%_
                                                     _%tl139246%_
                                                     _%vars139175%_
                                                     _%$tl139255%_
                                                     _%E139177%_
                                                     _%make-loop139276%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp140262
                                                __tmp140261))))
                                        (let ((__tmp140266
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target139176%_)))
                                              (__tmp140263
                                               (if (zero? _%rlen139249%_)
                                                   _%body139278%_
                                                   (let ((__tmp140264
                                                          (let ((__tmp140265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target139176%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp140265 _%rlen139249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp140264
                                                      _%body139278%_
                                                      _%E139177%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp140266
                                           __tmp140263
                                           _%E139177%_))))))))
                          (if (pair? _%body139232139239%_)
                              (let ((_%hd139236139297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body139232139239%_)))
                                    (_%tl139237139299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body139232139239%_))))
                                (let* ((_%hd139302%_ _%hd139236139297%_)
                                       (_%tl139304%_ _%tl139237139299%_))
                                  (_%K139235139294%_
                                   _%tl139304%_
                                   _%hd139302%_)))
                              (_%E139234139243%_)))
                        (if (eq? 'null _%$e139196%_)
                            (let ((__tmp140268
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target139176%_)))
                                  (__tmp140267 (_%k139178%_ _%vars139175%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp140268
                               __tmp140267
                               _%E139177%_))
                            (if (eq? 'vector _%$e139196%_)
                                (let ((_%$e139306%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp140273
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target139176%_)))
                                        (__tmp140269
                                         (let ((__tmp140271
                                                (cons (cons (cons _%$e139306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp140272
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e138890%_
                                    _%target139176%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp140272))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp140270
                                                (_%recur139083%_
                                                 _%body139193%_
                                                 _%vars139175%_
                                                 _%$e139306%_
                                                 _%E139177%_
                                                 _%k139178%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp140271
                                            __tmp140270))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp140273
                                     __tmp140269
                                     _%E139177%_)))
                                (if (eq? 'box _%$e139196%_)
                                    (let ((_%$e139308%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp140278
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target139176%_)))
                                            (__tmp140274
                                             (let ((__tmp140276
                                                    (cons (cons (cons _%$e139308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp140277
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e138890%_
                                        _%target139176%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp140277))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp140275
                                                    (_%recur139083%_
                                                     _%body139193%_
                                                     _%vars139175%_
                                                     _%$e139308%_
                                                     _%E139177%_
                                                     _%k139178%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp140276
                                                __tmp140275))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp140278
                                         __tmp140274
                                         _%E139177%_)))
                                    (if (eq? 'datum _%$e139196%_)
                                        (let ((_%$e139310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp140284
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target139176%_)))
                                                (__tmp140279
                                                 (let ((__tmp140283
                                                        (cons (cons (cons _%$e139310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target139176%_))
                                  '()))
                      '()))
               (__tmp140280
                (let ((__tmp140282
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e139310%_ _%body139193%_)))
                      (__tmp140281 (_%k139178%_ _%vars139175%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp140282 __tmp140281 _%E139177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp140283
                                                    __tmp140280))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp140284
                                             __tmp140279
                                             _%E139177%_)))
                                        (_%BUG139082%_
                                         _%e139174%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e139179139186%_)
                                      (let ((_%hd139183139315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e139179139186%_)))
                                            (_%tl139184139317%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e139179139186%_))))
                                        (let* ((_%tag139320%_
                                                _%hd139183139315%_)
                                               (_%body139322%_
                                                _%tl139184139317%_))
                                          (_%K139182139312%_
                                           _%body139322%_
                                           _%tag139320%_)))
                                      (_%E139181139190%_)))))
                             (_%splice-rlen139084%_
                              (lambda (_%e139136%_)
                                (let _%lp139138%_ ((_%e139140%_ _%e139136%_)
                                                   (_%n139141%_ '0))
                                  (let* ((_%e139142139149%_ _%e139140%_)
                                         (_%E139144139153%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e139142139149%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K139145139162%_
                                          (lambda (_%body139156%_
                                                   _%tag139157%_)
                                            (let ((_%$e139159%_ _%tag139157%_))
                                              (if (eq? 'splice _%$e139159%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx138888%_
                                                     _%where139075%_))
                                                  (if (eq? 'cons _%$e139159%_)
                                                      (_%lp139138%_
                                                       (cdr _%body139156%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n139141%_
                                                                '1)))
                                                      _%n139141%_))))))
                                    (if (pair? _%e139142139149%_)
                                        (let ((_%hd139146139165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139142139149%_)))
                                              (_%tl139147139167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139142139149%_))))
                                          (let* ((_%tag139170%_
                                                  _%hd139146139165%_)
                                                 (_%body139172%_
                                                  _%tl139147139167%_))
                                            (_%K139145139162%_
                                             _%body139172%_
                                             _%tag139170%_)))
                                        (_%E139144139153%_))))))
                             (_%splice-vars139085%_
                              (lambda (_%e139092%_)
                                (let _%recur139094%_ ((_%e139096%_ _%e139092%_)
                                                      (_%vars139097%_ '()))
                                  (let* ((_%e139098139105%_ _%e139096%_)
                                         (_%E139100139109%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e139098139105%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K139101139124%_
                                          (lambda (_%body139112%_
                                                   _%tag139113%_)
                                            (let ((_%$e139115%_ _%tag139113%_))
                                              (if (eq? 'var _%$e139115%_)
                                                  (cons _%body139112%_
                                                        _%vars139097%_)
                                                  (if (or (eq? 'cons
                                                               _%$e139115%_)
                                                          (eq? 'splice
                                                               _%$e139115%_))
                                                      (_%recur139094%_
                                                       (cdr _%body139112%_)
                                                       (_%recur139094%_
                                                        (car _%body139112%_)
                                                        _%vars139097%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e139115%_)
                      (eq? 'box _%$e139115%_))
                  (_%recur139094%_ _%body139112%_ _%vars139097%_)
                  _%vars139097%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e139098139105%_)
                                        (let ((_%hd139102139127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139098139105%_)))
                                              (_%tl139103139129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139098139105%_))))
                                          (let* ((_%tag139132%_
                                                  _%hd139102139127%_)
                                                 (_%body139134%_
                                                  _%tl139103139129%_))
                                            (_%K139101139124%_
                                             _%body139134%_
                                             _%tag139132%_)))
                                        (_%E139100139109%_))))))
                             (_%make-body139086%_
                              (lambda (_%vars139088%_)
                                (cons _%K139079%_
                                      (map (lambda (_%mvar139090%_)
                                             (let ((__tmp140285
                                                    (car _%mvar139090%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp140285
                                                _%vars139088%_
                                                _%BUG139082%_)))
                                           _%mvars139078%_)))))
                      (_%recur139083%_
                       _%hd139077%_
                       '()
                       _%target139076%_
                       _%E139080%_
                       _%make-body139086%_))))
                 (_%parse-clause138897%_
                  (lambda (_%hd138969%_ _%ids138970%_)
                    (let _%recur138972%_ ((_%e138974%_ _%hd138969%_)
                                          (_%vars138975%_ '())
                                          (_%depth138976%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e138974%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e138974%_))
                              (values '(any) _%vars138975%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e138974%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx138888%_
                                     _%hd138969%_))
                                  (if (let ((__tmp140286
                                             (lambda (_%id138981%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e138974%_
                                                  _%id138981%_)))))
                                        (declare (not safe))
                                        (__find __tmp140286 _%ids138970%_))
                                      (values (cons 'id _%e138974%_)
                                              _%vars138975%_)
                                      (if (let ((__tmp140287
                                                 (lambda (_%var138984%_)
                                                   (let ((__tmp140288
                                                          (car _%var138984%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e138974%_
                                                      __tmp140288)))))
                                            (declare (not safe))
                                            (__find __tmp140287
                                                    _%vars138975%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx138888%_
                                             _%e138974%_))
                                          (values (cons 'var _%e138974%_)
                                                  (cons (cons _%e138974%_
                                                              _%depth138976%_)
                                                        _%vars138975%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e138974%_))
                              (let* ((_%e138988138995%_ _%e138974%_)
                                     (_%E138990138999%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e138988138995%_))))
                                     (_%E138989139060%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e138988138995%_))
                                            (let ((_%e138991139003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e138988138995%_))))
                                              (let ((_%hd138992139006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e138991139003%_)))
                                                    (_%tl138993139008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e138991139003%_))))
                                                (let* ((_%hd139011%_
                                                        _%hd138992139006%_)
                                                       (_%rest139013%_
                                                        _%tl138993139008%_)
                                                       (_%make-pair139028%_
                                                        (lambda (_%tag139015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd139016%_
                         _%tl139017%_)
                  (let* ((_%hd-depth139019%_
                          (if (eq? _%tag139015%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth138976%_ '1))
                              _%depth138976%_))
                         (_g140289_
                          (_%recur138972%_
                           _%hd139016%_
                           _%vars138975%_
                           _%hd-depth139019%_)))
                    (begin
                      (let ((_g140290_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g140289_)
                                   (##values-length _g140289_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g140290_ 2)))
                            (error "Context expects 2 values" _g140290_)))
                      (let ((_%hd139021%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g140289_ 0)))
                            (_%vars139022%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g140289_ 1))))
                        (let ((_g140291_
                               (_%recur138972%_
                                _%tl139017%_
                                _%vars139022%_
                                _%depth138976%_)))
                          (begin
                            (let ((_g140292_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g140291_)
                                         (##values-length _g140291_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g140292_ 2)))
                                  (error "Context expects 2 values"
                                         _g140292_)))
                            (let ((_%tl139024%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g140291_ 0)))
                                  (_%vars139025%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g140291_ 1))))
                              (values (cons _%tag139015%_
                                            (cons _%hd139021%_ _%tl139024%_))
                                      _%vars139025%_)))))))))
               (_%e139029139036%_ _%rest139013%_)
               (_%E139031139040%_
                (lambda ()
                  (_%make-pair139028%_ 'cons _%hd139011%_ _%rest139013%_)))
               (_%E139030139056%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e139029139036%_))
                      (let ((_%e139032139044%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e139029139036%_))))
                        (let ((_%hd139033139047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139032139044%_)))
                              (_%tl139034139049%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139032139044%_))))
                          (let* ((_%rest-hd139052%_ _%hd139033139047%_)
                                 (_%rest-tl139054%_ _%tl139034139049%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd139052%_))
                                (_%make-pair139028%_
                                 'splice
                                 _%hd139011%_
                                 _%rest-tl139054%_)
                                (_%make-pair139028%_
                                 'cons
                                 _%hd139011%_
                                 _%rest139013%_)))))
                      (_%E139031139040%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E139030139056%_))))
                                            (_%E138990138999%_)))))
                                (_%E138989139060%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e138974%_))
                                  (values '(null) _%vars138975%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e138974%_))
                                      (let ((_g140293_
                                             (_%recur138972%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e138974%_)))
                                              _%vars138975%_
                                              _%depth138976%_)))
                                        (begin
                                          (let ((_g140294_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g140293_)
                                                       (##values-length
                                                        _g140293_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g140294_ 2)))
                                                (error "Context expects 2 values"
                                                       _g140294_)))
                                          (let ((_%e139066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g140293_ 0)))
                                                (_%vars139067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g140293_
                                                    1))))
                                            (values (cons 'vector _%e139066%_)
                                                    _%vars139067%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e138974%_))
                                          (let ((_g140295_
                                                 (_%recur138972%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e138974%_)))
                                                  _%vars138975%_
                                                  _%depth138976%_)))
                                            (begin
                                              (let ((_g140296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g140295_)
                                                           (##values-length
                                                            _g140295_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g140296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g140296_)))
                                              (let ((_%e139070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140295_
                                                        0)))
                                                    (_%vars139071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140295_
                                                        1))))
                                                (values (cons 'box _%e139070%_)
                                                        _%vars139071%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e138974%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e138974%_)))
                                                      _%vars138975%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx138888%_
                                                 _%e138974%_))))))))))))
          (let* ((_%e138898138911%_ _%stx138888%_)
                 (_%E138900138915%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e138898138911%_))))
                 (_%E138899138965%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e138898138911%_))
                        (let ((_%e138901138919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e138898138911%_))))
                          (let ((_%hd138902138922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138901138919%_)))
                                (_%tl138903138924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138901138919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138903138924%_))
                                (let ((_%e138904138927%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl138903138924%_))))
                                  (let ((_%hd138905138930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138904138927%_)))
                                        (_%tl138906138932%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138904138927%_))))
                                    (let ((_%expr138935%_ _%hd138905138930%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl138906138932%_))
                                          (let ((_%e138907138937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl138906138932%_))))
                                            (let ((_%hd138908138940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e138907138937%_)))
                                                  (_%tl138909138942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e138907138937%_))))
                                              (let* ((_%ids138945%_
                                                      _%hd138908138940%_)
                                                     (_%clauses138947%_
                                                      _%tl138909138942%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids138945%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses138947%_))
                                                        (let* ((_%ids138952%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids138945%_)))
                       (_%clauses138954%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses138947%_)))
                       (_%clause-ids138956%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses138954%_)))
                       (_%E138958%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target138960%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first138962%_
                        (if (null? _%clauses138954%_)
                            _%E138958%_
                            (car _%clause-ids138956%_))))
                  (let ((__tmp140298
                         (let ((__tmp140299
                                (let ((__tmp140301
                                       (let ((__tmp140303
                                              (cons (cons (cons _%E138958%_
                                                                '())
                                                          (cons (let ((__tmp140305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target138960%_ '()))
                              (__tmp140304
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target138960%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp140305 __tmp140304))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp140302
                                              (_%generate-body138894%_
                                               (_%generate-bindings138893%_
                                                _%target138960%_
                                                _%ids138952%_
                                                _%clauses138954%_
                                                _%clause-ids138956%_
                                                _%E138958%_)
                                               (cons _%first138962%_
                                                     (cons _%expr138935%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp140303
                                          __tmp140302)))
                                      (__tmp140300
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx138888%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp140301
                                   __tmp140300))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp140299)))
                        (__tmp140297
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx138888%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp140298 __tmp140297)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx138888%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx138888%_
                                                       _%ids138945%_))))))
                                          (_%E138900138915%_)))))
                                (_%E138900138915%_))))
                        (_%E138900138915%_)))))
            (_%E138899138965%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx139613%_)
        (let* ((_%identifier=?139615%_ 'free-identifier=?)
               (_%unwrap-e139617%_ 'syntax-e)
               (_%wrap-e139619%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx139613%_
           _%identifier=?139615%_
           _%unwrap-e139617%_
           _%wrap-e139619%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx139621%_ _%identifier=?139622%_)
        (let* ((_%unwrap-e139624%_ 'syntax-e) (_%wrap-e139626%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx139621%_
           _%identifier=?139622%_
           _%unwrap-e139624%_
           _%wrap-e139626%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx139628%_ _%identifier=?139629%_ _%unwrap-e139630%_)
        (let ((_%wrap-e139632%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx139628%_
           _%identifier=?139629%_
           _%unwrap-e139630%_
           _%wrap-e139632%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g140306_
        (let ((_g140307_ (let () (declare (not safe)) (##length _g140306_))))
          (cond ((let () (declare (not safe)) (##fx= _g140307_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g140306_))
                ((let () (declare (not safe)) (##fx= _g140307_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g140306_))
                ((let () (declare (not safe)) (##fx= _g140307_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g140306_))
                ((let () (declare (not safe)) (##fx= _g140307_ 4))
                 (apply gx#macro-expand-syntax-case__% _g140306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g140306_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx138885%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx138885%_))
            (let ((__tmp140308
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx138885%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp140308 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd138843%_ . _%rest138844%_)
        (let ((_%len138846%_ (length _%hd138843%_)))
          (let _%lp138848%_ ((_%rest138850%_ _%rest138844%_))
            (let* ((_%rest138851138859%_ _%rest138850%_)
                   (_%else138853138867%_ (lambda () '#!void))
                   (_%K138855138873%_
                    (lambda (_%rest138870%_ _%hd138871%_)
                      (if (let ((__tmp140309 (length _%hd138871%_)))
                            (declare (not safe))
                            (##fx= _%len138846%_ __tmp140309))
                          (_%lp138848%_ _%rest138870%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd138871%_))))))
              (if (pair? _%rest138851138859%_)
                  (let ((_%hd138856138876%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest138851138859%_)))
                        (_%tl138857138878%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest138851138859%_))))
                    (let* ((_%hd138881%_ _%hd138856138876%_)
                           (_%rest138883%_ _%tl138857138878%_))
                      (_%K138855138873%_ _%rest138883%_ _%hd138881%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx138793%_ _%n138794%_)
        (let _%lp138796%_ ((_%rest138799%_ _%stx138793%_) (_%r138801%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest138799%_))
              (let* ((_%g138803138810%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest138799%_)))
                     (_%E138805138814%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g138803138810%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K138806138821%_
                      (lambda (_%rest138817%_ _%hd138818%_)
                        (_%lp138796%_
                         _%rest138817%_
                         (cons _%hd138818%_ _%r138801%_)))))
                (if (pair? _%g138803138810%_)
                    (let ((_%hd138807138824%_
                           (let ()
                             (declare (not safe))
                             (##car _%g138803138810%_)))
                          (_%tl138808138826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g138803138810%_))))
                      (let* ((_%hd138829%_ _%hd138807138824%_)
                             (_%rest138831%_ _%tl138808138826%_))
                        (_%K138806138821%_ _%rest138831%_ _%hd138829%_)))
                    (_%E138805138814%_)))
              (let _%lp138833%_ ((_%n138835%_ _%n138794%_)
                                 (_%l138836%_ _%r138801%_)
                                 (_%r138838%_ _%rest138799%_))
                (if (null? _%l138836%_)
                    (values _%l138836%_ _%r138838%_)
                    (if (fxpositive? _%n138835%_)
                        (_%lp138833%_
                         (let () (declare (not safe)) (##fx- _%n138835%_ '1))
                         (cdr _%l138836%_)
                         (cons (car _%l138836%_) _%r138838%_))
                        (values (reverse! _%l138836%_) _%r138838%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx138743%_ _%n138744%_)
        (let _%lp138746%_ ((_%rest138749%_ _%stx138743%_) (_%r138751%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest138749%_))
              (let* ((_%g138753138760%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest138749%_)))
                     (_%E138755138764%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g138753138760%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K138756138771%_
                      (lambda (_%rest138767%_ _%hd138768%_)
                        (_%lp138746%_
                         _%rest138767%_
                         (cons _%hd138768%_ _%r138751%_)))))
                (if (pair? _%g138753138760%_)
                    (let ((_%hd138757138774%_
                           (let ()
                             (declare (not safe))
                             (##car _%g138753138760%_)))
                          (_%tl138758138776%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g138753138760%_))))
                      (let* ((_%hd138779%_ _%hd138757138774%_)
                             (_%rest138781%_ _%tl138758138776%_))
                        (_%K138756138771%_ _%rest138781%_ _%hd138779%_)))
                    (_%E138755138764%_)))
              (let _%lp138783%_ ((_%n138785%_ _%n138744%_)
                                 (_%l138786%_ _%r138751%_)
                                 (_%r138788%_ _%rest138749%_))
                (if (null? _%l138786%_)
                    (vector _%l138786%_ _%r138788%_)
                    (if (fxpositive? _%n138785%_)
                        (_%lp138783%_
                         (let () (declare (not safe)) (##fx- _%n138785%_ '1))
                         (cdr _%l138786%_)
                         (cons (car _%l138786%_) _%r138788%_))
                        (vector (reverse! _%l138786%_) _%r138788%_))))))))))
