(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1713454411)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp131637 (list gx#expander::t))
            (__tmp131636 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp131637
         '(id depth)
         __tmp131636
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args131633%_
        (apply make-instance gx#syntax-pattern::t _%$args131633%_)))
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
      (lambda (_%self130240131617%_ _%stx131619%_)
        (let* ((_%self131621%_ _%self130240131617%_)
               (_%self131623%_ _%self131621%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx131619%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx131083%_)
        (letrec ((_%generate131085%_
                  (lambda (_%e131325%_)
                    (letrec ((_%BUG131327%_
                              (lambda (_%q131492%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx131083%_
                                         _%e131325%_
                                         _%q131492%_))))
                             (_%local-pattern-e131328%_
                              (lambda (_%pat131490%_)
                                (let ((__tmp131638
                                       (##structure-ref
                                        _%pat131490%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp131638))))
                             (_%getvar131329%_
                              (lambda (_%q131487%_ _%vars131488%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q131487%_
                                   _%vars131488%_
                                   _%BUG131327%_))))
                             (_%getarg131330%_
                              (lambda (_%arg131453%_ _%vars131454%_)
                                (let* ((_%arg131455131462%_ _%arg131453%_)
                                       (_%E131457131466%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg131455131462%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K131458131475%_
                                        (lambda (_%e131469%_ _%tag131470%_)
                                          (let ((_%$e131472%_ _%tag131470%_))
                                            (if (eq? 'ref _%$e131472%_)
                                                (_%getvar131329%_
                                                 _%e131469%_
                                                 _%vars131454%_)
                                                (if (eq? 'pattern _%$e131472%_)
                                                    (_%local-pattern-e131328%_
                                                     _%e131469%_)
                                                    (_%BUG131327%_
                                                     _%arg131453%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg131455131462%_))
                                      (let ((_%hd131459131478%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg131455131462%_)))
                                            (_%tl131460131480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg131455131462%_))))
                                        (let* ((_%tag131483%_
                                                _%hd131459131478%_)
                                               (_%e131485%_
                                                _%tl131460131480%_))
                                          (_%K131458131475%_
                                           _%e131485%_
                                           _%tag131483%_)))
                                      (_%E131457131466%_))))))
                      (let _%recur131332%_ ((_%e131334%_ _%e131325%_)
                                            (_%vars131335%_ '()))
                        (let* ((_%e131336131343%_ _%e131334%_)
                               (_%E131338131347%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e131336131343%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K131339131441%_
                                (lambda (_%body131350%_ _%tag131351%_)
                                  (let ((_%$e131353%_ _%tag131351%_))
                                    (if (eq? 'datum _%$e131353%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body131350%_))
                                        (if (eq? 'term _%$e131353%_)
                                            (let ((_%id131356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body131350%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id131356%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks131359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id131356%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks131359%_)
                                                        (let ((__tmp131639
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body131350%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp131639))
                (let ((__tmp131641
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body131350%_)))
                      (__tmp131640
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body131350%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp131641
                   __tmp131640
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id131356%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body131350%_))
                                                      (_%BUG131327%_
                                                       _%e131334%_))))
                                            (if (eq? 'pattern _%$e131353%_)
                                                (_%local-pattern-e131328%_
                                                 _%body131350%_)
                                                (if (eq? 'ref _%$e131353%_)
                                                    (_%getvar131329%_
                                                     _%body131350%_
                                                     _%vars131335%_)
                                                    (if (eq? 'cons
                                                             _%$e131353%_)
                                                        (let ((__tmp131643
                                                               (_%recur131332%_
                                                                (car _%body131350%_)
                                                                _%vars131335%_))
                                                              (__tmp131642
                                                               (_%recur131332%_
                                                                (cdr _%body131350%_)
                                                                _%vars131335%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp131643
                                                           __tmp131642))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e131353%_)
                    (let ((__tmp131644
                           (_%recur131332%_ _%body131350%_ _%vars131335%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp131644))
                    (if (eq? 'box _%$e131353%_)
                        (let ((__tmp131645
                               (_%recur131332%_
                                _%body131350%_
                                _%vars131335%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp131645))
                        (if (eq? 'splice _%$e131353%_)
                            (let* ((_%body131362131373%_ _%body131350%_)
                                   (_%E131364131377%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body131362131373%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K131365131415%_
                                    (lambda (_%args131380%_
                                             _%iv131381%_
                                             _%hd131382%_
                                             _%depth131383%_)
                                      (let* ((_%targets131389%_
                                              (map (lambda (_%g131384131386%_)
                                                     (_%getarg131330%_
                                                      _%g131384131386%_
                                                      _%vars131335%_))
                                                   _%args131380%_))
                                             (_%fold-in131391%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args131380%_)))
                                             (_%fold-out131393%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args131395%_
                                              (let ((__tmp131646
                                                     (cons _%fold-out131393%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp131646
                                                 _%fold-in131391%_)))
                                             (_%lambda-body131412%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth131383%_ '1))
                                                  (let ((_%r-args131403%_
                                                         (map (lambda (_%arg131397%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg131397%_)))
                      _%args131380%_))
                (_%r-vars131404%_
                 (let ((__tmp131647
                        (lambda (_%arg131399%_ _%var131400%_ _%r131401%_)
                          (cons (cons (cdr _%arg131399%_) _%var131400%_)
                                _%r131401%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp131647
                    _%vars131335%_
                    _%args131380%_
                    _%fold-in131391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur131332%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth131383%_ '1))
                         (cons _%hd131382%_
                               (cons (cons 'var _%fold-out131393%_)
                                     _%r-args131403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars131404%_))
                                                  (let* ((_%hd-vars131410%_
                                                          (let ((__tmp131648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg131406%_ _%var131407%_ _%r131408%_)
                           (cons (cons (cdr _%arg131406%_) _%var131407%_)
                                 _%r131408%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp131648
                     _%vars131335%_
                     _%args131380%_
                     _%fold-in131391%_)))
                 (__tmp131649
                  (_%recur131332%_ _%hd131382%_ _%hd-vars131410%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp131649
                                                     _%fold-out131393%_)))))
                                        (let ((__tmp131653
                                               (if (let ((__tmp131654
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets131389%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp131654 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets131389%_))
                                                   '#!void))
                                              (__tmp131650
                                               (let ((__tmp131652
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args131395%_
                                                         _%lambda-body131412%_)))
                                                     (__tmp131651
                                                      (_%recur131332%_
                                                       _%iv131381%_
                                                       _%vars131335%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp131652
                                                  __tmp131651
                                                  _%targets131389%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp131653
                                           __tmp131650))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body131362131373%_))
                                  (let ((_%hd131366131418%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body131362131373%_)))
                                        (_%tl131367131420%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body131362131373%_))))
                                    (let ((_%depth131423%_ _%hd131366131418%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl131367131420%_))
                                          (let ((_%hd131368131425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl131367131420%_)))
                                                (_%tl131369131427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl131367131420%_))))
                                            (let ((_%hd131430%_
                                                   _%hd131368131425%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl131369131427%_))
                                                  (let ((_%hd131370131432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl131369131427%_)))
                                                        (_%tl131371131434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl131369131427%_))))
                                                    (let* ((_%iv131437%_
                                                            _%hd131370131432%_)
                                                           (_%args131439%_
                                                            _%tl131371131434%_))
                                                      (_%K131365131415%_
                                                       _%args131439%_
                                                       _%iv131437%_
                                                       _%hd131430%_
                                                       _%depth131423%_)))
                                                  (_%E131364131377%_))))
                                          (_%E131364131377%_))))
                                  (_%E131364131377%_)))
                            (if (eq? 'var _%$e131353%_)
                                _%body131350%_
                                (_%BUG131327%_ _%e131334%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e131336131343%_))
                              (let ((_%hd131340131444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e131336131343%_)))
                                    (_%tl131341131446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e131336131343%_))))
                                (let* ((_%tag131449%_ _%hd131340131444%_)
                                       (_%body131451%_ _%tl131341131446%_))
                                  (_%K131339131441%_
                                   _%body131451%_
                                   _%tag131449%_)))
                              (_%E131338131347%_)))))))
                 (_%parse131086%_
                  (lambda (_%e131127%_)
                    (letrec ((_%make-cons131129%_
                              (lambda (_%hd131317%_ _%tl131318%_)
                                (let ((_g131655_ _%hd131317%_)
                                      (_g131657_ _%tl131318%_))
                                  (begin
                                    (let ((_g131656_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131655_)
                                                 (##vector-length _g131655_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131656_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131656_)))
                                    (let ((_g131658_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131657_)
                                                 (##vector-length _g131657_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131658_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131658_)))
                                    (let ((_%hd-e131320%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131655_ 0)))
                                          (_%hd-vars131321%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131655_ 1))))
                                      (let ((_%tl-e131322%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131657_ 0)))
                                            (_%tl-vars131323%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131657_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e131320%_
                                                            _%tl-e131322%_))
                                                (append _%hd-vars131321%_
                                                        _%tl-vars131323%_))))))))
                             (_%make-splice131130%_
                              (lambda (_%where131253%_
                                       _%depth131254%_
                                       _%hd131255%_
                                       _%tl131256%_)
                                (let ((_g131659_ _%hd131255%_)
                                      (_g131661_ _%tl131256%_))
                                  (begin
                                    (let ((_g131660_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131659_)
                                                 (##vector-length _g131659_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131660_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131660_)))
                                    (let ((_g131662_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131661_)
                                                 (##vector-length _g131661_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131662_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131662_)))
                                    (let ((_%hd-e131258%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131659_ 0)))
                                          (_%hd-vars131259%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131659_ 1))))
                                      (let ((_%tl-e131260%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131661_ 0)))
                                            (_%tl-vars131261%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131661_ 1))))
                                        (let _%lp131263%_ ((_%rest131265%_
                                                            _%hd-vars131259%_)
                                                           (_%targets131266%_
                                                            '())
                                                           (_%vars131267%_
                                                            _%tl-vars131261%_))
                                          (let* ((_%rest131268131278%_
                                                  _%rest131265%_)
                                                 (_%else131270131286%_
                                                  (lambda ()
                                                    (if (null? _%targets131266%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx131083%_
                                                           _%where131253%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth131254%_
                                    (cons _%hd-e131258%_
                                          (cons _%tl-e131260%_
                                                _%targets131266%_))))
                        _%vars131267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K131272131298%_
                                                  (lambda (_%rest131289%_
                                                           _%hd-pat131290%_
                                                           _%hd-depth*131291%_)
                                                    (let ((_%hd-depth131293%_
                                                           (fx- _%hd-depth*131291%_
                                                                _%depth131254%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth131293%_))
                                                          (_%lp131263%_
                                                           _%rest131289%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat131290%_)
                         _%targets131266%_)
                   (cons (cons _%hd-depth131293%_ _%hd-pat131290%_)
                         _%vars131267%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth131293%_))
                      (_%lp131263%_
                       _%rest131289%_
                       (cons (cons 'pattern _%hd-pat131290%_)
                             _%targets131266%_)
                       _%vars131267%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx131083%_
                         _%where131253%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest131268131278%_))
                                                (let ((_%hd131273131301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest131268131278%_)))
                                                      (_%tl131274131303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest131268131278%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd131273131301%_))
                                                      (let ((_%hd131275131306%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd131273131301%_)))
                    (_%tl131276131308%_
                     (let () (declare (not safe)) (##cdr _%hd131273131301%_))))
                (let* ((_%hd-depth*131311%_ _%hd131275131306%_)
                       (_%hd-pat131313%_ _%tl131276131308%_)
                       (_%rest131315%_ _%tl131274131303%_))
                  (_%K131272131298%_
                   _%rest131315%_
                   _%hd-pat131313%_
                   _%hd-depth*131311%_)))
              (_%else131270131286%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else131270131286%_))))))))))
                             (_%recur131131%_
                              (lambda (_%e131136%_ _%is-e?131137%_)
                                (if (_%is-e?131137%_ _%e131136%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx131083%_))
                                    (if (gx#syntax-local-pattern? _%e131136%_)
                                        (let* ((_%pat131141%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e131136%_)))
                                               (_%depth131143%_
                                                (##structure-ref
                                                 _%pat131141%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth131143%_)
                                              (values (cons 'ref _%pat131141%_)
                                                      (cons (cons _%depth131143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat131141%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat131141%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e131136%_))
                                            (values (cons 'term _%e131136%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e131136%_))
                                                (let* ((_%e131147131154%_
                                                        _%e131136%_)
                                                       (_%E131149131158%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e131147131154%_))))
                                                       (_%E131148131240%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e131147131154%_))
                      (let ((_%e131150131162%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e131147131154%_))))
                        (let ((_%hd131151131165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131150131162%_)))
                              (_%tl131152131167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131150131162%_))))
                          (let* ((_%hd131170%_ _%hd131151131165%_)
                                 (_%rest131172%_ _%tl131152131167%_))
                            (if (_%is-e?131137%_ _%hd131170%_)
                                (let* ((_%e131173131180%_ _%rest131172%_)
                                       (_%E131175131184%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx131083%_
                                             _%e131136%_))))
                                       (_%E131174131198%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e131173131180%_))
                                              (let ((_%e131176131188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e131173131180%_))))
                                                (let ((_%hd131177131191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e131176131188%_)))
                                                      (_%tl131178131193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e131176131188%_))))
                                                  (let ((_%rest131196%_
                                                         _%hd131177131191%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl131178131193%_))
                                                        (_%recur131131%_
                                                         _%rest131196%_
                                                         false)
                                                        (_%E131175131184%_)))))
                                              (_%E131175131184%_)))))
                                  (_%E131174131198%_))
                                (let _%lp131202%_ ((_%rest131204%_
                                                    _%rest131172%_)
                                                   (_%depth131205%_ '0))
                                  (let* ((_%e131206131213%_ _%rest131204%_)
                                         (_%E131208131217%_
                                          (lambda ()
                                            (if (fxpositive? _%depth131205%_)
                                                (_%make-splice131130%_
                                                 _%e131136%_
                                                 _%depth131205%_
                                                 (_%recur131131%_
                                                  _%hd131170%_
                                                  _%is-e?131137%_)
                                                 (_%recur131131%_
                                                  _%rest131204%_
                                                  _%is-e?131137%_))
                                                (_%make-cons131129%_
                                                 (_%recur131131%_
                                                  _%hd131170%_
                                                  _%is-e?131137%_)
                                                 (_%recur131131%_
                                                  _%rest131204%_
                                                  _%is-e?131137%_)))))
                                         (_%E131207131236%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e131206131213%_))
                                                (let ((_%e131209131221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e131206131213%_))))
                                                  (let ((_%hd131210131224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e131209131221%_)))
                                                        (_%tl131211131226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e131209131221%_))))
                                                    (let* ((_%rest-hd131229%_
                                                            _%hd131210131224%_)
                                                           (_%rest-tl131231%_
                                                            _%tl131211131226%_))
                                                      (if (_%is-e?131137%_
                                                           _%rest-hd131229%_)
                                                          (_%lp131202%_
                                                           _%rest-tl131231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth131205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth131205%_)
                      (_%make-splice131130%_
                       _%e131136%_
                       _%depth131205%_
                       (_%recur131131%_ _%hd131170%_ _%is-e?131137%_)
                       (_%recur131131%_ _%rest131204%_ _%is-e?131137%_))
                      (_%make-cons131129%_
                       (_%recur131131%_ _%hd131170%_ _%is-e?131137%_)
                       (_%recur131131%_ _%rest131204%_ _%is-e?131137%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131208131217%_)))))
                                    (_%E131207131236%_)))))))
                      (_%E131149131158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131148131240%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e131136%_))
                                                    (let ((_g131663_
                                                           (_%recur131131%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e131136%_)))
                    _%is-e?131137%_)))
              (begin
                (let ((_g131664_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g131663_)
                             (##vector-length _g131663_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g131664_ 2)))
                      (error "Context expects 2 values" _g131664_)))
                (let ((_%e131245%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131663_ 0)))
                      (_%vars131246%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131663_ 1))))
                  (values (cons 'vector _%e131245%_) _%vars131246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e131136%_))
                                                        (let ((_g131665_
                                                               (_%recur131131%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e131136%_)))
                        _%is-e?131137%_)))
                  (begin
                    (let ((_g131666_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g131665_)
                                 (##vector-length _g131665_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g131666_ 2)))
                          (error "Context expects 2 values" _g131666_)))
                    (let ((_%e131249%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131665_ 0)))
                          (_%vars131250%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131665_ 1))))
                      (values (cons 'box _%e131249%_) _%vars131250%_))))
                (values (cons 'datum _%e131136%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g131667_
                             (_%recur131131%_ _%e131127%_ gx#ellipsis?)))
                        (begin
                          (let ((_g131668_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g131667_)
                                       (##vector-length _g131667_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g131668_ 2)))
                                (error "Context expects 2 values" _g131668_)))
                          (let ((_%tree131133%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131667_ 0)))
                                (_%vars131134%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131667_ 1))))
                            (if (null? _%vars131134%_)
                                _%tree131133%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx131083%_
                                   _%vars131134%_))))))))))
          (let* ((_%e131087131097%_ _%stx131083%_)
                 (_%E131089131101%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx131083%_))))
                 (_%E131088131123%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131087131097%_))
                        (let ((_%e131090131105%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131087131097%_))))
                          (let ((_%hd131091131108%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131090131105%_)))
                                (_%tl131092131110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131090131105%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131092131110%_))
                                (let ((_%e131093131113%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131092131110%_))))
                                  (let ((_%hd131094131116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131093131113%_)))
                                        (_%tl131095131118%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131093131113%_))))
                                    (let ((_%form131121%_ _%hd131094131116%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl131095131118%_))
                                          (let ((__tmp131670
                                                 (_%generate131085%_
                                                  (_%parse131086%_
                                                   _%form131121%_)))
                                                (__tmp131669
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx131083%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp131670
                                             __tmp131669))
                                          (_%E131089131101%_)))))
                                (_%E131089131101%_))))
                        (_%E131089131101%_)))))
            (_%E131088131123%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx130332%_
               _%identifier=?130333%_
               _%unwrap-e130334%_
               _%wrap-e130335%_)
        (letrec ((_%generate-bindings130337%_
                  (lambda (_%target130947%_
                           _%ids130948%_
                           _%clauses130949%_
                           _%clause-ids130950%_
                           _%E130951%_)
                    (letrec ((_%generate1130953%_
                              (lambda (_%clause131050%_
                                       _%clause-id131051%_
                                       _%E131052%_)
                                (cons (cons _%clause-id131051%_ '())
                                      (cons (let ((__tmp131672
                                                   (cons _%target130947%_ '()))
                                                  (__tmp131671
                                                   (_%generate-clause130339%_
                                                    _%target130947%_
                                                    _%ids130948%_
                                                    _%clause131050%_
                                                    _%E131052%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp131672
                                               __tmp131671))
                                            '())))))
                      (let _%lp130955%_ ((_%rest130957%_ _%clauses130949%_)
                                         (_%rest-ids130958%_
                                          _%clause-ids130950%_)
                                         (_%bindings130959%_ '()))
                        (let* ((_%rest130960130968%_ _%rest130957%_)
                               (_%else130962130976%_
                                (lambda () _%bindings130959%_))
                               (_%K130964131038%_
                                (lambda (_%rest130979%_ _%clause130980%_)
                                  (let* ((_%rest-ids130981130988%_
                                          _%rest-ids130958%_)
                                         (_%E130983130992%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130981130988%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130984131026%_
                                          (lambda (_%rest-ids130995%_
                                                   _%clause-id130996%_)
                                            (let* ((_%rest-ids130997131005%_
                                                    _%rest-ids130995%_)
                                                   (_%else130999131013%_
                                                    (lambda ()
                                                      (cons (_%generate1130953%_
                                                             _%clause130980%_
                                                             _%clause-id130996%_
                                                             _%E130951%_)
                                                            _%bindings130959%_)))
                                                   (_%K131001131018%_
                                                    (lambda (_%next-clause-id131016%_)
                                                      (_%lp130955%_
                                                       _%rest130979%_
                                                       _%rest-ids130995%_
                                                       (cons (_%generate1130953%_
                                                              _%clause130980%_
                                                              _%clause-id130996%_
                                                              _%next-clause-id131016%_)
                                                             _%bindings130959%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130997131005%_))
                                                  (let* ((_%hd131002131021%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130997131005%_)))
                                                         (_%next-clause-id131024%_
                                                          _%hd131002131021%_))
                                                    (_%K131001131018%_
                                                     _%next-clause-id131024%_))
                                                  (_%else130999131013%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130981130988%_))
                                        (let ((_%hd130985131029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130981130988%_)))
                                              (_%tl130986131031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130981130988%_))))
                                          (let* ((_%clause-id131034%_
                                                  _%hd130985131029%_)
                                                 (_%rest-ids131036%_
                                                  _%tl130986131031%_))
                                            (_%K130984131026%_
                                             _%rest-ids131036%_
                                             _%clause-id131034%_)))
                                        (_%E130983130992%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130960130968%_))
                              (let ((_%hd130965131041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130960130968%_)))
                                    (_%tl130966131043%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130960130968%_))))
                                (let* ((_%clause131046%_ _%hd130965131041%_)
                                       (_%rest131048%_ _%tl130966131043%_))
                                  (_%K130964131038%_
                                   _%rest131048%_
                                   _%clause131046%_)))
                              (_%else130962130976%_)))))))
                 (_%generate-body130338%_
                  (lambda (_%bindings130907%_ _%body130908%_)
                    (let _%recur130910%_ ((_%rest130912%_ _%bindings130907%_))
                      (let* ((_%rest130913130921%_ _%rest130912%_)
                             (_%else130915130929%_ (lambda () _%body130908%_))
                             (_%K130917130935%_
                              (lambda (_%rest130932%_ _%hd130933%_)
                                (let ((__tmp131674 (cons _%hd130933%_ '()))
                                      (__tmp131673
                                       (_%recur130910%_ _%rest130932%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp131674
                                   __tmp131673)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130913130921%_))
                            (let ((_%hd130918130938%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130913130921%_)))
                                  (_%tl130919130940%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130913130921%_))))
                              (let* ((_%hd130943%_ _%hd130918130938%_)
                                     (_%rest130945%_ _%tl130919130940%_))
                                (_%K130917130935%_
                                 _%rest130945%_
                                 _%hd130943%_)))
                            (_%else130915130929%_))))))
                 (_%generate-clause130339%_
                  (lambda (_%target130770%_
                           _%ids130771%_
                           _%clause130772%_
                           _%E130773%_)
                    (letrec ((_%generate1130775%_
                              (lambda (_%hd130862%_
                                       _%fender130863%_
                                       _%body130864%_)
                                (let ((_g131675_
                                       (_%parse-clause130341%_
                                        _%hd130862%_
                                        _%ids130771%_)))
                                  (begin
                                    (let ((_g131676_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131675_)
                                                 (##vector-length _g131675_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131676_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131676_)))
                                    (let ((_%e130866%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131675_ 0)))
                                          (_%mvars130867%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131675_ 1))))
                                      (let* ((_%pvars130869%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130867%_))))
                                             (_%E130871%_
                                              (cons _%E130773%_
                                                    (cons _%target130770%_
                                                          '())))
                                             (_%K130904%_
                                              (let ((__tmp131677
                                                     (let ((__tmp131679
                                                            (map (lambda (_%mvar130873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130874%_)
                           (let* ((_%mvar130875130882%_ _%mvar130873%_)
                                  (_%E130877130886%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130875130882%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130878130892%_
                                   (lambda (_%depth130889%_ _%id130890%_)
                                     (cons _%id130890%_
                                           (cons (let ((__tmp131681
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130890%_)))
                                                       (__tmp131680
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130874%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131681
                                                    __tmp131680
                                                    _%depth130889%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130875130882%_))
                                 (let ((_%hd130879130895%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130875130882%_)))
                                       (_%tl130880130897%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130875130882%_))))
                                   (let* ((_%id130900%_ _%hd130879130895%_)
                                          (_%depth130902%_ _%tl130880130897%_))
                                     (_%K130878130892%_
                                      _%depth130902%_
                                      _%id130900%_)))
                                 (_%E130877130886%_))))
                         _%mvars130867%_
                         _%pvars130869%_))
                   (__tmp131678
                    (if (eq? _%fender130863%_ '#t)
                        _%body130864%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130863%_
                           _%body130864%_
                           _%E130871%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp131679 __tmp131678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130869%_
                                                 __tmp131677))))
                                        (_%generate-match130340%_
                                         _%hd130862%_
                                         _%target130770%_
                                         _%e130866%_
                                         _%mvars130867%_
                                         _%K130904%_
                                         _%E130871%_))))))))
                      (let* ((_%e130776130796%_ _%clause130772%_)
                             (_%E130785130800%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130776130796%_))))
                             (_%E130778130834%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130776130796%_))
                                    (let ((_%e130786130804%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130776130796%_))))
                                      (let ((_%hd130787130807%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130786130804%_)))
                                            (_%tl130788130809%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130786130804%_))))
                                        (let ((_%hd130812%_
                                               _%hd130787130807%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130788130809%_))
                                              (let ((_%e130789130814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130788130809%_))))
                                                (let ((_%hd130790130817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130789130814%_)))
                                                      (_%tl130791130819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130789130814%_))))
                                                  (let ((_%fender130822%_
                                                         _%hd130790130817%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130791130819%_))
                                                        (let ((_%e130792130824%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130791130819%_))))
                  (let ((_%hd130793130827%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130792130824%_)))
                        (_%tl130794130829%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130792130824%_))))
                    (let ((_%body130832%_ _%hd130793130827%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130794130829%_))
                          (_%generate1130775%_
                           _%hd130812%_
                           _%fender130822%_
                           _%body130832%_)
                          (_%E130785130800%_)))))
                (_%E130785130800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130785130800%_)))))
                                    (_%E130785130800%_))))
                             (_%E130777130858%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130776130796%_))
                                    (let ((_%e130779130838%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130776130796%_))))
                                      (let ((_%hd130780130841%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130779130838%_)))
                                            (_%tl130781130843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130779130838%_))))
                                        (let ((_%hd130846%_
                                               _%hd130780130841%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130781130843%_))
                                              (let ((_%e130782130848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130781130843%_))))
                                                (let ((_%hd130783130851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130782130848%_)))
                                                      (_%tl130784130853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130782130848%_))))
                                                  (let ((_%body130856%_
                                                         _%hd130783130851%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130784130853%_))
                                                        (_%generate1130775%_
                                                         _%hd130846%_
                                                         '#t
                                                         _%body130856%_)
                                                        (_%E130778130834%_)))))
                                              (_%E130778130834%_)))))
                                    (_%E130778130834%_)))))
                        (_%E130777130858%_)))))
                 (_%generate-match130340%_
                  (lambda (_%where130519%_
                           _%target130520%_
                           _%hd130521%_
                           _%mvars130522%_
                           _%K130523%_
                           _%E130524%_)
                    (letrec ((_%BUG130526%_
                              (lambda (_%q130768%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx130332%_
                                         _%hd130521%_
                                         _%q130768%_))))
                             (_%recur130527%_
                              (lambda (_%e130618%_
                                       _%vars130619%_
                                       _%target130620%_
                                       _%E130621%_
                                       _%k130622%_)
                                (let* ((_%e130623130630%_ _%e130618%_)
                                       (_%E130625130634%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e130623130630%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K130626130756%_
                                        (lambda (_%body130637%_ _%tag130638%_)
                                          (let ((_%$e130640%_ _%tag130638%_))
                                            (if (eq? 'any _%$e130640%_)
                                                (_%k130622%_ _%vars130619%_)
                                                (if (eq? 'id _%$e130640%_)
                                                    (let ((__tmp131686
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target130620%_)))
                                                          (__tmp131682
                                                           (let ((__tmp131684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131685
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e130335%_
                                    _%body130637%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?130333%_
                             __tmp131685
                             _%target130620%_)))
                         (__tmp131683 (_%k130622%_ _%vars130619%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131684 __tmp131683 _%E130621%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131686 __tmp131682 _%E130621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e130640%_)
                                                        (_%k130622%_
                                                         (cons (cons _%body130637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target130620%_)
                       _%vars130619%_))
                (if (eq? 'cons _%$e130640%_)
                    (let ((_%$e130643%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd130644%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl130645%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131692
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target130620%_)))
                            (__tmp131687
                             (let ((__tmp131691
                                    (cons (cons (cons _%$e130643%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e130334%_
                                                         _%target130620%_))
                                                      '()))
                                          '()))
                                   (__tmp131688
                                    (let ((__tmp131690
                                           (cons (cons (cons _%$hd130644%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e130643%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl130645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e130643%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131689
                                           (let* ((_%body130646130653%_
                                                   _%body130637%_)
                                                  (_%E130648130657%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body130646130653%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K130649130665%_
                                                   (lambda (_%tl130660%_
                                                            _%hd130661%_)
                                                     (_%recur130527%_
                                                      _%hd130661%_
                                                      _%vars130619%_
                                                      _%$hd130644%_
                                                      _%E130621%_
                                                      (lambda (_%vars130663%_)
                                                        (_%recur130527%_
                                                         _%tl130660%_
                                                         _%vars130663%_
                                                         _%$tl130645%_
                                                         _%E130621%_
                                                         _%k130622%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body130646130653%_))
                                                 (let ((_%hd130650130668%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body130646130653%_)))
                                                       (_%tl130651130670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body130646130653%_))))
                                                   (let* ((_%hd130673%_
                                                           _%hd130650130668%_)
                                                          (_%tl130675%_
                                                           _%tl130651130670%_))
                                                     (_%K130649130665%_
                                                      _%tl130675%_
                                                      _%hd130673%_)))
                                                 (_%E130648130657%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131690
                                       __tmp131689))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131691
                                __tmp131688))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131692
                         __tmp131687
                         _%E130621%_)))
                    (if (eq? 'splice _%$e130640%_)
                        (let* ((_%body130676130683%_ _%body130637%_)
                               (_%E130678130687%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body130676130683%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K130679130738%_
                                (lambda (_%tl130690%_ _%hd130691%_)
                                  (let* ((_%rlen130693%_
                                          (_%splice-rlen130528%_ _%tl130690%_))
                                         (_%$target130695%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130697%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130699%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130701%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130703%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130705%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130707%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130709%_
                                          (_%splice-vars130529%_ _%hd130691%_))
                                         (_%lvars130711%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130709%_)))
                                         (_%tlvars130713%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130709%_)))
                                         (_%linit130717%_
                                          (map (lambda (_%var130715%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130711%_)))
                                    (letrec ((_%make-loop130720%_
                                              (lambda (_%vars130724%_)
                                                (let ((__tmp131694
                                                       (cons (cons (cons _%$lp130701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131707
                                        (cons _%$hd130697%_ _%lvars130711%_))
                                       (__tmp131695
                                        (let ((__tmp131706
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130697%_)))
                                              (__tmp131700
                                               (let ((__tmp131705
                                                      (cons (cons (cons _%$lp-e130703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e130334%_
                                   _%$hd130697%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131701
                                                      (let ((__tmp131704
                                                             (cons (cons (cons _%$lp-hd130705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130703%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130707%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130703%_))
                                             '()))
                                 '())))
                    (__tmp131702
                     (_%recur130527%_
                      _%hd130691%_
                      '()
                      _%$lp-hd130705%_
                      _%E130621%_
                      (lambda (_%hdvars130726%_)
                        (cons _%$lp130701%_
                              (cons _%$lp-tl130707%_
                                    (map (lambda (_%svar130728%_
                                                  _%lvar130729%_)
                                           (let ((__tmp131703
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130728%_
                                                     _%hdvars130726%_
                                                     _%BUG130526%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131703
                                              _%lvar130729%_)))
                                         _%svars130709%_
                                         _%lvars130711%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131704 __tmp131702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131705
                                                  __tmp131701)))
                                              (__tmp131696
                                               (let ((__tmp131699
                                                      (map (lambda (_%lvar130731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130732%_)
                     (cons (cons _%tlvar130732%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130731%_))
                                 '())))
                   _%lvars130711%_
                   _%tlvars130713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131697
                                                      (_%k130622%_
                                                       (let ((__tmp131698
                                                              (lambda (_%svar130734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130735%_
                               _%r130736%_)
                        (cons (cons _%svar130734%_ _%tlvar130735%_)
                              _%r130736%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131698
                  _%vars130724%_
                  _%svars130709%_
                  _%tlvars130713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131699
                                                  __tmp131697))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131706
                                           __tmp131700
                                           __tmp131696))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131707
                                    __tmp131695))
                                 '()))
                     '()))
              (__tmp131693
               (cons _%$lp130701%_ (cons _%$target130695%_ _%linit130717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131694
                                                   __tmp131693)))))
                                      (let ((_%body130722%_
                                             (let ((__tmp131709
                                                    (cons (cons (cons _%$target130695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130699%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target130620%_
                                 _%rlen130693%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131708
                                                    (_%recur130527%_
                                                     _%tl130690%_
                                                     _%vars130619%_
                                                     _%$tl130699%_
                                                     _%E130621%_
                                                     _%make-loop130720%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131709
                                                __tmp131708))))
                                        (let ((__tmp131713
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target130620%_)))
                                              (__tmp131710
                                               (if (zero? _%rlen130693%_)
                                                   _%body130722%_
                                                   (let ((__tmp131711
                                                          (let ((__tmp131712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target130620%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131712 _%rlen130693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131711
                                                      _%body130722%_
                                                      _%E130621%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131713
                                           __tmp131710
                                           _%E130621%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body130676130683%_))
                              (let ((_%hd130680130741%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body130676130683%_)))
                                    (_%tl130681130743%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body130676130683%_))))
                                (let* ((_%hd130746%_ _%hd130680130741%_)
                                       (_%tl130748%_ _%tl130681130743%_))
                                  (_%K130679130738%_
                                   _%tl130748%_
                                   _%hd130746%_)))
                              (_%E130678130687%_)))
                        (if (eq? 'null _%$e130640%_)
                            (let ((__tmp131715
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target130620%_)))
                                  (__tmp131714 (_%k130622%_ _%vars130619%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131715
                               __tmp131714
                               _%E130621%_))
                            (if (eq? 'vector _%$e130640%_)
                                (let ((_%$e130750%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131720
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target130620%_)))
                                        (__tmp131716
                                         (let ((__tmp131718
                                                (cons (cons (cons _%$e130750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131719
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e130334%_
                                    _%target130620%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131719))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131717
                                                (_%recur130527%_
                                                 _%body130637%_
                                                 _%vars130619%_
                                                 _%$e130750%_
                                                 _%E130621%_
                                                 _%k130622%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131718
                                            __tmp131717))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131720
                                     __tmp131716
                                     _%E130621%_)))
                                (if (eq? 'box _%$e130640%_)
                                    (let ((_%$e130752%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131725
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target130620%_)))
                                            (__tmp131721
                                             (let ((__tmp131723
                                                    (cons (cons (cons _%$e130752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131724
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e130334%_
                                        _%target130620%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131724))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131722
                                                    (_%recur130527%_
                                                     _%body130637%_
                                                     _%vars130619%_
                                                     _%$e130752%_
                                                     _%E130621%_
                                                     _%k130622%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131723
                                                __tmp131722))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131725
                                         __tmp131721
                                         _%E130621%_)))
                                    (if (eq? 'datum _%$e130640%_)
                                        (let ((_%$e130754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131731
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target130620%_)))
                                                (__tmp131726
                                                 (let ((__tmp131730
                                                        (cons (cons (cons _%$e130754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target130620%_))
                                  '()))
                      '()))
               (__tmp131727
                (let ((__tmp131729
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130754%_ _%body130637%_)))
                      (__tmp131728 (_%k130622%_ _%vars130619%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131729 __tmp131728 _%E130621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131730
                                                    __tmp131727))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131731
                                             __tmp131726
                                             _%E130621%_)))
                                        (_%BUG130526%_
                                         _%e130618%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e130623130630%_))
                                      (let ((_%hd130627130759%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130623130630%_)))
                                            (_%tl130628130761%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130623130630%_))))
                                        (let* ((_%tag130764%_
                                                _%hd130627130759%_)
                                               (_%body130766%_
                                                _%tl130628130761%_))
                                          (_%K130626130756%_
                                           _%body130766%_
                                           _%tag130764%_)))
                                      (_%E130625130634%_)))))
                             (_%splice-rlen130528%_
                              (lambda (_%e130580%_)
                                (let _%lp130582%_ ((_%e130584%_ _%e130580%_)
                                                   (_%n130585%_ '0))
                                  (let* ((_%e130586130593%_ _%e130584%_)
                                         (_%E130588130597%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130586130593%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130589130606%_
                                          (lambda (_%body130600%_
                                                   _%tag130601%_)
                                            (let ((_%$e130603%_ _%tag130601%_))
                                              (if (eq? 'splice _%$e130603%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx130332%_
                                                     _%where130519%_))
                                                  (if (eq? 'cons _%$e130603%_)
                                                      (_%lp130582%_
                                                       (cdr _%body130600%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n130585%_
                                                                '1)))
                                                      _%n130585%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130586130593%_))
                                        (let ((_%hd130590130609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130586130593%_)))
                                              (_%tl130591130611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130586130593%_))))
                                          (let* ((_%tag130614%_
                                                  _%hd130590130609%_)
                                                 (_%body130616%_
                                                  _%tl130591130611%_))
                                            (_%K130589130606%_
                                             _%body130616%_
                                             _%tag130614%_)))
                                        (_%E130588130597%_))))))
                             (_%splice-vars130529%_
                              (lambda (_%e130536%_)
                                (let _%recur130538%_ ((_%e130540%_ _%e130536%_)
                                                      (_%vars130541%_ '()))
                                  (let* ((_%e130542130549%_ _%e130540%_)
                                         (_%E130544130553%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130542130549%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130545130568%_
                                          (lambda (_%body130556%_
                                                   _%tag130557%_)
                                            (let ((_%$e130559%_ _%tag130557%_))
                                              (if (eq? 'var _%$e130559%_)
                                                  (cons _%body130556%_
                                                        _%vars130541%_)
                                                  (if (or (eq? 'cons
                                                               _%$e130559%_)
                                                          (eq? 'splice
                                                               _%$e130559%_))
                                                      (_%recur130538%_
                                                       (cdr _%body130556%_)
                                                       (_%recur130538%_
                                                        (car _%body130556%_)
                                                        _%vars130541%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e130559%_)
                      (eq? 'box _%$e130559%_))
                  (_%recur130538%_ _%body130556%_ _%vars130541%_)
                  _%vars130541%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130542130549%_))
                                        (let ((_%hd130546130571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130542130549%_)))
                                              (_%tl130547130573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130542130549%_))))
                                          (let* ((_%tag130576%_
                                                  _%hd130546130571%_)
                                                 (_%body130578%_
                                                  _%tl130547130573%_))
                                            (_%K130545130568%_
                                             _%body130578%_
                                             _%tag130576%_)))
                                        (_%E130544130553%_))))))
                             (_%make-body130530%_
                              (lambda (_%vars130532%_)
                                (cons _%K130523%_
                                      (map (lambda (_%mvar130534%_)
                                             (let ((__tmp131732
                                                    (car _%mvar130534%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131732
                                                _%vars130532%_
                                                _%BUG130526%_)))
                                           _%mvars130522%_)))))
                      (_%recur130527%_
                       _%hd130521%_
                       '()
                       _%target130520%_
                       _%E130524%_
                       _%make-body130530%_))))
                 (_%parse-clause130341%_
                  (lambda (_%hd130413%_ _%ids130414%_)
                    (let _%recur130416%_ ((_%e130418%_ _%hd130413%_)
                                          (_%vars130419%_ '())
                                          (_%depth130420%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e130418%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e130418%_))
                              (values '(any) _%vars130419%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e130418%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx130332%_
                                     _%hd130413%_))
                                  (if (let ((__tmp131733
                                             (lambda (_%id130425%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e130418%_
                                                  _%id130425%_)))))
                                        (declare (not safe))
                                        (__find __tmp131733 _%ids130414%_))
                                      (values (cons 'id _%e130418%_)
                                              _%vars130419%_)
                                      (if (let ((__tmp131734
                                                 (lambda (_%var130428%_)
                                                   (let ((__tmp131735
                                                          (car _%var130428%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e130418%_
                                                      __tmp131735)))))
                                            (declare (not safe))
                                            (__find __tmp131734
                                                    _%vars130419%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx130332%_
                                             _%e130418%_))
                                          (values (cons 'var _%e130418%_)
                                                  (cons (cons _%e130418%_
                                                              _%depth130420%_)
                                                        _%vars130419%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e130418%_))
                              (let* ((_%e130432130439%_ _%e130418%_)
                                     (_%E130434130443%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e130432130439%_))))
                                     (_%E130433130504%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e130432130439%_))
                                            (let ((_%e130435130447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e130432130439%_))))
                                              (let ((_%hd130436130450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e130435130447%_)))
                                                    (_%tl130437130452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e130435130447%_))))
                                                (let* ((_%hd130455%_
                                                        _%hd130436130450%_)
                                                       (_%rest130457%_
                                                        _%tl130437130452%_)
                                                       (_%make-pair130472%_
                                                        (lambda (_%tag130459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd130460%_
                         _%tl130461%_)
                  (let* ((_%hd-depth130463%_
                          (if (eq? _%tag130459%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth130420%_ '1))
                              _%depth130420%_))
                         (_g131736_
                          (_%recur130416%_
                           _%hd130460%_
                           _%vars130419%_
                           _%hd-depth130463%_)))
                    (begin
                      (let ((_g131737_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g131736_)
                                   (##vector-length _g131736_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g131737_ 2)))
                            (error "Context expects 2 values" _g131737_)))
                      (let ((_%hd130465%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131736_ 0)))
                            (_%vars130466%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131736_ 1))))
                        (let ((_g131738_
                               (_%recur130416%_
                                _%tl130461%_
                                _%vars130466%_
                                _%depth130420%_)))
                          (begin
                            (let ((_g131739_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g131738_)
                                         (##vector-length _g131738_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g131739_ 2)))
                                  (error "Context expects 2 values"
                                         _g131739_)))
                            (let ((_%tl130468%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131738_ 0)))
                                  (_%vars130469%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131738_ 1))))
                              (values (cons _%tag130459%_
                                            (cons _%hd130465%_ _%tl130468%_))
                                      _%vars130469%_)))))))))
               (_%e130473130480%_ _%rest130457%_)
               (_%E130475130484%_
                (lambda ()
                  (_%make-pair130472%_ 'cons _%hd130455%_ _%rest130457%_)))
               (_%E130474130500%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e130473130480%_))
                      (let ((_%e130476130488%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130473130480%_))))
                        (let ((_%hd130477130491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130476130488%_)))
                              (_%tl130478130493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130476130488%_))))
                          (let* ((_%rest-hd130496%_ _%hd130477130491%_)
                                 (_%rest-tl130498%_ _%tl130478130493%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd130496%_))
                                (_%make-pair130472%_
                                 'splice
                                 _%hd130455%_
                                 _%rest-tl130498%_)
                                (_%make-pair130472%_
                                 'cons
                                 _%hd130455%_
                                 _%rest130457%_)))))
                      (_%E130475130484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130474130500%_))))
                                            (_%E130434130443%_)))))
                                (_%E130433130504%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e130418%_))
                                  (values '(null) _%vars130419%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e130418%_))
                                      (let ((_g131740_
                                             (_%recur130416%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e130418%_)))
                                              _%vars130419%_
                                              _%depth130420%_)))
                                        (begin
                                          (let ((_g131741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131740_)
                                                       (##vector-length
                                                        _g131740_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131741_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131741_)))
                                          (let ((_%e130510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131740_ 0)))
                                                (_%vars130511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131740_
                                                    1))))
                                            (values (cons 'vector _%e130510%_)
                                                    _%vars130511%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e130418%_))
                                          (let ((_g131742_
                                                 (_%recur130416%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e130418%_)))
                                                  _%vars130419%_
                                                  _%depth130420%_)))
                                            (begin
                                              (let ((_g131743_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131742_)
                                                           (##vector-length
                                                            _g131742_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131743_)))
                                              (let ((_%e130514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131742_
                                                        0)))
                                                    (_%vars130515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131742_
                                                        1))))
                                                (values (cons 'box _%e130514%_)
                                                        _%vars130515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e130418%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e130418%_)))
                                                      _%vars130419%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx130332%_
                                                 _%e130418%_))))))))))))
          (let* ((_%e130342130355%_ _%stx130332%_)
                 (_%E130344130359%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e130342130355%_))))
                 (_%E130343130409%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130342130355%_))
                        (let ((_%e130345130363%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130342130355%_))))
                          (let ((_%hd130346130366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130345130363%_)))
                                (_%tl130347130368%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130345130363%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130347130368%_))
                                (let ((_%e130348130371%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130347130368%_))))
                                  (let ((_%hd130349130374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130348130371%_)))
                                        (_%tl130350130376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130348130371%_))))
                                    (let ((_%expr130379%_ _%hd130349130374%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl130350130376%_))
                                          (let ((_%e130351130381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl130350130376%_))))
                                            (let ((_%hd130352130384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e130351130381%_)))
                                                  (_%tl130353130386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e130351130381%_))))
                                              (let* ((_%ids130389%_
                                                      _%hd130352130384%_)
                                                     (_%clauses130391%_
                                                      _%tl130353130386%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids130389%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses130391%_))
                                                        (let* ((_%ids130396%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids130389%_)))
                       (_%clauses130398%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses130391%_)))
                       (_%clause-ids130400%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses130398%_)))
                       (_%E130402%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target130404%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first130406%_
                        (if (null? _%clauses130398%_)
                            _%E130402%_
                            (car _%clause-ids130400%_))))
                  (let ((__tmp131745
                         (let ((__tmp131746
                                (let ((__tmp131748
                                       (let ((__tmp131750
                                              (cons (cons (cons _%E130402%_
                                                                '())
                                                          (cons (let ((__tmp131752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target130404%_ '()))
                              (__tmp131751
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target130404%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp131752 __tmp131751))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp131749
                                              (_%generate-body130338%_
                                               (_%generate-bindings130337%_
                                                _%target130404%_
                                                _%ids130396%_
                                                _%clauses130398%_
                                                _%clause-ids130400%_
                                                _%E130402%_)
                                               (cons _%first130406%_
                                                     (cons _%expr130379%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp131750
                                          __tmp131749)))
                                      (__tmp131747
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx130332%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp131748
                                   __tmp131747))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp131746)))
                        (__tmp131744
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx130332%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp131745 __tmp131744)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx130332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx130332%_
                                                       _%ids130389%_))))))
                                          (_%E130344130359%_)))))
                                (_%E130344130359%_))))
                        (_%E130344130359%_)))))
            (_%E130343130409%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx131057%_)
        (let* ((_%identifier=?131059%_ 'free-identifier=?)
               (_%unwrap-e131061%_ 'syntax-e)
               (_%wrap-e131063%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx131057%_
           _%identifier=?131059%_
           _%unwrap-e131061%_
           _%wrap-e131063%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx131065%_ _%identifier=?131066%_)
        (let* ((_%unwrap-e131068%_ 'syntax-e) (_%wrap-e131070%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx131065%_
           _%identifier=?131066%_
           _%unwrap-e131068%_
           _%wrap-e131070%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx131072%_ _%identifier=?131073%_ _%unwrap-e131074%_)
        (let ((_%wrap-e131076%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx131072%_
           _%identifier=?131073%_
           _%unwrap-e131074%_
           _%wrap-e131076%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131754_
        (let ((_g131753_ (let () (declare (not safe)) (##length _g131754_))))
          (cond ((let () (declare (not safe)) (##fx= _g131753_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131754_))
                ((let () (declare (not safe)) (##fx= _g131753_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131754_))
                ((let () (declare (not safe)) (##fx= _g131753_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131754_))
                ((let () (declare (not safe)) (##fx= _g131753_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131754_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx130329%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx130329%_))
            (let ((__tmp131755
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx130329%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131755 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd130287%_ . _%rest130288%_)
        (let ((_%len130290%_ (length _%hd130287%_)))
          (let _%lp130292%_ ((_%rest130294%_ _%rest130288%_))
            (let* ((_%rest130295130303%_ _%rest130294%_)
                   (_%else130297130311%_ (lambda () '#!void))
                   (_%K130299130317%_
                    (lambda (_%rest130314%_ _%hd130315%_)
                      (if (let ((__tmp131756 (length _%hd130315%_)))
                            (declare (not safe))
                            (##fx= _%len130290%_ __tmp131756))
                          (_%lp130292%_ _%rest130314%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd130315%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest130295130303%_))
                  (let ((_%hd130300130320%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest130295130303%_)))
                        (_%tl130301130322%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest130295130303%_))))
                    (let* ((_%hd130325%_ _%hd130300130320%_)
                           (_%rest130327%_ _%tl130301130322%_))
                      (_%K130299130317%_ _%rest130327%_ _%hd130325%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx130242%_ _%n130243%_)
        (let _%lp130245%_ ((_%rest130247%_ _%stx130242%_) (_%r130248%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest130247%_))
              (let* ((_%g130249130256%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest130247%_)))
                     (_%E130251130260%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g130249130256%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K130252130266%_
                      (lambda (_%rest130263%_ _%hd130264%_)
                        (_%lp130245%_
                         _%rest130263%_
                         (cons _%hd130264%_ _%r130248%_)))))
                (if (let () (declare (not safe)) (##pair? _%g130249130256%_))
                    (let ((_%hd130253130269%_
                           (let ()
                             (declare (not safe))
                             (##car _%g130249130256%_)))
                          (_%tl130254130271%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g130249130256%_))))
                      (let* ((_%hd130274%_ _%hd130253130269%_)
                             (_%rest130276%_ _%tl130254130271%_))
                        (_%K130252130266%_ _%rest130276%_ _%hd130274%_)))
                    (_%E130251130260%_)))
              (let _%lp130278%_ ((_%n130280%_ _%n130243%_)
                                 (_%l130281%_ _%r130248%_)
                                 (_%r130282%_ _%rest130247%_))
                (if (null? _%l130281%_)
                    (values _%l130281%_ _%r130282%_)
                    (if (fxpositive? _%n130280%_)
                        (_%lp130278%_
                         (let () (declare (not safe)) (##fx- _%n130280%_ '1))
                         (cdr _%l130281%_)
                         (cons (car _%l130281%_) _%r130282%_))
                        (values (reverse _%l130281%_) _%r130282%_))))))))))
