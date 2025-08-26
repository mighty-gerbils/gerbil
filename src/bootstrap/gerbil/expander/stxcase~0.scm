(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1756224516)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp141175 (list gx#expander::t))
            (__tmp141174 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp141175
         '(id depth)
         __tmp141174
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args141171%_
        (apply make-instance gx#syntax-pattern::t _%$args141171%_)))
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
      (lambda (_%self141157%_ _%stx141158%_)
        (let ((_%self141161%_ _%self141157%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx141158%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx140624%_)
        (letrec ((_%generate140626%_
                  (lambda (_%e140866%_)
                    (letrec ((_%BUG140868%_
                              (lambda (_%q141033%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx140624%_
                                         _%e140866%_
                                         _%q141033%_))))
                             (_%local-pattern-e140869%_
                              (lambda (_%pat141031%_)
                                (let ((__tmp141176
                                       (##structure-ref
                                        _%pat141031%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp141176))))
                             (_%getvar140870%_
                              (lambda (_%q141028%_ _%vars141029%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q141028%_
                                   _%vars141029%_
                                   _%BUG140868%_))))
                             (_%getarg140871%_
                              (lambda (_%arg140994%_ _%vars140995%_)
                                (let* ((_%arg140996141003%_ _%arg140994%_)
                                       (_%E140998141007%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg140996141003%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K140999141016%_
                                        (lambda (_%e141010%_ _%tag141011%_)
                                          (let ((_%$e141013%_ _%tag141011%_))
                                            (if (eq? 'ref _%$e141013%_)
                                                (_%getvar140870%_
                                                 _%e141010%_
                                                 _%vars140995%_)
                                                (if (eq? 'pattern _%$e141013%_)
                                                    (_%local-pattern-e140869%_
                                                     _%e141010%_)
                                                    (_%BUG140868%_
                                                     _%arg140994%_)))))))
                                  (if (pair? _%arg140996141003%_)
                                      (let ((_%hd141000141019%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg140996141003%_)))
                                            (_%tl141001141021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg140996141003%_))))
                                        (let* ((_%tag141024%_
                                                _%hd141000141019%_)
                                               (_%e141026%_
                                                _%tl141001141021%_))
                                          (_%K140999141016%_
                                           _%e141026%_
                                           _%tag141024%_)))
                                      (_%E140998141007%_))))))
                      (let _%recur140873%_ ((_%e140875%_ _%e140866%_)
                                            (_%vars140876%_ '()))
                        (let* ((_%e140877140884%_ _%e140875%_)
                               (_%E140879140888%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e140877140884%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K140880140982%_
                                (lambda (_%body140891%_ _%tag140892%_)
                                  (let ((_%$e140894%_ _%tag140892%_))
                                    (if (eq? 'datum _%$e140894%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body140891%_))
                                        (if (eq? 'term _%$e140894%_)
                                            (let ((_%id140897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body140891%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id140897%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks140900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id140897%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks140900%_)
                                                        (let ((__tmp141177
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body140891%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp141177))
                (let ((__tmp141179
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body140891%_)))
                      (__tmp141178
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body140891%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp141179
                   __tmp141178
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id140897%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body140891%_))
                                                      (_%BUG140868%_
                                                       _%e140875%_))))
                                            (if (eq? 'pattern _%$e140894%_)
                                                (_%local-pattern-e140869%_
                                                 _%body140891%_)
                                                (if (eq? 'ref _%$e140894%_)
                                                    (_%getvar140870%_
                                                     _%body140891%_
                                                     _%vars140876%_)
                                                    (if (eq? 'cons
                                                             _%$e140894%_)
                                                        (let ((__tmp141181
                                                               (_%recur140873%_
                                                                (car _%body140891%_)
                                                                _%vars140876%_))
                                                              (__tmp141180
                                                               (_%recur140873%_
                                                                (cdr _%body140891%_)
                                                                _%vars140876%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp141181
                                                           __tmp141180))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e140894%_)
                    (let ((__tmp141182
                           (_%recur140873%_ _%body140891%_ _%vars140876%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp141182))
                    (if (eq? 'box _%$e140894%_)
                        (let ((__tmp141183
                               (_%recur140873%_
                                _%body140891%_
                                _%vars140876%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp141183))
                        (if (eq? 'splice _%$e140894%_)
                            (let* ((_%body140903140914%_ _%body140891%_)
                                   (_%E140905140918%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body140903140914%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K140906140956%_
                                    (lambda (_%args140921%_
                                             _%iv140922%_
                                             _%hd140923%_
                                             _%depth140924%_)
                                      (let* ((_%targets140930%_
                                              (map (lambda (_%g140925140927%_)
                                                     (_%getarg140871%_
                                                      _%g140925140927%_
                                                      _%vars140876%_))
                                                   _%args140921%_))
                                             (_%fold-in140932%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args140921%_)))
                                             (_%fold-out140934%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args140936%_
                                              (let ((__tmp141184
                                                     (cons _%fold-out140934%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp141184
                                                 _%fold-in140932%_)))
                                             (_%lambda-body140953%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth140924%_ '1))
                                                  (let ((_%r-args140944%_
                                                         (map (lambda (_%arg140938%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg140938%_)))
                      _%args140921%_))
                (_%r-vars140945%_
                 (let ((__tmp141185
                        (lambda (_%arg140940%_ _%var140941%_ _%r140942%_)
                          (cons (cons (cdr _%arg140940%_) _%var140941%_)
                                _%r140942%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp141185
                    _%vars140876%_
                    _%args140921%_
                    _%fold-in140932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur140873%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth140924%_ '1))
                         (cons _%hd140923%_
                               (cons (cons 'var _%fold-out140934%_)
                                     _%r-args140944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars140945%_))
                                                  (let* ((_%hd-vars140951%_
                                                          (let ((__tmp141186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg140947%_ _%var140948%_ _%r140949%_)
                           (cons (cons (cdr _%arg140947%_) _%var140948%_)
                                 _%r140949%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp141186
                     _%vars140876%_
                     _%args140921%_
                     _%fold-in140932%_)))
                 (__tmp141187
                  (_%recur140873%_ _%hd140923%_ _%hd-vars140951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp141187
                                                     _%fold-out140934%_)))))
                                        (let ((__tmp141191
                                               (if (let ((__tmp141192
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets140930%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp141192 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets140930%_))
                                                   '#!void))
                                              (__tmp141188
                                               (let ((__tmp141190
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args140936%_
                                                         _%lambda-body140953%_)))
                                                     (__tmp141189
                                                      (_%recur140873%_
                                                       _%iv140922%_
                                                       _%vars140876%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp141190
                                                  __tmp141189
                                                  _%targets140930%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp141191
                                           __tmp141188))))))
                              (if (pair? _%body140903140914%_)
                                  (let ((_%hd140907140959%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body140903140914%_)))
                                        (_%tl140908140961%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body140903140914%_))))
                                    (let ((_%depth140964%_ _%hd140907140959%_))
                                      (if (pair? _%tl140908140961%_)
                                          (let ((_%hd140909140966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl140908140961%_)))
                                                (_%tl140910140968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl140908140961%_))))
                                            (let ((_%hd140971%_
                                                   _%hd140909140966%_))
                                              (if (pair? _%tl140910140968%_)
                                                  (let ((_%hd140911140973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140910140968%_)))
                                                        (_%tl140912140975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140910140968%_))))
                                                    (let* ((_%iv140978%_
                                                            _%hd140911140973%_)
                                                           (_%args140980%_
                                                            _%tl140912140975%_))
                                                      (_%K140906140956%_
                                                       _%args140980%_
                                                       _%iv140978%_
                                                       _%hd140971%_
                                                       _%depth140964%_)))
                                                  (_%E140905140918%_))))
                                          (_%E140905140918%_))))
                                  (_%E140905140918%_)))
                            (if (eq? 'var _%$e140894%_)
                                _%body140891%_
                                (_%BUG140868%_ _%e140875%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e140877140884%_)
                              (let ((_%hd140881140985%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140877140884%_)))
                                    (_%tl140882140987%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140877140884%_))))
                                (let* ((_%tag140990%_ _%hd140881140985%_)
                                       (_%body140992%_ _%tl140882140987%_))
                                  (_%K140880140982%_
                                   _%body140992%_
                                   _%tag140990%_)))
                              (_%E140879140888%_)))))))
                 (_%parse140627%_
                  (lambda (_%e140668%_)
                    (letrec ((_%make-cons140670%_
                              (lambda (_%hd140858%_ _%tl140859%_)
                                (let ((_g141193_ _%hd140858%_)
                                      (_g141195_ _%tl140859%_))
                                  (begin
                                    (let ((_g141194_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141193_)
                                                 (##values-length _g141193_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141194_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141194_)))
                                    (let ((_g141196_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141195_)
                                                 (##values-length _g141195_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141196_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141196_)))
                                    (let ((_%hd-e140861%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141193_ 0)))
                                          (_%hd-vars140862%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141193_ 1))))
                                      (let ((_%tl-e140863%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141195_ 0)))
                                            (_%tl-vars140864%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141195_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e140861%_
                                                            _%tl-e140863%_))
                                                (append _%hd-vars140862%_
                                                        _%tl-vars140864%_))))))))
                             (_%make-splice140671%_
                              (lambda (_%where140794%_
                                       _%depth140795%_
                                       _%hd140796%_
                                       _%tl140797%_)
                                (let ((_g141197_ _%hd140796%_)
                                      (_g141199_ _%tl140797%_))
                                  (begin
                                    (let ((_g141198_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141197_)
                                                 (##values-length _g141197_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141198_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141198_)))
                                    (let ((_g141200_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141199_)
                                                 (##values-length _g141199_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141200_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141200_)))
                                    (let ((_%hd-e140799%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141197_ 0)))
                                          (_%hd-vars140800%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141197_ 1))))
                                      (let ((_%tl-e140801%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141199_ 0)))
                                            (_%tl-vars140802%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141199_ 1))))
                                        (let _%lp140804%_ ((_%rest140806%_
                                                            _%hd-vars140800%_)
                                                           (_%targets140807%_
                                                            '())
                                                           (_%vars140808%_
                                                            _%tl-vars140802%_))
                                          (let* ((_%rest140809140819%_
                                                  _%rest140806%_)
                                                 (_%else140811140827%_
                                                  (lambda ()
                                                    (if (null? _%targets140807%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx140624%_
                                                           _%where140794%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth140795%_
                                    (cons _%hd-e140799%_
                                          (cons _%tl-e140801%_
                                                _%targets140807%_))))
                        _%vars140808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K140813140839%_
                                                  (lambda (_%rest140830%_
                                                           _%hd-pat140831%_
                                                           _%hd-depth*140832%_)
                                                    (let ((_%hd-depth140834%_
                                                           (fx- _%hd-depth*140832%_
                                                                _%depth140795%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth140834%_))
                                                          (_%lp140804%_
                                                           _%rest140830%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat140831%_)
                         _%targets140807%_)
                   (cons (cons _%hd-depth140834%_ _%hd-pat140831%_)
                         _%vars140808%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth140834%_))
                      (_%lp140804%_
                       _%rest140830%_
                       (cons (cons 'pattern _%hd-pat140831%_)
                             _%targets140807%_)
                       _%vars140808%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx140624%_
                         _%where140794%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest140809140819%_)
                                                (let ((_%hd140814140842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest140809140819%_)))
                                                      (_%tl140815140844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest140809140819%_))))
                                                  (if (pair? _%hd140814140842%_)
                                                      (let ((_%hd140816140847%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd140814140842%_)))
                    (_%tl140817140849%_
                     (let () (declare (not safe)) (##cdr _%hd140814140842%_))))
                (let* ((_%hd-depth*140852%_ _%hd140816140847%_)
                       (_%hd-pat140854%_ _%tl140817140849%_)
                       (_%rest140856%_ _%tl140815140844%_))
                  (_%K140813140839%_
                   _%rest140856%_
                   _%hd-pat140854%_
                   _%hd-depth*140852%_)))
              (_%else140811140827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140811140827%_))))))))))
                             (_%recur140672%_
                              (lambda (_%e140677%_ _%is-e?140678%_)
                                (if (_%is-e?140678%_ _%e140677%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx140624%_))
                                    (if (gx#syntax-local-pattern? _%e140677%_)
                                        (let* ((_%pat140682%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e140677%_)))
                                               (_%depth140684%_
                                                (##structure-ref
                                                 _%pat140682%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth140684%_)
                                              (values (cons 'ref _%pat140682%_)
                                                      (cons (cons _%depth140684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat140682%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat140682%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e140677%_))
                                            (values (cons 'term _%e140677%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e140677%_))
                                                (let* ((_%e140688140695%_
                                                        _%e140677%_)
                                                       (_%E140690140699%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e140688140695%_))))
                                                       (_%E140689140781%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e140688140695%_))
                      (let ((_%e140691140703%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e140688140695%_))))
                        (let ((_%hd140692140706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140691140703%_)))
                              (_%tl140693140708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140691140703%_))))
                          (let* ((_%hd140711%_ _%hd140692140706%_)
                                 (_%rest140713%_ _%tl140693140708%_))
                            (if (_%is-e?140678%_ _%hd140711%_)
                                (let* ((_%e140714140721%_ _%rest140713%_)
                                       (_%E140716140725%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx140624%_
                                             _%e140677%_))))
                                       (_%E140715140739%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e140714140721%_))
                                              (let ((_%e140717140729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e140714140721%_))))
                                                (let ((_%hd140718140732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140717140729%_)))
                                                      (_%tl140719140734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140717140729%_))))
                                                  (let ((_%rest140737%_
                                                         _%hd140718140732%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140719140734%_))
                                                        (_%recur140672%_
                                                         _%rest140737%_
                                                         false)
                                                        (_%E140716140725%_)))))
                                              (_%E140716140725%_)))))
                                  (_%E140715140739%_))
                                (let _%lp140743%_ ((_%rest140745%_
                                                    _%rest140713%_)
                                                   (_%depth140746%_ '0))
                                  (let* ((_%e140747140754%_ _%rest140745%_)
                                         (_%E140749140758%_
                                          (lambda ()
                                            (if (fxpositive? _%depth140746%_)
                                                (_%make-splice140671%_
                                                 _%e140677%_
                                                 _%depth140746%_
                                                 (_%recur140672%_
                                                  _%hd140711%_
                                                  _%is-e?140678%_)
                                                 (_%recur140672%_
                                                  _%rest140745%_
                                                  _%is-e?140678%_))
                                                (_%make-cons140670%_
                                                 (_%recur140672%_
                                                  _%hd140711%_
                                                  _%is-e?140678%_)
                                                 (_%recur140672%_
                                                  _%rest140745%_
                                                  _%is-e?140678%_)))))
                                         (_%E140748140777%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e140747140754%_))
                                                (let ((_%e140750140762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e140747140754%_))))
                                                  (let ((_%hd140751140765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140750140762%_)))
                                                        (_%tl140752140767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140750140762%_))))
                                                    (let* ((_%rest-hd140770%_
                                                            _%hd140751140765%_)
                                                           (_%rest-tl140772%_
                                                            _%tl140752140767%_))
                                                      (if (_%is-e?140678%_
                                                           _%rest-hd140770%_)
                                                          (_%lp140743%_
                                                           _%rest-tl140772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth140746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth140746%_)
                      (_%make-splice140671%_
                       _%e140677%_
                       _%depth140746%_
                       (_%recur140672%_ _%hd140711%_ _%is-e?140678%_)
                       (_%recur140672%_ _%rest140745%_ _%is-e?140678%_))
                      (_%make-cons140670%_
                       (_%recur140672%_ _%hd140711%_ _%is-e?140678%_)
                       (_%recur140672%_ _%rest140745%_ _%is-e?140678%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E140749140758%_)))))
                                    (_%E140748140777%_)))))))
                      (_%E140690140699%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E140689140781%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e140677%_))
                                                    (let ((_g141201_
                                                           (_%recur140672%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e140677%_)))
                    _%is-e?140678%_)))
              (begin
                (let ((_g141202_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g141201_)
                             (##values-length _g141201_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g141202_ 2)))
                      (error "Context expects 2 values" _g141202_)))
                (let ((_%e140786%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141201_ 0)))
                      (_%vars140787%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141201_ 1))))
                  (values (cons 'vector _%e140786%_) _%vars140787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e140677%_))
                                                        (let ((_g141203_
                                                               (_%recur140672%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e140677%_)))
                        _%is-e?140678%_)))
                  (begin
                    (let ((_g141204_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g141203_)
                                 (##values-length _g141203_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g141204_ 2)))
                          (error "Context expects 2 values" _g141204_)))
                    (let ((_%e140790%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141203_ 0)))
                          (_%vars140791%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141203_ 1))))
                      (values (cons 'box _%e140790%_) _%vars140791%_))))
                (values (cons 'datum _%e140677%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g141205_
                             (_%recur140672%_ _%e140668%_ gx#ellipsis?)))
                        (begin
                          (let ((_g141206_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g141205_)
                                       (##values-length _g141205_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g141206_ 2)))
                                (error "Context expects 2 values" _g141206_)))
                          (let ((_%tree140674%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141205_ 0)))
                                (_%vars140675%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141205_ 1))))
                            (if (null? _%vars140675%_)
                                _%tree140674%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx140624%_
                                   _%vars140675%_))))))))))
          (let* ((_%e140628140638%_ _%stx140624%_)
                 (_%E140630140642%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx140624%_))))
                 (_%E140629140664%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e140628140638%_))
                        (let ((_%e140631140646%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e140628140638%_))))
                          (let ((_%hd140632140649%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140631140646%_)))
                                (_%tl140633140651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140631140646%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140633140651%_))
                                (let ((_%e140634140654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl140633140651%_))))
                                  (let ((_%hd140635140657%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140634140654%_)))
                                        (_%tl140636140659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140634140654%_))))
                                    (let ((_%form140662%_ _%hd140635140657%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140636140659%_))
                                          (let ((__tmp141208
                                                 (_%generate140626%_
                                                  (_%parse140627%_
                                                   _%form140662%_)))
                                                (__tmp141207
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx140624%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp141208
                                             __tmp141207))
                                          (_%E140630140642%_)))))
                                (_%E140630140642%_))))
                        (_%E140630140642%_)))))
            (_%E140629140664%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx139873%_
               _%identifier=?139874%_
               _%unwrap-e139875%_
               _%wrap-e139876%_)
        (letrec ((_%generate-bindings139878%_
                  (lambda (_%target140488%_
                           _%ids140489%_
                           _%clauses140490%_
                           _%clause-ids140491%_
                           _%E140492%_)
                    (letrec ((_%generate1140494%_
                              (lambda (_%clause140591%_
                                       _%clause-id140592%_
                                       _%E140593%_)
                                (cons (cons _%clause-id140592%_ '())
                                      (cons (let ((__tmp141210
                                                   (cons _%target140488%_ '()))
                                                  (__tmp141209
                                                   (_%generate-clause139880%_
                                                    _%target140488%_
                                                    _%ids140489%_
                                                    _%clause140591%_
                                                    _%E140593%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp141210
                                               __tmp141209))
                                            '())))))
                      (let _%lp140496%_ ((_%rest140498%_ _%clauses140490%_)
                                         (_%rest-ids140499%_
                                          _%clause-ids140491%_)
                                         (_%bindings140500%_ '()))
                        (let* ((_%rest140501140509%_ _%rest140498%_)
                               (_%else140503140517%_
                                (lambda () _%bindings140500%_))
                               (_%K140505140579%_
                                (lambda (_%rest140520%_ _%clause140521%_)
                                  (let* ((_%rest-ids140522140529%_
                                          _%rest-ids140499%_)
                                         (_%E140524140533%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids140522140529%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K140525140567%_
                                          (lambda (_%rest-ids140536%_
                                                   _%clause-id140537%_)
                                            (let* ((_%rest-ids140538140546%_
                                                    _%rest-ids140536%_)
                                                   (_%else140540140554%_
                                                    (lambda ()
                                                      (cons (_%generate1140494%_
                                                             _%clause140521%_
                                                             _%clause-id140537%_
                                                             _%E140492%_)
                                                            _%bindings140500%_)))
                                                   (_%K140542140559%_
                                                    (lambda (_%next-clause-id140557%_)
                                                      (_%lp140496%_
                                                       _%rest140520%_
                                                       _%rest-ids140536%_
                                                       (cons (_%generate1140494%_
                                                              _%clause140521%_
                                                              _%clause-id140537%_
                                                              _%next-clause-id140557%_)
                                                             _%bindings140500%_)))))
                                              (if (pair? _%rest-ids140538140546%_)
                                                  (let* ((_%hd140543140562%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids140538140546%_)))
                                                         (_%next-clause-id140565%_
                                                          _%hd140543140562%_))
                                                    (_%K140542140559%_
                                                     _%next-clause-id140565%_))
                                                  (_%else140540140554%_))))))
                                    (if (pair? _%rest-ids140522140529%_)
                                        (let ((_%hd140526140570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids140522140529%_)))
                                              (_%tl140527140572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids140522140529%_))))
                                          (let* ((_%clause-id140575%_
                                                  _%hd140526140570%_)
                                                 (_%rest-ids140577%_
                                                  _%tl140527140572%_))
                                            (_%K140525140567%_
                                             _%rest-ids140577%_
                                             _%clause-id140575%_)))
                                        (_%E140524140533%_))))))
                          (if (pair? _%rest140501140509%_)
                              (let ((_%hd140506140582%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140501140509%_)))
                                    (_%tl140507140584%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140501140509%_))))
                                (let* ((_%clause140587%_ _%hd140506140582%_)
                                       (_%rest140589%_ _%tl140507140584%_))
                                  (_%K140505140579%_
                                   _%rest140589%_
                                   _%clause140587%_)))
                              (_%else140503140517%_)))))))
                 (_%generate-body139879%_
                  (lambda (_%bindings140448%_ _%body140449%_)
                    (let _%recur140451%_ ((_%rest140453%_ _%bindings140448%_))
                      (let* ((_%rest140454140462%_ _%rest140453%_)
                             (_%else140456140470%_ (lambda () _%body140449%_))
                             (_%K140458140476%_
                              (lambda (_%rest140473%_ _%hd140474%_)
                                (let ((__tmp141212 (cons _%hd140474%_ '()))
                                      (__tmp141211
                                       (_%recur140451%_ _%rest140473%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp141212
                                   __tmp141211)))))
                        (if (pair? _%rest140454140462%_)
                            (let ((_%hd140459140479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140454140462%_)))
                                  (_%tl140460140481%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140454140462%_))))
                              (let* ((_%hd140484%_ _%hd140459140479%_)
                                     (_%rest140486%_ _%tl140460140481%_))
                                (_%K140458140476%_
                                 _%rest140486%_
                                 _%hd140484%_)))
                            (_%else140456140470%_))))))
                 (_%generate-clause139880%_
                  (lambda (_%target140311%_
                           _%ids140312%_
                           _%clause140313%_
                           _%E140314%_)
                    (letrec ((_%generate1140316%_
                              (lambda (_%hd140403%_
                                       _%fender140404%_
                                       _%body140405%_)
                                (let ((_g141213_
                                       (_%parse-clause139882%_
                                        _%hd140403%_
                                        _%ids140312%_)))
                                  (begin
                                    (let ((_g141214_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141213_)
                                                 (##values-length _g141213_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141214_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141214_)))
                                    (let ((_%e140407%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141213_ 0)))
                                          (_%mvars140408%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141213_ 1))))
                                      (let* ((_%pvars140410%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars140408%_))))
                                             (_%E140412%_
                                              (cons _%E140314%_
                                                    (cons _%target140311%_
                                                          '())))
                                             (_%K140445%_
                                              (let ((__tmp141215
                                                     (let ((__tmp141217
                                                            (map (lambda (_%mvar140414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar140415%_)
                           (let* ((_%mvar140416140423%_ _%mvar140414%_)
                                  (_%E140418140427%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar140416140423%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K140419140433%_
                                   (lambda (_%depth140430%_ _%id140431%_)
                                     (cons _%id140431%_
                                           (cons (let ((__tmp141219
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id140431%_)))
                                                       (__tmp141218
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar140415%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp141219
                                                    __tmp141218
                                                    _%depth140430%_))
                                                 '())))))
                             (if (pair? _%mvar140416140423%_)
                                 (let ((_%hd140420140436%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar140416140423%_)))
                                       (_%tl140421140438%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar140416140423%_))))
                                   (let* ((_%id140441%_ _%hd140420140436%_)
                                          (_%depth140443%_ _%tl140421140438%_))
                                     (_%K140419140433%_
                                      _%depth140443%_
                                      _%id140441%_)))
                                 (_%E140418140427%_))))
                         _%mvars140408%_
                         _%pvars140410%_))
                   (__tmp141216
                    (if (eq? _%fender140404%_ '#t)
                        _%body140405%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender140404%_
                           _%body140405%_
                           _%E140412%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp141217 __tmp141216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars140410%_
                                                 __tmp141215))))
                                        (_%generate-match139881%_
                                         _%hd140403%_
                                         _%target140311%_
                                         _%e140407%_
                                         _%mvars140408%_
                                         _%K140445%_
                                         _%E140412%_))))))))
                      (let* ((_%e140317140337%_ _%clause140313%_)
                             (_%E140326140341%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e140317140337%_))))
                             (_%E140319140375%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140317140337%_))
                                    (let ((_%e140327140345%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140317140337%_))))
                                      (let ((_%hd140328140348%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140327140345%_)))
                                            (_%tl140329140350%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140327140345%_))))
                                        (let ((_%hd140353%_
                                               _%hd140328140348%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140329140350%_))
                                              (let ((_%e140330140355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140329140350%_))))
                                                (let ((_%hd140331140358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140330140355%_)))
                                                      (_%tl140332140360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140330140355%_))))
                                                  (let ((_%fender140363%_
                                                         _%hd140331140358%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140332140360%_))
                                                        (let ((_%e140333140365%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl140332140360%_))))
                  (let ((_%hd140334140368%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140333140365%_)))
                        (_%tl140335140370%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140333140365%_))))
                    (let ((_%body140373%_ _%hd140334140368%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140335140370%_))
                          (_%generate1140316%_
                           _%hd140353%_
                           _%fender140363%_
                           _%body140373%_)
                          (_%E140326140341%_)))))
                (_%E140326140341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E140326140341%_)))))
                                    (_%E140326140341%_))))
                             (_%E140318140399%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140317140337%_))
                                    (let ((_%e140320140379%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140317140337%_))))
                                      (let ((_%hd140321140382%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140320140379%_)))
                                            (_%tl140322140384%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140320140379%_))))
                                        (let ((_%hd140387%_
                                               _%hd140321140382%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140322140384%_))
                                              (let ((_%e140323140389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140322140384%_))))
                                                (let ((_%hd140324140392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140323140389%_)))
                                                      (_%tl140325140394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140323140389%_))))
                                                  (let ((_%body140397%_
                                                         _%hd140324140392%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140325140394%_))
                                                        (_%generate1140316%_
                                                         _%hd140387%_
                                                         '#t
                                                         _%body140397%_)
                                                        (_%E140319140375%_)))))
                                              (_%E140319140375%_)))))
                                    (_%E140319140375%_)))))
                        (_%E140318140399%_)))))
                 (_%generate-match139881%_
                  (lambda (_%where140060%_
                           _%target140061%_
                           _%hd140062%_
                           _%mvars140063%_
                           _%K140064%_
                           _%E140065%_)
                    (letrec ((_%BUG140067%_
                              (lambda (_%q140309%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx139873%_
                                         _%hd140062%_
                                         _%q140309%_))))
                             (_%recur140068%_
                              (lambda (_%e140159%_
                                       _%vars140160%_
                                       _%target140161%_
                                       _%E140162%_
                                       _%k140163%_)
                                (let* ((_%e140164140171%_ _%e140159%_)
                                       (_%E140166140175%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e140164140171%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K140167140297%_
                                        (lambda (_%body140178%_ _%tag140179%_)
                                          (let ((_%$e140181%_ _%tag140179%_))
                                            (if (eq? 'any _%$e140181%_)
                                                (_%k140163%_ _%vars140160%_)
                                                (if (eq? 'id _%$e140181%_)
                                                    (let ((__tmp141224
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target140161%_)))
                                                          (__tmp141220
                                                           (let ((__tmp141222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp141223
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e139876%_
                                    _%body140178%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?139874%_
                             __tmp141223
                             _%target140161%_)))
                         (__tmp141221 (_%k140163%_ _%vars140160%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp141222 __tmp141221 _%E140162%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp141224 __tmp141220 _%E140162%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e140181%_)
                                                        (_%k140163%_
                                                         (cons (cons _%body140178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target140161%_)
                       _%vars140160%_))
                (if (eq? 'cons _%$e140181%_)
                    (let ((_%$e140184%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd140185%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl140186%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp141230
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target140161%_)))
                            (__tmp141225
                             (let ((__tmp141229
                                    (cons (cons (cons _%$e140184%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e139875%_
                                                         _%target140161%_))
                                                      '()))
                                          '()))
                                   (__tmp141226
                                    (let ((__tmp141228
                                           (cons (cons (cons _%$hd140185%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e140184%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl140186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e140184%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp141227
                                           (let* ((_%body140187140194%_
                                                   _%body140178%_)
                                                  (_%E140189140198%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body140187140194%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K140190140206%_
                                                   (lambda (_%tl140201%_
                                                            _%hd140202%_)
                                                     (_%recur140068%_
                                                      _%hd140202%_
                                                      _%vars140160%_
                                                      _%$hd140185%_
                                                      _%E140162%_
                                                      (lambda (_%vars140204%_)
                                                        (_%recur140068%_
                                                         _%tl140201%_
                                                         _%vars140204%_
                                                         _%$tl140186%_
                                                         _%E140162%_
                                                         _%k140163%_))))))
                                             (if (pair? _%body140187140194%_)
                                                 (let ((_%hd140191140209%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body140187140194%_)))
                                                       (_%tl140192140211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body140187140194%_))))
                                                   (let* ((_%hd140214%_
                                                           _%hd140191140209%_)
                                                          (_%tl140216%_
                                                           _%tl140192140211%_))
                                                     (_%K140190140206%_
                                                      _%tl140216%_
                                                      _%hd140214%_)))
                                                 (_%E140189140198%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp141228
                                       __tmp141227))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp141229
                                __tmp141226))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp141230
                         __tmp141225
                         _%E140162%_)))
                    (if (eq? 'splice _%$e140181%_)
                        (let* ((_%body140217140224%_ _%body140178%_)
                               (_%E140219140228%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body140217140224%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K140220140279%_
                                (lambda (_%tl140231%_ _%hd140232%_)
                                  (let* ((_%rlen140234%_
                                          (_%splice-rlen140069%_ _%tl140231%_))
                                         (_%$target140236%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd140238%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl140240%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp140242%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e140244%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd140246%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl140248%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars140250%_
                                          (_%splice-vars140070%_ _%hd140232%_))
                                         (_%lvars140252%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140250%_)))
                                         (_%tlvars140254%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140250%_)))
                                         (_%linit140258%_
                                          (map (lambda (_%var140256%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars140252%_)))
                                    (letrec ((_%make-loop140261%_
                                              (lambda (_%vars140265%_)
                                                (let ((__tmp141232
                                                       (cons (cons (cons _%$lp140242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp141245
                                        (cons _%$hd140238%_ _%lvars140252%_))
                                       (__tmp141233
                                        (let ((__tmp141244
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd140238%_)))
                                              (__tmp141238
                                               (let ((__tmp141243
                                                      (cons (cons (cons _%$lp-e140244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e139875%_
                                   _%$hd140238%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141239
                                                      (let ((__tmp141242
                                                             (cons (cons (cons _%$lp-hd140246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e140244%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl140248%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e140244%_))
                                             '()))
                                 '())))
                    (__tmp141240
                     (_%recur140068%_
                      _%hd140232%_
                      '()
                      _%$lp-hd140246%_
                      _%E140162%_
                      (lambda (_%hdvars140267%_)
                        (cons _%$lp140242%_
                              (cons _%$lp-tl140248%_
                                    (map (lambda (_%svar140269%_
                                                  _%lvar140270%_)
                                           (let ((__tmp141241
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar140269%_
                                                     _%hdvars140267%_
                                                     _%BUG140067%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp141241
                                              _%lvar140270%_)))
                                         _%svars140250%_
                                         _%lvars140252%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp141242 __tmp141240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141243
                                                  __tmp141239)))
                                              (__tmp141234
                                               (let ((__tmp141237
                                                      (map (lambda (_%lvar140272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar140273%_)
                     (cons (cons _%tlvar140273%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar140272%_))
                                 '())))
                   _%lvars140252%_
                   _%tlvars140254%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141235
                                                      (_%k140163%_
                                                       (let ((__tmp141236
                                                              (lambda (_%svar140275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar140276%_
                               _%r140277%_)
                        (cons (cons _%svar140275%_ _%tlvar140276%_)
                              _%r140277%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp141236
                  _%vars140265%_
                  _%svars140250%_
                  _%tlvars140254%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141237
                                                  __tmp141235))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141244
                                           __tmp141238
                                           __tmp141234))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp141245
                                    __tmp141233))
                                 '()))
                     '()))
              (__tmp141231
               (cons _%$lp140242%_ (cons _%$target140236%_ _%linit140258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp141232
                                                   __tmp141231)))))
                                      (let ((_%body140263%_
                                             (let ((__tmp141247
                                                    (cons (cons (cons _%$target140236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl140240%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target140161%_
                                 _%rlen140234%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141246
                                                    (_%recur140068%_
                                                     _%tl140231%_
                                                     _%vars140160%_
                                                     _%$tl140240%_
                                                     _%E140162%_
                                                     _%make-loop140261%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141247
                                                __tmp141246))))
                                        (let ((__tmp141251
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target140161%_)))
                                              (__tmp141248
                                               (if (zero? _%rlen140234%_)
                                                   _%body140263%_
                                                   (let ((__tmp141249
                                                          (let ((__tmp141250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target140161%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp141250 _%rlen140234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp141249
                                                      _%body140263%_
                                                      _%E140162%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141251
                                           __tmp141248
                                           _%E140162%_))))))))
                          (if (pair? _%body140217140224%_)
                              (let ((_%hd140221140282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body140217140224%_)))
                                    (_%tl140222140284%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body140217140224%_))))
                                (let* ((_%hd140287%_ _%hd140221140282%_)
                                       (_%tl140289%_ _%tl140222140284%_))
                                  (_%K140220140279%_
                                   _%tl140289%_
                                   _%hd140287%_)))
                              (_%E140219140228%_)))
                        (if (eq? 'null _%$e140181%_)
                            (let ((__tmp141253
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target140161%_)))
                                  (__tmp141252 (_%k140163%_ _%vars140160%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp141253
                               __tmp141252
                               _%E140162%_))
                            (if (eq? 'vector _%$e140181%_)
                                (let ((_%$e140291%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp141258
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target140161%_)))
                                        (__tmp141254
                                         (let ((__tmp141256
                                                (cons (cons (cons _%$e140291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp141257
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e139875%_
                                    _%target140161%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp141257))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp141255
                                                (_%recur140068%_
                                                 _%body140178%_
                                                 _%vars140160%_
                                                 _%$e140291%_
                                                 _%E140162%_
                                                 _%k140163%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp141256
                                            __tmp141255))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp141258
                                     __tmp141254
                                     _%E140162%_)))
                                (if (eq? 'box _%$e140181%_)
                                    (let ((_%$e140293%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp141263
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target140161%_)))
                                            (__tmp141259
                                             (let ((__tmp141261
                                                    (cons (cons (cons _%$e140293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp141262
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e139875%_
                                        _%target140161%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp141262))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141260
                                                    (_%recur140068%_
                                                     _%body140178%_
                                                     _%vars140160%_
                                                     _%$e140293%_
                                                     _%E140162%_
                                                     _%k140163%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141261
                                                __tmp141260))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp141263
                                         __tmp141259
                                         _%E140162%_)))
                                    (if (eq? 'datum _%$e140181%_)
                                        (let ((_%$e140295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp141269
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target140161%_)))
                                                (__tmp141264
                                                 (let ((__tmp141268
                                                        (cons (cons (cons _%$e140295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target140161%_))
                                  '()))
                      '()))
               (__tmp141265
                (let ((__tmp141267
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e140295%_ _%body140178%_)))
                      (__tmp141266 (_%k140163%_ _%vars140160%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp141267 __tmp141266 _%E140162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp141268
                                                    __tmp141265))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp141269
                                             __tmp141264
                                             _%E140162%_)))
                                        (_%BUG140067%_
                                         _%e140159%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e140164140171%_)
                                      (let ((_%hd140168140300%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140164140171%_)))
                                            (_%tl140169140302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140164140171%_))))
                                        (let* ((_%tag140305%_
                                                _%hd140168140300%_)
                                               (_%body140307%_
                                                _%tl140169140302%_))
                                          (_%K140167140297%_
                                           _%body140307%_
                                           _%tag140305%_)))
                                      (_%E140166140175%_)))))
                             (_%splice-rlen140069%_
                              (lambda (_%e140121%_)
                                (let _%lp140123%_ ((_%e140125%_ _%e140121%_)
                                                   (_%n140126%_ '0))
                                  (let* ((_%e140127140134%_ _%e140125%_)
                                         (_%E140129140138%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140127140134%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140130140147%_
                                          (lambda (_%body140141%_
                                                   _%tag140142%_)
                                            (let ((_%$e140144%_ _%tag140142%_))
                                              (if (eq? 'splice _%$e140144%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx139873%_
                                                     _%where140060%_))
                                                  (if (eq? 'cons _%$e140144%_)
                                                      (_%lp140123%_
                                                       (cdr _%body140141%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n140126%_
                                                                '1)))
                                                      _%n140126%_))))))
                                    (if (pair? _%e140127140134%_)
                                        (let ((_%hd140131140150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140127140134%_)))
                                              (_%tl140132140152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140127140134%_))))
                                          (let* ((_%tag140155%_
                                                  _%hd140131140150%_)
                                                 (_%body140157%_
                                                  _%tl140132140152%_))
                                            (_%K140130140147%_
                                             _%body140157%_
                                             _%tag140155%_)))
                                        (_%E140129140138%_))))))
                             (_%splice-vars140070%_
                              (lambda (_%e140077%_)
                                (let _%recur140079%_ ((_%e140081%_ _%e140077%_)
                                                      (_%vars140082%_ '()))
                                  (let* ((_%e140083140090%_ _%e140081%_)
                                         (_%E140085140094%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140083140090%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140086140109%_
                                          (lambda (_%body140097%_
                                                   _%tag140098%_)
                                            (let ((_%$e140100%_ _%tag140098%_))
                                              (if (eq? 'var _%$e140100%_)
                                                  (cons _%body140097%_
                                                        _%vars140082%_)
                                                  (if (or (eq? 'cons
                                                               _%$e140100%_)
                                                          (eq? 'splice
                                                               _%$e140100%_))
                                                      (_%recur140079%_
                                                       (cdr _%body140097%_)
                                                       (_%recur140079%_
                                                        (car _%body140097%_)
                                                        _%vars140082%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e140100%_)
                      (eq? 'box _%$e140100%_))
                  (_%recur140079%_ _%body140097%_ _%vars140082%_)
                  _%vars140082%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e140083140090%_)
                                        (let ((_%hd140087140112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140083140090%_)))
                                              (_%tl140088140114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140083140090%_))))
                                          (let* ((_%tag140117%_
                                                  _%hd140087140112%_)
                                                 (_%body140119%_
                                                  _%tl140088140114%_))
                                            (_%K140086140109%_
                                             _%body140119%_
                                             _%tag140117%_)))
                                        (_%E140085140094%_))))))
                             (_%make-body140071%_
                              (lambda (_%vars140073%_)
                                (cons _%K140064%_
                                      (map (lambda (_%mvar140075%_)
                                             (let ((__tmp141270
                                                    (car _%mvar140075%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp141270
                                                _%vars140073%_
                                                _%BUG140067%_)))
                                           _%mvars140063%_)))))
                      (_%recur140068%_
                       _%hd140062%_
                       '()
                       _%target140061%_
                       _%E140065%_
                       _%make-body140071%_))))
                 (_%parse-clause139882%_
                  (lambda (_%hd139954%_ _%ids139955%_)
                    (let _%recur139957%_ ((_%e139959%_ _%hd139954%_)
                                          (_%vars139960%_ '())
                                          (_%depth139961%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e139959%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e139959%_))
                              (values '(any) _%vars139960%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e139959%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx139873%_
                                     _%hd139954%_))
                                  (if (let ((__tmp141271
                                             (lambda (_%id139966%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e139959%_
                                                  _%id139966%_)))))
                                        (declare (not safe))
                                        (__find __tmp141271 _%ids139955%_))
                                      (values (cons 'id _%e139959%_)
                                              _%vars139960%_)
                                      (if (let ((__tmp141272
                                                 (lambda (_%var139969%_)
                                                   (let ((__tmp141273
                                                          (car _%var139969%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e139959%_
                                                      __tmp141273)))))
                                            (declare (not safe))
                                            (__find __tmp141272
                                                    _%vars139960%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx139873%_
                                             _%e139959%_))
                                          (values (cons 'var _%e139959%_)
                                                  (cons (cons _%e139959%_
                                                              _%depth139961%_)
                                                        _%vars139960%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e139959%_))
                              (let* ((_%e139973139980%_ _%e139959%_)
                                     (_%E139975139984%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e139973139980%_))))
                                     (_%E139974140045%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e139973139980%_))
                                            (let ((_%e139976139988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e139973139980%_))))
                                              (let ((_%hd139977139991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139976139988%_)))
                                                    (_%tl139978139993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139976139988%_))))
                                                (let* ((_%hd139996%_
                                                        _%hd139977139991%_)
                                                       (_%rest139998%_
                                                        _%tl139978139993%_)
                                                       (_%make-pair140013%_
                                                        (lambda (_%tag140000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd140001%_
                         _%tl140002%_)
                  (let* ((_%hd-depth140004%_
                          (if (eq? _%tag140000%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth139961%_ '1))
                              _%depth139961%_))
                         (_g141274_
                          (_%recur139957%_
                           _%hd140001%_
                           _%vars139960%_
                           _%hd-depth140004%_)))
                    (begin
                      (let ((_g141275_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g141274_)
                                   (##values-length _g141274_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g141275_ 2)))
                            (error "Context expects 2 values" _g141275_)))
                      (let ((_%hd140006%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141274_ 0)))
                            (_%vars140007%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141274_ 1))))
                        (let ((_g141276_
                               (_%recur139957%_
                                _%tl140002%_
                                _%vars140007%_
                                _%depth139961%_)))
                          (begin
                            (let ((_g141277_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g141276_)
                                         (##values-length _g141276_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g141277_ 2)))
                                  (error "Context expects 2 values"
                                         _g141277_)))
                            (let ((_%tl140009%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141276_ 0)))
                                  (_%vars140010%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141276_ 1))))
                              (values (cons _%tag140000%_
                                            (cons _%hd140006%_ _%tl140009%_))
                                      _%vars140010%_)))))))))
               (_%e140014140021%_ _%rest139998%_)
               (_%E140016140025%_
                (lambda ()
                  (_%make-pair140013%_ 'cons _%hd139996%_ _%rest139998%_)))
               (_%E140015140041%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e140014140021%_))
                      (let ((_%e140017140029%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e140014140021%_))))
                        (let ((_%hd140018140032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140017140029%_)))
                              (_%tl140019140034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140017140029%_))))
                          (let* ((_%rest-hd140037%_ _%hd140018140032%_)
                                 (_%rest-tl140039%_ _%tl140019140034%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd140037%_))
                                (_%make-pair140013%_
                                 'splice
                                 _%hd139996%_
                                 _%rest-tl140039%_)
                                (_%make-pair140013%_
                                 'cons
                                 _%hd139996%_
                                 _%rest139998%_)))))
                      (_%E140016140025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E140015140041%_))))
                                            (_%E139975139984%_)))))
                                (_%E139974140045%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e139959%_))
                                  (values '(null) _%vars139960%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e139959%_))
                                      (let ((_g141278_
                                             (_%recur139957%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e139959%_)))
                                              _%vars139960%_
                                              _%depth139961%_)))
                                        (begin
                                          (let ((_g141279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g141278_)
                                                       (##values-length
                                                        _g141278_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g141279_ 2)))
                                                (error "Context expects 2 values"
                                                       _g141279_)))
                                          (let ((_%e140051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g141278_ 0)))
                                                (_%vars140052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g141278_
                                                    1))))
                                            (values (cons 'vector _%e140051%_)
                                                    _%vars140052%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e139959%_))
                                          (let ((_g141280_
                                                 (_%recur139957%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e139959%_)))
                                                  _%vars139960%_
                                                  _%depth139961%_)))
                                            (begin
                                              (let ((_g141281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g141280_)
                                                           (##values-length
                                                            _g141280_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g141281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g141281_)))
                                              (let ((_%e140055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141280_
                                                        0)))
                                                    (_%vars140056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141280_
                                                        1))))
                                                (values (cons 'box _%e140055%_)
                                                        _%vars140056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e139959%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e139959%_)))
                                                      _%vars139960%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx139873%_
                                                 _%e139959%_))))))))))))
          (let* ((_%e139883139896%_ _%stx139873%_)
                 (_%E139885139900%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e139883139896%_))))
                 (_%E139884139950%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e139883139896%_))
                        (let ((_%e139886139904%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e139883139896%_))))
                          (let ((_%hd139887139907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139886139904%_)))
                                (_%tl139888139909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139886139904%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139888139909%_))
                                (let ((_%e139889139912%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl139888139909%_))))
                                  (let ((_%hd139890139915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139889139912%_)))
                                        (_%tl139891139917%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139889139912%_))))
                                    (let ((_%expr139920%_ _%hd139890139915%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl139891139917%_))
                                          (let ((_%e139892139922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl139891139917%_))))
                                            (let ((_%hd139893139925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e139892139922%_)))
                                                  (_%tl139894139927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e139892139922%_))))
                                              (let* ((_%ids139930%_
                                                      _%hd139893139925%_)
                                                     (_%clauses139932%_
                                                      _%tl139894139927%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids139930%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses139932%_))
                                                        (let* ((_%ids139937%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids139930%_)))
                       (_%clauses139939%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses139932%_)))
                       (_%clause-ids139941%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses139939%_)))
                       (_%E139943%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target139945%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first139947%_
                        (if (null? _%clauses139939%_)
                            _%E139943%_
                            (car _%clause-ids139941%_))))
                  (let ((__tmp141283
                         (let ((__tmp141284
                                (let ((__tmp141286
                                       (let ((__tmp141288
                                              (cons (cons (cons _%E139943%_
                                                                '())
                                                          (cons (let ((__tmp141290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target139945%_ '()))
                              (__tmp141289
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target139945%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp141290 __tmp141289))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp141287
                                              (_%generate-body139879%_
                                               (_%generate-bindings139878%_
                                                _%target139945%_
                                                _%ids139937%_
                                                _%clauses139939%_
                                                _%clause-ids139941%_
                                                _%E139943%_)
                                               (cons _%first139947%_
                                                     (cons _%expr139920%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp141288
                                          __tmp141287)))
                                      (__tmp141285
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx139873%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp141286
                                   __tmp141285))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp141284)))
                        (__tmp141282
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx139873%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp141283 __tmp141282)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx139873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx139873%_
                                                       _%ids139930%_))))))
                                          (_%E139885139900%_)))))
                                (_%E139885139900%_))))
                        (_%E139885139900%_)))))
            (_%E139884139950%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx140598%_)
        (let* ((_%identifier=?140600%_ 'free-identifier=?)
               (_%unwrap-e140602%_ 'syntax-e)
               (_%wrap-e140604%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx140598%_
           _%identifier=?140600%_
           _%unwrap-e140602%_
           _%wrap-e140604%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx140606%_ _%identifier=?140607%_)
        (let* ((_%unwrap-e140609%_ 'syntax-e) (_%wrap-e140611%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx140606%_
           _%identifier=?140607%_
           _%unwrap-e140609%_
           _%wrap-e140611%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx140613%_ _%identifier=?140614%_ _%unwrap-e140615%_)
        (let ((_%wrap-e140617%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx140613%_
           _%identifier=?140614%_
           _%unwrap-e140615%_
           _%wrap-e140617%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g141291_
        (let ((_g141292_ (let () (declare (not safe)) (##length _g141291_))))
          (cond ((let () (declare (not safe)) (##fx= _g141292_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g141291_))
                ((let () (declare (not safe)) (##fx= _g141292_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g141291_))
                ((let () (declare (not safe)) (##fx= _g141292_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g141291_))
                ((let () (declare (not safe)) (##fx= _g141292_ 4))
                 (apply gx#macro-expand-syntax-case__% _g141291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g141291_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx139870%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx139870%_))
            (let ((__tmp141293
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx139870%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp141293 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd139828%_ . _%rest139829%_)
        (let ((_%len139831%_ (length _%hd139828%_)))
          (let _%lp139833%_ ((_%rest139835%_ _%rest139829%_))
            (let* ((_%rest139836139844%_ _%rest139835%_)
                   (_%else139838139852%_ (lambda () '#!void))
                   (_%K139840139858%_
                    (lambda (_%rest139855%_ _%hd139856%_)
                      (if (let ((__tmp141294 (length _%hd139856%_)))
                            (declare (not safe))
                            (##fx= _%len139831%_ __tmp141294))
                          (_%lp139833%_ _%rest139855%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd139856%_))))))
              (if (pair? _%rest139836139844%_)
                  (let ((_%hd139841139861%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest139836139844%_)))
                        (_%tl139842139863%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest139836139844%_))))
                    (let* ((_%hd139866%_ _%hd139841139861%_)
                           (_%rest139868%_ _%tl139842139863%_))
                      (_%K139840139858%_ _%rest139868%_ _%hd139866%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx139778%_ _%n139779%_)
        (let _%lp139781%_ ((_%rest139784%_ _%stx139778%_) (_%r139786%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest139784%_))
              (let* ((_%g139788139795%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest139784%_)))
                     (_%E139790139799%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g139788139795%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K139791139806%_
                      (lambda (_%rest139802%_ _%hd139803%_)
                        (_%lp139781%_
                         _%rest139802%_
                         (cons _%hd139803%_ _%r139786%_)))))
                (if (pair? _%g139788139795%_)
                    (let ((_%hd139792139809%_
                           (let ()
                             (declare (not safe))
                             (##car _%g139788139795%_)))
                          (_%tl139793139811%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g139788139795%_))))
                      (let* ((_%hd139814%_ _%hd139792139809%_)
                             (_%rest139816%_ _%tl139793139811%_))
                        (_%K139791139806%_ _%rest139816%_ _%hd139814%_)))
                    (_%E139790139799%_)))
              (let _%lp139818%_ ((_%n139820%_ _%n139779%_)
                                 (_%l139821%_ _%r139786%_)
                                 (_%r139823%_ _%rest139784%_))
                (if (null? _%l139821%_)
                    (values _%l139821%_ _%r139823%_)
                    (if (fxpositive? _%n139820%_)
                        (_%lp139818%_
                         (let () (declare (not safe)) (##fx- _%n139820%_ '1))
                         (cdr _%l139821%_)
                         (cons (car _%l139821%_) _%r139823%_))
                        (values (reverse! _%l139821%_) _%r139823%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx139728%_ _%n139729%_)
        (let _%lp139731%_ ((_%rest139734%_ _%stx139728%_) (_%r139736%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest139734%_))
              (let* ((_%g139738139745%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest139734%_)))
                     (_%E139740139749%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g139738139745%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K139741139756%_
                      (lambda (_%rest139752%_ _%hd139753%_)
                        (_%lp139731%_
                         _%rest139752%_
                         (cons _%hd139753%_ _%r139736%_)))))
                (if (pair? _%g139738139745%_)
                    (let ((_%hd139742139759%_
                           (let ()
                             (declare (not safe))
                             (##car _%g139738139745%_)))
                          (_%tl139743139761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g139738139745%_))))
                      (let* ((_%hd139764%_ _%hd139742139759%_)
                             (_%rest139766%_ _%tl139743139761%_))
                        (_%K139741139756%_ _%rest139766%_ _%hd139764%_)))
                    (_%E139740139749%_)))
              (let _%lp139768%_ ((_%n139770%_ _%n139729%_)
                                 (_%l139771%_ _%r139736%_)
                                 (_%r139773%_ _%rest139734%_))
                (if (null? _%l139771%_)
                    (vector _%l139771%_ _%r139773%_)
                    (if (fxpositive? _%n139770%_)
                        (_%lp139768%_
                         (let () (declare (not safe)) (##fx- _%n139770%_ '1))
                         (cdr _%l139771%_)
                         (cons (car _%l139771%_) _%r139773%_))
                        (vector (reverse! _%l139771%_) _%r139773%_))))))))))
