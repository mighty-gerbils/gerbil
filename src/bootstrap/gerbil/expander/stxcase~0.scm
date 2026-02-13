(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771022576)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp188977 (list gx#expander::t))
            (__tmp188976 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp188977
         '(id depth)
         __tmp188976
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args188973%_
        (apply make-instance gx#syntax-pattern::t _%$args188973%_)))
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
      (lambda (_%self188959%_ _%stx188960%_)
        (let ((_%self188963%_ _%self188959%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx188960%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx188426%_)
        (letrec ((_%generate188428%_
                  (lambda (_%e188668%_)
                    (letrec ((_%BUG188670%_
                              (lambda (_%q188835%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx188426%_
                                         _%e188668%_
                                         _%q188835%_))))
                             (_%local-pattern-e188671%_
                              (lambda (_%pat188833%_)
                                (let ((__tmp188978
                                       (##structure-ref
                                        _%pat188833%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp188978))))
                             (_%getvar188672%_
                              (lambda (_%q188830%_ _%vars188831%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q188830%_
                                   _%vars188831%_
                                   _%BUG188670%_))))
                             (_%getarg188673%_
                              (lambda (_%arg188796%_ _%vars188797%_)
                                (let* ((_%arg188798188805%_ _%arg188796%_)
                                       (_%E188800188809%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg188798188805%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K188801188818%_
                                        (lambda (_%e188812%_ _%tag188813%_)
                                          (let ((_%$e188815%_ _%tag188813%_))
                                            (if (eq? 'ref _%$e188815%_)
                                                (_%getvar188672%_
                                                 _%e188812%_
                                                 _%vars188797%_)
                                                (if (eq? 'pattern _%$e188815%_)
                                                    (_%local-pattern-e188671%_
                                                     _%e188812%_)
                                                    (_%BUG188670%_
                                                     _%arg188796%_)))))))
                                  (if (pair? _%arg188798188805%_)
                                      (let ((_%hd188802188821%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg188798188805%_)))
                                            (_%tl188803188823%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg188798188805%_))))
                                        (let* ((_%tag188826%_
                                                _%hd188802188821%_)
                                               (_%e188828%_
                                                _%tl188803188823%_))
                                          (_%K188801188818%_
                                           _%e188828%_
                                           _%tag188826%_)))
                                      (_%E188800188809%_))))))
                      (let _%recur188675%_ ((_%e188677%_ _%e188668%_)
                                            (_%vars188678%_ '()))
                        (let* ((_%e188679188686%_ _%e188677%_)
                               (_%E188681188690%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e188679188686%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K188682188784%_
                                (lambda (_%body188693%_ _%tag188694%_)
                                  (let ((_%$e188696%_ _%tag188694%_))
                                    (if (eq? 'datum _%$e188696%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body188693%_))
                                        (if (eq? 'term _%$e188696%_)
                                            (let ((_%id188699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body188693%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id188699%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks188702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id188699%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks188702%_)
                                                        (let ((__tmp188979
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body188693%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp188979))
                (let ((__tmp188981
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body188693%_)))
                      (__tmp188980
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body188693%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp188981
                   __tmp188980
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id188699%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body188693%_))
                                                      (_%BUG188670%_
                                                       _%e188677%_))))
                                            (if (eq? 'pattern _%$e188696%_)
                                                (_%local-pattern-e188671%_
                                                 _%body188693%_)
                                                (if (eq? 'ref _%$e188696%_)
                                                    (_%getvar188672%_
                                                     _%body188693%_
                                                     _%vars188678%_)
                                                    (if (eq? 'cons
                                                             _%$e188696%_)
                                                        (let ((__tmp188983
                                                               (_%recur188675%_
                                                                (car _%body188693%_)
                                                                _%vars188678%_))
                                                              (__tmp188982
                                                               (_%recur188675%_
                                                                (cdr _%body188693%_)
                                                                _%vars188678%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp188983
                                                           __tmp188982))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e188696%_)
                    (let ((__tmp188984
                           (_%recur188675%_ _%body188693%_ _%vars188678%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp188984))
                    (if (eq? 'box _%$e188696%_)
                        (let ((__tmp188985
                               (_%recur188675%_
                                _%body188693%_
                                _%vars188678%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp188985))
                        (if (eq? 'splice _%$e188696%_)
                            (let* ((_%body188705188716%_ _%body188693%_)
                                   (_%E188707188720%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body188705188716%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K188708188758%_
                                    (lambda (_%args188723%_
                                             _%iv188724%_
                                             _%hd188725%_
                                             _%depth188726%_)
                                      (let* ((_%targets188732%_
                                              (map (lambda (_%g188727188729%_)
                                                     (_%getarg188673%_
                                                      _%g188727188729%_
                                                      _%vars188678%_))
                                                   _%args188723%_))
                                             (_%fold-in188734%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args188723%_)))
                                             (_%fold-out188736%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args188738%_
                                              (let ((__tmp188986
                                                     (cons _%fold-out188736%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp188986
                                                 _%fold-in188734%_)))
                                             (_%lambda-body188755%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth188726%_ '1))
                                                  (let ((_%r-args188746%_
                                                         (map (lambda (_%arg188740%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg188740%_)))
                      _%args188723%_))
                (_%r-vars188747%_
                 (let ((__tmp188987
                        (lambda (_%arg188742%_ _%var188743%_ _%r188744%_)
                          (cons (cons (cdr _%arg188742%_) _%var188743%_)
                                _%r188744%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp188987
                    _%vars188678%_
                    _%args188723%_
                    _%fold-in188734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur188675%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth188726%_ '1))
                         (cons _%hd188725%_
                               (cons (cons 'var _%fold-out188736%_)
                                     _%r-args188746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars188747%_))
                                                  (let* ((_%hd-vars188753%_
                                                          (let ((__tmp188988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg188749%_ _%var188750%_ _%r188751%_)
                           (cons (cons (cdr _%arg188749%_) _%var188750%_)
                                 _%r188751%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp188988
                     _%vars188678%_
                     _%args188723%_
                     _%fold-in188734%_)))
                 (__tmp188989
                  (_%recur188675%_ _%hd188725%_ _%hd-vars188753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp188989
                                                     _%fold-out188736%_)))))
                                        (let ((__tmp188993
                                               (if (let ((__tmp188994
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets188732%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp188994 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets188732%_))
                                                   '#!void))
                                              (__tmp188990
                                               (let ((__tmp188992
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args188738%_
                                                         _%lambda-body188755%_)))
                                                     (__tmp188991
                                                      (_%recur188675%_
                                                       _%iv188724%_
                                                       _%vars188678%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp188992
                                                  __tmp188991
                                                  _%targets188732%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp188993
                                           __tmp188990))))))
                              (if (pair? _%body188705188716%_)
                                  (let ((_%hd188709188761%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body188705188716%_)))
                                        (_%tl188710188763%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body188705188716%_))))
                                    (let ((_%depth188766%_ _%hd188709188761%_))
                                      (if (pair? _%tl188710188763%_)
                                          (let ((_%hd188711188768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl188710188763%_)))
                                                (_%tl188712188770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl188710188763%_))))
                                            (let ((_%hd188773%_
                                                   _%hd188711188768%_))
                                              (if (pair? _%tl188712188770%_)
                                                  (let ((_%hd188713188775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl188712188770%_)))
                                                        (_%tl188714188777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl188712188770%_))))
                                                    (let* ((_%iv188780%_
                                                            _%hd188713188775%_)
                                                           (_%args188782%_
                                                            _%tl188714188777%_))
                                                      (_%K188708188758%_
                                                       _%args188782%_
                                                       _%iv188780%_
                                                       _%hd188773%_
                                                       _%depth188766%_)))
                                                  (_%E188707188720%_))))
                                          (_%E188707188720%_))))
                                  (_%E188707188720%_)))
                            (if (eq? 'var _%$e188696%_)
                                _%body188693%_
                                (_%BUG188670%_ _%e188677%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e188679188686%_)
                              (let ((_%hd188683188787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188679188686%_)))
                                    (_%tl188684188789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188679188686%_))))
                                (let* ((_%tag188792%_ _%hd188683188787%_)
                                       (_%body188794%_ _%tl188684188789%_))
                                  (_%K188682188784%_
                                   _%body188794%_
                                   _%tag188792%_)))
                              (_%E188681188690%_)))))))
                 (_%parse188429%_
                  (lambda (_%e188470%_)
                    (letrec ((_%make-cons188472%_
                              (lambda (_%hd188660%_ _%tl188661%_)
                                (let ((_g188995_ _%hd188660%_)
                                      (_g188997_ _%tl188661%_))
                                  (begin
                                    (let ((_g188996_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g188995_)
                                                 (##values-length _g188995_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g188996_ 2)))
                                          (error "Context expects 2 values"
                                                 _g188996_)))
                                    (let ((_g188998_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g188997_)
                                                 (##values-length _g188997_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g188998_ 2)))
                                          (error "Context expects 2 values"
                                                 _g188998_)))
                                    (let ((_%hd-e188663%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g188995_ 0)))
                                          (_%hd-vars188664%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g188995_ 1))))
                                      (let ((_%tl-e188665%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g188997_ 0)))
                                            (_%tl-vars188666%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g188997_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e188663%_
                                                            _%tl-e188665%_))
                                                (append _%hd-vars188664%_
                                                        _%tl-vars188666%_))))))))
                             (_%make-splice188473%_
                              (lambda (_%where188596%_
                                       _%depth188597%_
                                       _%hd188598%_
                                       _%tl188599%_)
                                (let ((_g188999_ _%hd188598%_)
                                      (_g189001_ _%tl188599%_))
                                  (begin
                                    (let ((_g189000_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g188999_)
                                                 (##values-length _g188999_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189000_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189000_)))
                                    (let ((_g189002_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189001_)
                                                 (##values-length _g189001_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189002_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189002_)))
                                    (let ((_%hd-e188601%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g188999_ 0)))
                                          (_%hd-vars188602%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g188999_ 1))))
                                      (let ((_%tl-e188603%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189001_ 0)))
                                            (_%tl-vars188604%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189001_ 1))))
                                        (let _%lp188606%_ ((_%rest188608%_
                                                            _%hd-vars188602%_)
                                                           (_%targets188609%_
                                                            '())
                                                           (_%vars188610%_
                                                            _%tl-vars188604%_))
                                          (let* ((_%rest188611188621%_
                                                  _%rest188608%_)
                                                 (_%else188613188629%_
                                                  (lambda ()
                                                    (if (null? _%targets188609%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx188426%_
                                                           _%where188596%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth188597%_
                                    (cons _%hd-e188601%_
                                          (cons _%tl-e188603%_
                                                _%targets188609%_))))
                        _%vars188610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K188615188641%_
                                                  (lambda (_%rest188632%_
                                                           _%hd-pat188633%_
                                                           _%hd-depth*188634%_)
                                                    (let ((_%hd-depth188636%_
                                                           (fx- _%hd-depth*188634%_
                                                                _%depth188597%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth188636%_))
                                                          (_%lp188606%_
                                                           _%rest188632%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat188633%_)
                         _%targets188609%_)
                   (cons (cons _%hd-depth188636%_ _%hd-pat188633%_)
                         _%vars188610%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth188636%_))
                      (_%lp188606%_
                       _%rest188632%_
                       (cons (cons 'pattern _%hd-pat188633%_)
                             _%targets188609%_)
                       _%vars188610%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx188426%_
                         _%where188596%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest188611188621%_)
                                                (let ((_%hd188616188644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest188611188621%_)))
                                                      (_%tl188617188646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest188611188621%_))))
                                                  (if (pair? _%hd188616188644%_)
                                                      (let ((_%hd188618188649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd188616188644%_)))
                    (_%tl188619188651%_
                     (let () (declare (not safe)) (##cdr _%hd188616188644%_))))
                (let* ((_%hd-depth*188654%_ _%hd188618188649%_)
                       (_%hd-pat188656%_ _%tl188619188651%_)
                       (_%rest188658%_ _%tl188617188646%_))
                  (_%K188615188641%_
                   _%rest188658%_
                   _%hd-pat188656%_
                   _%hd-depth*188654%_)))
              (_%else188613188629%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else188613188629%_))))))))))
                             (_%recur188474%_
                              (lambda (_%e188479%_ _%is-e?188480%_)
                                (if (_%is-e?188480%_ _%e188479%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx188426%_))
                                    (if (gx#syntax-local-pattern? _%e188479%_)
                                        (let* ((_%pat188484%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e188479%_)))
                                               (_%depth188486%_
                                                (##structure-ref
                                                 _%pat188484%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth188486%_)
                                              (values (cons 'ref _%pat188484%_)
                                                      (cons (cons _%depth188486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat188484%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat188484%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e188479%_))
                                            (values (cons 'term _%e188479%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e188479%_))
                                                (let* ((_%e188490188497%_
                                                        _%e188479%_)
                                                       (_%E188492188501%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e188490188497%_))))
                                                       (_%E188491188583%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e188490188497%_))
                      (let ((_%e188493188505%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e188490188497%_))))
                        (let ((_%hd188494188508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188493188505%_)))
                              (_%tl188495188510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188493188505%_))))
                          (let* ((_%hd188513%_ _%hd188494188508%_)
                                 (_%rest188515%_ _%tl188495188510%_))
                            (if (_%is-e?188480%_ _%hd188513%_)
                                (let* ((_%e188516188523%_ _%rest188515%_)
                                       (_%E188518188527%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx188426%_
                                             _%e188479%_))))
                                       (_%E188517188541%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e188516188523%_))
                                              (let ((_%e188519188531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e188516188523%_))))
                                                (let ((_%hd188520188534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188519188531%_)))
                                                      (_%tl188521188536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188519188531%_))))
                                                  (let ((_%rest188539%_
                                                         _%hd188520188534%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188521188536%_))
                                                        (_%recur188474%_
                                                         _%rest188539%_
                                                         false)
                                                        (_%E188518188527%_)))))
                                              (_%E188518188527%_)))))
                                  (_%E188517188541%_))
                                (let _%lp188545%_ ((_%rest188547%_
                                                    _%rest188515%_)
                                                   (_%depth188548%_ '0))
                                  (let* ((_%e188549188556%_ _%rest188547%_)
                                         (_%E188551188560%_
                                          (lambda ()
                                            (if (fxpositive? _%depth188548%_)
                                                (_%make-splice188473%_
                                                 _%e188479%_
                                                 _%depth188548%_
                                                 (_%recur188474%_
                                                  _%hd188513%_
                                                  _%is-e?188480%_)
                                                 (_%recur188474%_
                                                  _%rest188547%_
                                                  _%is-e?188480%_))
                                                (_%make-cons188472%_
                                                 (_%recur188474%_
                                                  _%hd188513%_
                                                  _%is-e?188480%_)
                                                 (_%recur188474%_
                                                  _%rest188547%_
                                                  _%is-e?188480%_)))))
                                         (_%E188550188579%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e188549188556%_))
                                                (let ((_%e188552188564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e188549188556%_))))
                                                  (let ((_%hd188553188567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e188552188564%_)))
                                                        (_%tl188554188569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e188552188564%_))))
                                                    (let* ((_%rest-hd188572%_
                                                            _%hd188553188567%_)
                                                           (_%rest-tl188574%_
                                                            _%tl188554188569%_))
                                                      (if (_%is-e?188480%_
                                                           _%rest-hd188572%_)
                                                          (_%lp188545%_
                                                           _%rest-tl188574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth188548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth188548%_)
                      (_%make-splice188473%_
                       _%e188479%_
                       _%depth188548%_
                       (_%recur188474%_ _%hd188513%_ _%is-e?188480%_)
                       (_%recur188474%_ _%rest188547%_ _%is-e?188480%_))
                      (_%make-cons188472%_
                       (_%recur188474%_ _%hd188513%_ _%is-e?188480%_)
                       (_%recur188474%_ _%rest188547%_ _%is-e?188480%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E188551188560%_)))))
                                    (_%E188550188579%_)))))))
                      (_%E188492188501%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188491188583%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e188479%_))
                                                    (let ((_g189003_
                                                           (_%recur188474%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e188479%_)))
                    _%is-e?188480%_)))
              (begin
                (let ((_g189004_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g189003_)
                             (##values-length _g189003_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g189004_ 2)))
                      (error "Context expects 2 values" _g189004_)))
                (let ((_%e188588%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g189003_ 0)))
                      (_%vars188589%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g189003_ 1))))
                  (values (cons 'vector _%e188588%_) _%vars188589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e188479%_))
                                                        (let ((_g189005_
                                                               (_%recur188474%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e188479%_)))
                        _%is-e?188480%_)))
                  (begin
                    (let ((_g189006_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g189005_)
                                 (##values-length _g189005_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g189006_ 2)))
                          (error "Context expects 2 values" _g189006_)))
                    (let ((_%e188592%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g189005_ 0)))
                          (_%vars188593%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g189005_ 1))))
                      (values (cons 'box _%e188592%_) _%vars188593%_))))
                (values (cons 'datum _%e188479%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g189007_
                             (_%recur188474%_ _%e188470%_ gx#ellipsis?)))
                        (begin
                          (let ((_g189008_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g189007_)
                                       (##values-length _g189007_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g189008_ 2)))
                                (error "Context expects 2 values" _g189008_)))
                          (let ((_%tree188476%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g189007_ 0)))
                                (_%vars188477%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g189007_ 1))))
                            (if (null? _%vars188477%_)
                                _%tree188476%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx188426%_
                                   _%vars188477%_))))))))))
          (let* ((_%e188430188440%_ _%stx188426%_)
                 (_%E188432188444%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx188426%_))))
                 (_%E188431188466%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e188430188440%_))
                        (let ((_%e188433188448%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e188430188440%_))))
                          (let ((_%hd188434188451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188433188448%_)))
                                (_%tl188435188453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188433188448%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188435188453%_))
                                (let ((_%e188436188456%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl188435188453%_))))
                                  (let ((_%hd188437188459%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188436188456%_)))
                                        (_%tl188438188461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188436188456%_))))
                                    (let ((_%form188464%_ _%hd188437188459%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188438188461%_))
                                          (let ((__tmp189010
                                                 (_%generate188428%_
                                                  (_%parse188429%_
                                                   _%form188464%_)))
                                                (__tmp189009
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx188426%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp189010
                                             __tmp189009))
                                          (_%E188432188444%_)))))
                                (_%E188432188444%_))))
                        (_%E188432188444%_)))))
            (_%E188431188466%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx187675%_
               _%identifier=?187676%_
               _%unwrap-e187677%_
               _%wrap-e187678%_)
        (letrec ((_%generate-bindings187680%_
                  (lambda (_%target188290%_
                           _%ids188291%_
                           _%clauses188292%_
                           _%clause-ids188293%_
                           _%E188294%_)
                    (letrec ((_%generate1188296%_
                              (lambda (_%clause188393%_
                                       _%clause-id188394%_
                                       _%E188395%_)
                                (cons (cons _%clause-id188394%_ '())
                                      (cons (let ((__tmp189012
                                                   (cons _%target188290%_ '()))
                                                  (__tmp189011
                                                   (_%generate-clause187682%_
                                                    _%target188290%_
                                                    _%ids188291%_
                                                    _%clause188393%_
                                                    _%E188395%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp189012
                                               __tmp189011))
                                            '())))))
                      (let _%lp188298%_ ((_%rest188300%_ _%clauses188292%_)
                                         (_%rest-ids188301%_
                                          _%clause-ids188293%_)
                                         (_%bindings188302%_ '()))
                        (let* ((_%rest188303188311%_ _%rest188300%_)
                               (_%else188305188319%_
                                (lambda () _%bindings188302%_))
                               (_%K188307188381%_
                                (lambda (_%rest188322%_ _%clause188323%_)
                                  (let* ((_%rest-ids188324188331%_
                                          _%rest-ids188301%_)
                                         (_%E188326188335%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids188324188331%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K188327188369%_
                                          (lambda (_%rest-ids188338%_
                                                   _%clause-id188339%_)
                                            (let* ((_%rest-ids188340188348%_
                                                    _%rest-ids188338%_)
                                                   (_%else188342188356%_
                                                    (lambda ()
                                                      (cons (_%generate1188296%_
                                                             _%clause188323%_
                                                             _%clause-id188339%_
                                                             _%E188294%_)
                                                            _%bindings188302%_)))
                                                   (_%K188344188361%_
                                                    (lambda (_%next-clause-id188359%_)
                                                      (_%lp188298%_
                                                       _%rest188322%_
                                                       _%rest-ids188338%_
                                                       (cons (_%generate1188296%_
                                                              _%clause188323%_
                                                              _%clause-id188339%_
                                                              _%next-clause-id188359%_)
                                                             _%bindings188302%_)))))
                                              (if (pair? _%rest-ids188340188348%_)
                                                  (let* ((_%hd188345188364%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids188340188348%_)))
                                                         (_%next-clause-id188367%_
                                                          _%hd188345188364%_))
                                                    (_%K188344188361%_
                                                     _%next-clause-id188367%_))
                                                  (_%else188342188356%_))))))
                                    (if (pair? _%rest-ids188324188331%_)
                                        (let ((_%hd188328188372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids188324188331%_)))
                                              (_%tl188329188374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids188324188331%_))))
                                          (let* ((_%clause-id188377%_
                                                  _%hd188328188372%_)
                                                 (_%rest-ids188379%_
                                                  _%tl188329188374%_))
                                            (_%K188327188369%_
                                             _%rest-ids188379%_
                                             _%clause-id188377%_)))
                                        (_%E188326188335%_))))))
                          (if (pair? _%rest188303188311%_)
                              (let ((_%hd188308188384%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest188303188311%_)))
                                    (_%tl188309188386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest188303188311%_))))
                                (let* ((_%clause188389%_ _%hd188308188384%_)
                                       (_%rest188391%_ _%tl188309188386%_))
                                  (_%K188307188381%_
                                   _%rest188391%_
                                   _%clause188389%_)))
                              (_%else188305188319%_)))))))
                 (_%generate-body187681%_
                  (lambda (_%bindings188250%_ _%body188251%_)
                    (let _%recur188253%_ ((_%rest188255%_ _%bindings188250%_))
                      (let* ((_%rest188256188264%_ _%rest188255%_)
                             (_%else188258188272%_ (lambda () _%body188251%_))
                             (_%K188260188278%_
                              (lambda (_%rest188275%_ _%hd188276%_)
                                (let ((__tmp189014 (cons _%hd188276%_ '()))
                                      (__tmp189013
                                       (_%recur188253%_ _%rest188275%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp189014
                                   __tmp189013)))))
                        (if (pair? _%rest188256188264%_)
                            (let ((_%hd188261188281%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest188256188264%_)))
                                  (_%tl188262188283%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest188256188264%_))))
                              (let* ((_%hd188286%_ _%hd188261188281%_)
                                     (_%rest188288%_ _%tl188262188283%_))
                                (_%K188260188278%_
                                 _%rest188288%_
                                 _%hd188286%_)))
                            (_%else188258188272%_))))))
                 (_%generate-clause187682%_
                  (lambda (_%target188113%_
                           _%ids188114%_
                           _%clause188115%_
                           _%E188116%_)
                    (letrec ((_%generate1188118%_
                              (lambda (_%hd188205%_
                                       _%fender188206%_
                                       _%body188207%_)
                                (let ((_g189015_
                                       (_%parse-clause187684%_
                                        _%hd188205%_
                                        _%ids188114%_)))
                                  (begin
                                    (let ((_g189016_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189015_)
                                                 (##values-length _g189015_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189016_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189016_)))
                                    (let ((_%e188209%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189015_ 0)))
                                          (_%mvars188210%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189015_ 1))))
                                      (let* ((_%pvars188212%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars188210%_))))
                                             (_%E188214%_
                                              (cons _%E188116%_
                                                    (cons _%target188113%_
                                                          '())))
                                             (_%K188247%_
                                              (let ((__tmp189017
                                                     (let ((__tmp189019
                                                            (map (lambda (_%mvar188216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar188217%_)
                           (let* ((_%mvar188218188225%_ _%mvar188216%_)
                                  (_%E188220188229%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar188218188225%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K188221188235%_
                                   (lambda (_%depth188232%_ _%id188233%_)
                                     (cons _%id188233%_
                                           (cons (let ((__tmp189021
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id188233%_)))
                                                       (__tmp189020
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar188217%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp189021
                                                    __tmp189020
                                                    _%depth188232%_))
                                                 '())))))
                             (if (pair? _%mvar188218188225%_)
                                 (let ((_%hd188222188238%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar188218188225%_)))
                                       (_%tl188223188240%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar188218188225%_))))
                                   (let* ((_%id188243%_ _%hd188222188238%_)
                                          (_%depth188245%_ _%tl188223188240%_))
                                     (_%K188221188235%_
                                      _%depth188245%_
                                      _%id188243%_)))
                                 (_%E188220188229%_))))
                         _%mvars188210%_
                         _%pvars188212%_))
                   (__tmp189018
                    (if (eq? _%fender188206%_ '#t)
                        _%body188207%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender188206%_
                           _%body188207%_
                           _%E188214%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp189019 __tmp189018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars188212%_
                                                 __tmp189017))))
                                        (_%generate-match187683%_
                                         _%hd188205%_
                                         _%target188113%_
                                         _%e188209%_
                                         _%mvars188210%_
                                         _%K188247%_
                                         _%E188214%_))))))))
                      (let* ((_%e188119188139%_ _%clause188115%_)
                             (_%E188128188143%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e188119188139%_))))
                             (_%E188121188177%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e188119188139%_))
                                    (let ((_%e188129188147%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e188119188139%_))))
                                      (let ((_%hd188130188150%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188129188147%_)))
                                            (_%tl188131188152%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188129188147%_))))
                                        (let ((_%hd188155%_
                                               _%hd188130188150%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188131188152%_))
                                              (let ((_%e188132188157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188131188152%_))))
                                                (let ((_%hd188133188160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188132188157%_)))
                                                      (_%tl188134188162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188132188157%_))))
                                                  (let ((_%fender188165%_
                                                         _%hd188133188160%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl188134188162%_))
                                                        (let ((_%e188135188167%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl188134188162%_))))
                  (let ((_%hd188136188170%_
                         (let ()
                           (declare (not safe))
                           (##car _%e188135188167%_)))
                        (_%tl188137188172%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e188135188167%_))))
                    (let ((_%body188175%_ _%hd188136188170%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188137188172%_))
                          (_%generate1188118%_
                           _%hd188155%_
                           _%fender188165%_
                           _%body188175%_)
                          (_%E188128188143%_)))))
                (_%E188128188143%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E188128188143%_)))))
                                    (_%E188128188143%_))))
                             (_%E188120188201%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e188119188139%_))
                                    (let ((_%e188122188181%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e188119188139%_))))
                                      (let ((_%hd188123188184%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188122188181%_)))
                                            (_%tl188124188186%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188122188181%_))))
                                        (let ((_%hd188189%_
                                               _%hd188123188184%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188124188186%_))
                                              (let ((_%e188125188191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188124188186%_))))
                                                (let ((_%hd188126188194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188125188191%_)))
                                                      (_%tl188127188196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188125188191%_))))
                                                  (let ((_%body188199%_
                                                         _%hd188126188194%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188127188196%_))
                                                        (_%generate1188118%_
                                                         _%hd188189%_
                                                         '#t
                                                         _%body188199%_)
                                                        (_%E188121188177%_)))))
                                              (_%E188121188177%_)))))
                                    (_%E188121188177%_)))))
                        (_%E188120188201%_)))))
                 (_%generate-match187683%_
                  (lambda (_%where187862%_
                           _%target187863%_
                           _%hd187864%_
                           _%mvars187865%_
                           _%K187866%_
                           _%E187867%_)
                    (letrec ((_%BUG187869%_
                              (lambda (_%q188111%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx187675%_
                                         _%hd187864%_
                                         _%q188111%_))))
                             (_%recur187870%_
                              (lambda (_%e187961%_
                                       _%vars187962%_
                                       _%target187963%_
                                       _%E187964%_
                                       _%k187965%_)
                                (let* ((_%e187966187973%_ _%e187961%_)
                                       (_%E187968187977%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e187966187973%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K187969188099%_
                                        (lambda (_%body187980%_ _%tag187981%_)
                                          (let ((_%$e187983%_ _%tag187981%_))
                                            (if (eq? 'any _%$e187983%_)
                                                (_%k187965%_ _%vars187962%_)
                                                (if (eq? 'id _%$e187983%_)
                                                    (let ((__tmp189026
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target187963%_)))
                                                          (__tmp189022
                                                           (let ((__tmp189024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp189025
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e187678%_
                                    _%body187980%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?187676%_
                             __tmp189025
                             _%target187963%_)))
                         (__tmp189023 (_%k187965%_ _%vars187962%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp189024 __tmp189023 _%E187964%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp189026 __tmp189022 _%E187964%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e187983%_)
                                                        (_%k187965%_
                                                         (cons (cons _%body187980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target187963%_)
                       _%vars187962%_))
                (if (eq? 'cons _%$e187983%_)
                    (let ((_%$e187986%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd187987%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl187988%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp189032
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target187963%_)))
                            (__tmp189027
                             (let ((__tmp189031
                                    (cons (cons (cons _%$e187986%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e187677%_
                                                         _%target187963%_))
                                                      '()))
                                          '()))
                                   (__tmp189028
                                    (let ((__tmp189030
                                           (cons (cons (cons _%$hd187987%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e187986%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl187988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e187986%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp189029
                                           (let* ((_%body187989187996%_
                                                   _%body187980%_)
                                                  (_%E187991188000%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body187989187996%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K187992188008%_
                                                   (lambda (_%tl188003%_
                                                            _%hd188004%_)
                                                     (_%recur187870%_
                                                      _%hd188004%_
                                                      _%vars187962%_
                                                      _%$hd187987%_
                                                      _%E187964%_
                                                      (lambda (_%vars188006%_)
                                                        (_%recur187870%_
                                                         _%tl188003%_
                                                         _%vars188006%_
                                                         _%$tl187988%_
                                                         _%E187964%_
                                                         _%k187965%_))))))
                                             (if (pair? _%body187989187996%_)
                                                 (let ((_%hd187993188011%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body187989187996%_)))
                                                       (_%tl187994188013%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body187989187996%_))))
                                                   (let* ((_%hd188016%_
                                                           _%hd187993188011%_)
                                                          (_%tl188018%_
                                                           _%tl187994188013%_))
                                                     (_%K187992188008%_
                                                      _%tl188018%_
                                                      _%hd188016%_)))
                                                 (_%E187991188000%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp189030
                                       __tmp189029))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp189031
                                __tmp189028))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp189032
                         __tmp189027
                         _%E187964%_)))
                    (if (eq? 'splice _%$e187983%_)
                        (let* ((_%body188019188026%_ _%body187980%_)
                               (_%E188021188030%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body188019188026%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K188022188081%_
                                (lambda (_%tl188033%_ _%hd188034%_)
                                  (let* ((_%rlen188036%_
                                          (_%splice-rlen187871%_ _%tl188033%_))
                                         (_%$target188038%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd188040%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl188042%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp188044%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e188046%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd188048%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl188050%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars188052%_
                                          (_%splice-vars187872%_ _%hd188034%_))
                                         (_%lvars188054%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars188052%_)))
                                         (_%tlvars188056%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars188052%_)))
                                         (_%linit188060%_
                                          (map (lambda (_%var188058%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars188054%_)))
                                    (letrec ((_%make-loop188063%_
                                              (lambda (_%vars188067%_)
                                                (let ((__tmp189034
                                                       (cons (cons (cons _%$lp188044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp189047
                                        (cons _%$hd188040%_ _%lvars188054%_))
                                       (__tmp189035
                                        (let ((__tmp189046
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd188040%_)))
                                              (__tmp189040
                                               (let ((__tmp189045
                                                      (cons (cons (cons _%$lp-e188046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e187677%_
                                   _%$hd188040%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189041
                                                      (let ((__tmp189044
                                                             (cons (cons (cons _%$lp-hd188048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e188046%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl188050%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e188046%_))
                                             '()))
                                 '())))
                    (__tmp189042
                     (_%recur187870%_
                      _%hd188034%_
                      '()
                      _%$lp-hd188048%_
                      _%E187964%_
                      (lambda (_%hdvars188069%_)
                        (cons _%$lp188044%_
                              (cons _%$lp-tl188050%_
                                    (map (lambda (_%svar188071%_
                                                  _%lvar188072%_)
                                           (let ((__tmp189043
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar188071%_
                                                     _%hdvars188069%_
                                                     _%BUG187869%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp189043
                                              _%lvar188072%_)))
                                         _%svars188052%_
                                         _%lvars188054%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp189044 __tmp189042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp189045
                                                  __tmp189041)))
                                              (__tmp189036
                                               (let ((__tmp189039
                                                      (map (lambda (_%lvar188074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar188075%_)
                     (cons (cons _%tlvar188075%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar188074%_))
                                 '())))
                   _%lvars188054%_
                   _%tlvars188056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189037
                                                      (_%k187965%_
                                                       (let ((__tmp189038
                                                              (lambda (_%svar188077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar188078%_
                               _%r188079%_)
                        (cons (cons _%svar188077%_ _%tlvar188078%_)
                              _%r188079%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp189038
                  _%vars188067%_
                  _%svars188052%_
                  _%tlvars188056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp189039
                                                  __tmp189037))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp189046
                                           __tmp189040
                                           __tmp189036))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp189047
                                    __tmp189035))
                                 '()))
                     '()))
              (__tmp189033
               (cons _%$lp188044%_ (cons _%$target188038%_ _%linit188060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp189034
                                                   __tmp189033)))))
                                      (let ((_%body188065%_
                                             (let ((__tmp189049
                                                    (cons (cons (cons _%$target188038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl188042%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target187963%_
                                 _%rlen188036%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp189048
                                                    (_%recur187870%_
                                                     _%tl188033%_
                                                     _%vars187962%_
                                                     _%$tl188042%_
                                                     _%E187964%_
                                                     _%make-loop188063%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp189049
                                                __tmp189048))))
                                        (let ((__tmp189053
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target187963%_)))
                                              (__tmp189050
                                               (if (zero? _%rlen188036%_)
                                                   _%body188065%_
                                                   (let ((__tmp189051
                                                          (let ((__tmp189052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target187963%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp189052 _%rlen188036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp189051
                                                      _%body188065%_
                                                      _%E187964%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp189053
                                           __tmp189050
                                           _%E187964%_))))))))
                          (if (pair? _%body188019188026%_)
                              (let ((_%hd188023188084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body188019188026%_)))
                                    (_%tl188024188086%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body188019188026%_))))
                                (let* ((_%hd188089%_ _%hd188023188084%_)
                                       (_%tl188091%_ _%tl188024188086%_))
                                  (_%K188022188081%_
                                   _%tl188091%_
                                   _%hd188089%_)))
                              (_%E188021188030%_)))
                        (if (eq? 'null _%$e187983%_)
                            (let ((__tmp189055
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target187963%_)))
                                  (__tmp189054 (_%k187965%_ _%vars187962%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp189055
                               __tmp189054
                               _%E187964%_))
                            (if (eq? 'vector _%$e187983%_)
                                (let ((_%$e188093%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp189060
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target187963%_)))
                                        (__tmp189056
                                         (let ((__tmp189058
                                                (cons (cons (cons _%$e188093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp189059
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e187677%_
                                    _%target187963%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp189059))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp189057
                                                (_%recur187870%_
                                                 _%body187980%_
                                                 _%vars187962%_
                                                 _%$e188093%_
                                                 _%E187964%_
                                                 _%k187965%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp189058
                                            __tmp189057))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp189060
                                     __tmp189056
                                     _%E187964%_)))
                                (if (eq? 'box _%$e187983%_)
                                    (let ((_%$e188095%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp189065
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target187963%_)))
                                            (__tmp189061
                                             (let ((__tmp189063
                                                    (cons (cons (cons _%$e188095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp189064
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e187677%_
                                        _%target187963%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp189064))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp189062
                                                    (_%recur187870%_
                                                     _%body187980%_
                                                     _%vars187962%_
                                                     _%$e188095%_
                                                     _%E187964%_
                                                     _%k187965%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp189063
                                                __tmp189062))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp189065
                                         __tmp189061
                                         _%E187964%_)))
                                    (if (eq? 'datum _%$e187983%_)
                                        (let ((_%$e188097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp189071
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target187963%_)))
                                                (__tmp189066
                                                 (let ((__tmp189070
                                                        (cons (cons (cons _%$e188097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target187963%_))
                                  '()))
                      '()))
               (__tmp189067
                (let ((__tmp189069
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e188097%_ _%body187980%_)))
                      (__tmp189068 (_%k187965%_ _%vars187962%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp189069 __tmp189068 _%E187964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp189070
                                                    __tmp189067))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp189071
                                             __tmp189066
                                             _%E187964%_)))
                                        (_%BUG187869%_
                                         _%e187961%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e187966187973%_)
                                      (let ((_%hd187970188102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187966187973%_)))
                                            (_%tl187971188104%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187966187973%_))))
                                        (let* ((_%tag188107%_
                                                _%hd187970188102%_)
                                               (_%body188109%_
                                                _%tl187971188104%_))
                                          (_%K187969188099%_
                                           _%body188109%_
                                           _%tag188107%_)))
                                      (_%E187968187977%_)))))
                             (_%splice-rlen187871%_
                              (lambda (_%e187923%_)
                                (let _%lp187925%_ ((_%e187927%_ _%e187923%_)
                                                   (_%n187928%_ '0))
                                  (let* ((_%e187929187936%_ _%e187927%_)
                                         (_%E187931187940%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e187929187936%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K187932187949%_
                                          (lambda (_%body187943%_
                                                   _%tag187944%_)
                                            (let ((_%$e187946%_ _%tag187944%_))
                                              (if (eq? 'splice _%$e187946%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx187675%_
                                                     _%where187862%_))
                                                  (if (eq? 'cons _%$e187946%_)
                                                      (_%lp187925%_
                                                       (cdr _%body187943%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n187928%_
                                                                '1)))
                                                      _%n187928%_))))))
                                    (if (pair? _%e187929187936%_)
                                        (let ((_%hd187933187952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187929187936%_)))
                                              (_%tl187934187954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187929187936%_))))
                                          (let* ((_%tag187957%_
                                                  _%hd187933187952%_)
                                                 (_%body187959%_
                                                  _%tl187934187954%_))
                                            (_%K187932187949%_
                                             _%body187959%_
                                             _%tag187957%_)))
                                        (_%E187931187940%_))))))
                             (_%splice-vars187872%_
                              (lambda (_%e187879%_)
                                (let _%recur187881%_ ((_%e187883%_ _%e187879%_)
                                                      (_%vars187884%_ '()))
                                  (let* ((_%e187885187892%_ _%e187883%_)
                                         (_%E187887187896%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e187885187892%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K187888187911%_
                                          (lambda (_%body187899%_
                                                   _%tag187900%_)
                                            (let ((_%$e187902%_ _%tag187900%_))
                                              (if (eq? 'var _%$e187902%_)
                                                  (cons _%body187899%_
                                                        _%vars187884%_)
                                                  (if (or (eq? 'cons
                                                               _%$e187902%_)
                                                          (eq? 'splice
                                                               _%$e187902%_))
                                                      (_%recur187881%_
                                                       (cdr _%body187899%_)
                                                       (_%recur187881%_
                                                        (car _%body187899%_)
                                                        _%vars187884%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e187902%_)
                      (eq? 'box _%$e187902%_))
                  (_%recur187881%_ _%body187899%_ _%vars187884%_)
                  _%vars187884%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e187885187892%_)
                                        (let ((_%hd187889187914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187885187892%_)))
                                              (_%tl187890187916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187885187892%_))))
                                          (let* ((_%tag187919%_
                                                  _%hd187889187914%_)
                                                 (_%body187921%_
                                                  _%tl187890187916%_))
                                            (_%K187888187911%_
                                             _%body187921%_
                                             _%tag187919%_)))
                                        (_%E187887187896%_))))))
                             (_%make-body187873%_
                              (lambda (_%vars187875%_)
                                (cons _%K187866%_
                                      (map (lambda (_%mvar187877%_)
                                             (let ((__tmp189072
                                                    (car _%mvar187877%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp189072
                                                _%vars187875%_
                                                _%BUG187869%_)))
                                           _%mvars187865%_)))))
                      (_%recur187870%_
                       _%hd187864%_
                       '()
                       _%target187863%_
                       _%E187867%_
                       _%make-body187873%_))))
                 (_%parse-clause187684%_
                  (lambda (_%hd187756%_ _%ids187757%_)
                    (let _%recur187759%_ ((_%e187761%_ _%hd187756%_)
                                          (_%vars187762%_ '())
                                          (_%depth187763%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e187761%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e187761%_))
                              (values '(any) _%vars187762%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e187761%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx187675%_
                                     _%hd187756%_))
                                  (if (let ((__tmp189073
                                             (lambda (_%id187768%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e187761%_
                                                  _%id187768%_)))))
                                        (declare (not safe))
                                        (__find __tmp189073 _%ids187757%_))
                                      (values (cons 'id _%e187761%_)
                                              _%vars187762%_)
                                      (if (let ((__tmp189074
                                                 (lambda (_%var187771%_)
                                                   (let ((__tmp189075
                                                          (car _%var187771%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e187761%_
                                                      __tmp189075)))))
                                            (declare (not safe))
                                            (__find __tmp189074
                                                    _%vars187762%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx187675%_
                                             _%e187761%_))
                                          (values (cons 'var _%e187761%_)
                                                  (cons (cons _%e187761%_
                                                              _%depth187763%_)
                                                        _%vars187762%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e187761%_))
                              (let* ((_%e187775187782%_ _%e187761%_)
                                     (_%E187777187786%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e187775187782%_))))
                                     (_%E187776187847%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e187775187782%_))
                                            (let ((_%e187778187790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e187775187782%_))))
                                              (let ((_%hd187779187793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187778187790%_)))
                                                    (_%tl187780187795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187778187790%_))))
                                                (let* ((_%hd187798%_
                                                        _%hd187779187793%_)
                                                       (_%rest187800%_
                                                        _%tl187780187795%_)
                                                       (_%make-pair187815%_
                                                        (lambda (_%tag187802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd187803%_
                         _%tl187804%_)
                  (let* ((_%hd-depth187806%_
                          (if (eq? _%tag187802%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth187763%_ '1))
                              _%depth187763%_))
                         (_g189076_
                          (_%recur187759%_
                           _%hd187803%_
                           _%vars187762%_
                           _%hd-depth187806%_)))
                    (begin
                      (let ((_g189077_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g189076_)
                                   (##values-length _g189076_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g189077_ 2)))
                            (error "Context expects 2 values" _g189077_)))
                      (let ((_%hd187808%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g189076_ 0)))
                            (_%vars187809%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g189076_ 1))))
                        (let ((_g189078_
                               (_%recur187759%_
                                _%tl187804%_
                                _%vars187809%_
                                _%depth187763%_)))
                          (begin
                            (let ((_g189079_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g189078_)
                                         (##values-length _g189078_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g189079_ 2)))
                                  (error "Context expects 2 values"
                                         _g189079_)))
                            (let ((_%tl187811%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g189078_ 0)))
                                  (_%vars187812%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g189078_ 1))))
                              (values (cons _%tag187802%_
                                            (cons _%hd187808%_ _%tl187811%_))
                                      _%vars187812%_)))))))))
               (_%e187816187823%_ _%rest187800%_)
               (_%E187818187827%_
                (lambda ()
                  (_%make-pair187815%_ 'cons _%hd187798%_ _%rest187800%_)))
               (_%E187817187843%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e187816187823%_))
                      (let ((_%e187819187831%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e187816187823%_))))
                        (let ((_%hd187820187834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187819187831%_)))
                              (_%tl187821187836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187819187831%_))))
                          (let* ((_%rest-hd187839%_ _%hd187820187834%_)
                                 (_%rest-tl187841%_ _%tl187821187836%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd187839%_))
                                (_%make-pair187815%_
                                 'splice
                                 _%hd187798%_
                                 _%rest-tl187841%_)
                                (_%make-pair187815%_
                                 'cons
                                 _%hd187798%_
                                 _%rest187800%_)))))
                      (_%E187818187827%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187817187843%_))))
                                            (_%E187777187786%_)))))
                                (_%E187776187847%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e187761%_))
                                  (values '(null) _%vars187762%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e187761%_))
                                      (let ((_g189080_
                                             (_%recur187759%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e187761%_)))
                                              _%vars187762%_
                                              _%depth187763%_)))
                                        (begin
                                          (let ((_g189081_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189080_)
                                                       (##values-length
                                                        _g189080_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189081_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189081_)))
                                          (let ((_%e187853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g189080_ 0)))
                                                (_%vars187854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g189080_
                                                    1))))
                                            (values (cons 'vector _%e187853%_)
                                                    _%vars187854%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e187761%_))
                                          (let ((_g189082_
                                                 (_%recur187759%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e187761%_)))
                                                  _%vars187762%_
                                                  _%depth187763%_)))
                                            (begin
                                              (let ((_g189083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g189082_)
                                                           (##values-length
                                                            _g189082_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g189083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g189083_)))
                                              (let ((_%e187857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g189082_
                                                        0)))
                                                    (_%vars187858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g189082_
                                                        1))))
                                                (values (cons 'box _%e187857%_)
                                                        _%vars187858%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e187761%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e187761%_)))
                                                      _%vars187762%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx187675%_
                                                 _%e187761%_))))))))))))
          (let* ((_%e187685187698%_ _%stx187675%_)
                 (_%E187687187702%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e187685187698%_))))
                 (_%E187686187752%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e187685187698%_))
                        (let ((_%e187688187706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e187685187698%_))))
                          (let ((_%hd187689187709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187688187706%_)))
                                (_%tl187690187711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187688187706%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187690187711%_))
                                (let ((_%e187691187714%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl187690187711%_))))
                                  (let ((_%hd187692187717%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187691187714%_)))
                                        (_%tl187693187719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187691187714%_))))
                                    (let ((_%expr187722%_ _%hd187692187717%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl187693187719%_))
                                          (let ((_%e187694187724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl187693187719%_))))
                                            (let ((_%hd187695187727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e187694187724%_)))
                                                  (_%tl187696187729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e187694187724%_))))
                                              (let* ((_%ids187732%_
                                                      _%hd187695187727%_)
                                                     (_%clauses187734%_
                                                      _%tl187696187729%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids187732%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses187734%_))
                                                        (let* ((_%ids187739%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids187732%_)))
                       (_%clauses187741%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses187734%_)))
                       (_%clause-ids187743%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses187741%_)))
                       (_%E187745%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target187747%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first187749%_
                        (if (null? _%clauses187741%_)
                            _%E187745%_
                            (car _%clause-ids187743%_))))
                  (let ((__tmp189085
                         (let ((__tmp189086
                                (let ((__tmp189088
                                       (let ((__tmp189090
                                              (cons (cons (cons _%E187745%_
                                                                '())
                                                          (cons (let ((__tmp189092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target187747%_ '()))
                              (__tmp189091
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target187747%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp189092 __tmp189091))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp189089
                                              (_%generate-body187681%_
                                               (_%generate-bindings187680%_
                                                _%target187747%_
                                                _%ids187739%_
                                                _%clauses187741%_
                                                _%clause-ids187743%_
                                                _%E187745%_)
                                               (cons _%first187749%_
                                                     (cons _%expr187722%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp189090
                                          __tmp189089)))
                                      (__tmp189087
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx187675%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp189088
                                   __tmp189087))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp189086)))
                        (__tmp189084
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx187675%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp189085 __tmp189084)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx187675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx187675%_
                                                       _%ids187732%_))))))
                                          (_%E187687187702%_)))))
                                (_%E187687187702%_))))
                        (_%E187687187702%_)))))
            (_%E187686187752%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx188400%_)
        (let* ((_%identifier=?188402%_ 'free-identifier=?)
               (_%unwrap-e188404%_ 'syntax-e)
               (_%wrap-e188406%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx188400%_
           _%identifier=?188402%_
           _%unwrap-e188404%_
           _%wrap-e188406%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx188408%_ _%identifier=?188409%_)
        (let* ((_%unwrap-e188411%_ 'syntax-e) (_%wrap-e188413%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx188408%_
           _%identifier=?188409%_
           _%unwrap-e188411%_
           _%wrap-e188413%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx188415%_ _%identifier=?188416%_ _%unwrap-e188417%_)
        (let ((_%wrap-e188419%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx188415%_
           _%identifier=?188416%_
           _%unwrap-e188417%_
           _%wrap-e188419%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g189093_
        (let ((_g189094_ (let () (declare (not safe)) (##length _g189093_))))
          (cond ((let () (declare (not safe)) (##fx= _g189094_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g189093_))
                ((let () (declare (not safe)) (##fx= _g189094_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g189093_))
                ((let () (declare (not safe)) (##fx= _g189094_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g189093_))
                ((let () (declare (not safe)) (##fx= _g189094_ 4))
                 (apply gx#macro-expand-syntax-case__% _g189093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g189093_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx187672%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx187672%_))
            (let ((__tmp189095
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx187672%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp189095 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd187630%_ . _%rest187631%_)
        (let ((_%len187633%_ (length _%hd187630%_)))
          (let _%lp187635%_ ((_%rest187637%_ _%rest187631%_))
            (let* ((_%rest187638187646%_ _%rest187637%_)
                   (_%else187640187654%_ (lambda () '#!void))
                   (_%K187642187660%_
                    (lambda (_%rest187657%_ _%hd187658%_)
                      (if (let ((__tmp189096 (length _%hd187658%_)))
                            (declare (not safe))
                            (##fx= _%len187633%_ __tmp189096))
                          (_%lp187635%_ _%rest187657%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd187658%_))))))
              (if (pair? _%rest187638187646%_)
                  (let ((_%hd187643187663%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest187638187646%_)))
                        (_%tl187644187665%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest187638187646%_))))
                    (let* ((_%hd187668%_ _%hd187643187663%_)
                           (_%rest187670%_ _%tl187644187665%_))
                      (_%K187642187660%_ _%rest187670%_ _%hd187668%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx187580%_ _%n187581%_)
        (let _%lp187583%_ ((_%rest187586%_ _%stx187580%_) (_%r187588%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest187586%_))
              (let* ((_%g187590187597%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest187586%_)))
                     (_%E187592187601%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g187590187597%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K187593187608%_
                      (lambda (_%rest187604%_ _%hd187605%_)
                        (_%lp187583%_
                         _%rest187604%_
                         (cons _%hd187605%_ _%r187588%_)))))
                (if (pair? _%g187590187597%_)
                    (let ((_%hd187594187611%_
                           (let ()
                             (declare (not safe))
                             (##car _%g187590187597%_)))
                          (_%tl187595187613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g187590187597%_))))
                      (let* ((_%hd187616%_ _%hd187594187611%_)
                             (_%rest187618%_ _%tl187595187613%_))
                        (_%K187593187608%_ _%rest187618%_ _%hd187616%_)))
                    (_%E187592187601%_)))
              (let _%lp187620%_ ((_%n187622%_ _%n187581%_)
                                 (_%l187623%_ _%r187588%_)
                                 (_%r187625%_ _%rest187586%_))
                (if (null? _%l187623%_)
                    (values _%l187623%_ _%r187625%_)
                    (if (fxpositive? _%n187622%_)
                        (_%lp187620%_
                         (let () (declare (not safe)) (##fx- _%n187622%_ '1))
                         (cdr _%l187623%_)
                         (cons (car _%l187623%_) _%r187625%_))
                        (values (reverse! _%l187623%_) _%r187625%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx187530%_ _%n187531%_)
        (let _%lp187533%_ ((_%rest187536%_ _%stx187530%_) (_%r187538%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest187536%_))
              (let* ((_%g187540187547%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest187536%_)))
                     (_%E187542187551%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g187540187547%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K187543187558%_
                      (lambda (_%rest187554%_ _%hd187555%_)
                        (_%lp187533%_
                         _%rest187554%_
                         (cons _%hd187555%_ _%r187538%_)))))
                (if (pair? _%g187540187547%_)
                    (let ((_%hd187544187561%_
                           (let ()
                             (declare (not safe))
                             (##car _%g187540187547%_)))
                          (_%tl187545187563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g187540187547%_))))
                      (let* ((_%hd187566%_ _%hd187544187561%_)
                             (_%rest187568%_ _%tl187545187563%_))
                        (_%K187543187558%_ _%rest187568%_ _%hd187566%_)))
                    (_%E187542187551%_)))
              (let _%lp187570%_ ((_%n187572%_ _%n187531%_)
                                 (_%l187573%_ _%r187538%_)
                                 (_%r187575%_ _%rest187536%_))
                (if (null? _%l187573%_)
                    (vector _%l187573%_ _%r187575%_)
                    (if (fxpositive? _%n187572%_)
                        (_%lp187570%_
                         (let () (declare (not safe)) (##fx- _%n187572%_ '1))
                         (cdr _%l187573%_)
                         (cons (car _%l187573%_) _%r187575%_))
                        (vector (reverse! _%l187573%_) _%r187575%_))))))))))
