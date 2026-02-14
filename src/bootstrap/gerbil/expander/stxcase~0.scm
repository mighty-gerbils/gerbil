(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771037610)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp198574 (list gx#expander::t))
            (__tmp198573 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp198574
         '(id depth)
         __tmp198573
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args198570%_
        (apply make-instance gx#syntax-pattern::t _%$args198570%_)))
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
      (lambda (_%self198556%_ _%stx198557%_)
        (let ((_%self198560%_ _%self198556%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx198557%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx198023%_)
        (letrec ((_%generate198025%_
                  (lambda (_%e198265%_)
                    (letrec ((_%BUG198267%_
                              (lambda (_%q198432%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx198023%_
                                         _%e198265%_
                                         _%q198432%_))))
                             (_%local-pattern-e198268%_
                              (lambda (_%pat198430%_)
                                (let ((__tmp198575
                                       (##structure-ref
                                        _%pat198430%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp198575))))
                             (_%getvar198269%_
                              (lambda (_%q198427%_ _%vars198428%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q198427%_
                                   _%vars198428%_
                                   _%BUG198267%_))))
                             (_%getarg198270%_
                              (lambda (_%arg198393%_ _%vars198394%_)
                                (let* ((_%arg198395198402%_ _%arg198393%_)
                                       (_%E198397198406%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg198395198402%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K198398198415%_
                                        (lambda (_%e198409%_ _%tag198410%_)
                                          (let ((_%$e198412%_ _%tag198410%_))
                                            (if (eq? 'ref _%$e198412%_)
                                                (_%getvar198269%_
                                                 _%e198409%_
                                                 _%vars198394%_)
                                                (if (eq? 'pattern _%$e198412%_)
                                                    (_%local-pattern-e198268%_
                                                     _%e198409%_)
                                                    (_%BUG198267%_
                                                     _%arg198393%_)))))))
                                  (if (pair? _%arg198395198402%_)
                                      (let ((_%hd198399198418%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg198395198402%_)))
                                            (_%tl198400198420%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg198395198402%_))))
                                        (let* ((_%tag198423%_
                                                _%hd198399198418%_)
                                               (_%e198425%_
                                                _%tl198400198420%_))
                                          (_%K198398198415%_
                                           _%e198425%_
                                           _%tag198423%_)))
                                      (_%E198397198406%_))))))
                      (let _%recur198272%_ ((_%e198274%_ _%e198265%_)
                                            (_%vars198275%_ '()))
                        (let* ((_%e198276198283%_ _%e198274%_)
                               (_%E198278198287%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e198276198283%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K198279198381%_
                                (lambda (_%body198290%_ _%tag198291%_)
                                  (let ((_%$e198293%_ _%tag198291%_))
                                    (if (eq? 'datum _%$e198293%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body198290%_))
                                        (if (eq? 'term _%$e198293%_)
                                            (let ((_%id198296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body198290%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id198296%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks198299%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id198296%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks198299%_)
                                                        (let ((__tmp198576
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body198290%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp198576))
                (let ((__tmp198578
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body198290%_)))
                      (__tmp198577
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body198290%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp198578
                   __tmp198577
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id198296%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body198290%_))
                                                      (_%BUG198267%_
                                                       _%e198274%_))))
                                            (if (eq? 'pattern _%$e198293%_)
                                                (_%local-pattern-e198268%_
                                                 _%body198290%_)
                                                (if (eq? 'ref _%$e198293%_)
                                                    (_%getvar198269%_
                                                     _%body198290%_
                                                     _%vars198275%_)
                                                    (if (eq? 'cons
                                                             _%$e198293%_)
                                                        (let ((__tmp198580
                                                               (_%recur198272%_
                                                                (car _%body198290%_)
                                                                _%vars198275%_))
                                                              (__tmp198579
                                                               (_%recur198272%_
                                                                (cdr _%body198290%_)
                                                                _%vars198275%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp198580
                                                           __tmp198579))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e198293%_)
                    (let ((__tmp198581
                           (_%recur198272%_ _%body198290%_ _%vars198275%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp198581))
                    (if (eq? 'box _%$e198293%_)
                        (let ((__tmp198582
                               (_%recur198272%_
                                _%body198290%_
                                _%vars198275%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp198582))
                        (if (eq? 'splice _%$e198293%_)
                            (let* ((_%body198302198313%_ _%body198290%_)
                                   (_%E198304198317%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body198302198313%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K198305198355%_
                                    (lambda (_%args198320%_
                                             _%iv198321%_
                                             _%hd198322%_
                                             _%depth198323%_)
                                      (let* ((_%targets198329%_
                                              (map (lambda (_%g198324198326%_)
                                                     (_%getarg198270%_
                                                      _%g198324198326%_
                                                      _%vars198275%_))
                                                   _%args198320%_))
                                             (_%fold-in198331%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args198320%_)))
                                             (_%fold-out198333%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args198335%_
                                              (let ((__tmp198583
                                                     (cons _%fold-out198333%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp198583
                                                 _%fold-in198331%_)))
                                             (_%lambda-body198352%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth198323%_ '1))
                                                  (let ((_%r-args198343%_
                                                         (map (lambda (_%arg198337%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg198337%_)))
                      _%args198320%_))
                (_%r-vars198344%_
                 (let ((__tmp198584
                        (lambda (_%arg198339%_ _%var198340%_ _%r198341%_)
                          (cons (cons (cdr _%arg198339%_) _%var198340%_)
                                _%r198341%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp198584
                    _%vars198275%_
                    _%args198320%_
                    _%fold-in198331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur198272%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth198323%_ '1))
                         (cons _%hd198322%_
                               (cons (cons 'var _%fold-out198333%_)
                                     _%r-args198343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars198344%_))
                                                  (let* ((_%hd-vars198350%_
                                                          (let ((__tmp198585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg198346%_ _%var198347%_ _%r198348%_)
                           (cons (cons (cdr _%arg198346%_) _%var198347%_)
                                 _%r198348%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp198585
                     _%vars198275%_
                     _%args198320%_
                     _%fold-in198331%_)))
                 (__tmp198586
                  (_%recur198272%_ _%hd198322%_ _%hd-vars198350%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp198586
                                                     _%fold-out198333%_)))))
                                        (let ((__tmp198590
                                               (if (let ((__tmp198591
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets198329%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp198591 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets198329%_))
                                                   '#!void))
                                              (__tmp198587
                                               (let ((__tmp198589
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args198335%_
                                                         _%lambda-body198352%_)))
                                                     (__tmp198588
                                                      (_%recur198272%_
                                                       _%iv198321%_
                                                       _%vars198275%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp198589
                                                  __tmp198588
                                                  _%targets198329%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp198590
                                           __tmp198587))))))
                              (if (pair? _%body198302198313%_)
                                  (let ((_%hd198306198358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body198302198313%_)))
                                        (_%tl198307198360%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body198302198313%_))))
                                    (let ((_%depth198363%_ _%hd198306198358%_))
                                      (if (pair? _%tl198307198360%_)
                                          (let ((_%hd198308198365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl198307198360%_)))
                                                (_%tl198309198367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl198307198360%_))))
                                            (let ((_%hd198370%_
                                                   _%hd198308198365%_))
                                              (if (pair? _%tl198309198367%_)
                                                  (let ((_%hd198310198372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl198309198367%_)))
                                                        (_%tl198311198374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl198309198367%_))))
                                                    (let* ((_%iv198377%_
                                                            _%hd198310198372%_)
                                                           (_%args198379%_
                                                            _%tl198311198374%_))
                                                      (_%K198305198355%_
                                                       _%args198379%_
                                                       _%iv198377%_
                                                       _%hd198370%_
                                                       _%depth198363%_)))
                                                  (_%E198304198317%_))))
                                          (_%E198304198317%_))))
                                  (_%E198304198317%_)))
                            (if (eq? 'var _%$e198293%_)
                                _%body198290%_
                                (_%BUG198267%_ _%e198274%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e198276198283%_)
                              (let ((_%hd198280198384%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198276198283%_)))
                                    (_%tl198281198386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198276198283%_))))
                                (let* ((_%tag198389%_ _%hd198280198384%_)
                                       (_%body198391%_ _%tl198281198386%_))
                                  (_%K198279198381%_
                                   _%body198391%_
                                   _%tag198389%_)))
                              (_%E198278198287%_)))))))
                 (_%parse198026%_
                  (lambda (_%e198067%_)
                    (letrec ((_%make-cons198069%_
                              (lambda (_%hd198257%_ _%tl198258%_)
                                (let ((_g198592_ _%hd198257%_)
                                      (_g198594_ _%tl198258%_))
                                  (begin
                                    (let ((_g198593_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198592_)
                                                 (##values-length _g198592_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198593_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198593_)))
                                    (let ((_g198595_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198594_)
                                                 (##values-length _g198594_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198595_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198595_)))
                                    (let ((_%hd-e198260%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198592_ 0)))
                                          (_%hd-vars198261%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198592_ 1))))
                                      (let ((_%tl-e198262%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198594_ 0)))
                                            (_%tl-vars198263%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198594_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e198260%_
                                                            _%tl-e198262%_))
                                                (append _%hd-vars198261%_
                                                        _%tl-vars198263%_))))))))
                             (_%make-splice198070%_
                              (lambda (_%where198193%_
                                       _%depth198194%_
                                       _%hd198195%_
                                       _%tl198196%_)
                                (let ((_g198596_ _%hd198195%_)
                                      (_g198598_ _%tl198196%_))
                                  (begin
                                    (let ((_g198597_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198596_)
                                                 (##values-length _g198596_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198597_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198597_)))
                                    (let ((_g198599_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198598_)
                                                 (##values-length _g198598_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198599_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198599_)))
                                    (let ((_%hd-e198198%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198596_ 0)))
                                          (_%hd-vars198199%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198596_ 1))))
                                      (let ((_%tl-e198200%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198598_ 0)))
                                            (_%tl-vars198201%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198598_ 1))))
                                        (let _%lp198203%_ ((_%rest198205%_
                                                            _%hd-vars198199%_)
                                                           (_%targets198206%_
                                                            '())
                                                           (_%vars198207%_
                                                            _%tl-vars198201%_))
                                          (let* ((_%rest198208198218%_
                                                  _%rest198205%_)
                                                 (_%else198210198226%_
                                                  (lambda ()
                                                    (if (null? _%targets198206%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx198023%_
                                                           _%where198193%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth198194%_
                                    (cons _%hd-e198198%_
                                          (cons _%tl-e198200%_
                                                _%targets198206%_))))
                        _%vars198207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K198212198238%_
                                                  (lambda (_%rest198229%_
                                                           _%hd-pat198230%_
                                                           _%hd-depth*198231%_)
                                                    (let ((_%hd-depth198233%_
                                                           (fx- _%hd-depth*198231%_
                                                                _%depth198194%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth198233%_))
                                                          (_%lp198203%_
                                                           _%rest198229%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat198230%_)
                         _%targets198206%_)
                   (cons (cons _%hd-depth198233%_ _%hd-pat198230%_)
                         _%vars198207%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth198233%_))
                      (_%lp198203%_
                       _%rest198229%_
                       (cons (cons 'pattern _%hd-pat198230%_)
                             _%targets198206%_)
                       _%vars198207%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx198023%_
                         _%where198193%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest198208198218%_)
                                                (let ((_%hd198213198241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest198208198218%_)))
                                                      (_%tl198214198243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest198208198218%_))))
                                                  (if (pair? _%hd198213198241%_)
                                                      (let ((_%hd198215198246%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd198213198241%_)))
                    (_%tl198216198248%_
                     (let () (declare (not safe)) (##cdr _%hd198213198241%_))))
                (let* ((_%hd-depth*198251%_ _%hd198215198246%_)
                       (_%hd-pat198253%_ _%tl198216198248%_)
                       (_%rest198255%_ _%tl198214198243%_))
                  (_%K198212198238%_
                   _%rest198255%_
                   _%hd-pat198253%_
                   _%hd-depth*198251%_)))
              (_%else198210198226%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else198210198226%_))))))))))
                             (_%recur198071%_
                              (lambda (_%e198076%_ _%is-e?198077%_)
                                (if (_%is-e?198077%_ _%e198076%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx198023%_))
                                    (if (gx#syntax-local-pattern? _%e198076%_)
                                        (let* ((_%pat198081%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e198076%_)))
                                               (_%depth198083%_
                                                (##structure-ref
                                                 _%pat198081%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth198083%_)
                                              (values (cons 'ref _%pat198081%_)
                                                      (cons (cons _%depth198083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat198081%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat198081%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e198076%_))
                                            (values (cons 'term _%e198076%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e198076%_))
                                                (let* ((_%e198087198094%_
                                                        _%e198076%_)
                                                       (_%E198089198098%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e198087198094%_))))
                                                       (_%E198088198180%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e198087198094%_))
                      (let ((_%e198090198102%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e198087198094%_))))
                        (let ((_%hd198091198105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198090198102%_)))
                              (_%tl198092198107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198090198102%_))))
                          (let* ((_%hd198110%_ _%hd198091198105%_)
                                 (_%rest198112%_ _%tl198092198107%_))
                            (if (_%is-e?198077%_ _%hd198110%_)
                                (let* ((_%e198113198120%_ _%rest198112%_)
                                       (_%E198115198124%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx198023%_
                                             _%e198076%_))))
                                       (_%E198114198138%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e198113198120%_))
                                              (let ((_%e198116198128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e198113198120%_))))
                                                (let ((_%hd198117198131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198116198128%_)))
                                                      (_%tl198118198133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198116198128%_))))
                                                  (let ((_%rest198136%_
                                                         _%hd198117198131%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198118198133%_))
                                                        (_%recur198071%_
                                                         _%rest198136%_
                                                         false)
                                                        (_%E198115198124%_)))))
                                              (_%E198115198124%_)))))
                                  (_%E198114198138%_))
                                (let _%lp198142%_ ((_%rest198144%_
                                                    _%rest198112%_)
                                                   (_%depth198145%_ '0))
                                  (let* ((_%e198146198153%_ _%rest198144%_)
                                         (_%E198148198157%_
                                          (lambda ()
                                            (if (fxpositive? _%depth198145%_)
                                                (_%make-splice198070%_
                                                 _%e198076%_
                                                 _%depth198145%_
                                                 (_%recur198071%_
                                                  _%hd198110%_
                                                  _%is-e?198077%_)
                                                 (_%recur198071%_
                                                  _%rest198144%_
                                                  _%is-e?198077%_))
                                                (_%make-cons198069%_
                                                 (_%recur198071%_
                                                  _%hd198110%_
                                                  _%is-e?198077%_)
                                                 (_%recur198071%_
                                                  _%rest198144%_
                                                  _%is-e?198077%_)))))
                                         (_%E198147198176%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e198146198153%_))
                                                (let ((_%e198149198161%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e198146198153%_))))
                                                  (let ((_%hd198150198164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198149198161%_)))
                                                        (_%tl198151198166%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198149198161%_))))
                                                    (let* ((_%rest-hd198169%_
                                                            _%hd198150198164%_)
                                                           (_%rest-tl198171%_
                                                            _%tl198151198166%_))
                                                      (if (_%is-e?198077%_
                                                           _%rest-hd198169%_)
                                                          (_%lp198142%_
                                                           _%rest-tl198171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth198145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth198145%_)
                      (_%make-splice198070%_
                       _%e198076%_
                       _%depth198145%_
                       (_%recur198071%_ _%hd198110%_ _%is-e?198077%_)
                       (_%recur198071%_ _%rest198144%_ _%is-e?198077%_))
                      (_%make-cons198069%_
                       (_%recur198071%_ _%hd198110%_ _%is-e?198077%_)
                       (_%recur198071%_ _%rest198144%_ _%is-e?198077%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E198148198157%_)))))
                                    (_%E198147198176%_)))))))
                      (_%E198089198098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E198088198180%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e198076%_))
                                                    (let ((_g198600_
                                                           (_%recur198071%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e198076%_)))
                    _%is-e?198077%_)))
              (begin
                (let ((_g198601_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g198600_)
                             (##values-length _g198600_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g198601_ 2)))
                      (error "Context expects 2 values" _g198601_)))
                (let ((_%e198185%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g198600_ 0)))
                      (_%vars198186%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g198600_ 1))))
                  (values (cons 'vector _%e198185%_) _%vars198186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e198076%_))
                                                        (let ((_g198602_
                                                               (_%recur198071%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e198076%_)))
                        _%is-e?198077%_)))
                  (begin
                    (let ((_g198603_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g198602_)
                                 (##values-length _g198602_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g198603_ 2)))
                          (error "Context expects 2 values" _g198603_)))
                    (let ((_%e198189%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g198602_ 0)))
                          (_%vars198190%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g198602_ 1))))
                      (values (cons 'box _%e198189%_) _%vars198190%_))))
                (values (cons 'datum _%e198076%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g198604_
                             (_%recur198071%_ _%e198067%_ gx#ellipsis?)))
                        (begin
                          (let ((_g198605_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g198604_)
                                       (##values-length _g198604_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g198605_ 2)))
                                (error "Context expects 2 values" _g198605_)))
                          (let ((_%tree198073%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g198604_ 0)))
                                (_%vars198074%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g198604_ 1))))
                            (if (null? _%vars198074%_)
                                _%tree198073%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx198023%_
                                   _%vars198074%_))))))))))
          (let* ((_%e198027198037%_ _%stx198023%_)
                 (_%E198029198041%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx198023%_))))
                 (_%E198028198063%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e198027198037%_))
                        (let ((_%e198030198045%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e198027198037%_))))
                          (let ((_%hd198031198048%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198030198045%_)))
                                (_%tl198032198050%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198030198045%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198032198050%_))
                                (let ((_%e198033198053%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198032198050%_))))
                                  (let ((_%hd198034198056%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198033198053%_)))
                                        (_%tl198035198058%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198033198053%_))))
                                    (let ((_%form198061%_ _%hd198034198056%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198035198058%_))
                                          (let ((__tmp198607
                                                 (_%generate198025%_
                                                  (_%parse198026%_
                                                   _%form198061%_)))
                                                (__tmp198606
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx198023%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp198607
                                             __tmp198606))
                                          (_%E198029198041%_)))))
                                (_%E198029198041%_))))
                        (_%E198029198041%_)))))
            (_%E198028198063%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx197272%_
               _%identifier=?197273%_
               _%unwrap-e197274%_
               _%wrap-e197275%_)
        (letrec ((_%generate-bindings197277%_
                  (lambda (_%target197887%_
                           _%ids197888%_
                           _%clauses197889%_
                           _%clause-ids197890%_
                           _%E197891%_)
                    (letrec ((_%generate1197893%_
                              (lambda (_%clause197990%_
                                       _%clause-id197991%_
                                       _%E197992%_)
                                (cons (cons _%clause-id197991%_ '())
                                      (cons (let ((__tmp198609
                                                   (cons _%target197887%_ '()))
                                                  (__tmp198608
                                                   (_%generate-clause197279%_
                                                    _%target197887%_
                                                    _%ids197888%_
                                                    _%clause197990%_
                                                    _%E197992%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp198609
                                               __tmp198608))
                                            '())))))
                      (let _%lp197895%_ ((_%rest197897%_ _%clauses197889%_)
                                         (_%rest-ids197898%_
                                          _%clause-ids197890%_)
                                         (_%bindings197899%_ '()))
                        (let* ((_%rest197900197908%_ _%rest197897%_)
                               (_%else197902197916%_
                                (lambda () _%bindings197899%_))
                               (_%K197904197978%_
                                (lambda (_%rest197919%_ _%clause197920%_)
                                  (let* ((_%rest-ids197921197928%_
                                          _%rest-ids197898%_)
                                         (_%E197923197932%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids197921197928%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K197924197966%_
                                          (lambda (_%rest-ids197935%_
                                                   _%clause-id197936%_)
                                            (let* ((_%rest-ids197937197945%_
                                                    _%rest-ids197935%_)
                                                   (_%else197939197953%_
                                                    (lambda ()
                                                      (cons (_%generate1197893%_
                                                             _%clause197920%_
                                                             _%clause-id197936%_
                                                             _%E197891%_)
                                                            _%bindings197899%_)))
                                                   (_%K197941197958%_
                                                    (lambda (_%next-clause-id197956%_)
                                                      (_%lp197895%_
                                                       _%rest197919%_
                                                       _%rest-ids197935%_
                                                       (cons (_%generate1197893%_
                                                              _%clause197920%_
                                                              _%clause-id197936%_
                                                              _%next-clause-id197956%_)
                                                             _%bindings197899%_)))))
                                              (if (pair? _%rest-ids197937197945%_)
                                                  (let* ((_%hd197942197961%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids197937197945%_)))
                                                         (_%next-clause-id197964%_
                                                          _%hd197942197961%_))
                                                    (_%K197941197958%_
                                                     _%next-clause-id197964%_))
                                                  (_%else197939197953%_))))))
                                    (if (pair? _%rest-ids197921197928%_)
                                        (let ((_%hd197925197969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids197921197928%_)))
                                              (_%tl197926197971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids197921197928%_))))
                                          (let* ((_%clause-id197974%_
                                                  _%hd197925197969%_)
                                                 (_%rest-ids197976%_
                                                  _%tl197926197971%_))
                                            (_%K197924197966%_
                                             _%rest-ids197976%_
                                             _%clause-id197974%_)))
                                        (_%E197923197932%_))))))
                          (if (pair? _%rest197900197908%_)
                              (let ((_%hd197905197981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest197900197908%_)))
                                    (_%tl197906197983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest197900197908%_))))
                                (let* ((_%clause197986%_ _%hd197905197981%_)
                                       (_%rest197988%_ _%tl197906197983%_))
                                  (_%K197904197978%_
                                   _%rest197988%_
                                   _%clause197986%_)))
                              (_%else197902197916%_)))))))
                 (_%generate-body197278%_
                  (lambda (_%bindings197847%_ _%body197848%_)
                    (let _%recur197850%_ ((_%rest197852%_ _%bindings197847%_))
                      (let* ((_%rest197853197861%_ _%rest197852%_)
                             (_%else197855197869%_ (lambda () _%body197848%_))
                             (_%K197857197875%_
                              (lambda (_%rest197872%_ _%hd197873%_)
                                (let ((__tmp198611 (cons _%hd197873%_ '()))
                                      (__tmp198610
                                       (_%recur197850%_ _%rest197872%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp198611
                                   __tmp198610)))))
                        (if (pair? _%rest197853197861%_)
                            (let ((_%hd197858197878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197853197861%_)))
                                  (_%tl197859197880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197853197861%_))))
                              (let* ((_%hd197883%_ _%hd197858197878%_)
                                     (_%rest197885%_ _%tl197859197880%_))
                                (_%K197857197875%_
                                 _%rest197885%_
                                 _%hd197883%_)))
                            (_%else197855197869%_))))))
                 (_%generate-clause197279%_
                  (lambda (_%target197710%_
                           _%ids197711%_
                           _%clause197712%_
                           _%E197713%_)
                    (letrec ((_%generate1197715%_
                              (lambda (_%hd197802%_
                                       _%fender197803%_
                                       _%body197804%_)
                                (let ((_g198612_
                                       (_%parse-clause197281%_
                                        _%hd197802%_
                                        _%ids197711%_)))
                                  (begin
                                    (let ((_g198613_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198612_)
                                                 (##values-length _g198612_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198613_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198613_)))
                                    (let ((_%e197806%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198612_ 0)))
                                          (_%mvars197807%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198612_ 1))))
                                      (let* ((_%pvars197809%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars197807%_))))
                                             (_%E197811%_
                                              (cons _%E197713%_
                                                    (cons _%target197710%_
                                                          '())))
                                             (_%K197844%_
                                              (let ((__tmp198614
                                                     (let ((__tmp198616
                                                            (map (lambda (_%mvar197813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar197814%_)
                           (let* ((_%mvar197815197822%_ _%mvar197813%_)
                                  (_%E197817197826%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar197815197822%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K197818197832%_
                                   (lambda (_%depth197829%_ _%id197830%_)
                                     (cons _%id197830%_
                                           (cons (let ((__tmp198618
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id197830%_)))
                                                       (__tmp198617
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar197814%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp198618
                                                    __tmp198617
                                                    _%depth197829%_))
                                                 '())))))
                             (if (pair? _%mvar197815197822%_)
                                 (let ((_%hd197819197835%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar197815197822%_)))
                                       (_%tl197820197837%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar197815197822%_))))
                                   (let* ((_%id197840%_ _%hd197819197835%_)
                                          (_%depth197842%_ _%tl197820197837%_))
                                     (_%K197818197832%_
                                      _%depth197842%_
                                      _%id197840%_)))
                                 (_%E197817197826%_))))
                         _%mvars197807%_
                         _%pvars197809%_))
                   (__tmp198615
                    (if (eq? _%fender197803%_ '#t)
                        _%body197804%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender197803%_
                           _%body197804%_
                           _%E197811%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp198616 __tmp198615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars197809%_
                                                 __tmp198614))))
                                        (_%generate-match197280%_
                                         _%hd197802%_
                                         _%target197710%_
                                         _%e197806%_
                                         _%mvars197807%_
                                         _%K197844%_
                                         _%E197811%_))))))))
                      (let* ((_%e197716197736%_ _%clause197712%_)
                             (_%E197725197740%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e197716197736%_))))
                             (_%E197718197774%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e197716197736%_))
                                    (let ((_%e197726197744%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e197716197736%_))))
                                      (let ((_%hd197727197747%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197726197744%_)))
                                            (_%tl197728197749%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197726197744%_))))
                                        (let ((_%hd197752%_
                                               _%hd197727197747%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197728197749%_))
                                              (let ((_%e197729197754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197728197749%_))))
                                                (let ((_%hd197730197757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197729197754%_)))
                                                      (_%tl197731197759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197729197754%_))))
                                                  (let ((_%fender197762%_
                                                         _%hd197730197757%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl197731197759%_))
                                                        (let ((_%e197732197764%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl197731197759%_))))
                  (let ((_%hd197733197767%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197732197764%_)))
                        (_%tl197734197769%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197732197764%_))))
                    (let ((_%body197772%_ _%hd197733197767%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197734197769%_))
                          (_%generate1197715%_
                           _%hd197752%_
                           _%fender197762%_
                           _%body197772%_)
                          (_%E197725197740%_)))))
                (_%E197725197740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E197725197740%_)))))
                                    (_%E197725197740%_))))
                             (_%E197717197798%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e197716197736%_))
                                    (let ((_%e197719197778%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e197716197736%_))))
                                      (let ((_%hd197720197781%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197719197778%_)))
                                            (_%tl197721197783%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197719197778%_))))
                                        (let ((_%hd197786%_
                                               _%hd197720197781%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197721197783%_))
                                              (let ((_%e197722197788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197721197783%_))))
                                                (let ((_%hd197723197791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197722197788%_)))
                                                      (_%tl197724197793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197722197788%_))))
                                                  (let ((_%body197796%_
                                                         _%hd197723197791%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197724197793%_))
                                                        (_%generate1197715%_
                                                         _%hd197786%_
                                                         '#t
                                                         _%body197796%_)
                                                        (_%E197718197774%_)))))
                                              (_%E197718197774%_)))))
                                    (_%E197718197774%_)))))
                        (_%E197717197798%_)))))
                 (_%generate-match197280%_
                  (lambda (_%where197459%_
                           _%target197460%_
                           _%hd197461%_
                           _%mvars197462%_
                           _%K197463%_
                           _%E197464%_)
                    (letrec ((_%BUG197466%_
                              (lambda (_%q197708%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx197272%_
                                         _%hd197461%_
                                         _%q197708%_))))
                             (_%recur197467%_
                              (lambda (_%e197558%_
                                       _%vars197559%_
                                       _%target197560%_
                                       _%E197561%_
                                       _%k197562%_)
                                (let* ((_%e197563197570%_ _%e197558%_)
                                       (_%E197565197574%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e197563197570%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K197566197696%_
                                        (lambda (_%body197577%_ _%tag197578%_)
                                          (let ((_%$e197580%_ _%tag197578%_))
                                            (if (eq? 'any _%$e197580%_)
                                                (_%k197562%_ _%vars197559%_)
                                                (if (eq? 'id _%$e197580%_)
                                                    (let ((__tmp198623
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target197560%_)))
                                                          (__tmp198619
                                                           (let ((__tmp198621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp198622
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e197275%_
                                    _%body197577%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?197273%_
                             __tmp198622
                             _%target197560%_)))
                         (__tmp198620 (_%k197562%_ _%vars197559%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp198621 __tmp198620 _%E197561%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp198623 __tmp198619 _%E197561%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e197580%_)
                                                        (_%k197562%_
                                                         (cons (cons _%body197577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target197560%_)
                       _%vars197559%_))
                (if (eq? 'cons _%$e197580%_)
                    (let ((_%$e197583%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd197584%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl197585%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp198629
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target197560%_)))
                            (__tmp198624
                             (let ((__tmp198628
                                    (cons (cons (cons _%$e197583%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e197274%_
                                                         _%target197560%_))
                                                      '()))
                                          '()))
                                   (__tmp198625
                                    (let ((__tmp198627
                                           (cons (cons (cons _%$hd197584%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e197583%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl197585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e197583%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp198626
                                           (let* ((_%body197586197593%_
                                                   _%body197577%_)
                                                  (_%E197588197597%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body197586197593%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K197589197605%_
                                                   (lambda (_%tl197600%_
                                                            _%hd197601%_)
                                                     (_%recur197467%_
                                                      _%hd197601%_
                                                      _%vars197559%_
                                                      _%$hd197584%_
                                                      _%E197561%_
                                                      (lambda (_%vars197603%_)
                                                        (_%recur197467%_
                                                         _%tl197600%_
                                                         _%vars197603%_
                                                         _%$tl197585%_
                                                         _%E197561%_
                                                         _%k197562%_))))))
                                             (if (pair? _%body197586197593%_)
                                                 (let ((_%hd197590197608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body197586197593%_)))
                                                       (_%tl197591197610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body197586197593%_))))
                                                   (let* ((_%hd197613%_
                                                           _%hd197590197608%_)
                                                          (_%tl197615%_
                                                           _%tl197591197610%_))
                                                     (_%K197589197605%_
                                                      _%tl197615%_
                                                      _%hd197613%_)))
                                                 (_%E197588197597%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp198627
                                       __tmp198626))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp198628
                                __tmp198625))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp198629
                         __tmp198624
                         _%E197561%_)))
                    (if (eq? 'splice _%$e197580%_)
                        (let* ((_%body197616197623%_ _%body197577%_)
                               (_%E197618197627%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body197616197623%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K197619197678%_
                                (lambda (_%tl197630%_ _%hd197631%_)
                                  (let* ((_%rlen197633%_
                                          (_%splice-rlen197468%_ _%tl197630%_))
                                         (_%$target197635%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd197637%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl197639%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp197641%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e197643%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd197645%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl197647%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars197649%_
                                          (_%splice-vars197469%_ _%hd197631%_))
                                         (_%lvars197651%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars197649%_)))
                                         (_%tlvars197653%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars197649%_)))
                                         (_%linit197657%_
                                          (map (lambda (_%var197655%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars197651%_)))
                                    (letrec ((_%make-loop197660%_
                                              (lambda (_%vars197664%_)
                                                (let ((__tmp198631
                                                       (cons (cons (cons _%$lp197641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp198644
                                        (cons _%$hd197637%_ _%lvars197651%_))
                                       (__tmp198632
                                        (let ((__tmp198643
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd197637%_)))
                                              (__tmp198637
                                               (let ((__tmp198642
                                                      (cons (cons (cons _%$lp-e197643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e197274%_
                                   _%$hd197637%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp198638
                                                      (let ((__tmp198641
                                                             (cons (cons (cons _%$lp-hd197645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e197643%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl197647%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e197643%_))
                                             '()))
                                 '())))
                    (__tmp198639
                     (_%recur197467%_
                      _%hd197631%_
                      '()
                      _%$lp-hd197645%_
                      _%E197561%_
                      (lambda (_%hdvars197666%_)
                        (cons _%$lp197641%_
                              (cons _%$lp-tl197647%_
                                    (map (lambda (_%svar197668%_
                                                  _%lvar197669%_)
                                           (let ((__tmp198640
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar197668%_
                                                     _%hdvars197666%_
                                                     _%BUG197466%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp198640
                                              _%lvar197669%_)))
                                         _%svars197649%_
                                         _%lvars197651%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp198641 __tmp198639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp198642
                                                  __tmp198638)))
                                              (__tmp198633
                                               (let ((__tmp198636
                                                      (map (lambda (_%lvar197671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar197672%_)
                     (cons (cons _%tlvar197672%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar197671%_))
                                 '())))
                   _%lvars197651%_
                   _%tlvars197653%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp198634
                                                      (_%k197562%_
                                                       (let ((__tmp198635
                                                              (lambda (_%svar197674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar197675%_
                               _%r197676%_)
                        (cons (cons _%svar197674%_ _%tlvar197675%_)
                              _%r197676%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp198635
                  _%vars197664%_
                  _%svars197649%_
                  _%tlvars197653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp198636
                                                  __tmp198634))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp198643
                                           __tmp198637
                                           __tmp198633))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp198644
                                    __tmp198632))
                                 '()))
                     '()))
              (__tmp198630
               (cons _%$lp197641%_ (cons _%$target197635%_ _%linit197657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp198631
                                                   __tmp198630)))))
                                      (let ((_%body197662%_
                                             (let ((__tmp198646
                                                    (cons (cons (cons _%$target197635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl197639%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target197560%_
                                 _%rlen197633%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198645
                                                    (_%recur197467%_
                                                     _%tl197630%_
                                                     _%vars197559%_
                                                     _%$tl197639%_
                                                     _%E197561%_
                                                     _%make-loop197660%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp198646
                                                __tmp198645))))
                                        (let ((__tmp198650
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target197560%_)))
                                              (__tmp198647
                                               (if (zero? _%rlen197633%_)
                                                   _%body197662%_
                                                   (let ((__tmp198648
                                                          (let ((__tmp198649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target197560%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp198649 _%rlen197633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp198648
                                                      _%body197662%_
                                                      _%E197561%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp198650
                                           __tmp198647
                                           _%E197561%_))))))))
                          (if (pair? _%body197616197623%_)
                              (let ((_%hd197620197681%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body197616197623%_)))
                                    (_%tl197621197683%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body197616197623%_))))
                                (let* ((_%hd197686%_ _%hd197620197681%_)
                                       (_%tl197688%_ _%tl197621197683%_))
                                  (_%K197619197678%_
                                   _%tl197688%_
                                   _%hd197686%_)))
                              (_%E197618197627%_)))
                        (if (eq? 'null _%$e197580%_)
                            (let ((__tmp198652
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target197560%_)))
                                  (__tmp198651 (_%k197562%_ _%vars197559%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp198652
                               __tmp198651
                               _%E197561%_))
                            (if (eq? 'vector _%$e197580%_)
                                (let ((_%$e197690%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp198657
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target197560%_)))
                                        (__tmp198653
                                         (let ((__tmp198655
                                                (cons (cons (cons _%$e197690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp198656
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e197274%_
                                    _%target197560%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp198656))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp198654
                                                (_%recur197467%_
                                                 _%body197577%_
                                                 _%vars197559%_
                                                 _%$e197690%_
                                                 _%E197561%_
                                                 _%k197562%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp198655
                                            __tmp198654))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp198657
                                     __tmp198653
                                     _%E197561%_)))
                                (if (eq? 'box _%$e197580%_)
                                    (let ((_%$e197692%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp198662
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target197560%_)))
                                            (__tmp198658
                                             (let ((__tmp198660
                                                    (cons (cons (cons _%$e197692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp198661
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e197274%_
                                        _%target197560%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp198661))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198659
                                                    (_%recur197467%_
                                                     _%body197577%_
                                                     _%vars197559%_
                                                     _%$e197692%_
                                                     _%E197561%_
                                                     _%k197562%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp198660
                                                __tmp198659))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp198662
                                         __tmp198658
                                         _%E197561%_)))
                                    (if (eq? 'datum _%$e197580%_)
                                        (let ((_%$e197694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp198668
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target197560%_)))
                                                (__tmp198663
                                                 (let ((__tmp198667
                                                        (cons (cons (cons _%$e197694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target197560%_))
                                  '()))
                      '()))
               (__tmp198664
                (let ((__tmp198666
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e197694%_ _%body197577%_)))
                      (__tmp198665 (_%k197562%_ _%vars197559%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp198666 __tmp198665 _%E197561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp198667
                                                    __tmp198664))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp198668
                                             __tmp198663
                                             _%E197561%_)))
                                        (_%BUG197466%_
                                         _%e197558%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e197563197570%_)
                                      (let ((_%hd197567197699%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197563197570%_)))
                                            (_%tl197568197701%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197563197570%_))))
                                        (let* ((_%tag197704%_
                                                _%hd197567197699%_)
                                               (_%body197706%_
                                                _%tl197568197701%_))
                                          (_%K197566197696%_
                                           _%body197706%_
                                           _%tag197704%_)))
                                      (_%E197565197574%_)))))
                             (_%splice-rlen197468%_
                              (lambda (_%e197520%_)
                                (let _%lp197522%_ ((_%e197524%_ _%e197520%_)
                                                   (_%n197525%_ '0))
                                  (let* ((_%e197526197533%_ _%e197524%_)
                                         (_%E197528197537%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e197526197533%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K197529197546%_
                                          (lambda (_%body197540%_
                                                   _%tag197541%_)
                                            (let ((_%$e197543%_ _%tag197541%_))
                                              (if (eq? 'splice _%$e197543%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx197272%_
                                                     _%where197459%_))
                                                  (if (eq? 'cons _%$e197543%_)
                                                      (_%lp197522%_
                                                       (cdr _%body197540%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n197525%_
                                                                '1)))
                                                      _%n197525%_))))))
                                    (if (pair? _%e197526197533%_)
                                        (let ((_%hd197530197549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197526197533%_)))
                                              (_%tl197531197551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197526197533%_))))
                                          (let* ((_%tag197554%_
                                                  _%hd197530197549%_)
                                                 (_%body197556%_
                                                  _%tl197531197551%_))
                                            (_%K197529197546%_
                                             _%body197556%_
                                             _%tag197554%_)))
                                        (_%E197528197537%_))))))
                             (_%splice-vars197469%_
                              (lambda (_%e197476%_)
                                (let _%recur197478%_ ((_%e197480%_ _%e197476%_)
                                                      (_%vars197481%_ '()))
                                  (let* ((_%e197482197489%_ _%e197480%_)
                                         (_%E197484197493%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e197482197489%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K197485197508%_
                                          (lambda (_%body197496%_
                                                   _%tag197497%_)
                                            (let ((_%$e197499%_ _%tag197497%_))
                                              (if (eq? 'var _%$e197499%_)
                                                  (cons _%body197496%_
                                                        _%vars197481%_)
                                                  (if (or (eq? 'cons
                                                               _%$e197499%_)
                                                          (eq? 'splice
                                                               _%$e197499%_))
                                                      (_%recur197478%_
                                                       (cdr _%body197496%_)
                                                       (_%recur197478%_
                                                        (car _%body197496%_)
                                                        _%vars197481%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e197499%_)
                      (eq? 'box _%$e197499%_))
                  (_%recur197478%_ _%body197496%_ _%vars197481%_)
                  _%vars197481%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e197482197489%_)
                                        (let ((_%hd197486197511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197482197489%_)))
                                              (_%tl197487197513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197482197489%_))))
                                          (let* ((_%tag197516%_
                                                  _%hd197486197511%_)
                                                 (_%body197518%_
                                                  _%tl197487197513%_))
                                            (_%K197485197508%_
                                             _%body197518%_
                                             _%tag197516%_)))
                                        (_%E197484197493%_))))))
                             (_%make-body197470%_
                              (lambda (_%vars197472%_)
                                (cons _%K197463%_
                                      (map (lambda (_%mvar197474%_)
                                             (let ((__tmp198669
                                                    (car _%mvar197474%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp198669
                                                _%vars197472%_
                                                _%BUG197466%_)))
                                           _%mvars197462%_)))))
                      (_%recur197467%_
                       _%hd197461%_
                       '()
                       _%target197460%_
                       _%E197464%_
                       _%make-body197470%_))))
                 (_%parse-clause197281%_
                  (lambda (_%hd197353%_ _%ids197354%_)
                    (let _%recur197356%_ ((_%e197358%_ _%hd197353%_)
                                          (_%vars197359%_ '())
                                          (_%depth197360%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e197358%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e197358%_))
                              (values '(any) _%vars197359%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e197358%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx197272%_
                                     _%hd197353%_))
                                  (if (let ((__tmp198670
                                             (lambda (_%id197365%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e197358%_
                                                  _%id197365%_)))))
                                        (declare (not safe))
                                        (__find __tmp198670 _%ids197354%_))
                                      (values (cons 'id _%e197358%_)
                                              _%vars197359%_)
                                      (if (let ((__tmp198671
                                                 (lambda (_%var197368%_)
                                                   (let ((__tmp198672
                                                          (car _%var197368%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e197358%_
                                                      __tmp198672)))))
                                            (declare (not safe))
                                            (__find __tmp198671
                                                    _%vars197359%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx197272%_
                                             _%e197358%_))
                                          (values (cons 'var _%e197358%_)
                                                  (cons (cons _%e197358%_
                                                              _%depth197360%_)
                                                        _%vars197359%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e197358%_))
                              (let* ((_%e197372197379%_ _%e197358%_)
                                     (_%E197374197383%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e197372197379%_))))
                                     (_%E197373197444%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e197372197379%_))
                                            (let ((_%e197375197387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e197372197379%_))))
                                              (let ((_%hd197376197390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197375197387%_)))
                                                    (_%tl197377197392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197375197387%_))))
                                                (let* ((_%hd197395%_
                                                        _%hd197376197390%_)
                                                       (_%rest197397%_
                                                        _%tl197377197392%_)
                                                       (_%make-pair197412%_
                                                        (lambda (_%tag197399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd197400%_
                         _%tl197401%_)
                  (let* ((_%hd-depth197403%_
                          (if (eq? _%tag197399%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth197360%_ '1))
                              _%depth197360%_))
                         (_g198673_
                          (_%recur197356%_
                           _%hd197400%_
                           _%vars197359%_
                           _%hd-depth197403%_)))
                    (begin
                      (let ((_g198674_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g198673_)
                                   (##values-length _g198673_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g198674_ 2)))
                            (error "Context expects 2 values" _g198674_)))
                      (let ((_%hd197405%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g198673_ 0)))
                            (_%vars197406%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g198673_ 1))))
                        (let ((_g198675_
                               (_%recur197356%_
                                _%tl197401%_
                                _%vars197406%_
                                _%depth197360%_)))
                          (begin
                            (let ((_g198676_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g198675_)
                                         (##values-length _g198675_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g198676_ 2)))
                                  (error "Context expects 2 values"
                                         _g198676_)))
                            (let ((_%tl197408%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g198675_ 0)))
                                  (_%vars197409%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g198675_ 1))))
                              (values (cons _%tag197399%_
                                            (cons _%hd197405%_ _%tl197408%_))
                                      _%vars197409%_)))))))))
               (_%e197413197420%_ _%rest197397%_)
               (_%E197415197424%_
                (lambda ()
                  (_%make-pair197412%_ 'cons _%hd197395%_ _%rest197397%_)))
               (_%E197414197440%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e197413197420%_))
                      (let ((_%e197416197428%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e197413197420%_))))
                        (let ((_%hd197417197431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197416197428%_)))
                              (_%tl197418197433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197416197428%_))))
                          (let* ((_%rest-hd197436%_ _%hd197417197431%_)
                                 (_%rest-tl197438%_ _%tl197418197433%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd197436%_))
                                (_%make-pair197412%_
                                 'splice
                                 _%hd197395%_
                                 _%rest-tl197438%_)
                                (_%make-pair197412%_
                                 'cons
                                 _%hd197395%_
                                 _%rest197397%_)))))
                      (_%E197415197424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E197414197440%_))))
                                            (_%E197374197383%_)))))
                                (_%E197373197444%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e197358%_))
                                  (values '(null) _%vars197359%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e197358%_))
                                      (let ((_g198677_
                                             (_%recur197356%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e197358%_)))
                                              _%vars197359%_
                                              _%depth197360%_)))
                                        (begin
                                          (let ((_g198678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g198677_)
                                                       (##values-length
                                                        _g198677_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g198678_ 2)))
                                                (error "Context expects 2 values"
                                                       _g198678_)))
                                          (let ((_%e197450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g198677_ 0)))
                                                (_%vars197451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g198677_
                                                    1))))
                                            (values (cons 'vector _%e197450%_)
                                                    _%vars197451%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e197358%_))
                                          (let ((_g198679_
                                                 (_%recur197356%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e197358%_)))
                                                  _%vars197359%_
                                                  _%depth197360%_)))
                                            (begin
                                              (let ((_g198680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g198679_)
                                                           (##values-length
                                                            _g198679_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g198680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g198680_)))
                                              (let ((_%e197454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g198679_
                                                        0)))
                                                    (_%vars197455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g198679_
                                                        1))))
                                                (values (cons 'box _%e197454%_)
                                                        _%vars197455%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e197358%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e197358%_)))
                                                      _%vars197359%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx197272%_
                                                 _%e197358%_))))))))))))
          (let* ((_%e197282197295%_ _%stx197272%_)
                 (_%E197284197299%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e197282197295%_))))
                 (_%E197283197349%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e197282197295%_))
                        (let ((_%e197285197303%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e197282197295%_))))
                          (let ((_%hd197286197306%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197285197303%_)))
                                (_%tl197287197308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197285197303%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197287197308%_))
                                (let ((_%e197288197311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197287197308%_))))
                                  (let ((_%hd197289197314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197288197311%_)))
                                        (_%tl197290197316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197288197311%_))))
                                    (let ((_%expr197319%_ _%hd197289197314%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197290197316%_))
                                          (let ((_%e197291197321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl197290197316%_))))
                                            (let ((_%hd197292197324%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197291197321%_)))
                                                  (_%tl197293197326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197291197321%_))))
                                              (let* ((_%ids197329%_
                                                      _%hd197292197324%_)
                                                     (_%clauses197331%_
                                                      _%tl197293197326%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids197329%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses197331%_))
                                                        (let* ((_%ids197336%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids197329%_)))
                       (_%clauses197338%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses197331%_)))
                       (_%clause-ids197340%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses197338%_)))
                       (_%E197342%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target197344%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first197346%_
                        (if (null? _%clauses197338%_)
                            _%E197342%_
                            (car _%clause-ids197340%_))))
                  (let ((__tmp198682
                         (let ((__tmp198683
                                (let ((__tmp198685
                                       (let ((__tmp198687
                                              (cons (cons (cons _%E197342%_
                                                                '())
                                                          (cons (let ((__tmp198689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target197344%_ '()))
                              (__tmp198688
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target197344%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp198689 __tmp198688))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp198686
                                              (_%generate-body197278%_
                                               (_%generate-bindings197277%_
                                                _%target197344%_
                                                _%ids197336%_
                                                _%clauses197338%_
                                                _%clause-ids197340%_
                                                _%E197342%_)
                                               (cons _%first197346%_
                                                     (cons _%expr197319%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp198687
                                          __tmp198686)))
                                      (__tmp198684
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx197272%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp198685
                                   __tmp198684))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp198683)))
                        (__tmp198681
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx197272%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp198682 __tmp198681)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx197272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx197272%_
                                                       _%ids197329%_))))))
                                          (_%E197284197299%_)))))
                                (_%E197284197299%_))))
                        (_%E197284197299%_)))))
            (_%E197283197349%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx197997%_)
        (let* ((_%identifier=?197999%_ 'free-identifier=?)
               (_%unwrap-e198001%_ 'syntax-e)
               (_%wrap-e198003%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx197997%_
           _%identifier=?197999%_
           _%unwrap-e198001%_
           _%wrap-e198003%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx198005%_ _%identifier=?198006%_)
        (let* ((_%unwrap-e198008%_ 'syntax-e) (_%wrap-e198010%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198005%_
           _%identifier=?198006%_
           _%unwrap-e198008%_
           _%wrap-e198010%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx198012%_ _%identifier=?198013%_ _%unwrap-e198014%_)
        (let ((_%wrap-e198016%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198012%_
           _%identifier=?198013%_
           _%unwrap-e198014%_
           _%wrap-e198016%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g198690_
        (let ((_g198691_ (let () (declare (not safe)) (##length _g198690_))))
          (cond ((let () (declare (not safe)) (##fx= _g198691_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g198690_))
                ((let () (declare (not safe)) (##fx= _g198691_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g198690_))
                ((let () (declare (not safe)) (##fx= _g198691_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g198690_))
                ((let () (declare (not safe)) (##fx= _g198691_ 4))
                 (apply gx#macro-expand-syntax-case__% _g198690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g198690_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx197269%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx197269%_))
            (let ((__tmp198692
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx197269%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp198692 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd197227%_ . _%rest197228%_)
        (let ((_%len197230%_ (length _%hd197227%_)))
          (let _%lp197232%_ ((_%rest197234%_ _%rest197228%_))
            (let* ((_%rest197235197243%_ _%rest197234%_)
                   (_%else197237197251%_ (lambda () '#!void))
                   (_%K197239197257%_
                    (lambda (_%rest197254%_ _%hd197255%_)
                      (if (let ((__tmp198693 (length _%hd197255%_)))
                            (declare (not safe))
                            (##fx= _%len197230%_ __tmp198693))
                          (_%lp197232%_ _%rest197254%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd197255%_))))))
              (if (pair? _%rest197235197243%_)
                  (let ((_%hd197240197260%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest197235197243%_)))
                        (_%tl197241197262%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest197235197243%_))))
                    (let* ((_%hd197265%_ _%hd197240197260%_)
                           (_%rest197267%_ _%tl197241197262%_))
                      (_%K197239197257%_ _%rest197267%_ _%hd197265%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx197177%_ _%n197178%_)
        (let _%lp197180%_ ((_%rest197183%_ _%stx197177%_) (_%r197185%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest197183%_))
              (let* ((_%g197187197194%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest197183%_)))
                     (_%E197189197198%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g197187197194%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K197190197205%_
                      (lambda (_%rest197201%_ _%hd197202%_)
                        (_%lp197180%_
                         _%rest197201%_
                         (cons _%hd197202%_ _%r197185%_)))))
                (if (pair? _%g197187197194%_)
                    (let ((_%hd197191197208%_
                           (let ()
                             (declare (not safe))
                             (##car _%g197187197194%_)))
                          (_%tl197192197210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g197187197194%_))))
                      (let* ((_%hd197213%_ _%hd197191197208%_)
                             (_%rest197215%_ _%tl197192197210%_))
                        (_%K197190197205%_ _%rest197215%_ _%hd197213%_)))
                    (_%E197189197198%_)))
              (let _%lp197217%_ ((_%n197219%_ _%n197178%_)
                                 (_%l197220%_ _%r197185%_)
                                 (_%r197222%_ _%rest197183%_))
                (if (null? _%l197220%_)
                    (values _%l197220%_ _%r197222%_)
                    (if (fxpositive? _%n197219%_)
                        (_%lp197217%_
                         (let () (declare (not safe)) (##fx- _%n197219%_ '1))
                         (cdr _%l197220%_)
                         (cons (car _%l197220%_) _%r197222%_))
                        (values (reverse! _%l197220%_) _%r197222%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx197127%_ _%n197128%_)
        (let _%lp197130%_ ((_%rest197133%_ _%stx197127%_) (_%r197135%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest197133%_))
              (let* ((_%g197137197144%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest197133%_)))
                     (_%E197139197148%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g197137197144%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K197140197155%_
                      (lambda (_%rest197151%_ _%hd197152%_)
                        (_%lp197130%_
                         _%rest197151%_
                         (cons _%hd197152%_ _%r197135%_)))))
                (if (pair? _%g197137197144%_)
                    (let ((_%hd197141197158%_
                           (let ()
                             (declare (not safe))
                             (##car _%g197137197144%_)))
                          (_%tl197142197160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g197137197144%_))))
                      (let* ((_%hd197163%_ _%hd197141197158%_)
                             (_%rest197165%_ _%tl197142197160%_))
                        (_%K197140197155%_ _%rest197165%_ _%hd197163%_)))
                    (_%E197139197148%_)))
              (let _%lp197167%_ ((_%n197169%_ _%n197128%_)
                                 (_%l197170%_ _%r197135%_)
                                 (_%r197172%_ _%rest197133%_))
                (if (null? _%l197170%_)
                    (vector _%l197170%_ _%r197172%_)
                    (if (fxpositive? _%n197169%_)
                        (_%lp197167%_
                         (let () (declare (not safe)) (##fx- _%n197169%_ '1))
                         (cdr _%l197170%_)
                         (cons (car _%l197170%_) _%r197172%_))
                        (vector (reverse! _%l197170%_) _%r197172%_))))))))))
