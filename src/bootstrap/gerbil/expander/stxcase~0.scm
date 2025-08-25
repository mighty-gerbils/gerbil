(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1756156301)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp141172 (list gx#expander::t))
            (__tmp141171 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp141172
         '(id depth)
         __tmp141171
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args141168%_
        (apply make-instance gx#syntax-pattern::t _%$args141168%_)))
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
      (lambda (_%self141154%_ _%stx141155%_)
        (let ((_%self141158%_ _%self141154%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx141155%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx140621%_)
        (letrec ((_%generate140623%_
                  (lambda (_%e140863%_)
                    (letrec ((_%BUG140865%_
                              (lambda (_%q141030%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx140621%_
                                         _%e140863%_
                                         _%q141030%_))))
                             (_%local-pattern-e140866%_
                              (lambda (_%pat141028%_)
                                (let ((__tmp141173
                                       (##structure-ref
                                        _%pat141028%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp141173))))
                             (_%getvar140867%_
                              (lambda (_%q141025%_ _%vars141026%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q141025%_
                                   _%vars141026%_
                                   _%BUG140865%_))))
                             (_%getarg140868%_
                              (lambda (_%arg140991%_ _%vars140992%_)
                                (let* ((_%arg140993141000%_ _%arg140991%_)
                                       (_%E140995141004%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg140993141000%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K140996141013%_
                                        (lambda (_%e141007%_ _%tag141008%_)
                                          (let ((_%$e141010%_ _%tag141008%_))
                                            (if (eq? 'ref _%$e141010%_)
                                                (_%getvar140867%_
                                                 _%e141007%_
                                                 _%vars140992%_)
                                                (if (eq? 'pattern _%$e141010%_)
                                                    (_%local-pattern-e140866%_
                                                     _%e141007%_)
                                                    (_%BUG140865%_
                                                     _%arg140991%_)))))))
                                  (if (pair? _%arg140993141000%_)
                                      (let ((_%hd140997141016%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg140993141000%_)))
                                            (_%tl140998141018%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg140993141000%_))))
                                        (let* ((_%tag141021%_
                                                _%hd140997141016%_)
                                               (_%e141023%_
                                                _%tl140998141018%_))
                                          (_%K140996141013%_
                                           _%e141023%_
                                           _%tag141021%_)))
                                      (_%E140995141004%_))))))
                      (let _%recur140870%_ ((_%e140872%_ _%e140863%_)
                                            (_%vars140873%_ '()))
                        (let* ((_%e140874140881%_ _%e140872%_)
                               (_%E140876140885%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e140874140881%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K140877140979%_
                                (lambda (_%body140888%_ _%tag140889%_)
                                  (let ((_%$e140891%_ _%tag140889%_))
                                    (if (eq? 'datum _%$e140891%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body140888%_))
                                        (if (eq? 'term _%$e140891%_)
                                            (let ((_%id140894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body140888%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id140894%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks140897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id140894%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks140897%_)
                                                        (let ((__tmp141174
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body140888%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp141174))
                (let ((__tmp141176
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body140888%_)))
                      (__tmp141175
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body140888%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp141176
                   __tmp141175
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id140894%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body140888%_))
                                                      (_%BUG140865%_
                                                       _%e140872%_))))
                                            (if (eq? 'pattern _%$e140891%_)
                                                (_%local-pattern-e140866%_
                                                 _%body140888%_)
                                                (if (eq? 'ref _%$e140891%_)
                                                    (_%getvar140867%_
                                                     _%body140888%_
                                                     _%vars140873%_)
                                                    (if (eq? 'cons
                                                             _%$e140891%_)
                                                        (let ((__tmp141178
                                                               (_%recur140870%_
                                                                (car _%body140888%_)
                                                                _%vars140873%_))
                                                              (__tmp141177
                                                               (_%recur140870%_
                                                                (cdr _%body140888%_)
                                                                _%vars140873%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp141178
                                                           __tmp141177))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e140891%_)
                    (let ((__tmp141179
                           (_%recur140870%_ _%body140888%_ _%vars140873%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp141179))
                    (if (eq? 'box _%$e140891%_)
                        (let ((__tmp141180
                               (_%recur140870%_
                                _%body140888%_
                                _%vars140873%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp141180))
                        (if (eq? 'splice _%$e140891%_)
                            (let* ((_%body140900140911%_ _%body140888%_)
                                   (_%E140902140915%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body140900140911%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K140903140953%_
                                    (lambda (_%args140918%_
                                             _%iv140919%_
                                             _%hd140920%_
                                             _%depth140921%_)
                                      (let* ((_%targets140927%_
                                              (map (lambda (_%g140922140924%_)
                                                     (_%getarg140868%_
                                                      _%g140922140924%_
                                                      _%vars140873%_))
                                                   _%args140918%_))
                                             (_%fold-in140929%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args140918%_)))
                                             (_%fold-out140931%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args140933%_
                                              (let ((__tmp141181
                                                     (cons _%fold-out140931%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp141181
                                                 _%fold-in140929%_)))
                                             (_%lambda-body140950%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth140921%_ '1))
                                                  (let ((_%r-args140941%_
                                                         (map (lambda (_%arg140935%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg140935%_)))
                      _%args140918%_))
                (_%r-vars140942%_
                 (let ((__tmp141182
                        (lambda (_%arg140937%_ _%var140938%_ _%r140939%_)
                          (cons (cons (cdr _%arg140937%_) _%var140938%_)
                                _%r140939%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp141182
                    _%vars140873%_
                    _%args140918%_
                    _%fold-in140929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur140870%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth140921%_ '1))
                         (cons _%hd140920%_
                               (cons (cons 'var _%fold-out140931%_)
                                     _%r-args140941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars140942%_))
                                                  (let* ((_%hd-vars140948%_
                                                          (let ((__tmp141183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg140944%_ _%var140945%_ _%r140946%_)
                           (cons (cons (cdr _%arg140944%_) _%var140945%_)
                                 _%r140946%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp141183
                     _%vars140873%_
                     _%args140918%_
                     _%fold-in140929%_)))
                 (__tmp141184
                  (_%recur140870%_ _%hd140920%_ _%hd-vars140948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp141184
                                                     _%fold-out140931%_)))))
                                        (let ((__tmp141188
                                               (if (let ((__tmp141189
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets140927%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp141189 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets140927%_))
                                                   '#!void))
                                              (__tmp141185
                                               (let ((__tmp141187
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args140933%_
                                                         _%lambda-body140950%_)))
                                                     (__tmp141186
                                                      (_%recur140870%_
                                                       _%iv140919%_
                                                       _%vars140873%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp141187
                                                  __tmp141186
                                                  _%targets140927%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp141188
                                           __tmp141185))))))
                              (if (pair? _%body140900140911%_)
                                  (let ((_%hd140904140956%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body140900140911%_)))
                                        (_%tl140905140958%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body140900140911%_))))
                                    (let ((_%depth140961%_ _%hd140904140956%_))
                                      (if (pair? _%tl140905140958%_)
                                          (let ((_%hd140906140963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl140905140958%_)))
                                                (_%tl140907140965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl140905140958%_))))
                                            (let ((_%hd140968%_
                                                   _%hd140906140963%_))
                                              (if (pair? _%tl140907140965%_)
                                                  (let ((_%hd140908140970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140907140965%_)))
                                                        (_%tl140909140972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140907140965%_))))
                                                    (let* ((_%iv140975%_
                                                            _%hd140908140970%_)
                                                           (_%args140977%_
                                                            _%tl140909140972%_))
                                                      (_%K140903140953%_
                                                       _%args140977%_
                                                       _%iv140975%_
                                                       _%hd140968%_
                                                       _%depth140961%_)))
                                                  (_%E140902140915%_))))
                                          (_%E140902140915%_))))
                                  (_%E140902140915%_)))
                            (if (eq? 'var _%$e140891%_)
                                _%body140888%_
                                (_%BUG140865%_ _%e140872%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e140874140881%_)
                              (let ((_%hd140878140982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140874140881%_)))
                                    (_%tl140879140984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140874140881%_))))
                                (let* ((_%tag140987%_ _%hd140878140982%_)
                                       (_%body140989%_ _%tl140879140984%_))
                                  (_%K140877140979%_
                                   _%body140989%_
                                   _%tag140987%_)))
                              (_%E140876140885%_)))))))
                 (_%parse140624%_
                  (lambda (_%e140665%_)
                    (letrec ((_%make-cons140667%_
                              (lambda (_%hd140855%_ _%tl140856%_)
                                (let ((_g141190_ _%hd140855%_)
                                      (_g141192_ _%tl140856%_))
                                  (begin
                                    (let ((_g141191_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141190_)
                                                 (##values-length _g141190_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141191_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141191_)))
                                    (let ((_g141193_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141192_)
                                                 (##values-length _g141192_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141193_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141193_)))
                                    (let ((_%hd-e140858%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141190_ 0)))
                                          (_%hd-vars140859%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141190_ 1))))
                                      (let ((_%tl-e140860%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141192_ 0)))
                                            (_%tl-vars140861%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141192_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e140858%_
                                                            _%tl-e140860%_))
                                                (append _%hd-vars140859%_
                                                        _%tl-vars140861%_))))))))
                             (_%make-splice140668%_
                              (lambda (_%where140791%_
                                       _%depth140792%_
                                       _%hd140793%_
                                       _%tl140794%_)
                                (let ((_g141194_ _%hd140793%_)
                                      (_g141196_ _%tl140794%_))
                                  (begin
                                    (let ((_g141195_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141194_)
                                                 (##values-length _g141194_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141195_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141195_)))
                                    (let ((_g141197_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141196_)
                                                 (##values-length _g141196_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141197_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141197_)))
                                    (let ((_%hd-e140796%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141194_ 0)))
                                          (_%hd-vars140797%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141194_ 1))))
                                      (let ((_%tl-e140798%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141196_ 0)))
                                            (_%tl-vars140799%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141196_ 1))))
                                        (let _%lp140801%_ ((_%rest140803%_
                                                            _%hd-vars140797%_)
                                                           (_%targets140804%_
                                                            '())
                                                           (_%vars140805%_
                                                            _%tl-vars140799%_))
                                          (let* ((_%rest140806140816%_
                                                  _%rest140803%_)
                                                 (_%else140808140824%_
                                                  (lambda ()
                                                    (if (null? _%targets140804%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx140621%_
                                                           _%where140791%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth140792%_
                                    (cons _%hd-e140796%_
                                          (cons _%tl-e140798%_
                                                _%targets140804%_))))
                        _%vars140805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K140810140836%_
                                                  (lambda (_%rest140827%_
                                                           _%hd-pat140828%_
                                                           _%hd-depth*140829%_)
                                                    (let ((_%hd-depth140831%_
                                                           (fx- _%hd-depth*140829%_
                                                                _%depth140792%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth140831%_))
                                                          (_%lp140801%_
                                                           _%rest140827%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat140828%_)
                         _%targets140804%_)
                   (cons (cons _%hd-depth140831%_ _%hd-pat140828%_)
                         _%vars140805%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth140831%_))
                      (_%lp140801%_
                       _%rest140827%_
                       (cons (cons 'pattern _%hd-pat140828%_)
                             _%targets140804%_)
                       _%vars140805%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx140621%_
                         _%where140791%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest140806140816%_)
                                                (let ((_%hd140811140839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest140806140816%_)))
                                                      (_%tl140812140841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest140806140816%_))))
                                                  (if (pair? _%hd140811140839%_)
                                                      (let ((_%hd140813140844%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd140811140839%_)))
                    (_%tl140814140846%_
                     (let () (declare (not safe)) (##cdr _%hd140811140839%_))))
                (let* ((_%hd-depth*140849%_ _%hd140813140844%_)
                       (_%hd-pat140851%_ _%tl140814140846%_)
                       (_%rest140853%_ _%tl140812140841%_))
                  (_%K140810140836%_
                   _%rest140853%_
                   _%hd-pat140851%_
                   _%hd-depth*140849%_)))
              (_%else140808140824%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140808140824%_))))))))))
                             (_%recur140669%_
                              (lambda (_%e140674%_ _%is-e?140675%_)
                                (if (_%is-e?140675%_ _%e140674%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx140621%_))
                                    (if (gx#syntax-local-pattern? _%e140674%_)
                                        (let* ((_%pat140679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e140674%_)))
                                               (_%depth140681%_
                                                (##structure-ref
                                                 _%pat140679%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth140681%_)
                                              (values (cons 'ref _%pat140679%_)
                                                      (cons (cons _%depth140681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat140679%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat140679%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e140674%_))
                                            (values (cons 'term _%e140674%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e140674%_))
                                                (let* ((_%e140685140692%_
                                                        _%e140674%_)
                                                       (_%E140687140696%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e140685140692%_))))
                                                       (_%E140686140778%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e140685140692%_))
                      (let ((_%e140688140700%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e140685140692%_))))
                        (let ((_%hd140689140703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140688140700%_)))
                              (_%tl140690140705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140688140700%_))))
                          (let* ((_%hd140708%_ _%hd140689140703%_)
                                 (_%rest140710%_ _%tl140690140705%_))
                            (if (_%is-e?140675%_ _%hd140708%_)
                                (let* ((_%e140711140718%_ _%rest140710%_)
                                       (_%E140713140722%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx140621%_
                                             _%e140674%_))))
                                       (_%E140712140736%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e140711140718%_))
                                              (let ((_%e140714140726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e140711140718%_))))
                                                (let ((_%hd140715140729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140714140726%_)))
                                                      (_%tl140716140731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140714140726%_))))
                                                  (let ((_%rest140734%_
                                                         _%hd140715140729%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140716140731%_))
                                                        (_%recur140669%_
                                                         _%rest140734%_
                                                         false)
                                                        (_%E140713140722%_)))))
                                              (_%E140713140722%_)))))
                                  (_%E140712140736%_))
                                (let _%lp140740%_ ((_%rest140742%_
                                                    _%rest140710%_)
                                                   (_%depth140743%_ '0))
                                  (let* ((_%e140744140751%_ _%rest140742%_)
                                         (_%E140746140755%_
                                          (lambda ()
                                            (if (fxpositive? _%depth140743%_)
                                                (_%make-splice140668%_
                                                 _%e140674%_
                                                 _%depth140743%_
                                                 (_%recur140669%_
                                                  _%hd140708%_
                                                  _%is-e?140675%_)
                                                 (_%recur140669%_
                                                  _%rest140742%_
                                                  _%is-e?140675%_))
                                                (_%make-cons140667%_
                                                 (_%recur140669%_
                                                  _%hd140708%_
                                                  _%is-e?140675%_)
                                                 (_%recur140669%_
                                                  _%rest140742%_
                                                  _%is-e?140675%_)))))
                                         (_%E140745140774%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e140744140751%_))
                                                (let ((_%e140747140759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e140744140751%_))))
                                                  (let ((_%hd140748140762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140747140759%_)))
                                                        (_%tl140749140764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140747140759%_))))
                                                    (let* ((_%rest-hd140767%_
                                                            _%hd140748140762%_)
                                                           (_%rest-tl140769%_
                                                            _%tl140749140764%_))
                                                      (if (_%is-e?140675%_
                                                           _%rest-hd140767%_)
                                                          (_%lp140740%_
                                                           _%rest-tl140769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth140743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth140743%_)
                      (_%make-splice140668%_
                       _%e140674%_
                       _%depth140743%_
                       (_%recur140669%_ _%hd140708%_ _%is-e?140675%_)
                       (_%recur140669%_ _%rest140742%_ _%is-e?140675%_))
                      (_%make-cons140667%_
                       (_%recur140669%_ _%hd140708%_ _%is-e?140675%_)
                       (_%recur140669%_ _%rest140742%_ _%is-e?140675%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E140746140755%_)))))
                                    (_%E140745140774%_)))))))
                      (_%E140687140696%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E140686140778%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e140674%_))
                                                    (let ((_g141198_
                                                           (_%recur140669%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e140674%_)))
                    _%is-e?140675%_)))
              (begin
                (let ((_g141199_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g141198_)
                             (##values-length _g141198_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g141199_ 2)))
                      (error "Context expects 2 values" _g141199_)))
                (let ((_%e140783%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141198_ 0)))
                      (_%vars140784%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141198_ 1))))
                  (values (cons 'vector _%e140783%_) _%vars140784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e140674%_))
                                                        (let ((_g141200_
                                                               (_%recur140669%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e140674%_)))
                        _%is-e?140675%_)))
                  (begin
                    (let ((_g141201_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g141200_)
                                 (##values-length _g141200_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g141201_ 2)))
                          (error "Context expects 2 values" _g141201_)))
                    (let ((_%e140787%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141200_ 0)))
                          (_%vars140788%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141200_ 1))))
                      (values (cons 'box _%e140787%_) _%vars140788%_))))
                (values (cons 'datum _%e140674%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g141202_
                             (_%recur140669%_ _%e140665%_ gx#ellipsis?)))
                        (begin
                          (let ((_g141203_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g141202_)
                                       (##values-length _g141202_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g141203_ 2)))
                                (error "Context expects 2 values" _g141203_)))
                          (let ((_%tree140671%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141202_ 0)))
                                (_%vars140672%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141202_ 1))))
                            (if (null? _%vars140672%_)
                                _%tree140671%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx140621%_
                                   _%vars140672%_))))))))))
          (let* ((_%e140625140635%_ _%stx140621%_)
                 (_%E140627140639%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx140621%_))))
                 (_%E140626140661%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e140625140635%_))
                        (let ((_%e140628140643%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e140625140635%_))))
                          (let ((_%hd140629140646%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140628140643%_)))
                                (_%tl140630140648%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140628140643%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140630140648%_))
                                (let ((_%e140631140651%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl140630140648%_))))
                                  (let ((_%hd140632140654%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140631140651%_)))
                                        (_%tl140633140656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140631140651%_))))
                                    (let ((_%form140659%_ _%hd140632140654%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140633140656%_))
                                          (let ((__tmp141205
                                                 (_%generate140623%_
                                                  (_%parse140624%_
                                                   _%form140659%_)))
                                                (__tmp141204
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx140621%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp141205
                                             __tmp141204))
                                          (_%E140627140639%_)))))
                                (_%E140627140639%_))))
                        (_%E140627140639%_)))))
            (_%E140626140661%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx139870%_
               _%identifier=?139871%_
               _%unwrap-e139872%_
               _%wrap-e139873%_)
        (letrec ((_%generate-bindings139875%_
                  (lambda (_%target140485%_
                           _%ids140486%_
                           _%clauses140487%_
                           _%clause-ids140488%_
                           _%E140489%_)
                    (letrec ((_%generate1140491%_
                              (lambda (_%clause140588%_
                                       _%clause-id140589%_
                                       _%E140590%_)
                                (cons (cons _%clause-id140589%_ '())
                                      (cons (let ((__tmp141207
                                                   (cons _%target140485%_ '()))
                                                  (__tmp141206
                                                   (_%generate-clause139877%_
                                                    _%target140485%_
                                                    _%ids140486%_
                                                    _%clause140588%_
                                                    _%E140590%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp141207
                                               __tmp141206))
                                            '())))))
                      (let _%lp140493%_ ((_%rest140495%_ _%clauses140487%_)
                                         (_%rest-ids140496%_
                                          _%clause-ids140488%_)
                                         (_%bindings140497%_ '()))
                        (let* ((_%rest140498140506%_ _%rest140495%_)
                               (_%else140500140514%_
                                (lambda () _%bindings140497%_))
                               (_%K140502140576%_
                                (lambda (_%rest140517%_ _%clause140518%_)
                                  (let* ((_%rest-ids140519140526%_
                                          _%rest-ids140496%_)
                                         (_%E140521140530%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids140519140526%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K140522140564%_
                                          (lambda (_%rest-ids140533%_
                                                   _%clause-id140534%_)
                                            (let* ((_%rest-ids140535140543%_
                                                    _%rest-ids140533%_)
                                                   (_%else140537140551%_
                                                    (lambda ()
                                                      (cons (_%generate1140491%_
                                                             _%clause140518%_
                                                             _%clause-id140534%_
                                                             _%E140489%_)
                                                            _%bindings140497%_)))
                                                   (_%K140539140556%_
                                                    (lambda (_%next-clause-id140554%_)
                                                      (_%lp140493%_
                                                       _%rest140517%_
                                                       _%rest-ids140533%_
                                                       (cons (_%generate1140491%_
                                                              _%clause140518%_
                                                              _%clause-id140534%_
                                                              _%next-clause-id140554%_)
                                                             _%bindings140497%_)))))
                                              (if (pair? _%rest-ids140535140543%_)
                                                  (let* ((_%hd140540140559%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids140535140543%_)))
                                                         (_%next-clause-id140562%_
                                                          _%hd140540140559%_))
                                                    (_%K140539140556%_
                                                     _%next-clause-id140562%_))
                                                  (_%else140537140551%_))))))
                                    (if (pair? _%rest-ids140519140526%_)
                                        (let ((_%hd140523140567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids140519140526%_)))
                                              (_%tl140524140569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids140519140526%_))))
                                          (let* ((_%clause-id140572%_
                                                  _%hd140523140567%_)
                                                 (_%rest-ids140574%_
                                                  _%tl140524140569%_))
                                            (_%K140522140564%_
                                             _%rest-ids140574%_
                                             _%clause-id140572%_)))
                                        (_%E140521140530%_))))))
                          (if (pair? _%rest140498140506%_)
                              (let ((_%hd140503140579%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140498140506%_)))
                                    (_%tl140504140581%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140498140506%_))))
                                (let* ((_%clause140584%_ _%hd140503140579%_)
                                       (_%rest140586%_ _%tl140504140581%_))
                                  (_%K140502140576%_
                                   _%rest140586%_
                                   _%clause140584%_)))
                              (_%else140500140514%_)))))))
                 (_%generate-body139876%_
                  (lambda (_%bindings140445%_ _%body140446%_)
                    (let _%recur140448%_ ((_%rest140450%_ _%bindings140445%_))
                      (let* ((_%rest140451140459%_ _%rest140450%_)
                             (_%else140453140467%_ (lambda () _%body140446%_))
                             (_%K140455140473%_
                              (lambda (_%rest140470%_ _%hd140471%_)
                                (let ((__tmp141209 (cons _%hd140471%_ '()))
                                      (__tmp141208
                                       (_%recur140448%_ _%rest140470%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp141209
                                   __tmp141208)))))
                        (if (pair? _%rest140451140459%_)
                            (let ((_%hd140456140476%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140451140459%_)))
                                  (_%tl140457140478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140451140459%_))))
                              (let* ((_%hd140481%_ _%hd140456140476%_)
                                     (_%rest140483%_ _%tl140457140478%_))
                                (_%K140455140473%_
                                 _%rest140483%_
                                 _%hd140481%_)))
                            (_%else140453140467%_))))))
                 (_%generate-clause139877%_
                  (lambda (_%target140308%_
                           _%ids140309%_
                           _%clause140310%_
                           _%E140311%_)
                    (letrec ((_%generate1140313%_
                              (lambda (_%hd140400%_
                                       _%fender140401%_
                                       _%body140402%_)
                                (let ((_g141210_
                                       (_%parse-clause139879%_
                                        _%hd140400%_
                                        _%ids140309%_)))
                                  (begin
                                    (let ((_g141211_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141210_)
                                                 (##values-length _g141210_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141211_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141211_)))
                                    (let ((_%e140404%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141210_ 0)))
                                          (_%mvars140405%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141210_ 1))))
                                      (let* ((_%pvars140407%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars140405%_))))
                                             (_%E140409%_
                                              (cons _%E140311%_
                                                    (cons _%target140308%_
                                                          '())))
                                             (_%K140442%_
                                              (let ((__tmp141212
                                                     (let ((__tmp141214
                                                            (map (lambda (_%mvar140411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar140412%_)
                           (let* ((_%mvar140413140420%_ _%mvar140411%_)
                                  (_%E140415140424%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar140413140420%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K140416140430%_
                                   (lambda (_%depth140427%_ _%id140428%_)
                                     (cons _%id140428%_
                                           (cons (let ((__tmp141216
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id140428%_)))
                                                       (__tmp141215
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar140412%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp141216
                                                    __tmp141215
                                                    _%depth140427%_))
                                                 '())))))
                             (if (pair? _%mvar140413140420%_)
                                 (let ((_%hd140417140433%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar140413140420%_)))
                                       (_%tl140418140435%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar140413140420%_))))
                                   (let* ((_%id140438%_ _%hd140417140433%_)
                                          (_%depth140440%_ _%tl140418140435%_))
                                     (_%K140416140430%_
                                      _%depth140440%_
                                      _%id140438%_)))
                                 (_%E140415140424%_))))
                         _%mvars140405%_
                         _%pvars140407%_))
                   (__tmp141213
                    (if (eq? _%fender140401%_ '#t)
                        _%body140402%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender140401%_
                           _%body140402%_
                           _%E140409%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp141214 __tmp141213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars140407%_
                                                 __tmp141212))))
                                        (_%generate-match139878%_
                                         _%hd140400%_
                                         _%target140308%_
                                         _%e140404%_
                                         _%mvars140405%_
                                         _%K140442%_
                                         _%E140409%_))))))))
                      (let* ((_%e140314140334%_ _%clause140310%_)
                             (_%E140323140338%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e140314140334%_))))
                             (_%E140316140372%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140314140334%_))
                                    (let ((_%e140324140342%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140314140334%_))))
                                      (let ((_%hd140325140345%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140324140342%_)))
                                            (_%tl140326140347%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140324140342%_))))
                                        (let ((_%hd140350%_
                                               _%hd140325140345%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140326140347%_))
                                              (let ((_%e140327140352%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140326140347%_))))
                                                (let ((_%hd140328140355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140327140352%_)))
                                                      (_%tl140329140357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140327140352%_))))
                                                  (let ((_%fender140360%_
                                                         _%hd140328140355%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140329140357%_))
                                                        (let ((_%e140330140362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl140329140357%_))))
                  (let ((_%hd140331140365%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140330140362%_)))
                        (_%tl140332140367%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140330140362%_))))
                    (let ((_%body140370%_ _%hd140331140365%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140332140367%_))
                          (_%generate1140313%_
                           _%hd140350%_
                           _%fender140360%_
                           _%body140370%_)
                          (_%E140323140338%_)))))
                (_%E140323140338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E140323140338%_)))))
                                    (_%E140323140338%_))))
                             (_%E140315140396%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140314140334%_))
                                    (let ((_%e140317140376%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140314140334%_))))
                                      (let ((_%hd140318140379%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140317140376%_)))
                                            (_%tl140319140381%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140317140376%_))))
                                        (let ((_%hd140384%_
                                               _%hd140318140379%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140319140381%_))
                                              (let ((_%e140320140386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140319140381%_))))
                                                (let ((_%hd140321140389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140320140386%_)))
                                                      (_%tl140322140391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140320140386%_))))
                                                  (let ((_%body140394%_
                                                         _%hd140321140389%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140322140391%_))
                                                        (_%generate1140313%_
                                                         _%hd140384%_
                                                         '#t
                                                         _%body140394%_)
                                                        (_%E140316140372%_)))))
                                              (_%E140316140372%_)))))
                                    (_%E140316140372%_)))))
                        (_%E140315140396%_)))))
                 (_%generate-match139878%_
                  (lambda (_%where140057%_
                           _%target140058%_
                           _%hd140059%_
                           _%mvars140060%_
                           _%K140061%_
                           _%E140062%_)
                    (letrec ((_%BUG140064%_
                              (lambda (_%q140306%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx139870%_
                                         _%hd140059%_
                                         _%q140306%_))))
                             (_%recur140065%_
                              (lambda (_%e140156%_
                                       _%vars140157%_
                                       _%target140158%_
                                       _%E140159%_
                                       _%k140160%_)
                                (let* ((_%e140161140168%_ _%e140156%_)
                                       (_%E140163140172%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e140161140168%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K140164140294%_
                                        (lambda (_%body140175%_ _%tag140176%_)
                                          (let ((_%$e140178%_ _%tag140176%_))
                                            (if (eq? 'any _%$e140178%_)
                                                (_%k140160%_ _%vars140157%_)
                                                (if (eq? 'id _%$e140178%_)
                                                    (let ((__tmp141221
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target140158%_)))
                                                          (__tmp141217
                                                           (let ((__tmp141219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp141220
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e139873%_
                                    _%body140175%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?139871%_
                             __tmp141220
                             _%target140158%_)))
                         (__tmp141218 (_%k140160%_ _%vars140157%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp141219 __tmp141218 _%E140159%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp141221 __tmp141217 _%E140159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e140178%_)
                                                        (_%k140160%_
                                                         (cons (cons _%body140175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target140158%_)
                       _%vars140157%_))
                (if (eq? 'cons _%$e140178%_)
                    (let ((_%$e140181%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd140182%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl140183%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp141227
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target140158%_)))
                            (__tmp141222
                             (let ((__tmp141226
                                    (cons (cons (cons _%$e140181%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e139872%_
                                                         _%target140158%_))
                                                      '()))
                                          '()))
                                   (__tmp141223
                                    (let ((__tmp141225
                                           (cons (cons (cons _%$hd140182%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e140181%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl140183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e140181%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp141224
                                           (let* ((_%body140184140191%_
                                                   _%body140175%_)
                                                  (_%E140186140195%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body140184140191%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K140187140203%_
                                                   (lambda (_%tl140198%_
                                                            _%hd140199%_)
                                                     (_%recur140065%_
                                                      _%hd140199%_
                                                      _%vars140157%_
                                                      _%$hd140182%_
                                                      _%E140159%_
                                                      (lambda (_%vars140201%_)
                                                        (_%recur140065%_
                                                         _%tl140198%_
                                                         _%vars140201%_
                                                         _%$tl140183%_
                                                         _%E140159%_
                                                         _%k140160%_))))))
                                             (if (pair? _%body140184140191%_)
                                                 (let ((_%hd140188140206%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body140184140191%_)))
                                                       (_%tl140189140208%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body140184140191%_))))
                                                   (let* ((_%hd140211%_
                                                           _%hd140188140206%_)
                                                          (_%tl140213%_
                                                           _%tl140189140208%_))
                                                     (_%K140187140203%_
                                                      _%tl140213%_
                                                      _%hd140211%_)))
                                                 (_%E140186140195%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp141225
                                       __tmp141224))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp141226
                                __tmp141223))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp141227
                         __tmp141222
                         _%E140159%_)))
                    (if (eq? 'splice _%$e140178%_)
                        (let* ((_%body140214140221%_ _%body140175%_)
                               (_%E140216140225%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body140214140221%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K140217140276%_
                                (lambda (_%tl140228%_ _%hd140229%_)
                                  (let* ((_%rlen140231%_
                                          (_%splice-rlen140066%_ _%tl140228%_))
                                         (_%$target140233%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd140235%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl140237%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp140239%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e140241%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd140243%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl140245%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars140247%_
                                          (_%splice-vars140067%_ _%hd140229%_))
                                         (_%lvars140249%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140247%_)))
                                         (_%tlvars140251%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140247%_)))
                                         (_%linit140255%_
                                          (map (lambda (_%var140253%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars140249%_)))
                                    (letrec ((_%make-loop140258%_
                                              (lambda (_%vars140262%_)
                                                (let ((__tmp141229
                                                       (cons (cons (cons _%$lp140239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp141242
                                        (cons _%$hd140235%_ _%lvars140249%_))
                                       (__tmp141230
                                        (let ((__tmp141241
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd140235%_)))
                                              (__tmp141235
                                               (let ((__tmp141240
                                                      (cons (cons (cons _%$lp-e140241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e139872%_
                                   _%$hd140235%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141236
                                                      (let ((__tmp141239
                                                             (cons (cons (cons _%$lp-hd140243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e140241%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl140245%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e140241%_))
                                             '()))
                                 '())))
                    (__tmp141237
                     (_%recur140065%_
                      _%hd140229%_
                      '()
                      _%$lp-hd140243%_
                      _%E140159%_
                      (lambda (_%hdvars140264%_)
                        (cons _%$lp140239%_
                              (cons _%$lp-tl140245%_
                                    (map (lambda (_%svar140266%_
                                                  _%lvar140267%_)
                                           (let ((__tmp141238
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar140266%_
                                                     _%hdvars140264%_
                                                     _%BUG140064%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp141238
                                              _%lvar140267%_)))
                                         _%svars140247%_
                                         _%lvars140249%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp141239 __tmp141237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141240
                                                  __tmp141236)))
                                              (__tmp141231
                                               (let ((__tmp141234
                                                      (map (lambda (_%lvar140269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar140270%_)
                     (cons (cons _%tlvar140270%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar140269%_))
                                 '())))
                   _%lvars140249%_
                   _%tlvars140251%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141232
                                                      (_%k140160%_
                                                       (let ((__tmp141233
                                                              (lambda (_%svar140272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar140273%_
                               _%r140274%_)
                        (cons (cons _%svar140272%_ _%tlvar140273%_)
                              _%r140274%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp141233
                  _%vars140262%_
                  _%svars140247%_
                  _%tlvars140251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141234
                                                  __tmp141232))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141241
                                           __tmp141235
                                           __tmp141231))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp141242
                                    __tmp141230))
                                 '()))
                     '()))
              (__tmp141228
               (cons _%$lp140239%_ (cons _%$target140233%_ _%linit140255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp141229
                                                   __tmp141228)))))
                                      (let ((_%body140260%_
                                             (let ((__tmp141244
                                                    (cons (cons (cons _%$target140233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl140237%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target140158%_
                                 _%rlen140231%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141243
                                                    (_%recur140065%_
                                                     _%tl140228%_
                                                     _%vars140157%_
                                                     _%$tl140237%_
                                                     _%E140159%_
                                                     _%make-loop140258%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141244
                                                __tmp141243))))
                                        (let ((__tmp141248
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target140158%_)))
                                              (__tmp141245
                                               (if (zero? _%rlen140231%_)
                                                   _%body140260%_
                                                   (let ((__tmp141246
                                                          (let ((__tmp141247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target140158%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp141247 _%rlen140231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp141246
                                                      _%body140260%_
                                                      _%E140159%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141248
                                           __tmp141245
                                           _%E140159%_))))))))
                          (if (pair? _%body140214140221%_)
                              (let ((_%hd140218140279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body140214140221%_)))
                                    (_%tl140219140281%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body140214140221%_))))
                                (let* ((_%hd140284%_ _%hd140218140279%_)
                                       (_%tl140286%_ _%tl140219140281%_))
                                  (_%K140217140276%_
                                   _%tl140286%_
                                   _%hd140284%_)))
                              (_%E140216140225%_)))
                        (if (eq? 'null _%$e140178%_)
                            (let ((__tmp141250
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target140158%_)))
                                  (__tmp141249 (_%k140160%_ _%vars140157%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp141250
                               __tmp141249
                               _%E140159%_))
                            (if (eq? 'vector _%$e140178%_)
                                (let ((_%$e140288%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp141255
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target140158%_)))
                                        (__tmp141251
                                         (let ((__tmp141253
                                                (cons (cons (cons _%$e140288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp141254
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e139872%_
                                    _%target140158%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp141254))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp141252
                                                (_%recur140065%_
                                                 _%body140175%_
                                                 _%vars140157%_
                                                 _%$e140288%_
                                                 _%E140159%_
                                                 _%k140160%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp141253
                                            __tmp141252))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp141255
                                     __tmp141251
                                     _%E140159%_)))
                                (if (eq? 'box _%$e140178%_)
                                    (let ((_%$e140290%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp141260
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target140158%_)))
                                            (__tmp141256
                                             (let ((__tmp141258
                                                    (cons (cons (cons _%$e140290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp141259
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e139872%_
                                        _%target140158%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp141259))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141257
                                                    (_%recur140065%_
                                                     _%body140175%_
                                                     _%vars140157%_
                                                     _%$e140290%_
                                                     _%E140159%_
                                                     _%k140160%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141258
                                                __tmp141257))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp141260
                                         __tmp141256
                                         _%E140159%_)))
                                    (if (eq? 'datum _%$e140178%_)
                                        (let ((_%$e140292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp141266
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target140158%_)))
                                                (__tmp141261
                                                 (let ((__tmp141265
                                                        (cons (cons (cons _%$e140292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target140158%_))
                                  '()))
                      '()))
               (__tmp141262
                (let ((__tmp141264
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e140292%_ _%body140175%_)))
                      (__tmp141263 (_%k140160%_ _%vars140157%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp141264 __tmp141263 _%E140159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp141265
                                                    __tmp141262))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp141266
                                             __tmp141261
                                             _%E140159%_)))
                                        (_%BUG140064%_
                                         _%e140156%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e140161140168%_)
                                      (let ((_%hd140165140297%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140161140168%_)))
                                            (_%tl140166140299%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140161140168%_))))
                                        (let* ((_%tag140302%_
                                                _%hd140165140297%_)
                                               (_%body140304%_
                                                _%tl140166140299%_))
                                          (_%K140164140294%_
                                           _%body140304%_
                                           _%tag140302%_)))
                                      (_%E140163140172%_)))))
                             (_%splice-rlen140066%_
                              (lambda (_%e140118%_)
                                (let _%lp140120%_ ((_%e140122%_ _%e140118%_)
                                                   (_%n140123%_ '0))
                                  (let* ((_%e140124140131%_ _%e140122%_)
                                         (_%E140126140135%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140124140131%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140127140144%_
                                          (lambda (_%body140138%_
                                                   _%tag140139%_)
                                            (let ((_%$e140141%_ _%tag140139%_))
                                              (if (eq? 'splice _%$e140141%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx139870%_
                                                     _%where140057%_))
                                                  (if (eq? 'cons _%$e140141%_)
                                                      (_%lp140120%_
                                                       (cdr _%body140138%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n140123%_
                                                                '1)))
                                                      _%n140123%_))))))
                                    (if (pair? _%e140124140131%_)
                                        (let ((_%hd140128140147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140124140131%_)))
                                              (_%tl140129140149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140124140131%_))))
                                          (let* ((_%tag140152%_
                                                  _%hd140128140147%_)
                                                 (_%body140154%_
                                                  _%tl140129140149%_))
                                            (_%K140127140144%_
                                             _%body140154%_
                                             _%tag140152%_)))
                                        (_%E140126140135%_))))))
                             (_%splice-vars140067%_
                              (lambda (_%e140074%_)
                                (let _%recur140076%_ ((_%e140078%_ _%e140074%_)
                                                      (_%vars140079%_ '()))
                                  (let* ((_%e140080140087%_ _%e140078%_)
                                         (_%E140082140091%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140080140087%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140083140106%_
                                          (lambda (_%body140094%_
                                                   _%tag140095%_)
                                            (let ((_%$e140097%_ _%tag140095%_))
                                              (if (eq? 'var _%$e140097%_)
                                                  (cons _%body140094%_
                                                        _%vars140079%_)
                                                  (if (or (eq? 'cons
                                                               _%$e140097%_)
                                                          (eq? 'splice
                                                               _%$e140097%_))
                                                      (_%recur140076%_
                                                       (cdr _%body140094%_)
                                                       (_%recur140076%_
                                                        (car _%body140094%_)
                                                        _%vars140079%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e140097%_)
                      (eq? 'box _%$e140097%_))
                  (_%recur140076%_ _%body140094%_ _%vars140079%_)
                  _%vars140079%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e140080140087%_)
                                        (let ((_%hd140084140109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140080140087%_)))
                                              (_%tl140085140111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140080140087%_))))
                                          (let* ((_%tag140114%_
                                                  _%hd140084140109%_)
                                                 (_%body140116%_
                                                  _%tl140085140111%_))
                                            (_%K140083140106%_
                                             _%body140116%_
                                             _%tag140114%_)))
                                        (_%E140082140091%_))))))
                             (_%make-body140068%_
                              (lambda (_%vars140070%_)
                                (cons _%K140061%_
                                      (map (lambda (_%mvar140072%_)
                                             (let ((__tmp141267
                                                    (car _%mvar140072%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp141267
                                                _%vars140070%_
                                                _%BUG140064%_)))
                                           _%mvars140060%_)))))
                      (_%recur140065%_
                       _%hd140059%_
                       '()
                       _%target140058%_
                       _%E140062%_
                       _%make-body140068%_))))
                 (_%parse-clause139879%_
                  (lambda (_%hd139951%_ _%ids139952%_)
                    (let _%recur139954%_ ((_%e139956%_ _%hd139951%_)
                                          (_%vars139957%_ '())
                                          (_%depth139958%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e139956%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e139956%_))
                              (values '(any) _%vars139957%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e139956%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx139870%_
                                     _%hd139951%_))
                                  (if (let ((__tmp141268
                                             (lambda (_%id139963%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e139956%_
                                                  _%id139963%_)))))
                                        (declare (not safe))
                                        (__find __tmp141268 _%ids139952%_))
                                      (values (cons 'id _%e139956%_)
                                              _%vars139957%_)
                                      (if (let ((__tmp141269
                                                 (lambda (_%var139966%_)
                                                   (let ((__tmp141270
                                                          (car _%var139966%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e139956%_
                                                      __tmp141270)))))
                                            (declare (not safe))
                                            (__find __tmp141269
                                                    _%vars139957%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx139870%_
                                             _%e139956%_))
                                          (values (cons 'var _%e139956%_)
                                                  (cons (cons _%e139956%_
                                                              _%depth139958%_)
                                                        _%vars139957%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e139956%_))
                              (let* ((_%e139970139977%_ _%e139956%_)
                                     (_%E139972139981%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e139970139977%_))))
                                     (_%E139971140042%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e139970139977%_))
                                            (let ((_%e139973139985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e139970139977%_))))
                                              (let ((_%hd139974139988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139973139985%_)))
                                                    (_%tl139975139990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139973139985%_))))
                                                (let* ((_%hd139993%_
                                                        _%hd139974139988%_)
                                                       (_%rest139995%_
                                                        _%tl139975139990%_)
                                                       (_%make-pair140010%_
                                                        (lambda (_%tag139997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd139998%_
                         _%tl139999%_)
                  (let* ((_%hd-depth140001%_
                          (if (eq? _%tag139997%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth139958%_ '1))
                              _%depth139958%_))
                         (_g141271_
                          (_%recur139954%_
                           _%hd139998%_
                           _%vars139957%_
                           _%hd-depth140001%_)))
                    (begin
                      (let ((_g141272_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g141271_)
                                   (##values-length _g141271_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g141272_ 2)))
                            (error "Context expects 2 values" _g141272_)))
                      (let ((_%hd140003%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141271_ 0)))
                            (_%vars140004%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141271_ 1))))
                        (let ((_g141273_
                               (_%recur139954%_
                                _%tl139999%_
                                _%vars140004%_
                                _%depth139958%_)))
                          (begin
                            (let ((_g141274_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g141273_)
                                         (##values-length _g141273_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g141274_ 2)))
                                  (error "Context expects 2 values"
                                         _g141274_)))
                            (let ((_%tl140006%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141273_ 0)))
                                  (_%vars140007%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141273_ 1))))
                              (values (cons _%tag139997%_
                                            (cons _%hd140003%_ _%tl140006%_))
                                      _%vars140007%_)))))))))
               (_%e140011140018%_ _%rest139995%_)
               (_%E140013140022%_
                (lambda ()
                  (_%make-pair140010%_ 'cons _%hd139993%_ _%rest139995%_)))
               (_%E140012140038%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e140011140018%_))
                      (let ((_%e140014140026%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e140011140018%_))))
                        (let ((_%hd140015140029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140014140026%_)))
                              (_%tl140016140031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140014140026%_))))
                          (let* ((_%rest-hd140034%_ _%hd140015140029%_)
                                 (_%rest-tl140036%_ _%tl140016140031%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd140034%_))
                                (_%make-pair140010%_
                                 'splice
                                 _%hd139993%_
                                 _%rest-tl140036%_)
                                (_%make-pair140010%_
                                 'cons
                                 _%hd139993%_
                                 _%rest139995%_)))))
                      (_%E140013140022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E140012140038%_))))
                                            (_%E139972139981%_)))))
                                (_%E139971140042%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e139956%_))
                                  (values '(null) _%vars139957%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e139956%_))
                                      (let ((_g141275_
                                             (_%recur139954%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e139956%_)))
                                              _%vars139957%_
                                              _%depth139958%_)))
                                        (begin
                                          (let ((_g141276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g141275_)
                                                       (##values-length
                                                        _g141275_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g141276_ 2)))
                                                (error "Context expects 2 values"
                                                       _g141276_)))
                                          (let ((_%e140048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g141275_ 0)))
                                                (_%vars140049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g141275_
                                                    1))))
                                            (values (cons 'vector _%e140048%_)
                                                    _%vars140049%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e139956%_))
                                          (let ((_g141277_
                                                 (_%recur139954%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e139956%_)))
                                                  _%vars139957%_
                                                  _%depth139958%_)))
                                            (begin
                                              (let ((_g141278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g141277_)
                                                           (##values-length
                                                            _g141277_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g141278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g141278_)))
                                              (let ((_%e140052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141277_
                                                        0)))
                                                    (_%vars140053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141277_
                                                        1))))
                                                (values (cons 'box _%e140052%_)
                                                        _%vars140053%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e139956%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e139956%_)))
                                                      _%vars139957%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx139870%_
                                                 _%e139956%_))))))))))))
          (let* ((_%e139880139893%_ _%stx139870%_)
                 (_%E139882139897%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e139880139893%_))))
                 (_%E139881139947%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e139880139893%_))
                        (let ((_%e139883139901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e139880139893%_))))
                          (let ((_%hd139884139904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139883139901%_)))
                                (_%tl139885139906%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139883139901%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139885139906%_))
                                (let ((_%e139886139909%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl139885139906%_))))
                                  (let ((_%hd139887139912%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139886139909%_)))
                                        (_%tl139888139914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139886139909%_))))
                                    (let ((_%expr139917%_ _%hd139887139912%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl139888139914%_))
                                          (let ((_%e139889139919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl139888139914%_))))
                                            (let ((_%hd139890139922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e139889139919%_)))
                                                  (_%tl139891139924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e139889139919%_))))
                                              (let* ((_%ids139927%_
                                                      _%hd139890139922%_)
                                                     (_%clauses139929%_
                                                      _%tl139891139924%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids139927%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses139929%_))
                                                        (let* ((_%ids139934%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids139927%_)))
                       (_%clauses139936%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses139929%_)))
                       (_%clause-ids139938%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses139936%_)))
                       (_%E139940%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target139942%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first139944%_
                        (if (null? _%clauses139936%_)
                            _%E139940%_
                            (car _%clause-ids139938%_))))
                  (let ((__tmp141280
                         (let ((__tmp141281
                                (let ((__tmp141283
                                       (let ((__tmp141285
                                              (cons (cons (cons _%E139940%_
                                                                '())
                                                          (cons (let ((__tmp141287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target139942%_ '()))
                              (__tmp141286
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target139942%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp141287 __tmp141286))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp141284
                                              (_%generate-body139876%_
                                               (_%generate-bindings139875%_
                                                _%target139942%_
                                                _%ids139934%_
                                                _%clauses139936%_
                                                _%clause-ids139938%_
                                                _%E139940%_)
                                               (cons _%first139944%_
                                                     (cons _%expr139917%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp141285
                                          __tmp141284)))
                                      (__tmp141282
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx139870%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp141283
                                   __tmp141282))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp141281)))
                        (__tmp141279
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx139870%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp141280 __tmp141279)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx139870%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx139870%_
                                                       _%ids139927%_))))))
                                          (_%E139882139897%_)))))
                                (_%E139882139897%_))))
                        (_%E139882139897%_)))))
            (_%E139881139947%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx140595%_)
        (let* ((_%identifier=?140597%_ 'free-identifier=?)
               (_%unwrap-e140599%_ 'syntax-e)
               (_%wrap-e140601%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx140595%_
           _%identifier=?140597%_
           _%unwrap-e140599%_
           _%wrap-e140601%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx140603%_ _%identifier=?140604%_)
        (let* ((_%unwrap-e140606%_ 'syntax-e) (_%wrap-e140608%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx140603%_
           _%identifier=?140604%_
           _%unwrap-e140606%_
           _%wrap-e140608%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx140610%_ _%identifier=?140611%_ _%unwrap-e140612%_)
        (let ((_%wrap-e140614%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx140610%_
           _%identifier=?140611%_
           _%unwrap-e140612%_
           _%wrap-e140614%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g141288_
        (let ((_g141289_ (let () (declare (not safe)) (##length _g141288_))))
          (cond ((let () (declare (not safe)) (##fx= _g141289_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g141288_))
                ((let () (declare (not safe)) (##fx= _g141289_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g141288_))
                ((let () (declare (not safe)) (##fx= _g141289_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g141288_))
                ((let () (declare (not safe)) (##fx= _g141289_ 4))
                 (apply gx#macro-expand-syntax-case__% _g141288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g141288_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx139867%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx139867%_))
            (let ((__tmp141290
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx139867%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp141290 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd139825%_ . _%rest139826%_)
        (let ((_%len139828%_ (length _%hd139825%_)))
          (let _%lp139830%_ ((_%rest139832%_ _%rest139826%_))
            (let* ((_%rest139833139841%_ _%rest139832%_)
                   (_%else139835139849%_ (lambda () '#!void))
                   (_%K139837139855%_
                    (lambda (_%rest139852%_ _%hd139853%_)
                      (if (let ((__tmp141291 (length _%hd139853%_)))
                            (declare (not safe))
                            (##fx= _%len139828%_ __tmp141291))
                          (_%lp139830%_ _%rest139852%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd139853%_))))))
              (if (pair? _%rest139833139841%_)
                  (let ((_%hd139838139858%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest139833139841%_)))
                        (_%tl139839139860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest139833139841%_))))
                    (let* ((_%hd139863%_ _%hd139838139858%_)
                           (_%rest139865%_ _%tl139839139860%_))
                      (_%K139837139855%_ _%rest139865%_ _%hd139863%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx139775%_ _%n139776%_)
        (let _%lp139778%_ ((_%rest139781%_ _%stx139775%_) (_%r139783%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest139781%_))
              (let* ((_%g139785139792%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest139781%_)))
                     (_%E139787139796%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g139785139792%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K139788139803%_
                      (lambda (_%rest139799%_ _%hd139800%_)
                        (_%lp139778%_
                         _%rest139799%_
                         (cons _%hd139800%_ _%r139783%_)))))
                (if (pair? _%g139785139792%_)
                    (let ((_%hd139789139806%_
                           (let ()
                             (declare (not safe))
                             (##car _%g139785139792%_)))
                          (_%tl139790139808%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g139785139792%_))))
                      (let* ((_%hd139811%_ _%hd139789139806%_)
                             (_%rest139813%_ _%tl139790139808%_))
                        (_%K139788139803%_ _%rest139813%_ _%hd139811%_)))
                    (_%E139787139796%_)))
              (let _%lp139815%_ ((_%n139817%_ _%n139776%_)
                                 (_%l139818%_ _%r139783%_)
                                 (_%r139820%_ _%rest139781%_))
                (if (null? _%l139818%_)
                    (values _%l139818%_ _%r139820%_)
                    (if (fxpositive? _%n139817%_)
                        (_%lp139815%_
                         (let () (declare (not safe)) (##fx- _%n139817%_ '1))
                         (cdr _%l139818%_)
                         (cons (car _%l139818%_) _%r139820%_))
                        (values (reverse! _%l139818%_) _%r139820%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx139725%_ _%n139726%_)
        (let _%lp139728%_ ((_%rest139731%_ _%stx139725%_) (_%r139733%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest139731%_))
              (let* ((_%g139735139742%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest139731%_)))
                     (_%E139737139746%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g139735139742%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K139738139753%_
                      (lambda (_%rest139749%_ _%hd139750%_)
                        (_%lp139728%_
                         _%rest139749%_
                         (cons _%hd139750%_ _%r139733%_)))))
                (if (pair? _%g139735139742%_)
                    (let ((_%hd139739139756%_
                           (let ()
                             (declare (not safe))
                             (##car _%g139735139742%_)))
                          (_%tl139740139758%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g139735139742%_))))
                      (let* ((_%hd139761%_ _%hd139739139756%_)
                             (_%rest139763%_ _%tl139740139758%_))
                        (_%K139738139753%_ _%rest139763%_ _%hd139761%_)))
                    (_%E139737139746%_)))
              (let _%lp139765%_ ((_%n139767%_ _%n139726%_)
                                 (_%l139768%_ _%r139733%_)
                                 (_%r139770%_ _%rest139731%_))
                (if (null? _%l139768%_)
                    (vector _%l139768%_ _%r139770%_)
                    (if (fxpositive? _%n139767%_)
                        (_%lp139765%_
                         (let () (declare (not safe)) (##fx- _%n139767%_ '1))
                         (cdr _%l139768%_)
                         (cons (car _%l139768%_) _%r139770%_))
                        (vector (reverse! _%l139768%_) _%r139770%_))))))))))
