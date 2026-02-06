(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770405374)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186504 (list gx#expander::t))
            (__tmp186503 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186504
         '(id depth)
         __tmp186503
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args186500%_
        (apply make-instance gx#syntax-pattern::t _%$args186500%_)))
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
      (lambda (_%self186486%_ _%stx186487%_)
        (let ((_%self186490%_ _%self186486%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx186487%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx185953%_)
        (letrec ((_%generate185955%_
                  (lambda (_%e186195%_)
                    (letrec ((_%BUG186197%_
                              (lambda (_%q186362%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx185953%_
                                         _%e186195%_
                                         _%q186362%_))))
                             (_%local-pattern-e186198%_
                              (lambda (_%pat186360%_)
                                (let ((__tmp186505
                                       (##structure-ref
                                        _%pat186360%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186505))))
                             (_%getvar186199%_
                              (lambda (_%q186357%_ _%vars186358%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q186357%_
                                   _%vars186358%_
                                   _%BUG186197%_))))
                             (_%getarg186200%_
                              (lambda (_%arg186323%_ _%vars186324%_)
                                (let* ((_%arg186325186332%_ _%arg186323%_)
                                       (_%E186327186336%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg186325186332%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K186328186345%_
                                        (lambda (_%e186339%_ _%tag186340%_)
                                          (let ((_%$e186342%_ _%tag186340%_))
                                            (if (eq? 'ref _%$e186342%_)
                                                (_%getvar186199%_
                                                 _%e186339%_
                                                 _%vars186324%_)
                                                (if (eq? 'pattern _%$e186342%_)
                                                    (_%local-pattern-e186198%_
                                                     _%e186339%_)
                                                    (_%BUG186197%_
                                                     _%arg186323%_)))))))
                                  (if (pair? _%arg186325186332%_)
                                      (let ((_%hd186329186348%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg186325186332%_)))
                                            (_%tl186330186350%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg186325186332%_))))
                                        (let* ((_%tag186353%_
                                                _%hd186329186348%_)
                                               (_%e186355%_
                                                _%tl186330186350%_))
                                          (_%K186328186345%_
                                           _%e186355%_
                                           _%tag186353%_)))
                                      (_%E186327186336%_))))))
                      (let _%recur186202%_ ((_%e186204%_ _%e186195%_)
                                            (_%vars186205%_ '()))
                        (let* ((_%e186206186213%_ _%e186204%_)
                               (_%E186208186217%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e186206186213%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K186209186311%_
                                (lambda (_%body186220%_ _%tag186221%_)
                                  (let ((_%$e186223%_ _%tag186221%_))
                                    (if (eq? 'datum _%$e186223%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body186220%_))
                                        (if (eq? 'term _%$e186223%_)
                                            (let ((_%id186226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body186220%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id186226%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks186229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id186226%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks186229%_)
                                                        (let ((__tmp186506
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body186220%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186506))
                (let ((__tmp186508
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body186220%_)))
                      (__tmp186507
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body186220%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186508
                   __tmp186507
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id186226%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body186220%_))
                                                      (_%BUG186197%_
                                                       _%e186204%_))))
                                            (if (eq? 'pattern _%$e186223%_)
                                                (_%local-pattern-e186198%_
                                                 _%body186220%_)
                                                (if (eq? 'ref _%$e186223%_)
                                                    (_%getvar186199%_
                                                     _%body186220%_
                                                     _%vars186205%_)
                                                    (if (eq? 'cons
                                                             _%$e186223%_)
                                                        (let ((__tmp186510
                                                               (_%recur186202%_
                                                                (car _%body186220%_)
                                                                _%vars186205%_))
                                                              (__tmp186509
                                                               (_%recur186202%_
                                                                (cdr _%body186220%_)
                                                                _%vars186205%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp186510
                                                           __tmp186509))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e186223%_)
                    (let ((__tmp186511
                           (_%recur186202%_ _%body186220%_ _%vars186205%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186511))
                    (if (eq? 'box _%$e186223%_)
                        (let ((__tmp186512
                               (_%recur186202%_
                                _%body186220%_
                                _%vars186205%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186512))
                        (if (eq? 'splice _%$e186223%_)
                            (let* ((_%body186232186243%_ _%body186220%_)
                                   (_%E186234186247%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body186232186243%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K186235186285%_
                                    (lambda (_%args186250%_
                                             _%iv186251%_
                                             _%hd186252%_
                                             _%depth186253%_)
                                      (let* ((_%targets186259%_
                                              (map (lambda (_%g186254186256%_)
                                                     (_%getarg186200%_
                                                      _%g186254186256%_
                                                      _%vars186205%_))
                                                   _%args186250%_))
                                             (_%fold-in186261%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args186250%_)))
                                             (_%fold-out186263%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args186265%_
                                              (let ((__tmp186513
                                                     (cons _%fold-out186263%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp186513
                                                 _%fold-in186261%_)))
                                             (_%lambda-body186282%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth186253%_ '1))
                                                  (let ((_%r-args186273%_
                                                         (map (lambda (_%arg186267%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg186267%_)))
                      _%args186250%_))
                (_%r-vars186274%_
                 (let ((__tmp186514
                        (lambda (_%arg186269%_ _%var186270%_ _%r186271%_)
                          (cons (cons (cdr _%arg186269%_) _%var186270%_)
                                _%r186271%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp186514
                    _%vars186205%_
                    _%args186250%_
                    _%fold-in186261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur186202%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth186253%_ '1))
                         (cons _%hd186252%_
                               (cons (cons 'var _%fold-out186263%_)
                                     _%r-args186273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars186274%_))
                                                  (let* ((_%hd-vars186280%_
                                                          (let ((__tmp186515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg186276%_ _%var186277%_ _%r186278%_)
                           (cons (cons (cdr _%arg186276%_) _%var186277%_)
                                 _%r186278%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp186515
                     _%vars186205%_
                     _%args186250%_
                     _%fold-in186261%_)))
                 (__tmp186516
                  (_%recur186202%_ _%hd186252%_ _%hd-vars186280%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186516
                                                     _%fold-out186263%_)))))
                                        (let ((__tmp186520
                                               (if (let ((__tmp186521
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets186259%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp186521 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets186259%_))
                                                   '#!void))
                                              (__tmp186517
                                               (let ((__tmp186519
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args186265%_
                                                         _%lambda-body186282%_)))
                                                     (__tmp186518
                                                      (_%recur186202%_
                                                       _%iv186251%_
                                                       _%vars186205%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186519
                                                  __tmp186518
                                                  _%targets186259%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186520
                                           __tmp186517))))))
                              (if (pair? _%body186232186243%_)
                                  (let ((_%hd186236186288%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body186232186243%_)))
                                        (_%tl186237186290%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body186232186243%_))))
                                    (let ((_%depth186293%_ _%hd186236186288%_))
                                      (if (pair? _%tl186237186290%_)
                                          (let ((_%hd186238186295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl186237186290%_)))
                                                (_%tl186239186297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl186237186290%_))))
                                            (let ((_%hd186300%_
                                                   _%hd186238186295%_))
                                              (if (pair? _%tl186239186297%_)
                                                  (let ((_%hd186240186302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl186239186297%_)))
                                                        (_%tl186241186304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl186239186297%_))))
                                                    (let* ((_%iv186307%_
                                                            _%hd186240186302%_)
                                                           (_%args186309%_
                                                            _%tl186241186304%_))
                                                      (_%K186235186285%_
                                                       _%args186309%_
                                                       _%iv186307%_
                                                       _%hd186300%_
                                                       _%depth186293%_)))
                                                  (_%E186234186247%_))))
                                          (_%E186234186247%_))))
                                  (_%E186234186247%_)))
                            (if (eq? 'var _%$e186223%_)
                                _%body186220%_
                                (_%BUG186197%_ _%e186204%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e186206186213%_)
                              (let ((_%hd186210186314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186206186213%_)))
                                    (_%tl186211186316%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186206186213%_))))
                                (let* ((_%tag186319%_ _%hd186210186314%_)
                                       (_%body186321%_ _%tl186211186316%_))
                                  (_%K186209186311%_
                                   _%body186321%_
                                   _%tag186319%_)))
                              (_%E186208186217%_)))))))
                 (_%parse185956%_
                  (lambda (_%e185997%_)
                    (letrec ((_%make-cons185999%_
                              (lambda (_%hd186187%_ _%tl186188%_)
                                (let ((_g186522_ _%hd186187%_)
                                      (_g186524_ _%tl186188%_))
                                  (begin
                                    (let ((_g186523_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186522_)
                                                 (##values-length _g186522_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186523_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186523_)))
                                    (let ((_g186525_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186524_)
                                                 (##values-length _g186524_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186525_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186525_)))
                                    (let ((_%hd-e186190%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186522_ 0)))
                                          (_%hd-vars186191%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186522_ 1))))
                                      (let ((_%tl-e186192%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186524_ 0)))
                                            (_%tl-vars186193%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186524_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e186190%_
                                                            _%tl-e186192%_))
                                                (append _%hd-vars186191%_
                                                        _%tl-vars186193%_))))))))
                             (_%make-splice186000%_
                              (lambda (_%where186123%_
                                       _%depth186124%_
                                       _%hd186125%_
                                       _%tl186126%_)
                                (let ((_g186526_ _%hd186125%_)
                                      (_g186528_ _%tl186126%_))
                                  (begin
                                    (let ((_g186527_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186526_)
                                                 (##values-length _g186526_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186527_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186527_)))
                                    (let ((_g186529_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186528_)
                                                 (##values-length _g186528_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186529_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186529_)))
                                    (let ((_%hd-e186128%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186526_ 0)))
                                          (_%hd-vars186129%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186526_ 1))))
                                      (let ((_%tl-e186130%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186528_ 0)))
                                            (_%tl-vars186131%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186528_ 1))))
                                        (let _%lp186133%_ ((_%rest186135%_
                                                            _%hd-vars186129%_)
                                                           (_%targets186136%_
                                                            '())
                                                           (_%vars186137%_
                                                            _%tl-vars186131%_))
                                          (let* ((_%rest186138186148%_
                                                  _%rest186135%_)
                                                 (_%else186140186156%_
                                                  (lambda ()
                                                    (if (null? _%targets186136%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx185953%_
                                                           _%where186123%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth186124%_
                                    (cons _%hd-e186128%_
                                          (cons _%tl-e186130%_
                                                _%targets186136%_))))
                        _%vars186137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K186142186168%_
                                                  (lambda (_%rest186159%_
                                                           _%hd-pat186160%_
                                                           _%hd-depth*186161%_)
                                                    (let ((_%hd-depth186163%_
                                                           (fx- _%hd-depth*186161%_
                                                                _%depth186124%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth186163%_))
                                                          (_%lp186133%_
                                                           _%rest186159%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat186160%_)
                         _%targets186136%_)
                   (cons (cons _%hd-depth186163%_ _%hd-pat186160%_)
                         _%vars186137%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth186163%_))
                      (_%lp186133%_
                       _%rest186159%_
                       (cons (cons 'pattern _%hd-pat186160%_)
                             _%targets186136%_)
                       _%vars186137%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx185953%_
                         _%where186123%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest186138186148%_)
                                                (let ((_%hd186143186171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest186138186148%_)))
                                                      (_%tl186144186173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest186138186148%_))))
                                                  (if (pair? _%hd186143186171%_)
                                                      (let ((_%hd186145186176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd186143186171%_)))
                    (_%tl186146186178%_
                     (let () (declare (not safe)) (##cdr _%hd186143186171%_))))
                (let* ((_%hd-depth*186181%_ _%hd186145186176%_)
                       (_%hd-pat186183%_ _%tl186146186178%_)
                       (_%rest186185%_ _%tl186144186173%_))
                  (_%K186142186168%_
                   _%rest186185%_
                   _%hd-pat186183%_
                   _%hd-depth*186181%_)))
              (_%else186140186156%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else186140186156%_))))))))))
                             (_%recur186001%_
                              (lambda (_%e186006%_ _%is-e?186007%_)
                                (if (_%is-e?186007%_ _%e186006%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx185953%_))
                                    (if (gx#syntax-local-pattern? _%e186006%_)
                                        (let* ((_%pat186011%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e186006%_)))
                                               (_%depth186013%_
                                                (##structure-ref
                                                 _%pat186011%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth186013%_)
                                              (values (cons 'ref _%pat186011%_)
                                                      (cons (cons _%depth186013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat186011%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat186011%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e186006%_))
                                            (values (cons 'term _%e186006%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e186006%_))
                                                (let* ((_%e186017186024%_
                                                        _%e186006%_)
                                                       (_%E186019186028%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e186017186024%_))))
                                                       (_%E186018186110%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e186017186024%_))
                      (let ((_%e186020186032%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e186017186024%_))))
                        (let ((_%hd186021186035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186020186032%_)))
                              (_%tl186022186037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186020186032%_))))
                          (let* ((_%hd186040%_ _%hd186021186035%_)
                                 (_%rest186042%_ _%tl186022186037%_))
                            (if (_%is-e?186007%_ _%hd186040%_)
                                (let* ((_%e186043186050%_ _%rest186042%_)
                                       (_%E186045186054%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx185953%_
                                             _%e186006%_))))
                                       (_%E186044186068%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e186043186050%_))
                                              (let ((_%e186046186058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e186043186050%_))))
                                                (let ((_%hd186047186061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186046186058%_)))
                                                      (_%tl186048186063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186046186058%_))))
                                                  (let ((_%rest186066%_
                                                         _%hd186047186061%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186048186063%_))
                                                        (_%recur186001%_
                                                         _%rest186066%_
                                                         false)
                                                        (_%E186045186054%_)))))
                                              (_%E186045186054%_)))))
                                  (_%E186044186068%_))
                                (let _%lp186072%_ ((_%rest186074%_
                                                    _%rest186042%_)
                                                   (_%depth186075%_ '0))
                                  (let* ((_%e186076186083%_ _%rest186074%_)
                                         (_%E186078186087%_
                                          (lambda ()
                                            (if (fxpositive? _%depth186075%_)
                                                (_%make-splice186000%_
                                                 _%e186006%_
                                                 _%depth186075%_
                                                 (_%recur186001%_
                                                  _%hd186040%_
                                                  _%is-e?186007%_)
                                                 (_%recur186001%_
                                                  _%rest186074%_
                                                  _%is-e?186007%_))
                                                (_%make-cons185999%_
                                                 (_%recur186001%_
                                                  _%hd186040%_
                                                  _%is-e?186007%_)
                                                 (_%recur186001%_
                                                  _%rest186074%_
                                                  _%is-e?186007%_)))))
                                         (_%E186077186106%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e186076186083%_))
                                                (let ((_%e186079186091%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e186076186083%_))))
                                                  (let ((_%hd186080186094%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e186079186091%_)))
                                                        (_%tl186081186096%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e186079186091%_))))
                                                    (let* ((_%rest-hd186099%_
                                                            _%hd186080186094%_)
                                                           (_%rest-tl186101%_
                                                            _%tl186081186096%_))
                                                      (if (_%is-e?186007%_
                                                           _%rest-hd186099%_)
                                                          (_%lp186072%_
                                                           _%rest-tl186101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth186075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth186075%_)
                      (_%make-splice186000%_
                       _%e186006%_
                       _%depth186075%_
                       (_%recur186001%_ _%hd186040%_ _%is-e?186007%_)
                       (_%recur186001%_ _%rest186074%_ _%is-e?186007%_))
                      (_%make-cons185999%_
                       (_%recur186001%_ _%hd186040%_ _%is-e?186007%_)
                       (_%recur186001%_ _%rest186074%_ _%is-e?186007%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E186078186087%_)))))
                                    (_%E186077186106%_)))))))
                      (_%E186019186028%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186018186110%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e186006%_))
                                                    (let ((_g186530_
                                                           (_%recur186001%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e186006%_)))
                    _%is-e?186007%_)))
              (begin
                (let ((_g186531_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186530_)
                             (##values-length _g186530_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186531_ 2)))
                      (error "Context expects 2 values" _g186531_)))
                (let ((_%e186115%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g186530_ 0)))
                      (_%vars186116%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g186530_ 1))))
                  (values (cons 'vector _%e186115%_) _%vars186116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e186006%_))
                                                        (let ((_g186532_
                                                               (_%recur186001%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e186006%_)))
                        _%is-e?186007%_)))
                  (begin
                    (let ((_g186533_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186532_)
                                 (##values-length _g186532_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186533_ 2)))
                          (error "Context expects 2 values" _g186533_)))
                    (let ((_%e186119%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g186532_ 0)))
                          (_%vars186120%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g186532_ 1))))
                      (values (cons 'box _%e186119%_) _%vars186120%_))))
                (values (cons 'datum _%e186006%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186534_
                             (_%recur186001%_ _%e185997%_ gx#ellipsis?)))
                        (begin
                          (let ((_g186535_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186534_)
                                       (##values-length _g186534_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186535_ 2)))
                                (error "Context expects 2 values" _g186535_)))
                          (let ((_%tree186003%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g186534_ 0)))
                                (_%vars186004%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g186534_ 1))))
                            (if (null? _%vars186004%_)
                                _%tree186003%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx185953%_
                                   _%vars186004%_))))))))))
          (let* ((_%e185957185967%_ _%stx185953%_)
                 (_%E185959185971%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx185953%_))))
                 (_%E185958185993%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e185957185967%_))
                        (let ((_%e185960185975%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e185957185967%_))))
                          (let ((_%hd185961185978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185960185975%_)))
                                (_%tl185962185980%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185960185975%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl185962185980%_))
                                (let ((_%e185963185983%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl185962185980%_))))
                                  (let ((_%hd185964185986%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185963185983%_)))
                                        (_%tl185965185988%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185963185983%_))))
                                    (let ((_%form185991%_ _%hd185964185986%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl185965185988%_))
                                          (let ((__tmp186537
                                                 (_%generate185955%_
                                                  (_%parse185956%_
                                                   _%form185991%_)))
                                                (__tmp186536
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx185953%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp186537
                                             __tmp186536))
                                          (_%E185959185971%_)))))
                                (_%E185959185971%_))))
                        (_%E185959185971%_)))))
            (_%E185958185993%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx185202%_
               _%identifier=?185203%_
               _%unwrap-e185204%_
               _%wrap-e185205%_)
        (letrec ((_%generate-bindings185207%_
                  (lambda (_%target185817%_
                           _%ids185818%_
                           _%clauses185819%_
                           _%clause-ids185820%_
                           _%E185821%_)
                    (letrec ((_%generate1185823%_
                              (lambda (_%clause185920%_
                                       _%clause-id185921%_
                                       _%E185922%_)
                                (cons (cons _%clause-id185921%_ '())
                                      (cons (let ((__tmp186539
                                                   (cons _%target185817%_ '()))
                                                  (__tmp186538
                                                   (_%generate-clause185209%_
                                                    _%target185817%_
                                                    _%ids185818%_
                                                    _%clause185920%_
                                                    _%E185922%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp186539
                                               __tmp186538))
                                            '())))))
                      (let _%lp185825%_ ((_%rest185827%_ _%clauses185819%_)
                                         (_%rest-ids185828%_
                                          _%clause-ids185820%_)
                                         (_%bindings185829%_ '()))
                        (let* ((_%rest185830185838%_ _%rest185827%_)
                               (_%else185832185846%_
                                (lambda () _%bindings185829%_))
                               (_%K185834185908%_
                                (lambda (_%rest185849%_ _%clause185850%_)
                                  (let* ((_%rest-ids185851185858%_
                                          _%rest-ids185828%_)
                                         (_%E185853185862%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids185851185858%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K185854185896%_
                                          (lambda (_%rest-ids185865%_
                                                   _%clause-id185866%_)
                                            (let* ((_%rest-ids185867185875%_
                                                    _%rest-ids185865%_)
                                                   (_%else185869185883%_
                                                    (lambda ()
                                                      (cons (_%generate1185823%_
                                                             _%clause185850%_
                                                             _%clause-id185866%_
                                                             _%E185821%_)
                                                            _%bindings185829%_)))
                                                   (_%K185871185888%_
                                                    (lambda (_%next-clause-id185886%_)
                                                      (_%lp185825%_
                                                       _%rest185849%_
                                                       _%rest-ids185865%_
                                                       (cons (_%generate1185823%_
                                                              _%clause185850%_
                                                              _%clause-id185866%_
                                                              _%next-clause-id185886%_)
                                                             _%bindings185829%_)))))
                                              (if (pair? _%rest-ids185867185875%_)
                                                  (let* ((_%hd185872185891%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids185867185875%_)))
                                                         (_%next-clause-id185894%_
                                                          _%hd185872185891%_))
                                                    (_%K185871185888%_
                                                     _%next-clause-id185894%_))
                                                  (_%else185869185883%_))))))
                                    (if (pair? _%rest-ids185851185858%_)
                                        (let ((_%hd185855185899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids185851185858%_)))
                                              (_%tl185856185901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids185851185858%_))))
                                          (let* ((_%clause-id185904%_
                                                  _%hd185855185899%_)
                                                 (_%rest-ids185906%_
                                                  _%tl185856185901%_))
                                            (_%K185854185896%_
                                             _%rest-ids185906%_
                                             _%clause-id185904%_)))
                                        (_%E185853185862%_))))))
                          (if (pair? _%rest185830185838%_)
                              (let ((_%hd185835185911%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest185830185838%_)))
                                    (_%tl185836185913%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest185830185838%_))))
                                (let* ((_%clause185916%_ _%hd185835185911%_)
                                       (_%rest185918%_ _%tl185836185913%_))
                                  (_%K185834185908%_
                                   _%rest185918%_
                                   _%clause185916%_)))
                              (_%else185832185846%_)))))))
                 (_%generate-body185208%_
                  (lambda (_%bindings185777%_ _%body185778%_)
                    (let _%recur185780%_ ((_%rest185782%_ _%bindings185777%_))
                      (let* ((_%rest185783185791%_ _%rest185782%_)
                             (_%else185785185799%_ (lambda () _%body185778%_))
                             (_%K185787185805%_
                              (lambda (_%rest185802%_ _%hd185803%_)
                                (let ((__tmp186541 (cons _%hd185803%_ '()))
                                      (__tmp186540
                                       (_%recur185780%_ _%rest185802%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186541
                                   __tmp186540)))))
                        (if (pair? _%rest185783185791%_)
                            (let ((_%hd185788185808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest185783185791%_)))
                                  (_%tl185789185810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest185783185791%_))))
                              (let* ((_%hd185813%_ _%hd185788185808%_)
                                     (_%rest185815%_ _%tl185789185810%_))
                                (_%K185787185805%_
                                 _%rest185815%_
                                 _%hd185813%_)))
                            (_%else185785185799%_))))))
                 (_%generate-clause185209%_
                  (lambda (_%target185640%_
                           _%ids185641%_
                           _%clause185642%_
                           _%E185643%_)
                    (letrec ((_%generate1185645%_
                              (lambda (_%hd185732%_
                                       _%fender185733%_
                                       _%body185734%_)
                                (let ((_g186542_
                                       (_%parse-clause185211%_
                                        _%hd185732%_
                                        _%ids185641%_)))
                                  (begin
                                    (let ((_g186543_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186542_)
                                                 (##values-length _g186542_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186543_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186543_)))
                                    (let ((_%e185736%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186542_ 0)))
                                          (_%mvars185737%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186542_ 1))))
                                      (let* ((_%pvars185739%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars185737%_))))
                                             (_%E185741%_
                                              (cons _%E185643%_
                                                    (cons _%target185640%_
                                                          '())))
                                             (_%K185774%_
                                              (let ((__tmp186544
                                                     (let ((__tmp186546
                                                            (map (lambda (_%mvar185743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar185744%_)
                           (let* ((_%mvar185745185752%_ _%mvar185743%_)
                                  (_%E185747185756%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar185745185752%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K185748185762%_
                                   (lambda (_%depth185759%_ _%id185760%_)
                                     (cons _%id185760%_
                                           (cons (let ((__tmp186548
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id185760%_)))
                                                       (__tmp186547
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar185744%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp186548
                                                    __tmp186547
                                                    _%depth185759%_))
                                                 '())))))
                             (if (pair? _%mvar185745185752%_)
                                 (let ((_%hd185749185765%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar185745185752%_)))
                                       (_%tl185750185767%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar185745185752%_))))
                                   (let* ((_%id185770%_ _%hd185749185765%_)
                                          (_%depth185772%_ _%tl185750185767%_))
                                     (_%K185748185762%_
                                      _%depth185772%_
                                      _%id185770%_)))
                                 (_%E185747185756%_))))
                         _%mvars185737%_
                         _%pvars185739%_))
                   (__tmp186545
                    (if (eq? _%fender185733%_ '#t)
                        _%body185734%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender185733%_
                           _%body185734%_
                           _%E185741%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186546 __tmp186545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars185739%_
                                                 __tmp186544))))
                                        (_%generate-match185210%_
                                         _%hd185732%_
                                         _%target185640%_
                                         _%e185736%_
                                         _%mvars185737%_
                                         _%K185774%_
                                         _%E185741%_))))))))
                      (let* ((_%e185646185666%_ _%clause185642%_)
                             (_%E185655185670%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e185646185666%_))))
                             (_%E185648185704%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e185646185666%_))
                                    (let ((_%e185656185674%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e185646185666%_))))
                                      (let ((_%hd185657185677%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185656185674%_)))
                                            (_%tl185658185679%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185656185674%_))))
                                        (let ((_%hd185682%_
                                               _%hd185657185677%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185658185679%_))
                                              (let ((_%e185659185684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl185658185679%_))))
                                                (let ((_%hd185660185687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185659185684%_)))
                                                      (_%tl185661185689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185659185684%_))))
                                                  (let ((_%fender185692%_
                                                         _%hd185660185687%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl185661185689%_))
                                                        (let ((_%e185662185694%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl185661185689%_))))
                  (let ((_%hd185663185697%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185662185694%_)))
                        (_%tl185664185699%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185662185694%_))))
                    (let ((_%body185702%_ _%hd185663185697%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl185664185699%_))
                          (_%generate1185645%_
                           _%hd185682%_
                           _%fender185692%_
                           _%body185702%_)
                          (_%E185655185670%_)))))
                (_%E185655185670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185655185670%_)))))
                                    (_%E185655185670%_))))
                             (_%E185647185728%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e185646185666%_))
                                    (let ((_%e185649185708%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e185646185666%_))))
                                      (let ((_%hd185650185711%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185649185708%_)))
                                            (_%tl185651185713%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185649185708%_))))
                                        (let ((_%hd185716%_
                                               _%hd185650185711%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185651185713%_))
                                              (let ((_%e185652185718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl185651185713%_))))
                                                (let ((_%hd185653185721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185652185718%_)))
                                                      (_%tl185654185723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185652185718%_))))
                                                  (let ((_%body185726%_
                                                         _%hd185653185721%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185654185723%_))
                                                        (_%generate1185645%_
                                                         _%hd185716%_
                                                         '#t
                                                         _%body185726%_)
                                                        (_%E185648185704%_)))))
                                              (_%E185648185704%_)))))
                                    (_%E185648185704%_)))))
                        (_%E185647185728%_)))))
                 (_%generate-match185210%_
                  (lambda (_%where185389%_
                           _%target185390%_
                           _%hd185391%_
                           _%mvars185392%_
                           _%K185393%_
                           _%E185394%_)
                    (letrec ((_%BUG185396%_
                              (lambda (_%q185638%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx185202%_
                                         _%hd185391%_
                                         _%q185638%_))))
                             (_%recur185397%_
                              (lambda (_%e185488%_
                                       _%vars185489%_
                                       _%target185490%_
                                       _%E185491%_
                                       _%k185492%_)
                                (let* ((_%e185493185500%_ _%e185488%_)
                                       (_%E185495185504%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e185493185500%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K185496185626%_
                                        (lambda (_%body185507%_ _%tag185508%_)
                                          (let ((_%$e185510%_ _%tag185508%_))
                                            (if (eq? 'any _%$e185510%_)
                                                (_%k185492%_ _%vars185489%_)
                                                (if (eq? 'id _%$e185510%_)
                                                    (let ((__tmp186553
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target185490%_)))
                                                          (__tmp186549
                                                           (let ((__tmp186551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186552
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e185205%_
                                    _%body185507%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?185203%_
                             __tmp186552
                             _%target185490%_)))
                         (__tmp186550 (_%k185492%_ _%vars185489%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186551 __tmp186550 _%E185491%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186553 __tmp186549 _%E185491%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e185510%_)
                                                        (_%k185492%_
                                                         (cons (cons _%body185507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target185490%_)
                       _%vars185489%_))
                (if (eq? 'cons _%$e185510%_)
                    (let ((_%$e185513%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd185514%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl185515%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186559
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target185490%_)))
                            (__tmp186554
                             (let ((__tmp186558
                                    (cons (cons (cons _%$e185513%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e185204%_
                                                         _%target185490%_))
                                                      '()))
                                          '()))
                                   (__tmp186555
                                    (let ((__tmp186557
                                           (cons (cons (cons _%$hd185514%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e185513%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl185515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e185513%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp186556
                                           (let* ((_%body185516185523%_
                                                   _%body185507%_)
                                                  (_%E185518185527%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body185516185523%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K185519185535%_
                                                   (lambda (_%tl185530%_
                                                            _%hd185531%_)
                                                     (_%recur185397%_
                                                      _%hd185531%_
                                                      _%vars185489%_
                                                      _%$hd185514%_
                                                      _%E185491%_
                                                      (lambda (_%vars185533%_)
                                                        (_%recur185397%_
                                                         _%tl185530%_
                                                         _%vars185533%_
                                                         _%$tl185515%_
                                                         _%E185491%_
                                                         _%k185492%_))))))
                                             (if (pair? _%body185516185523%_)
                                                 (let ((_%hd185520185538%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body185516185523%_)))
                                                       (_%tl185521185540%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body185516185523%_))))
                                                   (let* ((_%hd185543%_
                                                           _%hd185520185538%_)
                                                          (_%tl185545%_
                                                           _%tl185521185540%_))
                                                     (_%K185519185535%_
                                                      _%tl185545%_
                                                      _%hd185543%_)))
                                                 (_%E185518185527%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186557
                                       __tmp186556))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186558
                                __tmp186555))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp186559
                         __tmp186554
                         _%E185491%_)))
                    (if (eq? 'splice _%$e185510%_)
                        (let* ((_%body185546185553%_ _%body185507%_)
                               (_%E185548185557%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body185546185553%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K185549185608%_
                                (lambda (_%tl185560%_ _%hd185561%_)
                                  (let* ((_%rlen185563%_
                                          (_%splice-rlen185398%_ _%tl185560%_))
                                         (_%$target185565%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd185567%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl185569%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp185571%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e185573%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd185575%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl185577%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars185579%_
                                          (_%splice-vars185399%_ _%hd185561%_))
                                         (_%lvars185581%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars185579%_)))
                                         (_%tlvars185583%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars185579%_)))
                                         (_%linit185587%_
                                          (map (lambda (_%var185585%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars185581%_)))
                                    (letrec ((_%make-loop185590%_
                                              (lambda (_%vars185594%_)
                                                (let ((__tmp186561
                                                       (cons (cons (cons _%$lp185571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp186574
                                        (cons _%$hd185567%_ _%lvars185581%_))
                                       (__tmp186562
                                        (let ((__tmp186573
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd185567%_)))
                                              (__tmp186567
                                               (let ((__tmp186572
                                                      (cons (cons (cons _%$lp-e185573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e185204%_
                                   _%$hd185567%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp186568
                                                      (let ((__tmp186571
                                                             (cons (cons (cons _%$lp-hd185575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e185573%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl185577%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e185573%_))
                                             '()))
                                 '())))
                    (__tmp186569
                     (_%recur185397%_
                      _%hd185561%_
                      '()
                      _%$lp-hd185575%_
                      _%E185491%_
                      (lambda (_%hdvars185596%_)
                        (cons _%$lp185571%_
                              (cons _%$lp-tl185577%_
                                    (map (lambda (_%svar185598%_
                                                  _%lvar185599%_)
                                           (let ((__tmp186570
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar185598%_
                                                     _%hdvars185596%_
                                                     _%BUG185396%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp186570
                                              _%lvar185599%_)))
                                         _%svars185579%_
                                         _%lvars185581%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp186571 __tmp186569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp186572
                                                  __tmp186568)))
                                              (__tmp186563
                                               (let ((__tmp186566
                                                      (map (lambda (_%lvar185601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar185602%_)
                     (cons (cons _%tlvar185602%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar185601%_))
                                 '())))
                   _%lvars185581%_
                   _%tlvars185583%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp186564
                                                      (_%k185492%_
                                                       (let ((__tmp186565
                                                              (lambda (_%svar185604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar185605%_
                               _%r185606%_)
                        (cons (cons _%svar185604%_ _%tlvar185605%_)
                              _%r185606%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp186565
                  _%vars185594%_
                  _%svars185579%_
                  _%tlvars185583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp186566
                                                  __tmp186564))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186573
                                           __tmp186567
                                           __tmp186563))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp186574
                                    __tmp186562))
                                 '()))
                     '()))
              (__tmp186560
               (cons _%$lp185571%_ (cons _%$target185565%_ _%linit185587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186561
                                                   __tmp186560)))))
                                      (let ((_%body185592%_
                                             (let ((__tmp186576
                                                    (cons (cons (cons _%$target185565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl185569%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target185490%_
                                 _%rlen185563%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186575
                                                    (_%recur185397%_
                                                     _%tl185560%_
                                                     _%vars185489%_
                                                     _%$tl185569%_
                                                     _%E185491%_
                                                     _%make-loop185590%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186576
                                                __tmp186575))))
                                        (let ((__tmp186580
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target185490%_)))
                                              (__tmp186577
                                               (if (zero? _%rlen185563%_)
                                                   _%body185592%_
                                                   (let ((__tmp186578
                                                          (let ((__tmp186579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target185490%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186579 _%rlen185563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186578
                                                      _%body185592%_
                                                      _%E185491%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186580
                                           __tmp186577
                                           _%E185491%_))))))))
                          (if (pair? _%body185546185553%_)
                              (let ((_%hd185550185611%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body185546185553%_)))
                                    (_%tl185551185613%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body185546185553%_))))
                                (let* ((_%hd185616%_ _%hd185550185611%_)
                                       (_%tl185618%_ _%tl185551185613%_))
                                  (_%K185549185608%_
                                   _%tl185618%_
                                   _%hd185616%_)))
                              (_%E185548185557%_)))
                        (if (eq? 'null _%$e185510%_)
                            (let ((__tmp186582
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target185490%_)))
                                  (__tmp186581 (_%k185492%_ _%vars185489%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186582
                               __tmp186581
                               _%E185491%_))
                            (if (eq? 'vector _%$e185510%_)
                                (let ((_%$e185620%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186587
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target185490%_)))
                                        (__tmp186583
                                         (let ((__tmp186585
                                                (cons (cons (cons _%$e185620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp186586
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e185204%_
                                    _%target185490%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp186586))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp186584
                                                (_%recur185397%_
                                                 _%body185507%_
                                                 _%vars185489%_
                                                 _%$e185620%_
                                                 _%E185491%_
                                                 _%k185492%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186585
                                            __tmp186584))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186587
                                     __tmp186583
                                     _%E185491%_)))
                                (if (eq? 'box _%$e185510%_)
                                    (let ((_%$e185622%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186592
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target185490%_)))
                                            (__tmp186588
                                             (let ((__tmp186590
                                                    (cons (cons (cons _%$e185622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp186591
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e185204%_
                                        _%target185490%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp186591))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186589
                                                    (_%recur185397%_
                                                     _%body185507%_
                                                     _%vars185489%_
                                                     _%$e185622%_
                                                     _%E185491%_
                                                     _%k185492%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186590
                                                __tmp186589))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186592
                                         __tmp186588
                                         _%E185491%_)))
                                    (if (eq? 'datum _%$e185510%_)
                                        (let ((_%$e185624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186598
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target185490%_)))
                                                (__tmp186593
                                                 (let ((__tmp186597
                                                        (cons (cons (cons _%$e185624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target185490%_))
                                  '()))
                      '()))
               (__tmp186594
                (let ((__tmp186596
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e185624%_ _%body185507%_)))
                      (__tmp186595 (_%k185492%_ _%vars185489%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186596 __tmp186595 _%E185491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186597
                                                    __tmp186594))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186598
                                             __tmp186593
                                             _%E185491%_)))
                                        (_%BUG185396%_
                                         _%e185488%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e185493185500%_)
                                      (let ((_%hd185497185629%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185493185500%_)))
                                            (_%tl185498185631%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185493185500%_))))
                                        (let* ((_%tag185634%_
                                                _%hd185497185629%_)
                                               (_%body185636%_
                                                _%tl185498185631%_))
                                          (_%K185496185626%_
                                           _%body185636%_
                                           _%tag185634%_)))
                                      (_%E185495185504%_)))))
                             (_%splice-rlen185398%_
                              (lambda (_%e185450%_)
                                (let _%lp185452%_ ((_%e185454%_ _%e185450%_)
                                                   (_%n185455%_ '0))
                                  (let* ((_%e185456185463%_ _%e185454%_)
                                         (_%E185458185467%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e185456185463%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K185459185476%_
                                          (lambda (_%body185470%_
                                                   _%tag185471%_)
                                            (let ((_%$e185473%_ _%tag185471%_))
                                              (if (eq? 'splice _%$e185473%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx185202%_
                                                     _%where185389%_))
                                                  (if (eq? 'cons _%$e185473%_)
                                                      (_%lp185452%_
                                                       (cdr _%body185470%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n185455%_
                                                                '1)))
                                                      _%n185455%_))))))
                                    (if (pair? _%e185456185463%_)
                                        (let ((_%hd185460185479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185456185463%_)))
                                              (_%tl185461185481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185456185463%_))))
                                          (let* ((_%tag185484%_
                                                  _%hd185460185479%_)
                                                 (_%body185486%_
                                                  _%tl185461185481%_))
                                            (_%K185459185476%_
                                             _%body185486%_
                                             _%tag185484%_)))
                                        (_%E185458185467%_))))))
                             (_%splice-vars185399%_
                              (lambda (_%e185406%_)
                                (let _%recur185408%_ ((_%e185410%_ _%e185406%_)
                                                      (_%vars185411%_ '()))
                                  (let* ((_%e185412185419%_ _%e185410%_)
                                         (_%E185414185423%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e185412185419%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K185415185438%_
                                          (lambda (_%body185426%_
                                                   _%tag185427%_)
                                            (let ((_%$e185429%_ _%tag185427%_))
                                              (if (eq? 'var _%$e185429%_)
                                                  (cons _%body185426%_
                                                        _%vars185411%_)
                                                  (if (or (eq? 'cons
                                                               _%$e185429%_)
                                                          (eq? 'splice
                                                               _%$e185429%_))
                                                      (_%recur185408%_
                                                       (cdr _%body185426%_)
                                                       (_%recur185408%_
                                                        (car _%body185426%_)
                                                        _%vars185411%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e185429%_)
                      (eq? 'box _%$e185429%_))
                  (_%recur185408%_ _%body185426%_ _%vars185411%_)
                  _%vars185411%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e185412185419%_)
                                        (let ((_%hd185416185441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185412185419%_)))
                                              (_%tl185417185443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185412185419%_))))
                                          (let* ((_%tag185446%_
                                                  _%hd185416185441%_)
                                                 (_%body185448%_
                                                  _%tl185417185443%_))
                                            (_%K185415185438%_
                                             _%body185448%_
                                             _%tag185446%_)))
                                        (_%E185414185423%_))))))
                             (_%make-body185400%_
                              (lambda (_%vars185402%_)
                                (cons _%K185393%_
                                      (map (lambda (_%mvar185404%_)
                                             (let ((__tmp186599
                                                    (car _%mvar185404%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp186599
                                                _%vars185402%_
                                                _%BUG185396%_)))
                                           _%mvars185392%_)))))
                      (_%recur185397%_
                       _%hd185391%_
                       '()
                       _%target185390%_
                       _%E185394%_
                       _%make-body185400%_))))
                 (_%parse-clause185211%_
                  (lambda (_%hd185283%_ _%ids185284%_)
                    (let _%recur185286%_ ((_%e185288%_ _%hd185283%_)
                                          (_%vars185289%_ '())
                                          (_%depth185290%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e185288%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e185288%_))
                              (values '(any) _%vars185289%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e185288%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx185202%_
                                     _%hd185283%_))
                                  (if (let ((__tmp186600
                                             (lambda (_%id185295%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e185288%_
                                                  _%id185295%_)))))
                                        (declare (not safe))
                                        (__find __tmp186600 _%ids185284%_))
                                      (values (cons 'id _%e185288%_)
                                              _%vars185289%_)
                                      (if (let ((__tmp186601
                                                 (lambda (_%var185298%_)
                                                   (let ((__tmp186602
                                                          (car _%var185298%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e185288%_
                                                      __tmp186602)))))
                                            (declare (not safe))
                                            (__find __tmp186601
                                                    _%vars185289%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx185202%_
                                             _%e185288%_))
                                          (values (cons 'var _%e185288%_)
                                                  (cons (cons _%e185288%_
                                                              _%depth185290%_)
                                                        _%vars185289%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e185288%_))
                              (let* ((_%e185302185309%_ _%e185288%_)
                                     (_%E185304185313%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e185302185309%_))))
                                     (_%E185303185374%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e185302185309%_))
                                            (let ((_%e185305185317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e185302185309%_))))
                                              (let ((_%hd185306185320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185305185317%_)))
                                                    (_%tl185307185322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185305185317%_))))
                                                (let* ((_%hd185325%_
                                                        _%hd185306185320%_)
                                                       (_%rest185327%_
                                                        _%tl185307185322%_)
                                                       (_%make-pair185342%_
                                                        (lambda (_%tag185329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd185330%_
                         _%tl185331%_)
                  (let* ((_%hd-depth185333%_
                          (if (eq? _%tag185329%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth185290%_ '1))
                              _%depth185290%_))
                         (_g186603_
                          (_%recur185286%_
                           _%hd185330%_
                           _%vars185289%_
                           _%hd-depth185333%_)))
                    (begin
                      (let ((_g186604_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g186603_)
                                   (##values-length _g186603_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g186604_ 2)))
                            (error "Context expects 2 values" _g186604_)))
                      (let ((_%hd185335%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g186603_ 0)))
                            (_%vars185336%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g186603_ 1))))
                        (let ((_g186605_
                               (_%recur185286%_
                                _%tl185331%_
                                _%vars185336%_
                                _%depth185290%_)))
                          (begin
                            (let ((_g186606_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186605_)
                                         (##values-length _g186605_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186606_ 2)))
                                  (error "Context expects 2 values"
                                         _g186606_)))
                            (let ((_%tl185338%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186605_ 0)))
                                  (_%vars185339%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186605_ 1))))
                              (values (cons _%tag185329%_
                                            (cons _%hd185335%_ _%tl185338%_))
                                      _%vars185339%_)))))))))
               (_%e185343185350%_ _%rest185327%_)
               (_%E185345185354%_
                (lambda ()
                  (_%make-pair185342%_ 'cons _%hd185325%_ _%rest185327%_)))
               (_%E185344185370%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e185343185350%_))
                      (let ((_%e185346185358%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e185343185350%_))))
                        (let ((_%hd185347185361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185346185358%_)))
                              (_%tl185348185363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185346185358%_))))
                          (let* ((_%rest-hd185366%_ _%hd185347185361%_)
                                 (_%rest-tl185368%_ _%tl185348185363%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd185366%_))
                                (_%make-pair185342%_
                                 'splice
                                 _%hd185325%_
                                 _%rest-tl185368%_)
                                (_%make-pair185342%_
                                 'cons
                                 _%hd185325%_
                                 _%rest185327%_)))))
                      (_%E185345185354%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185344185370%_))))
                                            (_%E185304185313%_)))))
                                (_%E185303185374%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e185288%_))
                                  (values '(null) _%vars185289%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e185288%_))
                                      (let ((_g186607_
                                             (_%recur185286%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e185288%_)))
                                              _%vars185289%_
                                              _%depth185290%_)))
                                        (begin
                                          (let ((_g186608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186607_)
                                                       (##values-length
                                                        _g186607_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186608_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186608_)))
                                          (let ((_%e185380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g186607_ 0)))
                                                (_%vars185381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g186607_
                                                    1))))
                                            (values (cons 'vector _%e185380%_)
                                                    _%vars185381%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e185288%_))
                                          (let ((_g186609_
                                                 (_%recur185286%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e185288%_)))
                                                  _%vars185289%_
                                                  _%depth185290%_)))
                                            (begin
                                              (let ((_g186610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186609_)
                                                           (##values-length
                                                            _g186609_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186610_)))
                                              (let ((_%e185384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g186609_
                                                        0)))
                                                    (_%vars185385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g186609_
                                                        1))))
                                                (values (cons 'box _%e185384%_)
                                                        _%vars185385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e185288%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e185288%_)))
                                                      _%vars185289%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx185202%_
                                                 _%e185288%_))))))))))))
          (let* ((_%e185212185225%_ _%stx185202%_)
                 (_%E185214185229%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e185212185225%_))))
                 (_%E185213185279%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e185212185225%_))
                        (let ((_%e185215185233%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e185212185225%_))))
                          (let ((_%hd185216185236%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185215185233%_)))
                                (_%tl185217185238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185215185233%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl185217185238%_))
                                (let ((_%e185218185241%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl185217185238%_))))
                                  (let ((_%hd185219185244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185218185241%_)))
                                        (_%tl185220185246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185218185241%_))))
                                    (let ((_%expr185249%_ _%hd185219185244%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl185220185246%_))
                                          (let ((_%e185221185251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl185220185246%_))))
                                            (let ((_%hd185222185254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e185221185251%_)))
                                                  (_%tl185223185256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e185221185251%_))))
                                              (let* ((_%ids185259%_
                                                      _%hd185222185254%_)
                                                     (_%clauses185261%_
                                                      _%tl185223185256%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids185259%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses185261%_))
                                                        (let* ((_%ids185266%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids185259%_)))
                       (_%clauses185268%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses185261%_)))
                       (_%clause-ids185270%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses185268%_)))
                       (_%E185272%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target185274%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first185276%_
                        (if (null? _%clauses185268%_)
                            _%E185272%_
                            (car _%clause-ids185270%_))))
                  (let ((__tmp186612
                         (let ((__tmp186613
                                (let ((__tmp186615
                                       (let ((__tmp186617
                                              (cons (cons (cons _%E185272%_
                                                                '())
                                                          (cons (let ((__tmp186619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target185274%_ '()))
                              (__tmp186618
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target185274%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp186619 __tmp186618))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp186616
                                              (_%generate-body185208%_
                                               (_%generate-bindings185207%_
                                                _%target185274%_
                                                _%ids185266%_
                                                _%clauses185268%_
                                                _%clause-ids185270%_
                                                _%E185272%_)
                                               (cons _%first185276%_
                                                     (cons _%expr185249%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp186617
                                          __tmp186616)))
                                      (__tmp186614
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx185202%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp186615
                                   __tmp186614))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp186613)))
                        (__tmp186611
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx185202%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp186612 __tmp186611)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx185202%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx185202%_
                                                       _%ids185259%_))))))
                                          (_%E185214185229%_)))))
                                (_%E185214185229%_))))
                        (_%E185214185229%_)))))
            (_%E185213185279%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx185927%_)
        (let* ((_%identifier=?185929%_ 'free-identifier=?)
               (_%unwrap-e185931%_ 'syntax-e)
               (_%wrap-e185933%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx185927%_
           _%identifier=?185929%_
           _%unwrap-e185931%_
           _%wrap-e185933%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx185935%_ _%identifier=?185936%_)
        (let* ((_%unwrap-e185938%_ 'syntax-e) (_%wrap-e185940%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx185935%_
           _%identifier=?185936%_
           _%unwrap-e185938%_
           _%wrap-e185940%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx185942%_ _%identifier=?185943%_ _%unwrap-e185944%_)
        (let ((_%wrap-e185946%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx185942%_
           _%identifier=?185943%_
           _%unwrap-e185944%_
           _%wrap-e185946%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186620_
        (let ((_g186621_ (let () (declare (not safe)) (##length _g186620_))))
          (cond ((let () (declare (not safe)) (##fx= _g186621_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g186620_))
                ((let () (declare (not safe)) (##fx= _g186621_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g186620_))
                ((let () (declare (not safe)) (##fx= _g186621_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g186620_))
                ((let () (declare (not safe)) (##fx= _g186621_ 4))
                 (apply gx#macro-expand-syntax-case__% _g186620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186620_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx185199%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx185199%_))
            (let ((__tmp186622
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx185199%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186622 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd185157%_ . _%rest185158%_)
        (let ((_%len185160%_ (length _%hd185157%_)))
          (let _%lp185162%_ ((_%rest185164%_ _%rest185158%_))
            (let* ((_%rest185165185173%_ _%rest185164%_)
                   (_%else185167185181%_ (lambda () '#!void))
                   (_%K185169185187%_
                    (lambda (_%rest185184%_ _%hd185185%_)
                      (if (let ((__tmp186623 (length _%hd185185%_)))
                            (declare (not safe))
                            (##fx= _%len185160%_ __tmp186623))
                          (_%lp185162%_ _%rest185184%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd185185%_))))))
              (if (pair? _%rest185165185173%_)
                  (let ((_%hd185170185190%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest185165185173%_)))
                        (_%tl185171185192%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest185165185173%_))))
                    (let* ((_%hd185195%_ _%hd185170185190%_)
                           (_%rest185197%_ _%tl185171185192%_))
                      (_%K185169185187%_ _%rest185197%_ _%hd185195%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx185107%_ _%n185108%_)
        (let _%lp185110%_ ((_%rest185113%_ _%stx185107%_) (_%r185115%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest185113%_))
              (let* ((_%g185117185124%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest185113%_)))
                     (_%E185119185128%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g185117185124%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K185120185135%_
                      (lambda (_%rest185131%_ _%hd185132%_)
                        (_%lp185110%_
                         _%rest185131%_
                         (cons _%hd185132%_ _%r185115%_)))))
                (if (pair? _%g185117185124%_)
                    (let ((_%hd185121185138%_
                           (let ()
                             (declare (not safe))
                             (##car _%g185117185124%_)))
                          (_%tl185122185140%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g185117185124%_))))
                      (let* ((_%hd185143%_ _%hd185121185138%_)
                             (_%rest185145%_ _%tl185122185140%_))
                        (_%K185120185135%_ _%rest185145%_ _%hd185143%_)))
                    (_%E185119185128%_)))
              (let _%lp185147%_ ((_%n185149%_ _%n185108%_)
                                 (_%l185150%_ _%r185115%_)
                                 (_%r185152%_ _%rest185113%_))
                (if (null? _%l185150%_)
                    (values _%l185150%_ _%r185152%_)
                    (if (fxpositive? _%n185149%_)
                        (_%lp185147%_
                         (let () (declare (not safe)) (##fx- _%n185149%_ '1))
                         (cdr _%l185150%_)
                         (cons (car _%l185150%_) _%r185152%_))
                        (values (reverse! _%l185150%_) _%r185152%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx185057%_ _%n185058%_)
        (let _%lp185060%_ ((_%rest185063%_ _%stx185057%_) (_%r185065%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest185063%_))
              (let* ((_%g185067185074%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest185063%_)))
                     (_%E185069185078%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g185067185074%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K185070185085%_
                      (lambda (_%rest185081%_ _%hd185082%_)
                        (_%lp185060%_
                         _%rest185081%_
                         (cons _%hd185082%_ _%r185065%_)))))
                (if (pair? _%g185067185074%_)
                    (let ((_%hd185071185088%_
                           (let ()
                             (declare (not safe))
                             (##car _%g185067185074%_)))
                          (_%tl185072185090%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g185067185074%_))))
                      (let* ((_%hd185093%_ _%hd185071185088%_)
                             (_%rest185095%_ _%tl185072185090%_))
                        (_%K185070185085%_ _%rest185095%_ _%hd185093%_)))
                    (_%E185069185078%_)))
              (let _%lp185097%_ ((_%n185099%_ _%n185058%_)
                                 (_%l185100%_ _%r185065%_)
                                 (_%r185102%_ _%rest185063%_))
                (if (null? _%l185100%_)
                    (vector _%l185100%_ _%r185102%_)
                    (if (fxpositive? _%n185099%_)
                        (_%lp185097%_
                         (let () (declare (not safe)) (##fx- _%n185099%_ '1))
                         (cdr _%l185100%_)
                         (cons (car _%l185100%_) _%r185102%_))
                        (vector (reverse! _%l185100%_) _%r185102%_))))))))))
