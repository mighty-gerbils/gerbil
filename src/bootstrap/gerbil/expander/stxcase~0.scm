(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771178565)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp190047 (list gx#expander::t))
            (__tmp190046 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp190047
         '(id depth)
         __tmp190046
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args190043%_
        (apply make-instance gx#syntax-pattern::t _%$args190043%_)))
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
      (lambda (_%self190029%_ _%stx190030%_)
        (let ((_%self190033%_ _%self190029%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx190030%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx189496%_)
        (letrec ((_%generate189498%_
                  (lambda (_%e189738%_)
                    (letrec ((_%BUG189740%_
                              (lambda (_%q189905%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx189496%_
                                         _%e189738%_
                                         _%q189905%_))))
                             (_%local-pattern-e189741%_
                              (lambda (_%pat189903%_)
                                (let ((__tmp190048
                                       (##structure-ref
                                        _%pat189903%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp190048))))
                             (_%getvar189742%_
                              (lambda (_%q189900%_ _%vars189901%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q189900%_
                                   _%vars189901%_
                                   _%BUG189740%_))))
                             (_%getarg189743%_
                              (lambda (_%arg189866%_ _%vars189867%_)
                                (let* ((_%arg189868189875%_ _%arg189866%_)
                                       (_%E189870189879%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg189868189875%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K189871189888%_
                                        (lambda (_%e189882%_ _%tag189883%_)
                                          (let ((_%$e189885%_ _%tag189883%_))
                                            (if (eq? 'ref _%$e189885%_)
                                                (_%getvar189742%_
                                                 _%e189882%_
                                                 _%vars189867%_)
                                                (if (eq? 'pattern _%$e189885%_)
                                                    (_%local-pattern-e189741%_
                                                     _%e189882%_)
                                                    (_%BUG189740%_
                                                     _%arg189866%_)))))))
                                  (if (pair? _%arg189868189875%_)
                                      (let ((_%hd189872189891%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg189868189875%_)))
                                            (_%tl189873189893%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg189868189875%_))))
                                        (let* ((_%tag189896%_
                                                _%hd189872189891%_)
                                               (_%e189898%_
                                                _%tl189873189893%_))
                                          (_%K189871189888%_
                                           _%e189898%_
                                           _%tag189896%_)))
                                      (_%E189870189879%_))))))
                      (let _%recur189745%_ ((_%e189747%_ _%e189738%_)
                                            (_%vars189748%_ '()))
                        (let* ((_%e189749189756%_ _%e189747%_)
                               (_%E189751189760%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e189749189756%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K189752189854%_
                                (lambda (_%body189763%_ _%tag189764%_)
                                  (let ((_%$e189766%_ _%tag189764%_))
                                    (if (eq? 'datum _%$e189766%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body189763%_))
                                        (if (eq? 'term _%$e189766%_)
                                            (let ((_%id189769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body189763%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id189769%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks189772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id189769%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks189772%_)
                                                        (let ((__tmp190049
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body189763%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp190049))
                (let ((__tmp190051
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body189763%_)))
                      (__tmp190050
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body189763%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp190051
                   __tmp190050
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id189769%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body189763%_))
                                                      (_%BUG189740%_
                                                       _%e189747%_))))
                                            (if (eq? 'pattern _%$e189766%_)
                                                (_%local-pattern-e189741%_
                                                 _%body189763%_)
                                                (if (eq? 'ref _%$e189766%_)
                                                    (_%getvar189742%_
                                                     _%body189763%_
                                                     _%vars189748%_)
                                                    (if (eq? 'cons
                                                             _%$e189766%_)
                                                        (let ((__tmp190053
                                                               (_%recur189745%_
                                                                (car _%body189763%_)
                                                                _%vars189748%_))
                                                              (__tmp190052
                                                               (_%recur189745%_
                                                                (cdr _%body189763%_)
                                                                _%vars189748%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp190053
                                                           __tmp190052))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e189766%_)
                    (let ((__tmp190054
                           (_%recur189745%_ _%body189763%_ _%vars189748%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp190054))
                    (if (eq? 'box _%$e189766%_)
                        (let ((__tmp190055
                               (_%recur189745%_
                                _%body189763%_
                                _%vars189748%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp190055))
                        (if (eq? 'splice _%$e189766%_)
                            (let* ((_%body189775189786%_ _%body189763%_)
                                   (_%E189777189790%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body189775189786%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K189778189828%_
                                    (lambda (_%args189793%_
                                             _%iv189794%_
                                             _%hd189795%_
                                             _%depth189796%_)
                                      (let* ((_%targets189802%_
                                              (map (lambda (_%g189797189799%_)
                                                     (_%getarg189743%_
                                                      _%g189797189799%_
                                                      _%vars189748%_))
                                                   _%args189793%_))
                                             (_%fold-in189804%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args189793%_)))
                                             (_%fold-out189806%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args189808%_
                                              (let ((__tmp190056
                                                     (cons _%fold-out189806%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp190056
                                                 _%fold-in189804%_)))
                                             (_%lambda-body189825%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth189796%_ '1))
                                                  (let ((_%r-args189816%_
                                                         (map (lambda (_%arg189810%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg189810%_)))
                      _%args189793%_))
                (_%r-vars189817%_
                 (let ((__tmp190057
                        (lambda (_%arg189812%_ _%var189813%_ _%r189814%_)
                          (cons (cons (cdr _%arg189812%_) _%var189813%_)
                                _%r189814%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp190057
                    _%vars189748%_
                    _%args189793%_
                    _%fold-in189804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur189745%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth189796%_ '1))
                         (cons _%hd189795%_
                               (cons (cons 'var _%fold-out189806%_)
                                     _%r-args189816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars189817%_))
                                                  (let* ((_%hd-vars189823%_
                                                          (let ((__tmp190058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg189819%_ _%var189820%_ _%r189821%_)
                           (cons (cons (cdr _%arg189819%_) _%var189820%_)
                                 _%r189821%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp190058
                     _%vars189748%_
                     _%args189793%_
                     _%fold-in189804%_)))
                 (__tmp190059
                  (_%recur189745%_ _%hd189795%_ _%hd-vars189823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp190059
                                                     _%fold-out189806%_)))))
                                        (let ((__tmp190063
                                               (if (let ((__tmp190064
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets189802%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp190064 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets189802%_))
                                                   '#!void))
                                              (__tmp190060
                                               (let ((__tmp190062
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args189808%_
                                                         _%lambda-body189825%_)))
                                                     (__tmp190061
                                                      (_%recur189745%_
                                                       _%iv189794%_
                                                       _%vars189748%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp190062
                                                  __tmp190061
                                                  _%targets189802%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp190063
                                           __tmp190060))))))
                              (if (pair? _%body189775189786%_)
                                  (let ((_%hd189779189831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body189775189786%_)))
                                        (_%tl189780189833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body189775189786%_))))
                                    (let ((_%depth189836%_ _%hd189779189831%_))
                                      (if (pair? _%tl189780189833%_)
                                          (let ((_%hd189781189838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl189780189833%_)))
                                                (_%tl189782189840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl189780189833%_))))
                                            (let ((_%hd189843%_
                                                   _%hd189781189838%_))
                                              (if (pair? _%tl189782189840%_)
                                                  (let ((_%hd189783189845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl189782189840%_)))
                                                        (_%tl189784189847%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl189782189840%_))))
                                                    (let* ((_%iv189850%_
                                                            _%hd189783189845%_)
                                                           (_%args189852%_
                                                            _%tl189784189847%_))
                                                      (_%K189778189828%_
                                                       _%args189852%_
                                                       _%iv189850%_
                                                       _%hd189843%_
                                                       _%depth189836%_)))
                                                  (_%E189777189790%_))))
                                          (_%E189777189790%_))))
                                  (_%E189777189790%_)))
                            (if (eq? 'var _%$e189766%_)
                                _%body189763%_
                                (_%BUG189740%_ _%e189747%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e189749189756%_)
                              (let ((_%hd189753189857%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e189749189756%_)))
                                    (_%tl189754189859%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e189749189756%_))))
                                (let* ((_%tag189862%_ _%hd189753189857%_)
                                       (_%body189864%_ _%tl189754189859%_))
                                  (_%K189752189854%_
                                   _%body189864%_
                                   _%tag189862%_)))
                              (_%E189751189760%_)))))))
                 (_%parse189499%_
                  (lambda (_%e189540%_)
                    (letrec ((_%make-cons189542%_
                              (lambda (_%hd189730%_ _%tl189731%_)
                                (let ((_g190065_ _%hd189730%_)
                                      (_g190067_ _%tl189731%_))
                                  (begin
                                    (let ((_g190066_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190065_)
                                                 (##values-length _g190065_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190066_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190066_)))
                                    (let ((_g190068_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190067_)
                                                 (##values-length _g190067_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190068_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190068_)))
                                    (let ((_%hd-e189733%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190065_ 0)))
                                          (_%hd-vars189734%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190065_ 1))))
                                      (let ((_%tl-e189735%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190067_ 0)))
                                            (_%tl-vars189736%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190067_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e189733%_
                                                            _%tl-e189735%_))
                                                (append _%hd-vars189734%_
                                                        _%tl-vars189736%_))))))))
                             (_%make-splice189543%_
                              (lambda (_%where189666%_
                                       _%depth189667%_
                                       _%hd189668%_
                                       _%tl189669%_)
                                (let ((_g190069_ _%hd189668%_)
                                      (_g190071_ _%tl189669%_))
                                  (begin
                                    (let ((_g190070_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190069_)
                                                 (##values-length _g190069_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190070_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190070_)))
                                    (let ((_g190072_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190071_)
                                                 (##values-length _g190071_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190072_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190072_)))
                                    (let ((_%hd-e189671%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190069_ 0)))
                                          (_%hd-vars189672%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190069_ 1))))
                                      (let ((_%tl-e189673%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190071_ 0)))
                                            (_%tl-vars189674%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190071_ 1))))
                                        (let _%lp189676%_ ((_%rest189678%_
                                                            _%hd-vars189672%_)
                                                           (_%targets189679%_
                                                            '())
                                                           (_%vars189680%_
                                                            _%tl-vars189674%_))
                                          (let* ((_%rest189681189691%_
                                                  _%rest189678%_)
                                                 (_%else189683189699%_
                                                  (lambda ()
                                                    (if (null? _%targets189679%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx189496%_
                                                           _%where189666%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth189667%_
                                    (cons _%hd-e189671%_
                                          (cons _%tl-e189673%_
                                                _%targets189679%_))))
                        _%vars189680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K189685189711%_
                                                  (lambda (_%rest189702%_
                                                           _%hd-pat189703%_
                                                           _%hd-depth*189704%_)
                                                    (let ((_%hd-depth189706%_
                                                           (fx- _%hd-depth*189704%_
                                                                _%depth189667%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth189706%_))
                                                          (_%lp189676%_
                                                           _%rest189702%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat189703%_)
                         _%targets189679%_)
                   (cons (cons _%hd-depth189706%_ _%hd-pat189703%_)
                         _%vars189680%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth189706%_))
                      (_%lp189676%_
                       _%rest189702%_
                       (cons (cons 'pattern _%hd-pat189703%_)
                             _%targets189679%_)
                       _%vars189680%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx189496%_
                         _%where189666%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest189681189691%_)
                                                (let ((_%hd189686189714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest189681189691%_)))
                                                      (_%tl189687189716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest189681189691%_))))
                                                  (if (pair? _%hd189686189714%_)
                                                      (let ((_%hd189688189719%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd189686189714%_)))
                    (_%tl189689189721%_
                     (let () (declare (not safe)) (##cdr _%hd189686189714%_))))
                (let* ((_%hd-depth*189724%_ _%hd189688189719%_)
                       (_%hd-pat189726%_ _%tl189689189721%_)
                       (_%rest189728%_ _%tl189687189716%_))
                  (_%K189685189711%_
                   _%rest189728%_
                   _%hd-pat189726%_
                   _%hd-depth*189724%_)))
              (_%else189683189699%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else189683189699%_))))))))))
                             (_%recur189544%_
                              (lambda (_%e189549%_ _%is-e?189550%_)
                                (if (_%is-e?189550%_ _%e189549%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx189496%_))
                                    (if (gx#syntax-local-pattern? _%e189549%_)
                                        (let* ((_%pat189554%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e189549%_)))
                                               (_%depth189556%_
                                                (##structure-ref
                                                 _%pat189554%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth189556%_)
                                              (values (cons 'ref _%pat189554%_)
                                                      (cons (cons _%depth189556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat189554%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat189554%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e189549%_))
                                            (values (cons 'term _%e189549%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e189549%_))
                                                (let* ((_%e189560189567%_
                                                        _%e189549%_)
                                                       (_%E189562189571%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e189560189567%_))))
                                                       (_%E189561189653%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e189560189567%_))
                      (let ((_%e189563189575%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189560189567%_))))
                        (let ((_%hd189564189578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189563189575%_)))
                              (_%tl189565189580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189563189575%_))))
                          (let* ((_%hd189583%_ _%hd189564189578%_)
                                 (_%rest189585%_ _%tl189565189580%_))
                            (if (_%is-e?189550%_ _%hd189583%_)
                                (let* ((_%e189586189593%_ _%rest189585%_)
                                       (_%E189588189597%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx189496%_
                                             _%e189549%_))))
                                       (_%E189587189611%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e189586189593%_))
                                              (let ((_%e189589189601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e189586189593%_))))
                                                (let ((_%hd189590189604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189589189601%_)))
                                                      (_%tl189591189606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189589189601%_))))
                                                  (let ((_%rest189609%_
                                                         _%hd189590189604%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189591189606%_))
                                                        (_%recur189544%_
                                                         _%rest189609%_
                                                         false)
                                                        (_%E189588189597%_)))))
                                              (_%E189588189597%_)))))
                                  (_%E189587189611%_))
                                (let _%lp189615%_ ((_%rest189617%_
                                                    _%rest189585%_)
                                                   (_%depth189618%_ '0))
                                  (let* ((_%e189619189626%_ _%rest189617%_)
                                         (_%E189621189630%_
                                          (lambda ()
                                            (if (fxpositive? _%depth189618%_)
                                                (_%make-splice189543%_
                                                 _%e189549%_
                                                 _%depth189618%_
                                                 (_%recur189544%_
                                                  _%hd189583%_
                                                  _%is-e?189550%_)
                                                 (_%recur189544%_
                                                  _%rest189617%_
                                                  _%is-e?189550%_))
                                                (_%make-cons189542%_
                                                 (_%recur189544%_
                                                  _%hd189583%_
                                                  _%is-e?189550%_)
                                                 (_%recur189544%_
                                                  _%rest189617%_
                                                  _%is-e?189550%_)))))
                                         (_%E189620189649%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e189619189626%_))
                                                (let ((_%e189622189634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e189619189626%_))))
                                                  (let ((_%hd189623189637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189622189634%_)))
                                                        (_%tl189624189639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189622189634%_))))
                                                    (let* ((_%rest-hd189642%_
                                                            _%hd189623189637%_)
                                                           (_%rest-tl189644%_
                                                            _%tl189624189639%_))
                                                      (if (_%is-e?189550%_
                                                           _%rest-hd189642%_)
                                                          (_%lp189615%_
                                                           _%rest-tl189644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth189618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth189618%_)
                      (_%make-splice189543%_
                       _%e189549%_
                       _%depth189618%_
                       (_%recur189544%_ _%hd189583%_ _%is-e?189550%_)
                       (_%recur189544%_ _%rest189617%_ _%is-e?189550%_))
                      (_%make-cons189542%_
                       (_%recur189544%_ _%hd189583%_ _%is-e?189550%_)
                       (_%recur189544%_ _%rest189617%_ _%is-e?189550%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E189621189630%_)))))
                                    (_%E189620189649%_)))))))
                      (_%E189562189571%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189561189653%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e189549%_))
                                                    (let ((_g190073_
                                                           (_%recur189544%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e189549%_)))
                    _%is-e?189550%_)))
              (begin
                (let ((_g190074_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g190073_)
                             (##values-length _g190073_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g190074_ 2)))
                      (error "Context expects 2 values" _g190074_)))
                (let ((_%e189658%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190073_ 0)))
                      (_%vars189659%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190073_ 1))))
                  (values (cons 'vector _%e189658%_) _%vars189659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e189549%_))
                                                        (let ((_g190075_
                                                               (_%recur189544%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e189549%_)))
                        _%is-e?189550%_)))
                  (begin
                    (let ((_g190076_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g190075_)
                                 (##values-length _g190075_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g190076_ 2)))
                          (error "Context expects 2 values" _g190076_)))
                    (let ((_%e189662%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190075_ 0)))
                          (_%vars189663%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190075_ 1))))
                      (values (cons 'box _%e189662%_) _%vars189663%_))))
                (values (cons 'datum _%e189549%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g190077_
                             (_%recur189544%_ _%e189540%_ gx#ellipsis?)))
                        (begin
                          (let ((_g190078_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g190077_)
                                       (##values-length _g190077_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g190078_ 2)))
                                (error "Context expects 2 values" _g190078_)))
                          (let ((_%tree189546%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190077_ 0)))
                                (_%vars189547%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190077_ 1))))
                            (if (null? _%vars189547%_)
                                _%tree189546%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx189496%_
                                   _%vars189547%_))))))))))
          (let* ((_%e189500189510%_ _%stx189496%_)
                 (_%E189502189514%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx189496%_))))
                 (_%E189501189536%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189500189510%_))
                        (let ((_%e189503189518%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189500189510%_))))
                          (let ((_%hd189504189521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189503189518%_)))
                                (_%tl189505189523%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189503189518%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189505189523%_))
                                (let ((_%e189506189526%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189505189523%_))))
                                  (let ((_%hd189507189529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189506189526%_)))
                                        (_%tl189508189531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189506189526%_))))
                                    (let ((_%form189534%_ _%hd189507189529%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189508189531%_))
                                          (let ((__tmp190080
                                                 (_%generate189498%_
                                                  (_%parse189499%_
                                                   _%form189534%_)))
                                                (__tmp190079
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx189496%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp190080
                                             __tmp190079))
                                          (_%E189502189514%_)))))
                                (_%E189502189514%_))))
                        (_%E189502189514%_)))))
            (_%E189501189536%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx188745%_
               _%identifier=?188746%_
               _%unwrap-e188747%_
               _%wrap-e188748%_)
        (letrec ((_%generate-bindings188750%_
                  (lambda (_%target189360%_
                           _%ids189361%_
                           _%clauses189362%_
                           _%clause-ids189363%_
                           _%E189364%_)
                    (letrec ((_%generate1189366%_
                              (lambda (_%clause189463%_
                                       _%clause-id189464%_
                                       _%E189465%_)
                                (cons (cons _%clause-id189464%_ '())
                                      (cons (let ((__tmp190082
                                                   (cons _%target189360%_ '()))
                                                  (__tmp190081
                                                   (_%generate-clause188752%_
                                                    _%target189360%_
                                                    _%ids189361%_
                                                    _%clause189463%_
                                                    _%E189465%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp190082
                                               __tmp190081))
                                            '())))))
                      (let _%lp189368%_ ((_%rest189370%_ _%clauses189362%_)
                                         (_%rest-ids189371%_
                                          _%clause-ids189363%_)
                                         (_%bindings189372%_ '()))
                        (let* ((_%rest189373189381%_ _%rest189370%_)
                               (_%else189375189389%_
                                (lambda () _%bindings189372%_))
                               (_%K189377189451%_
                                (lambda (_%rest189392%_ _%clause189393%_)
                                  (let* ((_%rest-ids189394189401%_
                                          _%rest-ids189371%_)
                                         (_%E189396189405%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids189394189401%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K189397189439%_
                                          (lambda (_%rest-ids189408%_
                                                   _%clause-id189409%_)
                                            (let* ((_%rest-ids189410189418%_
                                                    _%rest-ids189408%_)
                                                   (_%else189412189426%_
                                                    (lambda ()
                                                      (cons (_%generate1189366%_
                                                             _%clause189393%_
                                                             _%clause-id189409%_
                                                             _%E189364%_)
                                                            _%bindings189372%_)))
                                                   (_%K189414189431%_
                                                    (lambda (_%next-clause-id189429%_)
                                                      (_%lp189368%_
                                                       _%rest189392%_
                                                       _%rest-ids189408%_
                                                       (cons (_%generate1189366%_
                                                              _%clause189393%_
                                                              _%clause-id189409%_
                                                              _%next-clause-id189429%_)
                                                             _%bindings189372%_)))))
                                              (if (pair? _%rest-ids189410189418%_)
                                                  (let* ((_%hd189415189434%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids189410189418%_)))
                                                         (_%next-clause-id189437%_
                                                          _%hd189415189434%_))
                                                    (_%K189414189431%_
                                                     _%next-clause-id189437%_))
                                                  (_%else189412189426%_))))))
                                    (if (pair? _%rest-ids189394189401%_)
                                        (let ((_%hd189398189442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids189394189401%_)))
                                              (_%tl189399189444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids189394189401%_))))
                                          (let* ((_%clause-id189447%_
                                                  _%hd189398189442%_)
                                                 (_%rest-ids189449%_
                                                  _%tl189399189444%_))
                                            (_%K189397189439%_
                                             _%rest-ids189449%_
                                             _%clause-id189447%_)))
                                        (_%E189396189405%_))))))
                          (if (pair? _%rest189373189381%_)
                              (let ((_%hd189378189454%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest189373189381%_)))
                                    (_%tl189379189456%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest189373189381%_))))
                                (let* ((_%clause189459%_ _%hd189378189454%_)
                                       (_%rest189461%_ _%tl189379189456%_))
                                  (_%K189377189451%_
                                   _%rest189461%_
                                   _%clause189459%_)))
                              (_%else189375189389%_)))))))
                 (_%generate-body188751%_
                  (lambda (_%bindings189320%_ _%body189321%_)
                    (let _%recur189323%_ ((_%rest189325%_ _%bindings189320%_))
                      (let* ((_%rest189326189334%_ _%rest189325%_)
                             (_%else189328189342%_ (lambda () _%body189321%_))
                             (_%K189330189348%_
                              (lambda (_%rest189345%_ _%hd189346%_)
                                (let ((__tmp190084 (cons _%hd189346%_ '()))
                                      (__tmp190083
                                       (_%recur189323%_ _%rest189345%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp190084
                                   __tmp190083)))))
                        (if (pair? _%rest189326189334%_)
                            (let ((_%hd189331189351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest189326189334%_)))
                                  (_%tl189332189353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest189326189334%_))))
                              (let* ((_%hd189356%_ _%hd189331189351%_)
                                     (_%rest189358%_ _%tl189332189353%_))
                                (_%K189330189348%_
                                 _%rest189358%_
                                 _%hd189356%_)))
                            (_%else189328189342%_))))))
                 (_%generate-clause188752%_
                  (lambda (_%target189183%_
                           _%ids189184%_
                           _%clause189185%_
                           _%E189186%_)
                    (letrec ((_%generate1189188%_
                              (lambda (_%hd189275%_
                                       _%fender189276%_
                                       _%body189277%_)
                                (let ((_g190085_
                                       (_%parse-clause188754%_
                                        _%hd189275%_
                                        _%ids189184%_)))
                                  (begin
                                    (let ((_g190086_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190085_)
                                                 (##values-length _g190085_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190086_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190086_)))
                                    (let ((_%e189279%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190085_ 0)))
                                          (_%mvars189280%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190085_ 1))))
                                      (let* ((_%pvars189282%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars189280%_))))
                                             (_%E189284%_
                                              (cons _%E189186%_
                                                    (cons _%target189183%_
                                                          '())))
                                             (_%K189317%_
                                              (let ((__tmp190087
                                                     (let ((__tmp190089
                                                            (map (lambda (_%mvar189286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar189287%_)
                           (let* ((_%mvar189288189295%_ _%mvar189286%_)
                                  (_%E189290189299%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar189288189295%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K189291189305%_
                                   (lambda (_%depth189302%_ _%id189303%_)
                                     (cons _%id189303%_
                                           (cons (let ((__tmp190091
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id189303%_)))
                                                       (__tmp190090
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar189287%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp190091
                                                    __tmp190090
                                                    _%depth189302%_))
                                                 '())))))
                             (if (pair? _%mvar189288189295%_)
                                 (let ((_%hd189292189308%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar189288189295%_)))
                                       (_%tl189293189310%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar189288189295%_))))
                                   (let* ((_%id189313%_ _%hd189292189308%_)
                                          (_%depth189315%_ _%tl189293189310%_))
                                     (_%K189291189305%_
                                      _%depth189315%_
                                      _%id189313%_)))
                                 (_%E189290189299%_))))
                         _%mvars189280%_
                         _%pvars189282%_))
                   (__tmp190088
                    (if (eq? _%fender189276%_ '#t)
                        _%body189277%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender189276%_
                           _%body189277%_
                           _%E189284%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp190089 __tmp190088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars189282%_
                                                 __tmp190087))))
                                        (_%generate-match188753%_
                                         _%hd189275%_
                                         _%target189183%_
                                         _%e189279%_
                                         _%mvars189280%_
                                         _%K189317%_
                                         _%E189284%_))))))))
                      (let* ((_%e189189189209%_ _%clause189185%_)
                             (_%E189198189213%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e189189189209%_))))
                             (_%E189191189247%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189189189209%_))
                                    (let ((_%e189199189217%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189189189209%_))))
                                      (let ((_%hd189200189220%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189199189217%_)))
                                            (_%tl189201189222%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189199189217%_))))
                                        (let ((_%hd189225%_
                                               _%hd189200189220%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189201189222%_))
                                              (let ((_%e189202189227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189201189222%_))))
                                                (let ((_%hd189203189230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189202189227%_)))
                                                      (_%tl189204189232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189202189227%_))))
                                                  (let ((_%fender189235%_
                                                         _%hd189203189230%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl189204189232%_))
                                                        (let ((_%e189205189237%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl189204189232%_))))
                  (let ((_%hd189206189240%_
                         (let ()
                           (declare (not safe))
                           (##car _%e189205189237%_)))
                        (_%tl189207189242%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e189205189237%_))))
                    (let ((_%body189245%_ _%hd189206189240%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189207189242%_))
                          (_%generate1189188%_
                           _%hd189225%_
                           _%fender189235%_
                           _%body189245%_)
                          (_%E189198189213%_)))))
                (_%E189198189213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E189198189213%_)))))
                                    (_%E189198189213%_))))
                             (_%E189190189271%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189189189209%_))
                                    (let ((_%e189192189251%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189189189209%_))))
                                      (let ((_%hd189193189254%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189192189251%_)))
                                            (_%tl189194189256%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189192189251%_))))
                                        (let ((_%hd189259%_
                                               _%hd189193189254%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189194189256%_))
                                              (let ((_%e189195189261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189194189256%_))))
                                                (let ((_%hd189196189264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189195189261%_)))
                                                      (_%tl189197189266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189195189261%_))))
                                                  (let ((_%body189269%_
                                                         _%hd189196189264%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189197189266%_))
                                                        (_%generate1189188%_
                                                         _%hd189259%_
                                                         '#t
                                                         _%body189269%_)
                                                        (_%E189191189247%_)))))
                                              (_%E189191189247%_)))))
                                    (_%E189191189247%_)))))
                        (_%E189190189271%_)))))
                 (_%generate-match188753%_
                  (lambda (_%where188932%_
                           _%target188933%_
                           _%hd188934%_
                           _%mvars188935%_
                           _%K188936%_
                           _%E188937%_)
                    (letrec ((_%BUG188939%_
                              (lambda (_%q189181%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx188745%_
                                         _%hd188934%_
                                         _%q189181%_))))
                             (_%recur188940%_
                              (lambda (_%e189031%_
                                       _%vars189032%_
                                       _%target189033%_
                                       _%E189034%_
                                       _%k189035%_)
                                (let* ((_%e189036189043%_ _%e189031%_)
                                       (_%E189038189047%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e189036189043%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K189039189169%_
                                        (lambda (_%body189050%_ _%tag189051%_)
                                          (let ((_%$e189053%_ _%tag189051%_))
                                            (if (eq? 'any _%$e189053%_)
                                                (_%k189035%_ _%vars189032%_)
                                                (if (eq? 'id _%$e189053%_)
                                                    (let ((__tmp190096
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target189033%_)))
                                                          (__tmp190092
                                                           (let ((__tmp190094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190095
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e188748%_
                                    _%body189050%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?188746%_
                             __tmp190095
                             _%target189033%_)))
                         (__tmp190093 (_%k189035%_ _%vars189032%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp190094 __tmp190093 _%E189034%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp190096 __tmp190092 _%E189034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e189053%_)
                                                        (_%k189035%_
                                                         (cons (cons _%body189050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target189033%_)
                       _%vars189032%_))
                (if (eq? 'cons _%$e189053%_)
                    (let ((_%$e189056%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd189057%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl189058%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp190102
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target189033%_)))
                            (__tmp190097
                             (let ((__tmp190101
                                    (cons (cons (cons _%$e189056%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e188747%_
                                                         _%target189033%_))
                                                      '()))
                                          '()))
                                   (__tmp190098
                                    (let ((__tmp190100
                                           (cons (cons (cons _%$hd189057%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e189056%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl189058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e189056%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp190099
                                           (let* ((_%body189059189066%_
                                                   _%body189050%_)
                                                  (_%E189061189070%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body189059189066%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K189062189078%_
                                                   (lambda (_%tl189073%_
                                                            _%hd189074%_)
                                                     (_%recur188940%_
                                                      _%hd189074%_
                                                      _%vars189032%_
                                                      _%$hd189057%_
                                                      _%E189034%_
                                                      (lambda (_%vars189076%_)
                                                        (_%recur188940%_
                                                         _%tl189073%_
                                                         _%vars189076%_
                                                         _%$tl189058%_
                                                         _%E189034%_
                                                         _%k189035%_))))))
                                             (if (pair? _%body189059189066%_)
                                                 (let ((_%hd189063189081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body189059189066%_)))
                                                       (_%tl189064189083%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body189059189066%_))))
                                                   (let* ((_%hd189086%_
                                                           _%hd189063189081%_)
                                                          (_%tl189088%_
                                                           _%tl189064189083%_))
                                                     (_%K189062189078%_
                                                      _%tl189088%_
                                                      _%hd189086%_)))
                                                 (_%E189061189070%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp190100
                                       __tmp190099))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp190101
                                __tmp190098))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp190102
                         __tmp190097
                         _%E189034%_)))
                    (if (eq? 'splice _%$e189053%_)
                        (let* ((_%body189089189096%_ _%body189050%_)
                               (_%E189091189100%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body189089189096%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K189092189151%_
                                (lambda (_%tl189103%_ _%hd189104%_)
                                  (let* ((_%rlen189106%_
                                          (_%splice-rlen188941%_ _%tl189103%_))
                                         (_%$target189108%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd189110%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl189112%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp189114%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e189116%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd189118%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl189120%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars189122%_
                                          (_%splice-vars188942%_ _%hd189104%_))
                                         (_%lvars189124%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189122%_)))
                                         (_%tlvars189126%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189122%_)))
                                         (_%linit189130%_
                                          (map (lambda (_%var189128%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars189124%_)))
                                    (letrec ((_%make-loop189133%_
                                              (lambda (_%vars189137%_)
                                                (let ((__tmp190104
                                                       (cons (cons (cons _%$lp189114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp190117
                                        (cons _%$hd189110%_ _%lvars189124%_))
                                       (__tmp190105
                                        (let ((__tmp190116
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd189110%_)))
                                              (__tmp190110
                                               (let ((__tmp190115
                                                      (cons (cons (cons _%$lp-e189116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e188747%_
                                   _%$hd189110%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190111
                                                      (let ((__tmp190114
                                                             (cons (cons (cons _%$lp-hd189118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e189116%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl189120%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e189116%_))
                                             '()))
                                 '())))
                    (__tmp190112
                     (_%recur188940%_
                      _%hd189104%_
                      '()
                      _%$lp-hd189118%_
                      _%E189034%_
                      (lambda (_%hdvars189139%_)
                        (cons _%$lp189114%_
                              (cons _%$lp-tl189120%_
                                    (map (lambda (_%svar189141%_
                                                  _%lvar189142%_)
                                           (let ((__tmp190113
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar189141%_
                                                     _%hdvars189139%_
                                                     _%BUG188939%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp190113
                                              _%lvar189142%_)))
                                         _%svars189122%_
                                         _%lvars189124%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp190114 __tmp190112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190115
                                                  __tmp190111)))
                                              (__tmp190106
                                               (let ((__tmp190109
                                                      (map (lambda (_%lvar189144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar189145%_)
                     (cons (cons _%tlvar189145%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar189144%_))
                                 '())))
                   _%lvars189124%_
                   _%tlvars189126%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190107
                                                      (_%k189035%_
                                                       (let ((__tmp190108
                                                              (lambda (_%svar189147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar189148%_
                               _%r189149%_)
                        (cons (cons _%svar189147%_ _%tlvar189148%_)
                              _%r189149%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp190108
                  _%vars189137%_
                  _%svars189122%_
                  _%tlvars189126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190109
                                                  __tmp190107))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190116
                                           __tmp190110
                                           __tmp190106))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp190117
                                    __tmp190105))
                                 '()))
                     '()))
              (__tmp190103
               (cons _%$lp189114%_ (cons _%$target189108%_ _%linit189130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp190104
                                                   __tmp190103)))))
                                      (let ((_%body189135%_
                                             (let ((__tmp190119
                                                    (cons (cons (cons _%$target189108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl189112%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target189033%_
                                 _%rlen189106%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190118
                                                    (_%recur188940%_
                                                     _%tl189103%_
                                                     _%vars189032%_
                                                     _%$tl189112%_
                                                     _%E189034%_
                                                     _%make-loop189133%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190119
                                                __tmp190118))))
                                        (let ((__tmp190123
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target189033%_)))
                                              (__tmp190120
                                               (if (zero? _%rlen189106%_)
                                                   _%body189135%_
                                                   (let ((__tmp190121
                                                          (let ((__tmp190122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target189033%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp190122 _%rlen189106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp190121
                                                      _%body189135%_
                                                      _%E189034%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190123
                                           __tmp190120
                                           _%E189034%_))))))))
                          (if (pair? _%body189089189096%_)
                              (let ((_%hd189093189154%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body189089189096%_)))
                                    (_%tl189094189156%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body189089189096%_))))
                                (let* ((_%hd189159%_ _%hd189093189154%_)
                                       (_%tl189161%_ _%tl189094189156%_))
                                  (_%K189092189151%_
                                   _%tl189161%_
                                   _%hd189159%_)))
                              (_%E189091189100%_)))
                        (if (eq? 'null _%$e189053%_)
                            (let ((__tmp190125
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target189033%_)))
                                  (__tmp190124 (_%k189035%_ _%vars189032%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp190125
                               __tmp190124
                               _%E189034%_))
                            (if (eq? 'vector _%$e189053%_)
                                (let ((_%$e189163%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp190130
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target189033%_)))
                                        (__tmp190126
                                         (let ((__tmp190128
                                                (cons (cons (cons _%$e189163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp190129
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e188747%_
                                    _%target189033%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp190129))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp190127
                                                (_%recur188940%_
                                                 _%body189050%_
                                                 _%vars189032%_
                                                 _%$e189163%_
                                                 _%E189034%_
                                                 _%k189035%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp190128
                                            __tmp190127))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp190130
                                     __tmp190126
                                     _%E189034%_)))
                                (if (eq? 'box _%$e189053%_)
                                    (let ((_%$e189165%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp190135
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target189033%_)))
                                            (__tmp190131
                                             (let ((__tmp190133
                                                    (cons (cons (cons _%$e189165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp190134
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e188747%_
                                        _%target189033%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp190134))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190132
                                                    (_%recur188940%_
                                                     _%body189050%_
                                                     _%vars189032%_
                                                     _%$e189165%_
                                                     _%E189034%_
                                                     _%k189035%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190133
                                                __tmp190132))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp190135
                                         __tmp190131
                                         _%E189034%_)))
                                    (if (eq? 'datum _%$e189053%_)
                                        (let ((_%$e189167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp190141
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target189033%_)))
                                                (__tmp190136
                                                 (let ((__tmp190140
                                                        (cons (cons (cons _%$e189167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target189033%_))
                                  '()))
                      '()))
               (__tmp190137
                (let ((__tmp190139
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e189167%_ _%body189050%_)))
                      (__tmp190138 (_%k189035%_ _%vars189032%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp190139 __tmp190138 _%E189034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp190140
                                                    __tmp190137))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp190141
                                             __tmp190136
                                             _%E189034%_)))
                                        (_%BUG188939%_
                                         _%e189031%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e189036189043%_)
                                      (let ((_%hd189040189172%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189036189043%_)))
                                            (_%tl189041189174%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189036189043%_))))
                                        (let* ((_%tag189177%_
                                                _%hd189040189172%_)
                                               (_%body189179%_
                                                _%tl189041189174%_))
                                          (_%K189039189169%_
                                           _%body189179%_
                                           _%tag189177%_)))
                                      (_%E189038189047%_)))))
                             (_%splice-rlen188941%_
                              (lambda (_%e188993%_)
                                (let _%lp188995%_ ((_%e188997%_ _%e188993%_)
                                                   (_%n188998%_ '0))
                                  (let* ((_%e188999189006%_ _%e188997%_)
                                         (_%E189001189010%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188999189006%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189002189019%_
                                          (lambda (_%body189013%_
                                                   _%tag189014%_)
                                            (let ((_%$e189016%_ _%tag189014%_))
                                              (if (eq? 'splice _%$e189016%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx188745%_
                                                     _%where188932%_))
                                                  (if (eq? 'cons _%$e189016%_)
                                                      (_%lp188995%_
                                                       (cdr _%body189013%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n188998%_
                                                                '1)))
                                                      _%n188998%_))))))
                                    (if (pair? _%e188999189006%_)
                                        (let ((_%hd189003189022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188999189006%_)))
                                              (_%tl189004189024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188999189006%_))))
                                          (let* ((_%tag189027%_
                                                  _%hd189003189022%_)
                                                 (_%body189029%_
                                                  _%tl189004189024%_))
                                            (_%K189002189019%_
                                             _%body189029%_
                                             _%tag189027%_)))
                                        (_%E189001189010%_))))))
                             (_%splice-vars188942%_
                              (lambda (_%e188949%_)
                                (let _%recur188951%_ ((_%e188953%_ _%e188949%_)
                                                      (_%vars188954%_ '()))
                                  (let* ((_%e188955188962%_ _%e188953%_)
                                         (_%E188957188966%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188955188962%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K188958188981%_
                                          (lambda (_%body188969%_
                                                   _%tag188970%_)
                                            (let ((_%$e188972%_ _%tag188970%_))
                                              (if (eq? 'var _%$e188972%_)
                                                  (cons _%body188969%_
                                                        _%vars188954%_)
                                                  (if (or (eq? 'cons
                                                               _%$e188972%_)
                                                          (eq? 'splice
                                                               _%$e188972%_))
                                                      (_%recur188951%_
                                                       (cdr _%body188969%_)
                                                       (_%recur188951%_
                                                        (car _%body188969%_)
                                                        _%vars188954%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e188972%_)
                      (eq? 'box _%$e188972%_))
                  (_%recur188951%_ _%body188969%_ _%vars188954%_)
                  _%vars188954%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e188955188962%_)
                                        (let ((_%hd188959188984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188955188962%_)))
                                              (_%tl188960188986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188955188962%_))))
                                          (let* ((_%tag188989%_
                                                  _%hd188959188984%_)
                                                 (_%body188991%_
                                                  _%tl188960188986%_))
                                            (_%K188958188981%_
                                             _%body188991%_
                                             _%tag188989%_)))
                                        (_%E188957188966%_))))))
                             (_%make-body188943%_
                              (lambda (_%vars188945%_)
                                (cons _%K188936%_
                                      (map (lambda (_%mvar188947%_)
                                             (let ((__tmp190142
                                                    (car _%mvar188947%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp190142
                                                _%vars188945%_
                                                _%BUG188939%_)))
                                           _%mvars188935%_)))))
                      (_%recur188940%_
                       _%hd188934%_
                       '()
                       _%target188933%_
                       _%E188937%_
                       _%make-body188943%_))))
                 (_%parse-clause188754%_
                  (lambda (_%hd188826%_ _%ids188827%_)
                    (let _%recur188829%_ ((_%e188831%_ _%hd188826%_)
                                          (_%vars188832%_ '())
                                          (_%depth188833%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e188831%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e188831%_))
                              (values '(any) _%vars188832%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e188831%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx188745%_
                                     _%hd188826%_))
                                  (if (let ((__tmp190143
                                             (lambda (_%id188838%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e188831%_
                                                  _%id188838%_)))))
                                        (declare (not safe))
                                        (__find __tmp190143 _%ids188827%_))
                                      (values (cons 'id _%e188831%_)
                                              _%vars188832%_)
                                      (if (let ((__tmp190144
                                                 (lambda (_%var188841%_)
                                                   (let ((__tmp190145
                                                          (car _%var188841%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e188831%_
                                                      __tmp190145)))))
                                            (declare (not safe))
                                            (__find __tmp190144
                                                    _%vars188832%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx188745%_
                                             _%e188831%_))
                                          (values (cons 'var _%e188831%_)
                                                  (cons (cons _%e188831%_
                                                              _%depth188833%_)
                                                        _%vars188832%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e188831%_))
                              (let* ((_%e188845188852%_ _%e188831%_)
                                     (_%E188847188856%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e188845188852%_))))
                                     (_%E188846188917%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e188845188852%_))
                                            (let ((_%e188848188860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e188845188852%_))))
                                              (let ((_%hd188849188863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188848188860%_)))
                                                    (_%tl188850188865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188848188860%_))))
                                                (let* ((_%hd188868%_
                                                        _%hd188849188863%_)
                                                       (_%rest188870%_
                                                        _%tl188850188865%_)
                                                       (_%make-pair188885%_
                                                        (lambda (_%tag188872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd188873%_
                         _%tl188874%_)
                  (let* ((_%hd-depth188876%_
                          (if (eq? _%tag188872%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth188833%_ '1))
                              _%depth188833%_))
                         (_g190146_
                          (_%recur188829%_
                           _%hd188873%_
                           _%vars188832%_
                           _%hd-depth188876%_)))
                    (begin
                      (let ((_g190147_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g190146_)
                                   (##values-length _g190146_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g190147_ 2)))
                            (error "Context expects 2 values" _g190147_)))
                      (let ((_%hd188878%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190146_ 0)))
                            (_%vars188879%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190146_ 1))))
                        (let ((_g190148_
                               (_%recur188829%_
                                _%tl188874%_
                                _%vars188879%_
                                _%depth188833%_)))
                          (begin
                            (let ((_g190149_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190148_)
                                         (##values-length _g190148_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190149_ 2)))
                                  (error "Context expects 2 values"
                                         _g190149_)))
                            (let ((_%tl188881%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190148_ 0)))
                                  (_%vars188882%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190148_ 1))))
                              (values (cons _%tag188872%_
                                            (cons _%hd188878%_ _%tl188881%_))
                                      _%vars188882%_)))))))))
               (_%e188886188893%_ _%rest188870%_)
               (_%E188888188897%_
                (lambda ()
                  (_%make-pair188885%_ 'cons _%hd188868%_ _%rest188870%_)))
               (_%E188887188913%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e188886188893%_))
                      (let ((_%e188889188901%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e188886188893%_))))
                        (let ((_%hd188890188904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188889188901%_)))
                              (_%tl188891188906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188889188901%_))))
                          (let* ((_%rest-hd188909%_ _%hd188890188904%_)
                                 (_%rest-tl188911%_ _%tl188891188906%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd188909%_))
                                (_%make-pair188885%_
                                 'splice
                                 _%hd188868%_
                                 _%rest-tl188911%_)
                                (_%make-pair188885%_
                                 'cons
                                 _%hd188868%_
                                 _%rest188870%_)))))
                      (_%E188888188897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188887188913%_))))
                                            (_%E188847188856%_)))))
                                (_%E188846188917%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e188831%_))
                                  (values '(null) _%vars188832%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e188831%_))
                                      (let ((_g190150_
                                             (_%recur188829%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e188831%_)))
                                              _%vars188832%_
                                              _%depth188833%_)))
                                        (begin
                                          (let ((_g190151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190150_)
                                                       (##values-length
                                                        _g190150_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190151_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190151_)))
                                          (let ((_%e188923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190150_ 0)))
                                                (_%vars188924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190150_
                                                    1))))
                                            (values (cons 'vector _%e188923%_)
                                                    _%vars188924%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e188831%_))
                                          (let ((_g190152_
                                                 (_%recur188829%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e188831%_)))
                                                  _%vars188832%_
                                                  _%depth188833%_)))
                                            (begin
                                              (let ((_g190153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g190152_)
                                                           (##values-length
                                                            _g190152_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g190153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g190153_)))
                                              (let ((_%e188927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190152_
                                                        0)))
                                                    (_%vars188928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190152_
                                                        1))))
                                                (values (cons 'box _%e188927%_)
                                                        _%vars188928%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e188831%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e188831%_)))
                                                      _%vars188832%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx188745%_
                                                 _%e188831%_))))))))))))
          (let* ((_%e188755188768%_ _%stx188745%_)
                 (_%E188757188772%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e188755188768%_))))
                 (_%E188756188822%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e188755188768%_))
                        (let ((_%e188758188776%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e188755188768%_))))
                          (let ((_%hd188759188779%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188758188776%_)))
                                (_%tl188760188781%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188758188776%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188760188781%_))
                                (let ((_%e188761188784%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl188760188781%_))))
                                  (let ((_%hd188762188787%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188761188784%_)))
                                        (_%tl188763188789%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188761188784%_))))
                                    (let ((_%expr188792%_ _%hd188762188787%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188763188789%_))
                                          (let ((_%e188764188794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl188763188789%_))))
                                            (let ((_%hd188765188797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188764188794%_)))
                                                  (_%tl188766188799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188764188794%_))))
                                              (let* ((_%ids188802%_
                                                      _%hd188765188797%_)
                                                     (_%clauses188804%_
                                                      _%tl188766188799%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids188802%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses188804%_))
                                                        (let* ((_%ids188809%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids188802%_)))
                       (_%clauses188811%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses188804%_)))
                       (_%clause-ids188813%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses188811%_)))
                       (_%E188815%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target188817%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first188819%_
                        (if (null? _%clauses188811%_)
                            _%E188815%_
                            (car _%clause-ids188813%_))))
                  (let ((__tmp190155
                         (let ((__tmp190156
                                (let ((__tmp190158
                                       (let ((__tmp190160
                                              (cons (cons (cons _%E188815%_
                                                                '())
                                                          (cons (let ((__tmp190162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target188817%_ '()))
                              (__tmp190161
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target188817%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp190162 __tmp190161))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp190159
                                              (_%generate-body188751%_
                                               (_%generate-bindings188750%_
                                                _%target188817%_
                                                _%ids188809%_
                                                _%clauses188811%_
                                                _%clause-ids188813%_
                                                _%E188815%_)
                                               (cons _%first188819%_
                                                     (cons _%expr188792%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp190160
                                          __tmp190159)))
                                      (__tmp190157
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx188745%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp190158
                                   __tmp190157))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp190156)))
                        (__tmp190154
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx188745%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp190155 __tmp190154)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx188745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx188745%_
                                                       _%ids188802%_))))))
                                          (_%E188757188772%_)))))
                                (_%E188757188772%_))))
                        (_%E188757188772%_)))))
            (_%E188756188822%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx189470%_)
        (let* ((_%identifier=?189472%_ 'free-identifier=?)
               (_%unwrap-e189474%_ 'syntax-e)
               (_%wrap-e189476%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189470%_
           _%identifier=?189472%_
           _%unwrap-e189474%_
           _%wrap-e189476%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx189478%_ _%identifier=?189479%_)
        (let* ((_%unwrap-e189481%_ 'syntax-e) (_%wrap-e189483%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189478%_
           _%identifier=?189479%_
           _%unwrap-e189481%_
           _%wrap-e189483%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx189485%_ _%identifier=?189486%_ _%unwrap-e189487%_)
        (let ((_%wrap-e189489%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189485%_
           _%identifier=?189486%_
           _%unwrap-e189487%_
           _%wrap-e189489%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g190163_
        (let ((_g190164_ (let () (declare (not safe)) (##length _g190163_))))
          (cond ((let () (declare (not safe)) (##fx= _g190164_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g190163_))
                ((let () (declare (not safe)) (##fx= _g190164_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g190163_))
                ((let () (declare (not safe)) (##fx= _g190164_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g190163_))
                ((let () (declare (not safe)) (##fx= _g190164_ 4))
                 (apply gx#macro-expand-syntax-case__% _g190163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g190163_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx188742%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx188742%_))
            (let ((__tmp190165
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx188742%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp190165 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd188700%_ . _%rest188701%_)
        (let ((_%len188703%_ (length _%hd188700%_)))
          (let _%lp188705%_ ((_%rest188707%_ _%rest188701%_))
            (let* ((_%rest188708188716%_ _%rest188707%_)
                   (_%else188710188724%_ (lambda () '#!void))
                   (_%K188712188730%_
                    (lambda (_%rest188727%_ _%hd188728%_)
                      (if (let ((__tmp190166 (length _%hd188728%_)))
                            (declare (not safe))
                            (##fx= _%len188703%_ __tmp190166))
                          (_%lp188705%_ _%rest188727%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd188728%_))))))
              (if (pair? _%rest188708188716%_)
                  (let ((_%hd188713188733%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest188708188716%_)))
                        (_%tl188714188735%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest188708188716%_))))
                    (let* ((_%hd188738%_ _%hd188713188733%_)
                           (_%rest188740%_ _%tl188714188735%_))
                      (_%K188712188730%_ _%rest188740%_ _%hd188738%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx188650%_ _%n188651%_)
        (let _%lp188653%_ ((_%rest188656%_ _%stx188650%_) (_%r188658%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188656%_))
              (let* ((_%g188660188667%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188656%_)))
                     (_%E188662188671%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188660188667%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188663188678%_
                      (lambda (_%rest188674%_ _%hd188675%_)
                        (_%lp188653%_
                         _%rest188674%_
                         (cons _%hd188675%_ _%r188658%_)))))
                (if (pair? _%g188660188667%_)
                    (let ((_%hd188664188681%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188660188667%_)))
                          (_%tl188665188683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188660188667%_))))
                      (let* ((_%hd188686%_ _%hd188664188681%_)
                             (_%rest188688%_ _%tl188665188683%_))
                        (_%K188663188678%_ _%rest188688%_ _%hd188686%_)))
                    (_%E188662188671%_)))
              (let _%lp188690%_ ((_%n188692%_ _%n188651%_)
                                 (_%l188693%_ _%r188658%_)
                                 (_%r188695%_ _%rest188656%_))
                (if (null? _%l188693%_)
                    (values _%l188693%_ _%r188695%_)
                    (if (fxpositive? _%n188692%_)
                        (_%lp188690%_
                         (let () (declare (not safe)) (##fx- _%n188692%_ '1))
                         (cdr _%l188693%_)
                         (cons (car _%l188693%_) _%r188695%_))
                        (values (reverse! _%l188693%_) _%r188695%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx188600%_ _%n188601%_)
        (let _%lp188603%_ ((_%rest188606%_ _%stx188600%_) (_%r188608%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188606%_))
              (let* ((_%g188610188617%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188606%_)))
                     (_%E188612188621%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188610188617%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188613188628%_
                      (lambda (_%rest188624%_ _%hd188625%_)
                        (_%lp188603%_
                         _%rest188624%_
                         (cons _%hd188625%_ _%r188608%_)))))
                (if (pair? _%g188610188617%_)
                    (let ((_%hd188614188631%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188610188617%_)))
                          (_%tl188615188633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188610188617%_))))
                      (let* ((_%hd188636%_ _%hd188614188631%_)
                             (_%rest188638%_ _%tl188615188633%_))
                        (_%K188613188628%_ _%rest188638%_ _%hd188636%_)))
                    (_%E188612188621%_)))
              (let _%lp188640%_ ((_%n188642%_ _%n188601%_)
                                 (_%l188643%_ _%r188608%_)
                                 (_%r188645%_ _%rest188606%_))
                (if (null? _%l188643%_)
                    (vector _%l188643%_ _%r188645%_)
                    (if (fxpositive? _%n188642%_)
                        (_%lp188640%_
                         (let () (declare (not safe)) (##fx- _%n188642%_ '1))
                         (cdr _%l188643%_)
                         (cons (car _%l188643%_) _%r188645%_))
                        (vector (reverse! _%l188643%_) _%r188645%_))))))))))
