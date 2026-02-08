(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770513297)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186596 (list gx#expander::t))
            (__tmp186595 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186596
         '(id depth)
         __tmp186595
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args186592%_
        (apply make-instance gx#syntax-pattern::t _%$args186592%_)))
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
      (lambda (_%self186578%_ _%stx186579%_)
        (let ((_%self186582%_ _%self186578%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx186579%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx186045%_)
        (letrec ((_%generate186047%_
                  (lambda (_%e186287%_)
                    (letrec ((_%BUG186289%_
                              (lambda (_%q186454%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx186045%_
                                         _%e186287%_
                                         _%q186454%_))))
                             (_%local-pattern-e186290%_
                              (lambda (_%pat186452%_)
                                (let ((__tmp186597
                                       (##structure-ref
                                        _%pat186452%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186597))))
                             (_%getvar186291%_
                              (lambda (_%q186449%_ _%vars186450%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q186449%_
                                   _%vars186450%_
                                   _%BUG186289%_))))
                             (_%getarg186292%_
                              (lambda (_%arg186415%_ _%vars186416%_)
                                (let* ((_%arg186417186424%_ _%arg186415%_)
                                       (_%E186419186428%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg186417186424%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K186420186437%_
                                        (lambda (_%e186431%_ _%tag186432%_)
                                          (let ((_%$e186434%_ _%tag186432%_))
                                            (if (eq? 'ref _%$e186434%_)
                                                (_%getvar186291%_
                                                 _%e186431%_
                                                 _%vars186416%_)
                                                (if (eq? 'pattern _%$e186434%_)
                                                    (_%local-pattern-e186290%_
                                                     _%e186431%_)
                                                    (_%BUG186289%_
                                                     _%arg186415%_)))))))
                                  (if (pair? _%arg186417186424%_)
                                      (let ((_%hd186421186440%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg186417186424%_)))
                                            (_%tl186422186442%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg186417186424%_))))
                                        (let* ((_%tag186445%_
                                                _%hd186421186440%_)
                                               (_%e186447%_
                                                _%tl186422186442%_))
                                          (_%K186420186437%_
                                           _%e186447%_
                                           _%tag186445%_)))
                                      (_%E186419186428%_))))))
                      (let _%recur186294%_ ((_%e186296%_ _%e186287%_)
                                            (_%vars186297%_ '()))
                        (let* ((_%e186298186305%_ _%e186296%_)
                               (_%E186300186309%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e186298186305%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K186301186403%_
                                (lambda (_%body186312%_ _%tag186313%_)
                                  (let ((_%$e186315%_ _%tag186313%_))
                                    (if (eq? 'datum _%$e186315%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body186312%_))
                                        (if (eq? 'term _%$e186315%_)
                                            (let ((_%id186318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body186312%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id186318%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks186321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id186318%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks186321%_)
                                                        (let ((__tmp186598
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body186312%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186598))
                (let ((__tmp186600
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body186312%_)))
                      (__tmp186599
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body186312%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186600
                   __tmp186599
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id186318%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body186312%_))
                                                      (_%BUG186289%_
                                                       _%e186296%_))))
                                            (if (eq? 'pattern _%$e186315%_)
                                                (_%local-pattern-e186290%_
                                                 _%body186312%_)
                                                (if (eq? 'ref _%$e186315%_)
                                                    (_%getvar186291%_
                                                     _%body186312%_
                                                     _%vars186297%_)
                                                    (if (eq? 'cons
                                                             _%$e186315%_)
                                                        (let ((__tmp186602
                                                               (_%recur186294%_
                                                                (car _%body186312%_)
                                                                _%vars186297%_))
                                                              (__tmp186601
                                                               (_%recur186294%_
                                                                (cdr _%body186312%_)
                                                                _%vars186297%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp186602
                                                           __tmp186601))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e186315%_)
                    (let ((__tmp186603
                           (_%recur186294%_ _%body186312%_ _%vars186297%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186603))
                    (if (eq? 'box _%$e186315%_)
                        (let ((__tmp186604
                               (_%recur186294%_
                                _%body186312%_
                                _%vars186297%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186604))
                        (if (eq? 'splice _%$e186315%_)
                            (let* ((_%body186324186335%_ _%body186312%_)
                                   (_%E186326186339%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body186324186335%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K186327186377%_
                                    (lambda (_%args186342%_
                                             _%iv186343%_
                                             _%hd186344%_
                                             _%depth186345%_)
                                      (let* ((_%targets186351%_
                                              (map (lambda (_%g186346186348%_)
                                                     (_%getarg186292%_
                                                      _%g186346186348%_
                                                      _%vars186297%_))
                                                   _%args186342%_))
                                             (_%fold-in186353%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args186342%_)))
                                             (_%fold-out186355%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args186357%_
                                              (let ((__tmp186605
                                                     (cons _%fold-out186355%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp186605
                                                 _%fold-in186353%_)))
                                             (_%lambda-body186374%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth186345%_ '1))
                                                  (let ((_%r-args186365%_
                                                         (map (lambda (_%arg186359%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg186359%_)))
                      _%args186342%_))
                (_%r-vars186366%_
                 (let ((__tmp186606
                        (lambda (_%arg186361%_ _%var186362%_ _%r186363%_)
                          (cons (cons (cdr _%arg186361%_) _%var186362%_)
                                _%r186363%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp186606
                    _%vars186297%_
                    _%args186342%_
                    _%fold-in186353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur186294%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth186345%_ '1))
                         (cons _%hd186344%_
                               (cons (cons 'var _%fold-out186355%_)
                                     _%r-args186365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars186366%_))
                                                  (let* ((_%hd-vars186372%_
                                                          (let ((__tmp186607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg186368%_ _%var186369%_ _%r186370%_)
                           (cons (cons (cdr _%arg186368%_) _%var186369%_)
                                 _%r186370%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp186607
                     _%vars186297%_
                     _%args186342%_
                     _%fold-in186353%_)))
                 (__tmp186608
                  (_%recur186294%_ _%hd186344%_ _%hd-vars186372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186608
                                                     _%fold-out186355%_)))))
                                        (let ((__tmp186612
                                               (if (let ((__tmp186613
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets186351%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp186613 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets186351%_))
                                                   '#!void))
                                              (__tmp186609
                                               (let ((__tmp186611
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args186357%_
                                                         _%lambda-body186374%_)))
                                                     (__tmp186610
                                                      (_%recur186294%_
                                                       _%iv186343%_
                                                       _%vars186297%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186611
                                                  __tmp186610
                                                  _%targets186351%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186612
                                           __tmp186609))))))
                              (if (pair? _%body186324186335%_)
                                  (let ((_%hd186328186380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body186324186335%_)))
                                        (_%tl186329186382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body186324186335%_))))
                                    (let ((_%depth186385%_ _%hd186328186380%_))
                                      (if (pair? _%tl186329186382%_)
                                          (let ((_%hd186330186387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl186329186382%_)))
                                                (_%tl186331186389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl186329186382%_))))
                                            (let ((_%hd186392%_
                                                   _%hd186330186387%_))
                                              (if (pair? _%tl186331186389%_)
                                                  (let ((_%hd186332186394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl186331186389%_)))
                                                        (_%tl186333186396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl186331186389%_))))
                                                    (let* ((_%iv186399%_
                                                            _%hd186332186394%_)
                                                           (_%args186401%_
                                                            _%tl186333186396%_))
                                                      (_%K186327186377%_
                                                       _%args186401%_
                                                       _%iv186399%_
                                                       _%hd186392%_
                                                       _%depth186385%_)))
                                                  (_%E186326186339%_))))
                                          (_%E186326186339%_))))
                                  (_%E186326186339%_)))
                            (if (eq? 'var _%$e186315%_)
                                _%body186312%_
                                (_%BUG186289%_ _%e186296%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e186298186305%_)
                              (let ((_%hd186302186406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186298186305%_)))
                                    (_%tl186303186408%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186298186305%_))))
                                (let* ((_%tag186411%_ _%hd186302186406%_)
                                       (_%body186413%_ _%tl186303186408%_))
                                  (_%K186301186403%_
                                   _%body186413%_
                                   _%tag186411%_)))
                              (_%E186300186309%_)))))))
                 (_%parse186048%_
                  (lambda (_%e186089%_)
                    (letrec ((_%make-cons186091%_
                              (lambda (_%hd186279%_ _%tl186280%_)
                                (let ((_g186614_ _%hd186279%_)
                                      (_g186616_ _%tl186280%_))
                                  (begin
                                    (let ((_g186615_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186614_)
                                                 (##values-length _g186614_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186615_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186615_)))
                                    (let ((_g186617_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186616_)
                                                 (##values-length _g186616_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186617_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186617_)))
                                    (let ((_%hd-e186282%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186614_ 0)))
                                          (_%hd-vars186283%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186614_ 1))))
                                      (let ((_%tl-e186284%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186616_ 0)))
                                            (_%tl-vars186285%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186616_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e186282%_
                                                            _%tl-e186284%_))
                                                (append _%hd-vars186283%_
                                                        _%tl-vars186285%_))))))))
                             (_%make-splice186092%_
                              (lambda (_%where186215%_
                                       _%depth186216%_
                                       _%hd186217%_
                                       _%tl186218%_)
                                (let ((_g186618_ _%hd186217%_)
                                      (_g186620_ _%tl186218%_))
                                  (begin
                                    (let ((_g186619_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186618_)
                                                 (##values-length _g186618_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186619_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186619_)))
                                    (let ((_g186621_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186620_)
                                                 (##values-length _g186620_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186621_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186621_)))
                                    (let ((_%hd-e186220%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186618_ 0)))
                                          (_%hd-vars186221%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186618_ 1))))
                                      (let ((_%tl-e186222%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186620_ 0)))
                                            (_%tl-vars186223%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g186620_ 1))))
                                        (let _%lp186225%_ ((_%rest186227%_
                                                            _%hd-vars186221%_)
                                                           (_%targets186228%_
                                                            '())
                                                           (_%vars186229%_
                                                            _%tl-vars186223%_))
                                          (let* ((_%rest186230186240%_
                                                  _%rest186227%_)
                                                 (_%else186232186248%_
                                                  (lambda ()
                                                    (if (null? _%targets186228%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx186045%_
                                                           _%where186215%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth186216%_
                                    (cons _%hd-e186220%_
                                          (cons _%tl-e186222%_
                                                _%targets186228%_))))
                        _%vars186229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K186234186260%_
                                                  (lambda (_%rest186251%_
                                                           _%hd-pat186252%_
                                                           _%hd-depth*186253%_)
                                                    (let ((_%hd-depth186255%_
                                                           (fx- _%hd-depth*186253%_
                                                                _%depth186216%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth186255%_))
                                                          (_%lp186225%_
                                                           _%rest186251%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat186252%_)
                         _%targets186228%_)
                   (cons (cons _%hd-depth186255%_ _%hd-pat186252%_)
                         _%vars186229%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth186255%_))
                      (_%lp186225%_
                       _%rest186251%_
                       (cons (cons 'pattern _%hd-pat186252%_)
                             _%targets186228%_)
                       _%vars186229%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx186045%_
                         _%where186215%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest186230186240%_)
                                                (let ((_%hd186235186263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest186230186240%_)))
                                                      (_%tl186236186265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest186230186240%_))))
                                                  (if (pair? _%hd186235186263%_)
                                                      (let ((_%hd186237186268%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd186235186263%_)))
                    (_%tl186238186270%_
                     (let () (declare (not safe)) (##cdr _%hd186235186263%_))))
                (let* ((_%hd-depth*186273%_ _%hd186237186268%_)
                       (_%hd-pat186275%_ _%tl186238186270%_)
                       (_%rest186277%_ _%tl186236186265%_))
                  (_%K186234186260%_
                   _%rest186277%_
                   _%hd-pat186275%_
                   _%hd-depth*186273%_)))
              (_%else186232186248%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else186232186248%_))))))))))
                             (_%recur186093%_
                              (lambda (_%e186098%_ _%is-e?186099%_)
                                (if (_%is-e?186099%_ _%e186098%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx186045%_))
                                    (if (gx#syntax-local-pattern? _%e186098%_)
                                        (let* ((_%pat186103%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e186098%_)))
                                               (_%depth186105%_
                                                (##structure-ref
                                                 _%pat186103%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth186105%_)
                                              (values (cons 'ref _%pat186103%_)
                                                      (cons (cons _%depth186105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat186103%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat186103%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e186098%_))
                                            (values (cons 'term _%e186098%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e186098%_))
                                                (let* ((_%e186109186116%_
                                                        _%e186098%_)
                                                       (_%E186111186120%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e186109186116%_))))
                                                       (_%E186110186202%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e186109186116%_))
                      (let ((_%e186112186124%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e186109186116%_))))
                        (let ((_%hd186113186127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186112186124%_)))
                              (_%tl186114186129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186112186124%_))))
                          (let* ((_%hd186132%_ _%hd186113186127%_)
                                 (_%rest186134%_ _%tl186114186129%_))
                            (if (_%is-e?186099%_ _%hd186132%_)
                                (let* ((_%e186135186142%_ _%rest186134%_)
                                       (_%E186137186146%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx186045%_
                                             _%e186098%_))))
                                       (_%E186136186160%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e186135186142%_))
                                              (let ((_%e186138186150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e186135186142%_))))
                                                (let ((_%hd186139186153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186138186150%_)))
                                                      (_%tl186140186155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186138186150%_))))
                                                  (let ((_%rest186158%_
                                                         _%hd186139186153%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186140186155%_))
                                                        (_%recur186093%_
                                                         _%rest186158%_
                                                         false)
                                                        (_%E186137186146%_)))))
                                              (_%E186137186146%_)))))
                                  (_%E186136186160%_))
                                (let _%lp186164%_ ((_%rest186166%_
                                                    _%rest186134%_)
                                                   (_%depth186167%_ '0))
                                  (let* ((_%e186168186175%_ _%rest186166%_)
                                         (_%E186170186179%_
                                          (lambda ()
                                            (if (fxpositive? _%depth186167%_)
                                                (_%make-splice186092%_
                                                 _%e186098%_
                                                 _%depth186167%_
                                                 (_%recur186093%_
                                                  _%hd186132%_
                                                  _%is-e?186099%_)
                                                 (_%recur186093%_
                                                  _%rest186166%_
                                                  _%is-e?186099%_))
                                                (_%make-cons186091%_
                                                 (_%recur186093%_
                                                  _%hd186132%_
                                                  _%is-e?186099%_)
                                                 (_%recur186093%_
                                                  _%rest186166%_
                                                  _%is-e?186099%_)))))
                                         (_%E186169186198%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e186168186175%_))
                                                (let ((_%e186171186183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e186168186175%_))))
                                                  (let ((_%hd186172186186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e186171186183%_)))
                                                        (_%tl186173186188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e186171186183%_))))
                                                    (let* ((_%rest-hd186191%_
                                                            _%hd186172186186%_)
                                                           (_%rest-tl186193%_
                                                            _%tl186173186188%_))
                                                      (if (_%is-e?186099%_
                                                           _%rest-hd186191%_)
                                                          (_%lp186164%_
                                                           _%rest-tl186193%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth186167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth186167%_)
                      (_%make-splice186092%_
                       _%e186098%_
                       _%depth186167%_
                       (_%recur186093%_ _%hd186132%_ _%is-e?186099%_)
                       (_%recur186093%_ _%rest186166%_ _%is-e?186099%_))
                      (_%make-cons186091%_
                       (_%recur186093%_ _%hd186132%_ _%is-e?186099%_)
                       (_%recur186093%_ _%rest186166%_ _%is-e?186099%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E186170186179%_)))))
                                    (_%E186169186198%_)))))))
                      (_%E186111186120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186110186202%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e186098%_))
                                                    (let ((_g186622_
                                                           (_%recur186093%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e186098%_)))
                    _%is-e?186099%_)))
              (begin
                (let ((_g186623_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186622_)
                             (##values-length _g186622_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186623_ 2)))
                      (error "Context expects 2 values" _g186623_)))
                (let ((_%e186207%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g186622_ 0)))
                      (_%vars186208%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g186622_ 1))))
                  (values (cons 'vector _%e186207%_) _%vars186208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e186098%_))
                                                        (let ((_g186624_
                                                               (_%recur186093%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e186098%_)))
                        _%is-e?186099%_)))
                  (begin
                    (let ((_g186625_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186624_)
                                 (##values-length _g186624_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186625_ 2)))
                          (error "Context expects 2 values" _g186625_)))
                    (let ((_%e186211%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g186624_ 0)))
                          (_%vars186212%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g186624_ 1))))
                      (values (cons 'box _%e186211%_) _%vars186212%_))))
                (values (cons 'datum _%e186098%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186626_
                             (_%recur186093%_ _%e186089%_ gx#ellipsis?)))
                        (begin
                          (let ((_g186627_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186626_)
                                       (##values-length _g186626_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186627_ 2)))
                                (error "Context expects 2 values" _g186627_)))
                          (let ((_%tree186095%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g186626_ 0)))
                                (_%vars186096%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g186626_ 1))))
                            (if (null? _%vars186096%_)
                                _%tree186095%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx186045%_
                                   _%vars186096%_))))))))))
          (let* ((_%e186049186059%_ _%stx186045%_)
                 (_%E186051186063%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx186045%_))))
                 (_%E186050186085%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e186049186059%_))
                        (let ((_%e186052186067%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e186049186059%_))))
                          (let ((_%hd186053186070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186052186067%_)))
                                (_%tl186054186072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186052186067%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl186054186072%_))
                                (let ((_%e186055186075%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl186054186072%_))))
                                  (let ((_%hd186056186078%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186055186075%_)))
                                        (_%tl186057186080%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186055186075%_))))
                                    (let ((_%form186083%_ _%hd186056186078%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl186057186080%_))
                                          (let ((__tmp186629
                                                 (_%generate186047%_
                                                  (_%parse186048%_
                                                   _%form186083%_)))
                                                (__tmp186628
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx186045%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp186629
                                             __tmp186628))
                                          (_%E186051186063%_)))))
                                (_%E186051186063%_))))
                        (_%E186051186063%_)))))
            (_%E186050186085%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx185294%_
               _%identifier=?185295%_
               _%unwrap-e185296%_
               _%wrap-e185297%_)
        (letrec ((_%generate-bindings185299%_
                  (lambda (_%target185909%_
                           _%ids185910%_
                           _%clauses185911%_
                           _%clause-ids185912%_
                           _%E185913%_)
                    (letrec ((_%generate1185915%_
                              (lambda (_%clause186012%_
                                       _%clause-id186013%_
                                       _%E186014%_)
                                (cons (cons _%clause-id186013%_ '())
                                      (cons (let ((__tmp186631
                                                   (cons _%target185909%_ '()))
                                                  (__tmp186630
                                                   (_%generate-clause185301%_
                                                    _%target185909%_
                                                    _%ids185910%_
                                                    _%clause186012%_
                                                    _%E186014%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp186631
                                               __tmp186630))
                                            '())))))
                      (let _%lp185917%_ ((_%rest185919%_ _%clauses185911%_)
                                         (_%rest-ids185920%_
                                          _%clause-ids185912%_)
                                         (_%bindings185921%_ '()))
                        (let* ((_%rest185922185930%_ _%rest185919%_)
                               (_%else185924185938%_
                                (lambda () _%bindings185921%_))
                               (_%K185926186000%_
                                (lambda (_%rest185941%_ _%clause185942%_)
                                  (let* ((_%rest-ids185943185950%_
                                          _%rest-ids185920%_)
                                         (_%E185945185954%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids185943185950%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K185946185988%_
                                          (lambda (_%rest-ids185957%_
                                                   _%clause-id185958%_)
                                            (let* ((_%rest-ids185959185967%_
                                                    _%rest-ids185957%_)
                                                   (_%else185961185975%_
                                                    (lambda ()
                                                      (cons (_%generate1185915%_
                                                             _%clause185942%_
                                                             _%clause-id185958%_
                                                             _%E185913%_)
                                                            _%bindings185921%_)))
                                                   (_%K185963185980%_
                                                    (lambda (_%next-clause-id185978%_)
                                                      (_%lp185917%_
                                                       _%rest185941%_
                                                       _%rest-ids185957%_
                                                       (cons (_%generate1185915%_
                                                              _%clause185942%_
                                                              _%clause-id185958%_
                                                              _%next-clause-id185978%_)
                                                             _%bindings185921%_)))))
                                              (if (pair? _%rest-ids185959185967%_)
                                                  (let* ((_%hd185964185983%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids185959185967%_)))
                                                         (_%next-clause-id185986%_
                                                          _%hd185964185983%_))
                                                    (_%K185963185980%_
                                                     _%next-clause-id185986%_))
                                                  (_%else185961185975%_))))))
                                    (if (pair? _%rest-ids185943185950%_)
                                        (let ((_%hd185947185991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids185943185950%_)))
                                              (_%tl185948185993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids185943185950%_))))
                                          (let* ((_%clause-id185996%_
                                                  _%hd185947185991%_)
                                                 (_%rest-ids185998%_
                                                  _%tl185948185993%_))
                                            (_%K185946185988%_
                                             _%rest-ids185998%_
                                             _%clause-id185996%_)))
                                        (_%E185945185954%_))))))
                          (if (pair? _%rest185922185930%_)
                              (let ((_%hd185927186003%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest185922185930%_)))
                                    (_%tl185928186005%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest185922185930%_))))
                                (let* ((_%clause186008%_ _%hd185927186003%_)
                                       (_%rest186010%_ _%tl185928186005%_))
                                  (_%K185926186000%_
                                   _%rest186010%_
                                   _%clause186008%_)))
                              (_%else185924185938%_)))))))
                 (_%generate-body185300%_
                  (lambda (_%bindings185869%_ _%body185870%_)
                    (let _%recur185872%_ ((_%rest185874%_ _%bindings185869%_))
                      (let* ((_%rest185875185883%_ _%rest185874%_)
                             (_%else185877185891%_ (lambda () _%body185870%_))
                             (_%K185879185897%_
                              (lambda (_%rest185894%_ _%hd185895%_)
                                (let ((__tmp186633 (cons _%hd185895%_ '()))
                                      (__tmp186632
                                       (_%recur185872%_ _%rest185894%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186633
                                   __tmp186632)))))
                        (if (pair? _%rest185875185883%_)
                            (let ((_%hd185880185900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest185875185883%_)))
                                  (_%tl185881185902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest185875185883%_))))
                              (let* ((_%hd185905%_ _%hd185880185900%_)
                                     (_%rest185907%_ _%tl185881185902%_))
                                (_%K185879185897%_
                                 _%rest185907%_
                                 _%hd185905%_)))
                            (_%else185877185891%_))))))
                 (_%generate-clause185301%_
                  (lambda (_%target185732%_
                           _%ids185733%_
                           _%clause185734%_
                           _%E185735%_)
                    (letrec ((_%generate1185737%_
                              (lambda (_%hd185824%_
                                       _%fender185825%_
                                       _%body185826%_)
                                (let ((_g186634_
                                       (_%parse-clause185303%_
                                        _%hd185824%_
                                        _%ids185733%_)))
                                  (begin
                                    (let ((_g186635_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186634_)
                                                 (##values-length _g186634_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186635_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186635_)))
                                    (let ((_%e185828%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186634_ 0)))
                                          (_%mvars185829%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g186634_ 1))))
                                      (let* ((_%pvars185831%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars185829%_))))
                                             (_%E185833%_
                                              (cons _%E185735%_
                                                    (cons _%target185732%_
                                                          '())))
                                             (_%K185866%_
                                              (let ((__tmp186636
                                                     (let ((__tmp186638
                                                            (map (lambda (_%mvar185835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar185836%_)
                           (let* ((_%mvar185837185844%_ _%mvar185835%_)
                                  (_%E185839185848%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar185837185844%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K185840185854%_
                                   (lambda (_%depth185851%_ _%id185852%_)
                                     (cons _%id185852%_
                                           (cons (let ((__tmp186640
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id185852%_)))
                                                       (__tmp186639
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar185836%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp186640
                                                    __tmp186639
                                                    _%depth185851%_))
                                                 '())))))
                             (if (pair? _%mvar185837185844%_)
                                 (let ((_%hd185841185857%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar185837185844%_)))
                                       (_%tl185842185859%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar185837185844%_))))
                                   (let* ((_%id185862%_ _%hd185841185857%_)
                                          (_%depth185864%_ _%tl185842185859%_))
                                     (_%K185840185854%_
                                      _%depth185864%_
                                      _%id185862%_)))
                                 (_%E185839185848%_))))
                         _%mvars185829%_
                         _%pvars185831%_))
                   (__tmp186637
                    (if (eq? _%fender185825%_ '#t)
                        _%body185826%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender185825%_
                           _%body185826%_
                           _%E185833%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186638 __tmp186637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars185831%_
                                                 __tmp186636))))
                                        (_%generate-match185302%_
                                         _%hd185824%_
                                         _%target185732%_
                                         _%e185828%_
                                         _%mvars185829%_
                                         _%K185866%_
                                         _%E185833%_))))))))
                      (let* ((_%e185738185758%_ _%clause185734%_)
                             (_%E185747185762%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e185738185758%_))))
                             (_%E185740185796%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e185738185758%_))
                                    (let ((_%e185748185766%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e185738185758%_))))
                                      (let ((_%hd185749185769%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185748185766%_)))
                                            (_%tl185750185771%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185748185766%_))))
                                        (let ((_%hd185774%_
                                               _%hd185749185769%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185750185771%_))
                                              (let ((_%e185751185776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl185750185771%_))))
                                                (let ((_%hd185752185779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185751185776%_)))
                                                      (_%tl185753185781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185751185776%_))))
                                                  (let ((_%fender185784%_
                                                         _%hd185752185779%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl185753185781%_))
                                                        (let ((_%e185754185786%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl185753185781%_))))
                  (let ((_%hd185755185789%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185754185786%_)))
                        (_%tl185756185791%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185754185786%_))))
                    (let ((_%body185794%_ _%hd185755185789%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl185756185791%_))
                          (_%generate1185737%_
                           _%hd185774%_
                           _%fender185784%_
                           _%body185794%_)
                          (_%E185747185762%_)))))
                (_%E185747185762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E185747185762%_)))))
                                    (_%E185747185762%_))))
                             (_%E185739185820%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e185738185758%_))
                                    (let ((_%e185741185800%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e185738185758%_))))
                                      (let ((_%hd185742185803%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185741185800%_)))
                                            (_%tl185743185805%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185741185800%_))))
                                        (let ((_%hd185808%_
                                               _%hd185742185803%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185743185805%_))
                                              (let ((_%e185744185810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl185743185805%_))))
                                                (let ((_%hd185745185813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185744185810%_)))
                                                      (_%tl185746185815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185744185810%_))))
                                                  (let ((_%body185818%_
                                                         _%hd185745185813%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185746185815%_))
                                                        (_%generate1185737%_
                                                         _%hd185808%_
                                                         '#t
                                                         _%body185818%_)
                                                        (_%E185740185796%_)))))
                                              (_%E185740185796%_)))))
                                    (_%E185740185796%_)))))
                        (_%E185739185820%_)))))
                 (_%generate-match185302%_
                  (lambda (_%where185481%_
                           _%target185482%_
                           _%hd185483%_
                           _%mvars185484%_
                           _%K185485%_
                           _%E185486%_)
                    (letrec ((_%BUG185488%_
                              (lambda (_%q185730%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx185294%_
                                         _%hd185483%_
                                         _%q185730%_))))
                             (_%recur185489%_
                              (lambda (_%e185580%_
                                       _%vars185581%_
                                       _%target185582%_
                                       _%E185583%_
                                       _%k185584%_)
                                (let* ((_%e185585185592%_ _%e185580%_)
                                       (_%E185587185596%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e185585185592%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K185588185718%_
                                        (lambda (_%body185599%_ _%tag185600%_)
                                          (let ((_%$e185602%_ _%tag185600%_))
                                            (if (eq? 'any _%$e185602%_)
                                                (_%k185584%_ _%vars185581%_)
                                                (if (eq? 'id _%$e185602%_)
                                                    (let ((__tmp186645
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target185582%_)))
                                                          (__tmp186641
                                                           (let ((__tmp186643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186644
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e185297%_
                                    _%body185599%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?185295%_
                             __tmp186644
                             _%target185582%_)))
                         (__tmp186642 (_%k185584%_ _%vars185581%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186643 __tmp186642 _%E185583%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186645 __tmp186641 _%E185583%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e185602%_)
                                                        (_%k185584%_
                                                         (cons (cons _%body185599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target185582%_)
                       _%vars185581%_))
                (if (eq? 'cons _%$e185602%_)
                    (let ((_%$e185605%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd185606%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl185607%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186651
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target185582%_)))
                            (__tmp186646
                             (let ((__tmp186650
                                    (cons (cons (cons _%$e185605%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e185296%_
                                                         _%target185582%_))
                                                      '()))
                                          '()))
                                   (__tmp186647
                                    (let ((__tmp186649
                                           (cons (cons (cons _%$hd185606%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e185605%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl185607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e185605%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp186648
                                           (let* ((_%body185608185615%_
                                                   _%body185599%_)
                                                  (_%E185610185619%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body185608185615%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K185611185627%_
                                                   (lambda (_%tl185622%_
                                                            _%hd185623%_)
                                                     (_%recur185489%_
                                                      _%hd185623%_
                                                      _%vars185581%_
                                                      _%$hd185606%_
                                                      _%E185583%_
                                                      (lambda (_%vars185625%_)
                                                        (_%recur185489%_
                                                         _%tl185622%_
                                                         _%vars185625%_
                                                         _%$tl185607%_
                                                         _%E185583%_
                                                         _%k185584%_))))))
                                             (if (pair? _%body185608185615%_)
                                                 (let ((_%hd185612185630%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body185608185615%_)))
                                                       (_%tl185613185632%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body185608185615%_))))
                                                   (let* ((_%hd185635%_
                                                           _%hd185612185630%_)
                                                          (_%tl185637%_
                                                           _%tl185613185632%_))
                                                     (_%K185611185627%_
                                                      _%tl185637%_
                                                      _%hd185635%_)))
                                                 (_%E185610185619%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186649
                                       __tmp186648))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186650
                                __tmp186647))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp186651
                         __tmp186646
                         _%E185583%_)))
                    (if (eq? 'splice _%$e185602%_)
                        (let* ((_%body185638185645%_ _%body185599%_)
                               (_%E185640185649%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body185638185645%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K185641185700%_
                                (lambda (_%tl185652%_ _%hd185653%_)
                                  (let* ((_%rlen185655%_
                                          (_%splice-rlen185490%_ _%tl185652%_))
                                         (_%$target185657%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd185659%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl185661%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp185663%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e185665%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd185667%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl185669%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars185671%_
                                          (_%splice-vars185491%_ _%hd185653%_))
                                         (_%lvars185673%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars185671%_)))
                                         (_%tlvars185675%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars185671%_)))
                                         (_%linit185679%_
                                          (map (lambda (_%var185677%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars185673%_)))
                                    (letrec ((_%make-loop185682%_
                                              (lambda (_%vars185686%_)
                                                (let ((__tmp186653
                                                       (cons (cons (cons _%$lp185663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp186666
                                        (cons _%$hd185659%_ _%lvars185673%_))
                                       (__tmp186654
                                        (let ((__tmp186665
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd185659%_)))
                                              (__tmp186659
                                               (let ((__tmp186664
                                                      (cons (cons (cons _%$lp-e185665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e185296%_
                                   _%$hd185659%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp186660
                                                      (let ((__tmp186663
                                                             (cons (cons (cons _%$lp-hd185667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e185665%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl185669%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e185665%_))
                                             '()))
                                 '())))
                    (__tmp186661
                     (_%recur185489%_
                      _%hd185653%_
                      '()
                      _%$lp-hd185667%_
                      _%E185583%_
                      (lambda (_%hdvars185688%_)
                        (cons _%$lp185663%_
                              (cons _%$lp-tl185669%_
                                    (map (lambda (_%svar185690%_
                                                  _%lvar185691%_)
                                           (let ((__tmp186662
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar185690%_
                                                     _%hdvars185688%_
                                                     _%BUG185488%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp186662
                                              _%lvar185691%_)))
                                         _%svars185671%_
                                         _%lvars185673%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp186663 __tmp186661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp186664
                                                  __tmp186660)))
                                              (__tmp186655
                                               (let ((__tmp186658
                                                      (map (lambda (_%lvar185693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar185694%_)
                     (cons (cons _%tlvar185694%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar185693%_))
                                 '())))
                   _%lvars185673%_
                   _%tlvars185675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp186656
                                                      (_%k185584%_
                                                       (let ((__tmp186657
                                                              (lambda (_%svar185696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar185697%_
                               _%r185698%_)
                        (cons (cons _%svar185696%_ _%tlvar185697%_)
                              _%r185698%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp186657
                  _%vars185686%_
                  _%svars185671%_
                  _%tlvars185675%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp186658
                                                  __tmp186656))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186665
                                           __tmp186659
                                           __tmp186655))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp186666
                                    __tmp186654))
                                 '()))
                     '()))
              (__tmp186652
               (cons _%$lp185663%_ (cons _%$target185657%_ _%linit185679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186653
                                                   __tmp186652)))))
                                      (let ((_%body185684%_
                                             (let ((__tmp186668
                                                    (cons (cons (cons _%$target185657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl185661%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target185582%_
                                 _%rlen185655%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186667
                                                    (_%recur185489%_
                                                     _%tl185652%_
                                                     _%vars185581%_
                                                     _%$tl185661%_
                                                     _%E185583%_
                                                     _%make-loop185682%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186668
                                                __tmp186667))))
                                        (let ((__tmp186672
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target185582%_)))
                                              (__tmp186669
                                               (if (zero? _%rlen185655%_)
                                                   _%body185684%_
                                                   (let ((__tmp186670
                                                          (let ((__tmp186671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target185582%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186671 _%rlen185655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186670
                                                      _%body185684%_
                                                      _%E185583%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186672
                                           __tmp186669
                                           _%E185583%_))))))))
                          (if (pair? _%body185638185645%_)
                              (let ((_%hd185642185703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body185638185645%_)))
                                    (_%tl185643185705%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body185638185645%_))))
                                (let* ((_%hd185708%_ _%hd185642185703%_)
                                       (_%tl185710%_ _%tl185643185705%_))
                                  (_%K185641185700%_
                                   _%tl185710%_
                                   _%hd185708%_)))
                              (_%E185640185649%_)))
                        (if (eq? 'null _%$e185602%_)
                            (let ((__tmp186674
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target185582%_)))
                                  (__tmp186673 (_%k185584%_ _%vars185581%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186674
                               __tmp186673
                               _%E185583%_))
                            (if (eq? 'vector _%$e185602%_)
                                (let ((_%$e185712%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186679
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target185582%_)))
                                        (__tmp186675
                                         (let ((__tmp186677
                                                (cons (cons (cons _%$e185712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp186678
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e185296%_
                                    _%target185582%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp186678))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp186676
                                                (_%recur185489%_
                                                 _%body185599%_
                                                 _%vars185581%_
                                                 _%$e185712%_
                                                 _%E185583%_
                                                 _%k185584%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186677
                                            __tmp186676))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186679
                                     __tmp186675
                                     _%E185583%_)))
                                (if (eq? 'box _%$e185602%_)
                                    (let ((_%$e185714%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186684
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target185582%_)))
                                            (__tmp186680
                                             (let ((__tmp186682
                                                    (cons (cons (cons _%$e185714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp186683
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e185296%_
                                        _%target185582%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp186683))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186681
                                                    (_%recur185489%_
                                                     _%body185599%_
                                                     _%vars185581%_
                                                     _%$e185714%_
                                                     _%E185583%_
                                                     _%k185584%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186682
                                                __tmp186681))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186684
                                         __tmp186680
                                         _%E185583%_)))
                                    (if (eq? 'datum _%$e185602%_)
                                        (let ((_%$e185716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186690
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target185582%_)))
                                                (__tmp186685
                                                 (let ((__tmp186689
                                                        (cons (cons (cons _%$e185716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target185582%_))
                                  '()))
                      '()))
               (__tmp186686
                (let ((__tmp186688
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e185716%_ _%body185599%_)))
                      (__tmp186687 (_%k185584%_ _%vars185581%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186688 __tmp186687 _%E185583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186689
                                                    __tmp186686))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186690
                                             __tmp186685
                                             _%E185583%_)))
                                        (_%BUG185488%_
                                         _%e185580%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e185585185592%_)
                                      (let ((_%hd185589185721%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185585185592%_)))
                                            (_%tl185590185723%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185585185592%_))))
                                        (let* ((_%tag185726%_
                                                _%hd185589185721%_)
                                               (_%body185728%_
                                                _%tl185590185723%_))
                                          (_%K185588185718%_
                                           _%body185728%_
                                           _%tag185726%_)))
                                      (_%E185587185596%_)))))
                             (_%splice-rlen185490%_
                              (lambda (_%e185542%_)
                                (let _%lp185544%_ ((_%e185546%_ _%e185542%_)
                                                   (_%n185547%_ '0))
                                  (let* ((_%e185548185555%_ _%e185546%_)
                                         (_%E185550185559%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e185548185555%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K185551185568%_
                                          (lambda (_%body185562%_
                                                   _%tag185563%_)
                                            (let ((_%$e185565%_ _%tag185563%_))
                                              (if (eq? 'splice _%$e185565%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx185294%_
                                                     _%where185481%_))
                                                  (if (eq? 'cons _%$e185565%_)
                                                      (_%lp185544%_
                                                       (cdr _%body185562%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n185547%_
                                                                '1)))
                                                      _%n185547%_))))))
                                    (if (pair? _%e185548185555%_)
                                        (let ((_%hd185552185571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185548185555%_)))
                                              (_%tl185553185573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185548185555%_))))
                                          (let* ((_%tag185576%_
                                                  _%hd185552185571%_)
                                                 (_%body185578%_
                                                  _%tl185553185573%_))
                                            (_%K185551185568%_
                                             _%body185578%_
                                             _%tag185576%_)))
                                        (_%E185550185559%_))))))
                             (_%splice-vars185491%_
                              (lambda (_%e185498%_)
                                (let _%recur185500%_ ((_%e185502%_ _%e185498%_)
                                                      (_%vars185503%_ '()))
                                  (let* ((_%e185504185511%_ _%e185502%_)
                                         (_%E185506185515%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e185504185511%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K185507185530%_
                                          (lambda (_%body185518%_
                                                   _%tag185519%_)
                                            (let ((_%$e185521%_ _%tag185519%_))
                                              (if (eq? 'var _%$e185521%_)
                                                  (cons _%body185518%_
                                                        _%vars185503%_)
                                                  (if (or (eq? 'cons
                                                               _%$e185521%_)
                                                          (eq? 'splice
                                                               _%$e185521%_))
                                                      (_%recur185500%_
                                                       (cdr _%body185518%_)
                                                       (_%recur185500%_
                                                        (car _%body185518%_)
                                                        _%vars185503%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e185521%_)
                      (eq? 'box _%$e185521%_))
                  (_%recur185500%_ _%body185518%_ _%vars185503%_)
                  _%vars185503%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e185504185511%_)
                                        (let ((_%hd185508185533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185504185511%_)))
                                              (_%tl185509185535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185504185511%_))))
                                          (let* ((_%tag185538%_
                                                  _%hd185508185533%_)
                                                 (_%body185540%_
                                                  _%tl185509185535%_))
                                            (_%K185507185530%_
                                             _%body185540%_
                                             _%tag185538%_)))
                                        (_%E185506185515%_))))))
                             (_%make-body185492%_
                              (lambda (_%vars185494%_)
                                (cons _%K185485%_
                                      (map (lambda (_%mvar185496%_)
                                             (let ((__tmp186691
                                                    (car _%mvar185496%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp186691
                                                _%vars185494%_
                                                _%BUG185488%_)))
                                           _%mvars185484%_)))))
                      (_%recur185489%_
                       _%hd185483%_
                       '()
                       _%target185482%_
                       _%E185486%_
                       _%make-body185492%_))))
                 (_%parse-clause185303%_
                  (lambda (_%hd185375%_ _%ids185376%_)
                    (let _%recur185378%_ ((_%e185380%_ _%hd185375%_)
                                          (_%vars185381%_ '())
                                          (_%depth185382%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e185380%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e185380%_))
                              (values '(any) _%vars185381%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e185380%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx185294%_
                                     _%hd185375%_))
                                  (if (let ((__tmp186692
                                             (lambda (_%id185387%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e185380%_
                                                  _%id185387%_)))))
                                        (declare (not safe))
                                        (__find __tmp186692 _%ids185376%_))
                                      (values (cons 'id _%e185380%_)
                                              _%vars185381%_)
                                      (if (let ((__tmp186693
                                                 (lambda (_%var185390%_)
                                                   (let ((__tmp186694
                                                          (car _%var185390%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e185380%_
                                                      __tmp186694)))))
                                            (declare (not safe))
                                            (__find __tmp186693
                                                    _%vars185381%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx185294%_
                                             _%e185380%_))
                                          (values (cons 'var _%e185380%_)
                                                  (cons (cons _%e185380%_
                                                              _%depth185382%_)
                                                        _%vars185381%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e185380%_))
                              (let* ((_%e185394185401%_ _%e185380%_)
                                     (_%E185396185405%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e185394185401%_))))
                                     (_%E185395185466%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e185394185401%_))
                                            (let ((_%e185397185409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e185394185401%_))))
                                              (let ((_%hd185398185412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185397185409%_)))
                                                    (_%tl185399185414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185397185409%_))))
                                                (let* ((_%hd185417%_
                                                        _%hd185398185412%_)
                                                       (_%rest185419%_
                                                        _%tl185399185414%_)
                                                       (_%make-pair185434%_
                                                        (lambda (_%tag185421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd185422%_
                         _%tl185423%_)
                  (let* ((_%hd-depth185425%_
                          (if (eq? _%tag185421%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth185382%_ '1))
                              _%depth185382%_))
                         (_g186695_
                          (_%recur185378%_
                           _%hd185422%_
                           _%vars185381%_
                           _%hd-depth185425%_)))
                    (begin
                      (let ((_g186696_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g186695_)
                                   (##values-length _g186695_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g186696_ 2)))
                            (error "Context expects 2 values" _g186696_)))
                      (let ((_%hd185427%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g186695_ 0)))
                            (_%vars185428%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g186695_ 1))))
                        (let ((_g186697_
                               (_%recur185378%_
                                _%tl185423%_
                                _%vars185428%_
                                _%depth185382%_)))
                          (begin
                            (let ((_g186698_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186697_)
                                         (##values-length _g186697_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186698_ 2)))
                                  (error "Context expects 2 values"
                                         _g186698_)))
                            (let ((_%tl185430%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186697_ 0)))
                                  (_%vars185431%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186697_ 1))))
                              (values (cons _%tag185421%_
                                            (cons _%hd185427%_ _%tl185430%_))
                                      _%vars185431%_)))))))))
               (_%e185435185442%_ _%rest185419%_)
               (_%E185437185446%_
                (lambda ()
                  (_%make-pair185434%_ 'cons _%hd185417%_ _%rest185419%_)))
               (_%E185436185462%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e185435185442%_))
                      (let ((_%e185438185450%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e185435185442%_))))
                        (let ((_%hd185439185453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185438185450%_)))
                              (_%tl185440185455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185438185450%_))))
                          (let* ((_%rest-hd185458%_ _%hd185439185453%_)
                                 (_%rest-tl185460%_ _%tl185440185455%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd185458%_))
                                (_%make-pair185434%_
                                 'splice
                                 _%hd185417%_
                                 _%rest-tl185460%_)
                                (_%make-pair185434%_
                                 'cons
                                 _%hd185417%_
                                 _%rest185419%_)))))
                      (_%E185437185446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185436185462%_))))
                                            (_%E185396185405%_)))))
                                (_%E185395185466%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e185380%_))
                                  (values '(null) _%vars185381%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e185380%_))
                                      (let ((_g186699_
                                             (_%recur185378%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e185380%_)))
                                              _%vars185381%_
                                              _%depth185382%_)))
                                        (begin
                                          (let ((_g186700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186699_)
                                                       (##values-length
                                                        _g186699_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186700_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186700_)))
                                          (let ((_%e185472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g186699_ 0)))
                                                (_%vars185473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g186699_
                                                    1))))
                                            (values (cons 'vector _%e185472%_)
                                                    _%vars185473%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e185380%_))
                                          (let ((_g186701_
                                                 (_%recur185378%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e185380%_)))
                                                  _%vars185381%_
                                                  _%depth185382%_)))
                                            (begin
                                              (let ((_g186702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186701_)
                                                           (##values-length
                                                            _g186701_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186702_)))
                                              (let ((_%e185476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g186701_
                                                        0)))
                                                    (_%vars185477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g186701_
                                                        1))))
                                                (values (cons 'box _%e185476%_)
                                                        _%vars185477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e185380%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e185380%_)))
                                                      _%vars185381%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx185294%_
                                                 _%e185380%_))))))))))))
          (let* ((_%e185304185317%_ _%stx185294%_)
                 (_%E185306185321%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e185304185317%_))))
                 (_%E185305185371%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e185304185317%_))
                        (let ((_%e185307185325%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e185304185317%_))))
                          (let ((_%hd185308185328%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185307185325%_)))
                                (_%tl185309185330%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185307185325%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl185309185330%_))
                                (let ((_%e185310185333%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl185309185330%_))))
                                  (let ((_%hd185311185336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185310185333%_)))
                                        (_%tl185312185338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185310185333%_))))
                                    (let ((_%expr185341%_ _%hd185311185336%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl185312185338%_))
                                          (let ((_%e185313185343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl185312185338%_))))
                                            (let ((_%hd185314185346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e185313185343%_)))
                                                  (_%tl185315185348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e185313185343%_))))
                                              (let* ((_%ids185351%_
                                                      _%hd185314185346%_)
                                                     (_%clauses185353%_
                                                      _%tl185315185348%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids185351%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses185353%_))
                                                        (let* ((_%ids185358%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids185351%_)))
                       (_%clauses185360%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses185353%_)))
                       (_%clause-ids185362%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses185360%_)))
                       (_%E185364%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target185366%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first185368%_
                        (if (null? _%clauses185360%_)
                            _%E185364%_
                            (car _%clause-ids185362%_))))
                  (let ((__tmp186704
                         (let ((__tmp186705
                                (let ((__tmp186707
                                       (let ((__tmp186709
                                              (cons (cons (cons _%E185364%_
                                                                '())
                                                          (cons (let ((__tmp186711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target185366%_ '()))
                              (__tmp186710
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target185366%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp186711 __tmp186710))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp186708
                                              (_%generate-body185300%_
                                               (_%generate-bindings185299%_
                                                _%target185366%_
                                                _%ids185358%_
                                                _%clauses185360%_
                                                _%clause-ids185362%_
                                                _%E185364%_)
                                               (cons _%first185368%_
                                                     (cons _%expr185341%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp186709
                                          __tmp186708)))
                                      (__tmp186706
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx185294%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp186707
                                   __tmp186706))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp186705)))
                        (__tmp186703
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx185294%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp186704 __tmp186703)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx185294%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx185294%_
                                                       _%ids185351%_))))))
                                          (_%E185306185321%_)))))
                                (_%E185306185321%_))))
                        (_%E185306185321%_)))))
            (_%E185305185371%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx186019%_)
        (let* ((_%identifier=?186021%_ 'free-identifier=?)
               (_%unwrap-e186023%_ 'syntax-e)
               (_%wrap-e186025%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx186019%_
           _%identifier=?186021%_
           _%unwrap-e186023%_
           _%wrap-e186025%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx186027%_ _%identifier=?186028%_)
        (let* ((_%unwrap-e186030%_ 'syntax-e) (_%wrap-e186032%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx186027%_
           _%identifier=?186028%_
           _%unwrap-e186030%_
           _%wrap-e186032%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx186034%_ _%identifier=?186035%_ _%unwrap-e186036%_)
        (let ((_%wrap-e186038%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx186034%_
           _%identifier=?186035%_
           _%unwrap-e186036%_
           _%wrap-e186038%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186712_
        (let ((_g186713_ (let () (declare (not safe)) (##length _g186712_))))
          (cond ((let () (declare (not safe)) (##fx= _g186713_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g186712_))
                ((let () (declare (not safe)) (##fx= _g186713_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g186712_))
                ((let () (declare (not safe)) (##fx= _g186713_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g186712_))
                ((let () (declare (not safe)) (##fx= _g186713_ 4))
                 (apply gx#macro-expand-syntax-case__% _g186712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186712_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx185291%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx185291%_))
            (let ((__tmp186714
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx185291%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186714 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd185249%_ . _%rest185250%_)
        (let ((_%len185252%_ (length _%hd185249%_)))
          (let _%lp185254%_ ((_%rest185256%_ _%rest185250%_))
            (let* ((_%rest185257185265%_ _%rest185256%_)
                   (_%else185259185273%_ (lambda () '#!void))
                   (_%K185261185279%_
                    (lambda (_%rest185276%_ _%hd185277%_)
                      (if (let ((__tmp186715 (length _%hd185277%_)))
                            (declare (not safe))
                            (##fx= _%len185252%_ __tmp186715))
                          (_%lp185254%_ _%rest185276%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd185277%_))))))
              (if (pair? _%rest185257185265%_)
                  (let ((_%hd185262185282%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest185257185265%_)))
                        (_%tl185263185284%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest185257185265%_))))
                    (let* ((_%hd185287%_ _%hd185262185282%_)
                           (_%rest185289%_ _%tl185263185284%_))
                      (_%K185261185279%_ _%rest185289%_ _%hd185287%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx185199%_ _%n185200%_)
        (let _%lp185202%_ ((_%rest185205%_ _%stx185199%_) (_%r185207%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest185205%_))
              (let* ((_%g185209185216%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest185205%_)))
                     (_%E185211185220%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g185209185216%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K185212185227%_
                      (lambda (_%rest185223%_ _%hd185224%_)
                        (_%lp185202%_
                         _%rest185223%_
                         (cons _%hd185224%_ _%r185207%_)))))
                (if (pair? _%g185209185216%_)
                    (let ((_%hd185213185230%_
                           (let ()
                             (declare (not safe))
                             (##car _%g185209185216%_)))
                          (_%tl185214185232%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g185209185216%_))))
                      (let* ((_%hd185235%_ _%hd185213185230%_)
                             (_%rest185237%_ _%tl185214185232%_))
                        (_%K185212185227%_ _%rest185237%_ _%hd185235%_)))
                    (_%E185211185220%_)))
              (let _%lp185239%_ ((_%n185241%_ _%n185200%_)
                                 (_%l185242%_ _%r185207%_)
                                 (_%r185244%_ _%rest185205%_))
                (if (null? _%l185242%_)
                    (values _%l185242%_ _%r185244%_)
                    (if (fxpositive? _%n185241%_)
                        (_%lp185239%_
                         (let () (declare (not safe)) (##fx- _%n185241%_ '1))
                         (cdr _%l185242%_)
                         (cons (car _%l185242%_) _%r185244%_))
                        (values (reverse! _%l185242%_) _%r185244%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx185149%_ _%n185150%_)
        (let _%lp185152%_ ((_%rest185155%_ _%stx185149%_) (_%r185157%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest185155%_))
              (let* ((_%g185159185166%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest185155%_)))
                     (_%E185161185170%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g185159185166%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K185162185177%_
                      (lambda (_%rest185173%_ _%hd185174%_)
                        (_%lp185152%_
                         _%rest185173%_
                         (cons _%hd185174%_ _%r185157%_)))))
                (if (pair? _%g185159185166%_)
                    (let ((_%hd185163185180%_
                           (let ()
                             (declare (not safe))
                             (##car _%g185159185166%_)))
                          (_%tl185164185182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g185159185166%_))))
                      (let* ((_%hd185185%_ _%hd185163185180%_)
                             (_%rest185187%_ _%tl185164185182%_))
                        (_%K185162185177%_ _%rest185187%_ _%hd185185%_)))
                    (_%E185161185170%_)))
              (let _%lp185189%_ ((_%n185191%_ _%n185150%_)
                                 (_%l185192%_ _%r185157%_)
                                 (_%r185194%_ _%rest185155%_))
                (if (null? _%l185192%_)
                    (vector _%l185192%_ _%r185194%_)
                    (if (fxpositive? _%n185191%_)
                        (_%lp185189%_
                         (let () (declare (not safe)) (##fx- _%n185191%_ '1))
                         (cdr _%l185192%_)
                         (cons (car _%l185192%_) _%r185194%_))
                        (vector (reverse! _%l185192%_) _%r185194%_))))))))))
