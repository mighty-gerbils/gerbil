(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1755903076)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp137546 (list gx#expander::t))
            (__tmp137545 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp137546
         '(id depth)
         __tmp137545
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args137542%_
        (apply make-instance gx#syntax-pattern::t _%$args137542%_)))
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
      (lambda (_%self135995137526%_ _%stx137528%_)
        (let* ((_%self137530%_ _%self135995137526%_)
               (_%self137532%_ _%self137530%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx137528%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx136993%_)
        (letrec ((_%generate136995%_
                  (lambda (_%e137235%_)
                    (letrec ((_%BUG137237%_
                              (lambda (_%q137402%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx136993%_
                                         _%e137235%_
                                         _%q137402%_))))
                             (_%local-pattern-e137238%_
                              (lambda (_%pat137400%_)
                                (let ((__tmp137547
                                       (##structure-ref
                                        _%pat137400%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp137547))))
                             (_%getvar137239%_
                              (lambda (_%q137397%_ _%vars137398%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q137397%_
                                   _%vars137398%_
                                   _%BUG137237%_))))
                             (_%getarg137240%_
                              (lambda (_%arg137363%_ _%vars137364%_)
                                (let* ((_%arg137365137372%_ _%arg137363%_)
                                       (_%E137367137376%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg137365137372%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K137368137385%_
                                        (lambda (_%e137379%_ _%tag137380%_)
                                          (let ((_%$e137382%_ _%tag137380%_))
                                            (if (eq? 'ref _%$e137382%_)
                                                (_%getvar137239%_
                                                 _%e137379%_
                                                 _%vars137364%_)
                                                (if (eq? 'pattern _%$e137382%_)
                                                    (_%local-pattern-e137238%_
                                                     _%e137379%_)
                                                    (_%BUG137237%_
                                                     _%arg137363%_)))))))
                                  (if (pair? _%arg137365137372%_)
                                      (let ((_%hd137369137388%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg137365137372%_)))
                                            (_%tl137370137390%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg137365137372%_))))
                                        (let* ((_%tag137393%_
                                                _%hd137369137388%_)
                                               (_%e137395%_
                                                _%tl137370137390%_))
                                          (_%K137368137385%_
                                           _%e137395%_
                                           _%tag137393%_)))
                                      (_%E137367137376%_))))))
                      (let _%recur137242%_ ((_%e137244%_ _%e137235%_)
                                            (_%vars137245%_ '()))
                        (let* ((_%e137246137253%_ _%e137244%_)
                               (_%E137248137257%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e137246137253%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K137249137351%_
                                (lambda (_%body137260%_ _%tag137261%_)
                                  (let ((_%$e137263%_ _%tag137261%_))
                                    (if (eq? 'datum _%$e137263%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body137260%_))
                                        (if (eq? 'term _%$e137263%_)
                                            (let ((_%id137266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body137260%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id137266%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks137269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id137266%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks137269%_)
                                                        (let ((__tmp137548
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body137260%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp137548))
                (let ((__tmp137550
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body137260%_)))
                      (__tmp137549
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body137260%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp137550
                   __tmp137549
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id137266%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body137260%_))
                                                      (_%BUG137237%_
                                                       _%e137244%_))))
                                            (if (eq? 'pattern _%$e137263%_)
                                                (_%local-pattern-e137238%_
                                                 _%body137260%_)
                                                (if (eq? 'ref _%$e137263%_)
                                                    (_%getvar137239%_
                                                     _%body137260%_
                                                     _%vars137245%_)
                                                    (if (eq? 'cons
                                                             _%$e137263%_)
                                                        (let ((__tmp137552
                                                               (_%recur137242%_
                                                                (car _%body137260%_)
                                                                _%vars137245%_))
                                                              (__tmp137551
                                                               (_%recur137242%_
                                                                (cdr _%body137260%_)
                                                                _%vars137245%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp137552
                                                           __tmp137551))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e137263%_)
                    (let ((__tmp137553
                           (_%recur137242%_ _%body137260%_ _%vars137245%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp137553))
                    (if (eq? 'box _%$e137263%_)
                        (let ((__tmp137554
                               (_%recur137242%_
                                _%body137260%_
                                _%vars137245%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp137554))
                        (if (eq? 'splice _%$e137263%_)
                            (let* ((_%body137272137283%_ _%body137260%_)
                                   (_%E137274137287%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body137272137283%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K137275137325%_
                                    (lambda (_%args137290%_
                                             _%iv137291%_
                                             _%hd137292%_
                                             _%depth137293%_)
                                      (let* ((_%targets137299%_
                                              (map (lambda (_%g137294137296%_)
                                                     (_%getarg137240%_
                                                      _%g137294137296%_
                                                      _%vars137245%_))
                                                   _%args137290%_))
                                             (_%fold-in137301%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args137290%_)))
                                             (_%fold-out137303%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args137305%_
                                              (let ((__tmp137555
                                                     (cons _%fold-out137303%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp137555
                                                 _%fold-in137301%_)))
                                             (_%lambda-body137322%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth137293%_ '1))
                                                  (let ((_%r-args137313%_
                                                         (map (lambda (_%arg137307%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg137307%_)))
                      _%args137290%_))
                (_%r-vars137314%_
                 (let ((__tmp137556
                        (lambda (_%arg137309%_ _%var137310%_ _%r137311%_)
                          (cons (cons (cdr _%arg137309%_) _%var137310%_)
                                _%r137311%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp137556
                    _%vars137245%_
                    _%args137290%_
                    _%fold-in137301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur137242%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth137293%_ '1))
                         (cons _%hd137292%_
                               (cons (cons 'var _%fold-out137303%_)
                                     _%r-args137313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars137314%_))
                                                  (let* ((_%hd-vars137320%_
                                                          (let ((__tmp137557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg137316%_ _%var137317%_ _%r137318%_)
                           (cons (cons (cdr _%arg137316%_) _%var137317%_)
                                 _%r137318%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp137557
                     _%vars137245%_
                     _%args137290%_
                     _%fold-in137301%_)))
                 (__tmp137558
                  (_%recur137242%_ _%hd137292%_ _%hd-vars137320%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp137558
                                                     _%fold-out137303%_)))))
                                        (let ((__tmp137562
                                               (if (let ((__tmp137563
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets137299%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp137563 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets137299%_))
                                                   '#!void))
                                              (__tmp137559
                                               (let ((__tmp137561
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args137305%_
                                                         _%lambda-body137322%_)))
                                                     (__tmp137560
                                                      (_%recur137242%_
                                                       _%iv137291%_
                                                       _%vars137245%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp137561
                                                  __tmp137560
                                                  _%targets137299%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp137562
                                           __tmp137559))))))
                              (if (pair? _%body137272137283%_)
                                  (let ((_%hd137276137328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body137272137283%_)))
                                        (_%tl137277137330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body137272137283%_))))
                                    (let ((_%depth137333%_ _%hd137276137328%_))
                                      (if (pair? _%tl137277137330%_)
                                          (let ((_%hd137278137335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl137277137330%_)))
                                                (_%tl137279137337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl137277137330%_))))
                                            (let ((_%hd137340%_
                                                   _%hd137278137335%_))
                                              (if (pair? _%tl137279137337%_)
                                                  (let ((_%hd137280137342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl137279137337%_)))
                                                        (_%tl137281137344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl137279137337%_))))
                                                    (let* ((_%iv137347%_
                                                            _%hd137280137342%_)
                                                           (_%args137349%_
                                                            _%tl137281137344%_))
                                                      (_%K137275137325%_
                                                       _%args137349%_
                                                       _%iv137347%_
                                                       _%hd137340%_
                                                       _%depth137333%_)))
                                                  (_%E137274137287%_))))
                                          (_%E137274137287%_))))
                                  (_%E137274137287%_)))
                            (if (eq? 'var _%$e137263%_)
                                _%body137260%_
                                (_%BUG137237%_ _%e137244%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e137246137253%_)
                              (let ((_%hd137250137354%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e137246137253%_)))
                                    (_%tl137251137356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e137246137253%_))))
                                (let* ((_%tag137359%_ _%hd137250137354%_)
                                       (_%body137361%_ _%tl137251137356%_))
                                  (_%K137249137351%_
                                   _%body137361%_
                                   _%tag137359%_)))
                              (_%E137248137257%_)))))))
                 (_%parse136996%_
                  (lambda (_%e137037%_)
                    (letrec ((_%make-cons137039%_
                              (lambda (_%hd137227%_ _%tl137228%_)
                                (let ((_g137564_ _%hd137227%_)
                                      (_g137566_ _%tl137228%_))
                                  (begin
                                    (let ((_g137565_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g137564_)
                                                 (##values-length _g137564_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g137565_ 2)))
                                          (error "Context expects 2 values"
                                                 _g137565_)))
                                    (let ((_g137567_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g137566_)
                                                 (##values-length _g137566_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g137567_ 2)))
                                          (error "Context expects 2 values"
                                                 _g137567_)))
                                    (let ((_%hd-e137230%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g137564_ 0)))
                                          (_%hd-vars137231%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g137564_ 1))))
                                      (let ((_%tl-e137232%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g137566_ 0)))
                                            (_%tl-vars137233%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g137566_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e137230%_
                                                            _%tl-e137232%_))
                                                (append _%hd-vars137231%_
                                                        _%tl-vars137233%_))))))))
                             (_%make-splice137040%_
                              (lambda (_%where137163%_
                                       _%depth137164%_
                                       _%hd137165%_
                                       _%tl137166%_)
                                (let ((_g137568_ _%hd137165%_)
                                      (_g137570_ _%tl137166%_))
                                  (begin
                                    (let ((_g137569_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g137568_)
                                                 (##values-length _g137568_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g137569_ 2)))
                                          (error "Context expects 2 values"
                                                 _g137569_)))
                                    (let ((_g137571_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g137570_)
                                                 (##values-length _g137570_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g137571_ 2)))
                                          (error "Context expects 2 values"
                                                 _g137571_)))
                                    (let ((_%hd-e137168%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g137568_ 0)))
                                          (_%hd-vars137169%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g137568_ 1))))
                                      (let ((_%tl-e137170%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g137570_ 0)))
                                            (_%tl-vars137171%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g137570_ 1))))
                                        (let _%lp137173%_ ((_%rest137175%_
                                                            _%hd-vars137169%_)
                                                           (_%targets137176%_
                                                            '())
                                                           (_%vars137177%_
                                                            _%tl-vars137171%_))
                                          (let* ((_%rest137178137188%_
                                                  _%rest137175%_)
                                                 (_%else137180137196%_
                                                  (lambda ()
                                                    (if (null? _%targets137176%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx136993%_
                                                           _%where137163%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth137164%_
                                    (cons _%hd-e137168%_
                                          (cons _%tl-e137170%_
                                                _%targets137176%_))))
                        _%vars137177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K137182137208%_
                                                  (lambda (_%rest137199%_
                                                           _%hd-pat137200%_
                                                           _%hd-depth*137201%_)
                                                    (let ((_%hd-depth137203%_
                                                           (fx- _%hd-depth*137201%_
                                                                _%depth137164%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth137203%_))
                                                          (_%lp137173%_
                                                           _%rest137199%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat137200%_)
                         _%targets137176%_)
                   (cons (cons _%hd-depth137203%_ _%hd-pat137200%_)
                         _%vars137177%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth137203%_))
                      (_%lp137173%_
                       _%rest137199%_
                       (cons (cons 'pattern _%hd-pat137200%_)
                             _%targets137176%_)
                       _%vars137177%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx136993%_
                         _%where137163%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest137178137188%_)
                                                (let ((_%hd137183137211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest137178137188%_)))
                                                      (_%tl137184137213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest137178137188%_))))
                                                  (if (pair? _%hd137183137211%_)
                                                      (let ((_%hd137185137216%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd137183137211%_)))
                    (_%tl137186137218%_
                     (let () (declare (not safe)) (##cdr _%hd137183137211%_))))
                (let* ((_%hd-depth*137221%_ _%hd137185137216%_)
                       (_%hd-pat137223%_ _%tl137186137218%_)
                       (_%rest137225%_ _%tl137184137213%_))
                  (_%K137182137208%_
                   _%rest137225%_
                   _%hd-pat137223%_
                   _%hd-depth*137221%_)))
              (_%else137180137196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else137180137196%_))))))))))
                             (_%recur137041%_
                              (lambda (_%e137046%_ _%is-e?137047%_)
                                (if (_%is-e?137047%_ _%e137046%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx136993%_))
                                    (if (gx#syntax-local-pattern? _%e137046%_)
                                        (let* ((_%pat137051%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e137046%_)))
                                               (_%depth137053%_
                                                (##structure-ref
                                                 _%pat137051%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth137053%_)
                                              (values (cons 'ref _%pat137051%_)
                                                      (cons (cons _%depth137053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat137051%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat137051%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e137046%_))
                                            (values (cons 'term _%e137046%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e137046%_))
                                                (let* ((_%e137057137064%_
                                                        _%e137046%_)
                                                       (_%E137059137068%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e137057137064%_))))
                                                       (_%E137058137150%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e137057137064%_))
                      (let ((_%e137060137072%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e137057137064%_))))
                        (let ((_%hd137061137075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137060137072%_)))
                              (_%tl137062137077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137060137072%_))))
                          (let* ((_%hd137080%_ _%hd137061137075%_)
                                 (_%rest137082%_ _%tl137062137077%_))
                            (if (_%is-e?137047%_ _%hd137080%_)
                                (let* ((_%e137083137090%_ _%rest137082%_)
                                       (_%E137085137094%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx136993%_
                                             _%e137046%_))))
                                       (_%E137084137108%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e137083137090%_))
                                              (let ((_%e137086137098%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e137083137090%_))))
                                                (let ((_%hd137087137101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137086137098%_)))
                                                      (_%tl137088137103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137086137098%_))))
                                                  (let ((_%rest137106%_
                                                         _%hd137087137101%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137088137103%_))
                                                        (_%recur137041%_
                                                         _%rest137106%_
                                                         false)
                                                        (_%E137085137094%_)))))
                                              (_%E137085137094%_)))))
                                  (_%E137084137108%_))
                                (let _%lp137112%_ ((_%rest137114%_
                                                    _%rest137082%_)
                                                   (_%depth137115%_ '0))
                                  (let* ((_%e137116137123%_ _%rest137114%_)
                                         (_%E137118137127%_
                                          (lambda ()
                                            (if (fxpositive? _%depth137115%_)
                                                (_%make-splice137040%_
                                                 _%e137046%_
                                                 _%depth137115%_
                                                 (_%recur137041%_
                                                  _%hd137080%_
                                                  _%is-e?137047%_)
                                                 (_%recur137041%_
                                                  _%rest137114%_
                                                  _%is-e?137047%_))
                                                (_%make-cons137039%_
                                                 (_%recur137041%_
                                                  _%hd137080%_
                                                  _%is-e?137047%_)
                                                 (_%recur137041%_
                                                  _%rest137114%_
                                                  _%is-e?137047%_)))))
                                         (_%E137117137146%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e137116137123%_))
                                                (let ((_%e137119137131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e137116137123%_))))
                                                  (let ((_%hd137120137134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e137119137131%_)))
                                                        (_%tl137121137136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e137119137131%_))))
                                                    (let* ((_%rest-hd137139%_
                                                            _%hd137120137134%_)
                                                           (_%rest-tl137141%_
                                                            _%tl137121137136%_))
                                                      (if (_%is-e?137047%_
                                                           _%rest-hd137139%_)
                                                          (_%lp137112%_
                                                           _%rest-tl137141%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth137115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth137115%_)
                      (_%make-splice137040%_
                       _%e137046%_
                       _%depth137115%_
                       (_%recur137041%_ _%hd137080%_ _%is-e?137047%_)
                       (_%recur137041%_ _%rest137114%_ _%is-e?137047%_))
                      (_%make-cons137039%_
                       (_%recur137041%_ _%hd137080%_ _%is-e?137047%_)
                       (_%recur137041%_ _%rest137114%_ _%is-e?137047%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E137118137127%_)))))
                                    (_%E137117137146%_)))))))
                      (_%E137059137068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137058137150%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e137046%_))
                                                    (let ((_g137572_
                                                           (_%recur137041%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e137046%_)))
                    _%is-e?137047%_)))
              (begin
                (let ((_g137573_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g137572_)
                             (##values-length _g137572_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g137573_ 2)))
                      (error "Context expects 2 values" _g137573_)))
                (let ((_%e137155%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g137572_ 0)))
                      (_%vars137156%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g137572_ 1))))
                  (values (cons 'vector _%e137155%_) _%vars137156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e137046%_))
                                                        (let ((_g137574_
                                                               (_%recur137041%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e137046%_)))
                        _%is-e?137047%_)))
                  (begin
                    (let ((_g137575_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g137574_)
                                 (##values-length _g137574_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g137575_ 2)))
                          (error "Context expects 2 values" _g137575_)))
                    (let ((_%e137159%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g137574_ 0)))
                          (_%vars137160%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g137574_ 1))))
                      (values (cons 'box _%e137159%_) _%vars137160%_))))
                (values (cons 'datum _%e137046%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g137576_
                             (_%recur137041%_ _%e137037%_ gx#ellipsis?)))
                        (begin
                          (let ((_g137577_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g137576_)
                                       (##values-length _g137576_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g137577_ 2)))
                                (error "Context expects 2 values" _g137577_)))
                          (let ((_%tree137043%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g137576_ 0)))
                                (_%vars137044%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g137576_ 1))))
                            (if (null? _%vars137044%_)
                                _%tree137043%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx136993%_
                                   _%vars137044%_))))))))))
          (let* ((_%e136997137007%_ _%stx136993%_)
                 (_%E136999137011%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx136993%_))))
                 (_%E136998137033%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e136997137007%_))
                        (let ((_%e137000137015%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e136997137007%_))))
                          (let ((_%hd137001137018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137000137015%_)))
                                (_%tl137002137020%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137000137015%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137002137020%_))
                                (let ((_%e137003137023%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl137002137020%_))))
                                  (let ((_%hd137004137026%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137003137023%_)))
                                        (_%tl137005137028%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137003137023%_))))
                                    (let ((_%form137031%_ _%hd137004137026%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137005137028%_))
                                          (let ((__tmp137579
                                                 (_%generate136995%_
                                                  (_%parse136996%_
                                                   _%form137031%_)))
                                                (__tmp137578
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx136993%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp137579
                                             __tmp137578))
                                          (_%E136999137011%_)))))
                                (_%E136999137011%_))))
                        (_%E136999137011%_)))))
            (_%E136998137033%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx136242%_
               _%identifier=?136243%_
               _%unwrap-e136244%_
               _%wrap-e136245%_)
        (letrec ((_%generate-bindings136247%_
                  (lambda (_%target136857%_
                           _%ids136858%_
                           _%clauses136859%_
                           _%clause-ids136860%_
                           _%E136861%_)
                    (letrec ((_%generate1136863%_
                              (lambda (_%clause136960%_
                                       _%clause-id136961%_
                                       _%E136962%_)
                                (cons (cons _%clause-id136961%_ '())
                                      (cons (let ((__tmp137581
                                                   (cons _%target136857%_ '()))
                                                  (__tmp137580
                                                   (_%generate-clause136249%_
                                                    _%target136857%_
                                                    _%ids136858%_
                                                    _%clause136960%_
                                                    _%E136962%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp137581
                                               __tmp137580))
                                            '())))))
                      (let _%lp136865%_ ((_%rest136867%_ _%clauses136859%_)
                                         (_%rest-ids136868%_
                                          _%clause-ids136860%_)
                                         (_%bindings136869%_ '()))
                        (let* ((_%rest136870136878%_ _%rest136867%_)
                               (_%else136872136886%_
                                (lambda () _%bindings136869%_))
                               (_%K136874136948%_
                                (lambda (_%rest136889%_ _%clause136890%_)
                                  (let* ((_%rest-ids136891136898%_
                                          _%rest-ids136868%_)
                                         (_%E136893136902%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids136891136898%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K136894136936%_
                                          (lambda (_%rest-ids136905%_
                                                   _%clause-id136906%_)
                                            (let* ((_%rest-ids136907136915%_
                                                    _%rest-ids136905%_)
                                                   (_%else136909136923%_
                                                    (lambda ()
                                                      (cons (_%generate1136863%_
                                                             _%clause136890%_
                                                             _%clause-id136906%_
                                                             _%E136861%_)
                                                            _%bindings136869%_)))
                                                   (_%K136911136928%_
                                                    (lambda (_%next-clause-id136926%_)
                                                      (_%lp136865%_
                                                       _%rest136889%_
                                                       _%rest-ids136905%_
                                                       (cons (_%generate1136863%_
                                                              _%clause136890%_
                                                              _%clause-id136906%_
                                                              _%next-clause-id136926%_)
                                                             _%bindings136869%_)))))
                                              (if (pair? _%rest-ids136907136915%_)
                                                  (let* ((_%hd136912136931%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids136907136915%_)))
                                                         (_%next-clause-id136934%_
                                                          _%hd136912136931%_))
                                                    (_%K136911136928%_
                                                     _%next-clause-id136934%_))
                                                  (_%else136909136923%_))))))
                                    (if (pair? _%rest-ids136891136898%_)
                                        (let ((_%hd136895136939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids136891136898%_)))
                                              (_%tl136896136941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids136891136898%_))))
                                          (let* ((_%clause-id136944%_
                                                  _%hd136895136939%_)
                                                 (_%rest-ids136946%_
                                                  _%tl136896136941%_))
                                            (_%K136894136936%_
                                             _%rest-ids136946%_
                                             _%clause-id136944%_)))
                                        (_%E136893136902%_))))))
                          (if (pair? _%rest136870136878%_)
                              (let ((_%hd136875136951%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136870136878%_)))
                                    (_%tl136876136953%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136870136878%_))))
                                (let* ((_%clause136956%_ _%hd136875136951%_)
                                       (_%rest136958%_ _%tl136876136953%_))
                                  (_%K136874136948%_
                                   _%rest136958%_
                                   _%clause136956%_)))
                              (_%else136872136886%_)))))))
                 (_%generate-body136248%_
                  (lambda (_%bindings136817%_ _%body136818%_)
                    (let _%recur136820%_ ((_%rest136822%_ _%bindings136817%_))
                      (let* ((_%rest136823136831%_ _%rest136822%_)
                             (_%else136825136839%_ (lambda () _%body136818%_))
                             (_%K136827136845%_
                              (lambda (_%rest136842%_ _%hd136843%_)
                                (let ((__tmp137583 (cons _%hd136843%_ '()))
                                      (__tmp137582
                                       (_%recur136820%_ _%rest136842%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp137583
                                   __tmp137582)))))
                        (if (pair? _%rest136823136831%_)
                            (let ((_%hd136828136848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest136823136831%_)))
                                  (_%tl136829136850%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest136823136831%_))))
                              (let* ((_%hd136853%_ _%hd136828136848%_)
                                     (_%rest136855%_ _%tl136829136850%_))
                                (_%K136827136845%_
                                 _%rest136855%_
                                 _%hd136853%_)))
                            (_%else136825136839%_))))))
                 (_%generate-clause136249%_
                  (lambda (_%target136680%_
                           _%ids136681%_
                           _%clause136682%_
                           _%E136683%_)
                    (letrec ((_%generate1136685%_
                              (lambda (_%hd136772%_
                                       _%fender136773%_
                                       _%body136774%_)
                                (let ((_g137584_
                                       (_%parse-clause136251%_
                                        _%hd136772%_
                                        _%ids136681%_)))
                                  (begin
                                    (let ((_g137585_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g137584_)
                                                 (##values-length _g137584_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g137585_ 2)))
                                          (error "Context expects 2 values"
                                                 _g137585_)))
                                    (let ((_%e136776%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g137584_ 0)))
                                          (_%mvars136777%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g137584_ 1))))
                                      (let* ((_%pvars136779%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars136777%_))))
                                             (_%E136781%_
                                              (cons _%E136683%_
                                                    (cons _%target136680%_
                                                          '())))
                                             (_%K136814%_
                                              (let ((__tmp137586
                                                     (let ((__tmp137588
                                                            (map (lambda (_%mvar136783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar136784%_)
                           (let* ((_%mvar136785136792%_ _%mvar136783%_)
                                  (_%E136787136796%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar136785136792%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K136788136802%_
                                   (lambda (_%depth136799%_ _%id136800%_)
                                     (cons _%id136800%_
                                           (cons (let ((__tmp137590
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id136800%_)))
                                                       (__tmp137589
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar136784%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp137590
                                                    __tmp137589
                                                    _%depth136799%_))
                                                 '())))))
                             (if (pair? _%mvar136785136792%_)
                                 (let ((_%hd136789136805%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar136785136792%_)))
                                       (_%tl136790136807%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar136785136792%_))))
                                   (let* ((_%id136810%_ _%hd136789136805%_)
                                          (_%depth136812%_ _%tl136790136807%_))
                                     (_%K136788136802%_
                                      _%depth136812%_
                                      _%id136810%_)))
                                 (_%E136787136796%_))))
                         _%mvars136777%_
                         _%pvars136779%_))
                   (__tmp137587
                    (if (eq? _%fender136773%_ '#t)
                        _%body136774%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender136773%_
                           _%body136774%_
                           _%E136781%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp137588 __tmp137587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars136779%_
                                                 __tmp137586))))
                                        (_%generate-match136250%_
                                         _%hd136772%_
                                         _%target136680%_
                                         _%e136776%_
                                         _%mvars136777%_
                                         _%K136814%_
                                         _%E136781%_))))))))
                      (let* ((_%e136686136706%_ _%clause136682%_)
                             (_%E136695136710%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e136686136706%_))))
                             (_%E136688136744%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e136686136706%_))
                                    (let ((_%e136696136714%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e136686136706%_))))
                                      (let ((_%hd136697136717%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136696136714%_)))
                                            (_%tl136698136719%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136696136714%_))))
                                        (let ((_%hd136722%_
                                               _%hd136697136717%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136698136719%_))
                                              (let ((_%e136699136724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl136698136719%_))))
                                                (let ((_%hd136700136727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136699136724%_)))
                                                      (_%tl136701136729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136699136724%_))))
                                                  (let ((_%fender136732%_
                                                         _%hd136700136727%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl136701136729%_))
                                                        (let ((_%e136702136734%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl136701136729%_))))
                  (let ((_%hd136703136737%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136702136734%_)))
                        (_%tl136704136739%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136702136734%_))))
                    (let ((_%body136742%_ _%hd136703136737%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl136704136739%_))
                          (_%generate1136685%_
                           _%hd136722%_
                           _%fender136732%_
                           _%body136742%_)
                          (_%E136695136710%_)))))
                (_%E136695136710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136695136710%_)))))
                                    (_%E136695136710%_))))
                             (_%E136687136768%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e136686136706%_))
                                    (let ((_%e136689136748%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e136686136706%_))))
                                      (let ((_%hd136690136751%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136689136748%_)))
                                            (_%tl136691136753%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136689136748%_))))
                                        (let ((_%hd136756%_
                                               _%hd136690136751%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136691136753%_))
                                              (let ((_%e136692136758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl136691136753%_))))
                                                (let ((_%hd136693136761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136692136758%_)))
                                                      (_%tl136694136763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136692136758%_))))
                                                  (let ((_%body136766%_
                                                         _%hd136693136761%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl136694136763%_))
                                                        (_%generate1136685%_
                                                         _%hd136756%_
                                                         '#t
                                                         _%body136766%_)
                                                        (_%E136688136744%_)))))
                                              (_%E136688136744%_)))))
                                    (_%E136688136744%_)))))
                        (_%E136687136768%_)))))
                 (_%generate-match136250%_
                  (lambda (_%where136429%_
                           _%target136430%_
                           _%hd136431%_
                           _%mvars136432%_
                           _%K136433%_
                           _%E136434%_)
                    (letrec ((_%BUG136436%_
                              (lambda (_%q136678%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx136242%_
                                         _%hd136431%_
                                         _%q136678%_))))
                             (_%recur136437%_
                              (lambda (_%e136528%_
                                       _%vars136529%_
                                       _%target136530%_
                                       _%E136531%_
                                       _%k136532%_)
                                (let* ((_%e136533136540%_ _%e136528%_)
                                       (_%E136535136544%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e136533136540%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K136536136666%_
                                        (lambda (_%body136547%_ _%tag136548%_)
                                          (let ((_%$e136550%_ _%tag136548%_))
                                            (if (eq? 'any _%$e136550%_)
                                                (_%k136532%_ _%vars136529%_)
                                                (if (eq? 'id _%$e136550%_)
                                                    (let ((__tmp137595
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target136530%_)))
                                                          (__tmp137591
                                                           (let ((__tmp137593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137594
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e136245%_
                                    _%body136547%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?136243%_
                             __tmp137594
                             _%target136530%_)))
                         (__tmp137592 (_%k136532%_ _%vars136529%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp137593 __tmp137592 _%E136531%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp137595 __tmp137591 _%E136531%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e136550%_)
                                                        (_%k136532%_
                                                         (cons (cons _%body136547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target136530%_)
                       _%vars136529%_))
                (if (eq? 'cons _%$e136550%_)
                    (let ((_%$e136553%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd136554%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl136555%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp137601
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target136530%_)))
                            (__tmp137596
                             (let ((__tmp137600
                                    (cons (cons (cons _%$e136553%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e136244%_
                                                         _%target136530%_))
                                                      '()))
                                          '()))
                                   (__tmp137597
                                    (let ((__tmp137599
                                           (cons (cons (cons _%$hd136554%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e136553%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl136555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e136553%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp137598
                                           (let* ((_%body136556136563%_
                                                   _%body136547%_)
                                                  (_%E136558136567%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body136556136563%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K136559136575%_
                                                   (lambda (_%tl136570%_
                                                            _%hd136571%_)
                                                     (_%recur136437%_
                                                      _%hd136571%_
                                                      _%vars136529%_
                                                      _%$hd136554%_
                                                      _%E136531%_
                                                      (lambda (_%vars136573%_)
                                                        (_%recur136437%_
                                                         _%tl136570%_
                                                         _%vars136573%_
                                                         _%$tl136555%_
                                                         _%E136531%_
                                                         _%k136532%_))))))
                                             (if (pair? _%body136556136563%_)
                                                 (let ((_%hd136560136578%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body136556136563%_)))
                                                       (_%tl136561136580%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body136556136563%_))))
                                                   (let* ((_%hd136583%_
                                                           _%hd136560136578%_)
                                                          (_%tl136585%_
                                                           _%tl136561136580%_))
                                                     (_%K136559136575%_
                                                      _%tl136585%_
                                                      _%hd136583%_)))
                                                 (_%E136558136567%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp137599
                                       __tmp137598))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp137600
                                __tmp137597))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp137601
                         __tmp137596
                         _%E136531%_)))
                    (if (eq? 'splice _%$e136550%_)
                        (let* ((_%body136586136593%_ _%body136547%_)
                               (_%E136588136597%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body136586136593%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K136589136648%_
                                (lambda (_%tl136600%_ _%hd136601%_)
                                  (let* ((_%rlen136603%_
                                          (_%splice-rlen136438%_ _%tl136600%_))
                                         (_%$target136605%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd136607%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl136609%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp136611%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e136613%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd136615%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl136617%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars136619%_
                                          (_%splice-vars136439%_ _%hd136601%_))
                                         (_%lvars136621%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars136619%_)))
                                         (_%tlvars136623%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars136619%_)))
                                         (_%linit136627%_
                                          (map (lambda (_%var136625%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars136621%_)))
                                    (letrec ((_%make-loop136630%_
                                              (lambda (_%vars136634%_)
                                                (let ((__tmp137603
                                                       (cons (cons (cons _%$lp136611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp137616
                                        (cons _%$hd136607%_ _%lvars136621%_))
                                       (__tmp137604
                                        (let ((__tmp137615
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd136607%_)))
                                              (__tmp137609
                                               (let ((__tmp137614
                                                      (cons (cons (cons _%$lp-e136613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e136244%_
                                   _%$hd136607%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137610
                                                      (let ((__tmp137613
                                                             (cons (cons (cons _%$lp-hd136615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e136613%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl136617%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e136613%_))
                                             '()))
                                 '())))
                    (__tmp137611
                     (_%recur136437%_
                      _%hd136601%_
                      '()
                      _%$lp-hd136615%_
                      _%E136531%_
                      (lambda (_%hdvars136636%_)
                        (cons _%$lp136611%_
                              (cons _%$lp-tl136617%_
                                    (map (lambda (_%svar136638%_
                                                  _%lvar136639%_)
                                           (let ((__tmp137612
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar136638%_
                                                     _%hdvars136636%_
                                                     _%BUG136436%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp137612
                                              _%lvar136639%_)))
                                         _%svars136619%_
                                         _%lvars136621%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp137613 __tmp137611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp137614
                                                  __tmp137610)))
                                              (__tmp137605
                                               (let ((__tmp137608
                                                      (map (lambda (_%lvar136641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar136642%_)
                     (cons (cons _%tlvar136642%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar136641%_))
                                 '())))
                   _%lvars136621%_
                   _%tlvars136623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137606
                                                      (_%k136532%_
                                                       (let ((__tmp137607
                                                              (lambda (_%svar136644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar136645%_
                               _%r136646%_)
                        (cons (cons _%svar136644%_ _%tlvar136645%_)
                              _%r136646%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp137607
                  _%vars136634%_
                  _%svars136619%_
                  _%tlvars136623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp137608
                                                  __tmp137606))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp137615
                                           __tmp137609
                                           __tmp137605))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp137616
                                    __tmp137604))
                                 '()))
                     '()))
              (__tmp137602
               (cons _%$lp136611%_ (cons _%$target136605%_ _%linit136627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp137603
                                                   __tmp137602)))))
                                      (let ((_%body136632%_
                                             (let ((__tmp137618
                                                    (cons (cons (cons _%$target136605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl136609%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target136530%_
                                 _%rlen136603%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137617
                                                    (_%recur136437%_
                                                     _%tl136600%_
                                                     _%vars136529%_
                                                     _%$tl136609%_
                                                     _%E136531%_
                                                     _%make-loop136630%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp137618
                                                __tmp137617))))
                                        (let ((__tmp137622
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target136530%_)))
                                              (__tmp137619
                                               (if (zero? _%rlen136603%_)
                                                   _%body136632%_
                                                   (let ((__tmp137620
                                                          (let ((__tmp137621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target136530%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp137621 _%rlen136603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp137620
                                                      _%body136632%_
                                                      _%E136531%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp137622
                                           __tmp137619
                                           _%E136531%_))))))))
                          (if (pair? _%body136586136593%_)
                              (let ((_%hd136590136651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body136586136593%_)))
                                    (_%tl136591136653%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body136586136593%_))))
                                (let* ((_%hd136656%_ _%hd136590136651%_)
                                       (_%tl136658%_ _%tl136591136653%_))
                                  (_%K136589136648%_
                                   _%tl136658%_
                                   _%hd136656%_)))
                              (_%E136588136597%_)))
                        (if (eq? 'null _%$e136550%_)
                            (let ((__tmp137624
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target136530%_)))
                                  (__tmp137623 (_%k136532%_ _%vars136529%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp137624
                               __tmp137623
                               _%E136531%_))
                            (if (eq? 'vector _%$e136550%_)
                                (let ((_%$e136660%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp137629
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target136530%_)))
                                        (__tmp137625
                                         (let ((__tmp137627
                                                (cons (cons (cons _%$e136660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp137628
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e136244%_
                                    _%target136530%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp137628))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp137626
                                                (_%recur136437%_
                                                 _%body136547%_
                                                 _%vars136529%_
                                                 _%$e136660%_
                                                 _%E136531%_
                                                 _%k136532%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp137627
                                            __tmp137626))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp137629
                                     __tmp137625
                                     _%E136531%_)))
                                (if (eq? 'box _%$e136550%_)
                                    (let ((_%$e136662%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp137634
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target136530%_)))
                                            (__tmp137630
                                             (let ((__tmp137632
                                                    (cons (cons (cons _%$e136662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp137633
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e136244%_
                                        _%target136530%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp137633))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137631
                                                    (_%recur136437%_
                                                     _%body136547%_
                                                     _%vars136529%_
                                                     _%$e136662%_
                                                     _%E136531%_
                                                     _%k136532%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp137632
                                                __tmp137631))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp137634
                                         __tmp137630
                                         _%E136531%_)))
                                    (if (eq? 'datum _%$e136550%_)
                                        (let ((_%$e136664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp137640
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target136530%_)))
                                                (__tmp137635
                                                 (let ((__tmp137639
                                                        (cons (cons (cons _%$e136664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target136530%_))
                                  '()))
                      '()))
               (__tmp137636
                (let ((__tmp137638
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e136664%_ _%body136547%_)))
                      (__tmp137637 (_%k136532%_ _%vars136529%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp137638 __tmp137637 _%E136531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp137639
                                                    __tmp137636))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp137640
                                             __tmp137635
                                             _%E136531%_)))
                                        (_%BUG136436%_
                                         _%e136528%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e136533136540%_)
                                      (let ((_%hd136537136669%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136533136540%_)))
                                            (_%tl136538136671%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136533136540%_))))
                                        (let* ((_%tag136674%_
                                                _%hd136537136669%_)
                                               (_%body136676%_
                                                _%tl136538136671%_))
                                          (_%K136536136666%_
                                           _%body136676%_
                                           _%tag136674%_)))
                                      (_%E136535136544%_)))))
                             (_%splice-rlen136438%_
                              (lambda (_%e136490%_)
                                (let _%lp136492%_ ((_%e136494%_ _%e136490%_)
                                                   (_%n136495%_ '0))
                                  (let* ((_%e136496136503%_ _%e136494%_)
                                         (_%E136498136507%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e136496136503%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K136499136516%_
                                          (lambda (_%body136510%_
                                                   _%tag136511%_)
                                            (let ((_%$e136513%_ _%tag136511%_))
                                              (if (eq? 'splice _%$e136513%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx136242%_
                                                     _%where136429%_))
                                                  (if (eq? 'cons _%$e136513%_)
                                                      (_%lp136492%_
                                                       (cdr _%body136510%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n136495%_
                                                                '1)))
                                                      _%n136495%_))))))
                                    (if (pair? _%e136496136503%_)
                                        (let ((_%hd136500136519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136496136503%_)))
                                              (_%tl136501136521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136496136503%_))))
                                          (let* ((_%tag136524%_
                                                  _%hd136500136519%_)
                                                 (_%body136526%_
                                                  _%tl136501136521%_))
                                            (_%K136499136516%_
                                             _%body136526%_
                                             _%tag136524%_)))
                                        (_%E136498136507%_))))))
                             (_%splice-vars136439%_
                              (lambda (_%e136446%_)
                                (let _%recur136448%_ ((_%e136450%_ _%e136446%_)
                                                      (_%vars136451%_ '()))
                                  (let* ((_%e136452136459%_ _%e136450%_)
                                         (_%E136454136463%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e136452136459%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K136455136478%_
                                          (lambda (_%body136466%_
                                                   _%tag136467%_)
                                            (let ((_%$e136469%_ _%tag136467%_))
                                              (if (eq? 'var _%$e136469%_)
                                                  (cons _%body136466%_
                                                        _%vars136451%_)
                                                  (if (or (eq? 'cons
                                                               _%$e136469%_)
                                                          (eq? 'splice
                                                               _%$e136469%_))
                                                      (_%recur136448%_
                                                       (cdr _%body136466%_)
                                                       (_%recur136448%_
                                                        (car _%body136466%_)
                                                        _%vars136451%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e136469%_)
                      (eq? 'box _%$e136469%_))
                  (_%recur136448%_ _%body136466%_ _%vars136451%_)
                  _%vars136451%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e136452136459%_)
                                        (let ((_%hd136456136481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136452136459%_)))
                                              (_%tl136457136483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136452136459%_))))
                                          (let* ((_%tag136486%_
                                                  _%hd136456136481%_)
                                                 (_%body136488%_
                                                  _%tl136457136483%_))
                                            (_%K136455136478%_
                                             _%body136488%_
                                             _%tag136486%_)))
                                        (_%E136454136463%_))))))
                             (_%make-body136440%_
                              (lambda (_%vars136442%_)
                                (cons _%K136433%_
                                      (map (lambda (_%mvar136444%_)
                                             (let ((__tmp137641
                                                    (car _%mvar136444%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp137641
                                                _%vars136442%_
                                                _%BUG136436%_)))
                                           _%mvars136432%_)))))
                      (_%recur136437%_
                       _%hd136431%_
                       '()
                       _%target136430%_
                       _%E136434%_
                       _%make-body136440%_))))
                 (_%parse-clause136251%_
                  (lambda (_%hd136323%_ _%ids136324%_)
                    (let _%recur136326%_ ((_%e136328%_ _%hd136323%_)
                                          (_%vars136329%_ '())
                                          (_%depth136330%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e136328%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e136328%_))
                              (values '(any) _%vars136329%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e136328%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx136242%_
                                     _%hd136323%_))
                                  (if (let ((__tmp137642
                                             (lambda (_%id136335%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e136328%_
                                                  _%id136335%_)))))
                                        (declare (not safe))
                                        (__find __tmp137642 _%ids136324%_))
                                      (values (cons 'id _%e136328%_)
                                              _%vars136329%_)
                                      (if (let ((__tmp137643
                                                 (lambda (_%var136338%_)
                                                   (let ((__tmp137644
                                                          (car _%var136338%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e136328%_
                                                      __tmp137644)))))
                                            (declare (not safe))
                                            (__find __tmp137643
                                                    _%vars136329%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx136242%_
                                             _%e136328%_))
                                          (values (cons 'var _%e136328%_)
                                                  (cons (cons _%e136328%_
                                                              _%depth136330%_)
                                                        _%vars136329%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e136328%_))
                              (let* ((_%e136342136349%_ _%e136328%_)
                                     (_%E136344136353%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e136342136349%_))))
                                     (_%E136343136414%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e136342136349%_))
                                            (let ((_%e136345136357%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e136342136349%_))))
                                              (let ((_%hd136346136360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e136345136357%_)))
                                                    (_%tl136347136362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e136345136357%_))))
                                                (let* ((_%hd136365%_
                                                        _%hd136346136360%_)
                                                       (_%rest136367%_
                                                        _%tl136347136362%_)
                                                       (_%make-pair136382%_
                                                        (lambda (_%tag136369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd136370%_
                         _%tl136371%_)
                  (let* ((_%hd-depth136373%_
                          (if (eq? _%tag136369%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth136330%_ '1))
                              _%depth136330%_))
                         (_g137645_
                          (_%recur136326%_
                           _%hd136370%_
                           _%vars136329%_
                           _%hd-depth136373%_)))
                    (begin
                      (let ((_g137646_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g137645_)
                                   (##values-length _g137645_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g137646_ 2)))
                            (error "Context expects 2 values" _g137646_)))
                      (let ((_%hd136375%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g137645_ 0)))
                            (_%vars136376%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g137645_ 1))))
                        (let ((_g137647_
                               (_%recur136326%_
                                _%tl136371%_
                                _%vars136376%_
                                _%depth136330%_)))
                          (begin
                            (let ((_g137648_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137647_)
                                         (##values-length _g137647_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137648_ 2)))
                                  (error "Context expects 2 values"
                                         _g137648_)))
                            (let ((_%tl136378%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g137647_ 0)))
                                  (_%vars136379%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g137647_ 1))))
                              (values (cons _%tag136369%_
                                            (cons _%hd136375%_ _%tl136378%_))
                                      _%vars136379%_)))))))))
               (_%e136383136390%_ _%rest136367%_)
               (_%E136385136394%_
                (lambda ()
                  (_%make-pair136382%_ 'cons _%hd136365%_ _%rest136367%_)))
               (_%E136384136410%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e136383136390%_))
                      (let ((_%e136386136398%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e136383136390%_))))
                        (let ((_%hd136387136401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136386136398%_)))
                              (_%tl136388136403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136386136398%_))))
                          (let* ((_%rest-hd136406%_ _%hd136387136401%_)
                                 (_%rest-tl136408%_ _%tl136388136403%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd136406%_))
                                (_%make-pair136382%_
                                 'splice
                                 _%hd136365%_
                                 _%rest-tl136408%_)
                                (_%make-pair136382%_
                                 'cons
                                 _%hd136365%_
                                 _%rest136367%_)))))
                      (_%E136385136394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136384136410%_))))
                                            (_%E136344136353%_)))))
                                (_%E136343136414%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e136328%_))
                                  (values '(null) _%vars136329%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e136328%_))
                                      (let ((_g137649_
                                             (_%recur136326%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e136328%_)))
                                              _%vars136329%_
                                              _%depth136330%_)))
                                        (begin
                                          (let ((_g137650_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137649_)
                                                       (##values-length
                                                        _g137649_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137650_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137650_)))
                                          (let ((_%e136420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g137649_ 0)))
                                                (_%vars136421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g137649_
                                                    1))))
                                            (values (cons 'vector _%e136420%_)
                                                    _%vars136421%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e136328%_))
                                          (let ((_g137651_
                                                 (_%recur136326%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e136328%_)))
                                                  _%vars136329%_
                                                  _%depth136330%_)))
                                            (begin
                                              (let ((_g137652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g137651_)
                                                           (##values-length
                                                            _g137651_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g137652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g137652_)))
                                              (let ((_%e136424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g137651_
                                                        0)))
                                                    (_%vars136425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g137651_
                                                        1))))
                                                (values (cons 'box _%e136424%_)
                                                        _%vars136425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e136328%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e136328%_)))
                                                      _%vars136329%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx136242%_
                                                 _%e136328%_))))))))))))
          (let* ((_%e136252136265%_ _%stx136242%_)
                 (_%E136254136269%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e136252136265%_))))
                 (_%E136253136319%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e136252136265%_))
                        (let ((_%e136255136273%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e136252136265%_))))
                          (let ((_%hd136256136276%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136255136273%_)))
                                (_%tl136257136278%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136255136273%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136257136278%_))
                                (let ((_%e136258136281%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl136257136278%_))))
                                  (let ((_%hd136259136284%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136258136281%_)))
                                        (_%tl136260136286%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136258136281%_))))
                                    (let ((_%expr136289%_ _%hd136259136284%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl136260136286%_))
                                          (let ((_%e136261136291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl136260136286%_))))
                                            (let ((_%hd136262136294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e136261136291%_)))
                                                  (_%tl136263136296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e136261136291%_))))
                                              (let* ((_%ids136299%_
                                                      _%hd136262136294%_)
                                                     (_%clauses136301%_
                                                      _%tl136263136296%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids136299%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses136301%_))
                                                        (let* ((_%ids136306%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids136299%_)))
                       (_%clauses136308%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses136301%_)))
                       (_%clause-ids136310%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses136308%_)))
                       (_%E136312%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target136314%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first136316%_
                        (if (null? _%clauses136308%_)
                            _%E136312%_
                            (car _%clause-ids136310%_))))
                  (let ((__tmp137654
                         (let ((__tmp137655
                                (let ((__tmp137657
                                       (let ((__tmp137659
                                              (cons (cons (cons _%E136312%_
                                                                '())
                                                          (cons (let ((__tmp137661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target136314%_ '()))
                              (__tmp137660
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target136314%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp137661 __tmp137660))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp137658
                                              (_%generate-body136248%_
                                               (_%generate-bindings136247%_
                                                _%target136314%_
                                                _%ids136306%_
                                                _%clauses136308%_
                                                _%clause-ids136310%_
                                                _%E136312%_)
                                               (cons _%first136316%_
                                                     (cons _%expr136289%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp137659
                                          __tmp137658)))
                                      (__tmp137656
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx136242%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp137657
                                   __tmp137656))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp137655)))
                        (__tmp137653
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx136242%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp137654 __tmp137653)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx136242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx136242%_
                                                       _%ids136299%_))))))
                                          (_%E136254136269%_)))))
                                (_%E136254136269%_))))
                        (_%E136254136269%_)))))
            (_%E136253136319%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx136967%_)
        (let* ((_%identifier=?136969%_ 'free-identifier=?)
               (_%unwrap-e136971%_ 'syntax-e)
               (_%wrap-e136973%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx136967%_
           _%identifier=?136969%_
           _%unwrap-e136971%_
           _%wrap-e136973%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx136975%_ _%identifier=?136976%_)
        (let* ((_%unwrap-e136978%_ 'syntax-e) (_%wrap-e136980%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx136975%_
           _%identifier=?136976%_
           _%unwrap-e136978%_
           _%wrap-e136980%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx136982%_ _%identifier=?136983%_ _%unwrap-e136984%_)
        (let ((_%wrap-e136986%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx136982%_
           _%identifier=?136983%_
           _%unwrap-e136984%_
           _%wrap-e136986%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g137662_
        (let ((_g137663_ (let () (declare (not safe)) (##length _g137662_))))
          (cond ((let () (declare (not safe)) (##fx= _g137663_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g137662_))
                ((let () (declare (not safe)) (##fx= _g137663_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g137662_))
                ((let () (declare (not safe)) (##fx= _g137663_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g137662_))
                ((let () (declare (not safe)) (##fx= _g137663_ 4))
                 (apply gx#macro-expand-syntax-case__% _g137662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g137662_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx136239%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx136239%_))
            (let ((__tmp137664
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx136239%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp137664 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd136197%_ . _%rest136198%_)
        (let ((_%len136200%_ (length _%hd136197%_)))
          (let _%lp136202%_ ((_%rest136204%_ _%rest136198%_))
            (let* ((_%rest136205136213%_ _%rest136204%_)
                   (_%else136207136221%_ (lambda () '#!void))
                   (_%K136209136227%_
                    (lambda (_%rest136224%_ _%hd136225%_)
                      (if (let ((__tmp137665 (length _%hd136225%_)))
                            (declare (not safe))
                            (##fx= _%len136200%_ __tmp137665))
                          (_%lp136202%_ _%rest136224%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd136225%_))))))
              (if (pair? _%rest136205136213%_)
                  (let ((_%hd136210136230%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest136205136213%_)))
                        (_%tl136211136232%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest136205136213%_))))
                    (let* ((_%hd136235%_ _%hd136210136230%_)
                           (_%rest136237%_ _%tl136211136232%_))
                      (_%K136209136227%_ _%rest136237%_ _%hd136235%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx136147%_ _%n136148%_)
        (let _%lp136150%_ ((_%rest136153%_ _%stx136147%_) (_%r136155%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest136153%_))
              (let* ((_%g136157136164%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest136153%_)))
                     (_%E136159136168%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g136157136164%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K136160136175%_
                      (lambda (_%rest136171%_ _%hd136172%_)
                        (_%lp136150%_
                         _%rest136171%_
                         (cons _%hd136172%_ _%r136155%_)))))
                (if (pair? _%g136157136164%_)
                    (let ((_%hd136161136178%_
                           (let ()
                             (declare (not safe))
                             (##car _%g136157136164%_)))
                          (_%tl136162136180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g136157136164%_))))
                      (let* ((_%hd136183%_ _%hd136161136178%_)
                             (_%rest136185%_ _%tl136162136180%_))
                        (_%K136160136175%_ _%rest136185%_ _%hd136183%_)))
                    (_%E136159136168%_)))
              (let _%lp136187%_ ((_%n136189%_ _%n136148%_)
                                 (_%l136190%_ _%r136155%_)
                                 (_%r136192%_ _%rest136153%_))
                (if (null? _%l136190%_)
                    (values _%l136190%_ _%r136192%_)
                    (if (fxpositive? _%n136189%_)
                        (_%lp136187%_
                         (let () (declare (not safe)) (##fx- _%n136189%_ '1))
                         (cdr _%l136190%_)
                         (cons (car _%l136190%_) _%r136192%_))
                        (values (reverse! _%l136190%_) _%r136192%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx136097%_ _%n136098%_)
        (let _%lp136100%_ ((_%rest136103%_ _%stx136097%_) (_%r136105%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest136103%_))
              (let* ((_%g136107136114%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest136103%_)))
                     (_%E136109136118%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g136107136114%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K136110136125%_
                      (lambda (_%rest136121%_ _%hd136122%_)
                        (_%lp136100%_
                         _%rest136121%_
                         (cons _%hd136122%_ _%r136105%_)))))
                (if (pair? _%g136107136114%_)
                    (let ((_%hd136111136128%_
                           (let ()
                             (declare (not safe))
                             (##car _%g136107136114%_)))
                          (_%tl136112136130%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g136107136114%_))))
                      (let* ((_%hd136133%_ _%hd136111136128%_)
                             (_%rest136135%_ _%tl136112136130%_))
                        (_%K136110136125%_ _%rest136135%_ _%hd136133%_)))
                    (_%E136109136118%_)))
              (let _%lp136137%_ ((_%n136139%_ _%n136098%_)
                                 (_%l136140%_ _%r136105%_)
                                 (_%r136142%_ _%rest136103%_))
                (if (null? _%l136140%_)
                    (vector _%l136140%_ _%r136142%_)
                    (if (fxpositive? _%n136139%_)
                        (_%lp136137%_
                         (let () (declare (not safe)) (##fx- _%n136139%_ '1))
                         (cdr _%l136140%_)
                         (cons (car _%l136140%_) _%r136142%_))
                        (vector (reverse! _%l136140%_) _%r136142%_))))))))))
