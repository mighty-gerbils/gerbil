(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712251112)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129694 (list gx#expander::t))
            (__tmp129693 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129694
         '(id depth)
         __tmp129693
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129690%_
        (apply make-instance gx#syntax-pattern::t _%$args129690%_)))
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
      (lambda (_%self129676%_ _%stx129677%_)
        (let ((_%self129680%_ _%self129676%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129677%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129142%_)
        (letrec ((_%generate129144%_
                  (lambda (_%e129384%_)
                    (letrec ((_%BUG129386%_
                              (lambda (_%q129551%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129142%_
                                         _%e129384%_
                                         _%q129551%_))))
                             (_%local-pattern-e129387%_
                              (lambda (_%pat129549%_)
                                (let ((__tmp129695
                                       (##structure-ref
                                        _%pat129549%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129695))))
                             (_%getvar129388%_
                              (lambda (_%q129546%_ _%vars129547%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129546%_
                                   _%vars129547%_
                                   _%BUG129386%_))))
                             (_%getarg129389%_
                              (lambda (_%arg129512%_ _%vars129513%_)
                                (let* ((_%arg129514129521%_ _%arg129512%_)
                                       (_%E129516129525%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129514129521%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129517129534%_
                                        (lambda (_%e129528%_ _%tag129529%_)
                                          (let ((_%$e129531%_ _%tag129529%_))
                                            (if (eq? 'ref _%$e129531%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar129388%_
                                                   _%e129528%_
                                                   _%vars129513%_))
                                                (if (eq? 'pattern _%$e129531%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e129387%_
                                                       _%e129528%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG129386%_
                                                       _%arg129512%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129514129521%_))
                                      (let ((_%hd129518129537%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129514129521%_)))
                                            (_%tl129519129539%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129514129521%_))))
                                        (let* ((_%tag129542%_
                                                _%hd129518129537%_)
                                               (_%e129544%_
                                                _%tl129519129539%_))
                                          (declare (not safe))
                                          (_%K129517129534%_
                                           _%e129544%_
                                           _%tag129542%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E129516129525%_)))))))
                      (let _%recur129391%_ ((_%e129393%_ _%e129384%_)
                                            (_%vars129394%_ '()))
                        (let* ((_%e129395129402%_ _%e129393%_)
                               (_%E129397129406%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129395129402%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129398129500%_
                                (lambda (_%body129409%_ _%tag129410%_)
                                  (let ((_%$e129412%_ _%tag129410%_))
                                    (if (eq? 'datum _%$e129412%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129409%_))
                                        (if (eq? 'term _%$e129412%_)
                                            (let ((_%id129415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129409%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129415%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129415%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%marks129418%_))
                                                        (let ((__tmp129696
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129409%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129696))
                (let ((__tmp129698
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129409%_)))
                      (__tmp129697
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129409%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129698
                   __tmp129697
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129415%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129409%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%BUG129386%_
                                                         _%e129393%_)))))
                                            (if (eq? 'pattern _%$e129412%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e129387%_
                                                   _%body129409%_))
                                                (if (eq? 'ref _%$e129412%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar129388%_
                                                       _%body129409%_
                                                       _%vars129394%_))
                                                    (if (eq? 'cons
                                                             _%$e129412%_)
                                                        (let ((__tmp129701
                                                               (let ((__tmp129702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body129409%_)))
                         (declare (not safe))
                         (_%recur129391%_ __tmp129702 _%vars129394%_)))
                      (__tmp129699
                       (let ((__tmp129700 (cdr _%body129409%_)))
                         (declare (not safe))
                         (_%recur129391%_ __tmp129700 _%vars129394%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129701 __tmp129699))
                (if (eq? 'vector _%$e129412%_)
                    (let ((__tmp129703
                           (let ()
                             (declare (not safe))
                             (_%recur129391%_ _%body129409%_ _%vars129394%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129703))
                    (if (eq? 'box _%$e129412%_)
                        (let ((__tmp129704
                               (let ()
                                 (declare (not safe))
                                 (_%recur129391%_
                                  _%body129409%_
                                  _%vars129394%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129704))
                        (if (eq? 'splice _%$e129412%_)
                            (let* ((_%body129421129432%_ _%body129409%_)
                                   (_%E129423129436%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129421129432%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129424129474%_
                                    (lambda (_%args129439%_
                                             _%iv129440%_
                                             _%hd129441%_
                                             _%depth129442%_)
                                      (let* ((_%targets129448%_
                                              (map (lambda (_%g129443129445%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg129389%_
                                                        _%g129443129445%_
                                                        _%vars129394%_)))
                                                   _%args129439%_))
                                             (_%fold-in129450%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129439%_)))
                                             (_%fold-out129452%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129454%_
                                              (let ((__tmp129705
                                                     (cons _%fold-out129452%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129705
                                                 _%fold-in129450%_)))
                                             (_%lambda-body129471%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129442%_ '1))
                                                  (let ((_%r-args129462%_
                                                         (map (lambda (_%arg129456%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129456%_)))
                      _%args129439%_))
                (_%r-vars129463%_
                 (let ((__tmp129706
                        (lambda (_%arg129458%_ _%var129459%_ _%r129460%_)
                          (cons (cons (cdr _%arg129458%_) _%var129459%_)
                                _%r129460%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129706
                    _%vars129394%_
                    _%args129439%_
                    _%fold-in129450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129707
                                                           (let ((__tmp129708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129712
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth129442%_ '1)))
                                (__tmp129709
                                 (let ((__tmp129710
                                        (let ((__tmp129711
                                               (cons 'var _%fold-out129452%_)))
                                          (declare (not safe))
                                          (cons __tmp129711
                                                _%r-args129462%_))))
                                   (declare (not safe))
                                   (cons _%hd129441%_ __tmp129710))))
                            (declare (not safe))
                            (cons __tmp129712 __tmp129709))))
                     (declare (not safe))
                     (cons 'splice __tmp129708))))
              (declare (not safe))
              (_%recur129391%_ __tmp129707 _%r-vars129463%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars129469%_
                                                          (let ((__tmp129713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129465%_ _%var129466%_ _%r129467%_)
                           (cons (cons (cdr _%arg129465%_) _%var129466%_)
                                 _%r129467%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129713
                     _%vars129394%_
                     _%args129439%_
                     _%fold-in129450%_)))
                 (__tmp129714
                  (let ()
                    (declare (not safe))
                    (_%recur129391%_ _%hd129441%_ _%hd-vars129469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129714
                                                     _%fold-out129452%_)))))
                                        (let ((__tmp129718
                                               (if (let ((__tmp129719
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129448%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129719 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129448%_))
                                                   '#!void))
                                              (__tmp129715
                                               (let ((__tmp129717
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129454%_
                                                         _%lambda-body129471%_)))
                                                     (__tmp129716
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur129391%_
                                                         _%iv129440%_
                                                         _%vars129394%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129717
                                                  __tmp129716
                                                  _%targets129448%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129718
                                           __tmp129715))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129421129432%_))
                                  (let ((_%hd129425129477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129421129432%_)))
                                        (_%tl129426129479%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129421129432%_))))
                                    (let ((_%depth129482%_ _%hd129425129477%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129426129479%_))
                                          (let ((_%hd129427129484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129426129479%_)))
                                                (_%tl129428129486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129426129479%_))))
                                            (let ((_%hd129489%_
                                                   _%hd129427129484%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129428129486%_))
                                                  (let ((_%hd129429129491%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129428129486%_)))
                                                        (_%tl129430129493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129428129486%_))))
                                                    (let* ((_%iv129496%_
                                                            _%hd129429129491%_)
                                                           (_%args129498%_
                                                            _%tl129430129493%_))
                                                      (declare (not safe))
                                                      (_%K129424129474%_
                                                       _%args129498%_
                                                       _%iv129496%_
                                                       _%hd129489%_
                                                       _%depth129482%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E129423129436%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129423129436%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129423129436%_))))
                            (if (eq? 'var _%$e129412%_)
                                _%body129409%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG129386%_ _%e129393%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129395129402%_))
                              (let ((_%hd129399129503%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129395129402%_)))
                                    (_%tl129400129505%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129395129402%_))))
                                (let* ((_%tag129508%_ _%hd129399129503%_)
                                       (_%body129510%_ _%tl129400129505%_))
                                  (declare (not safe))
                                  (_%K129398129500%_
                                   _%body129510%_
                                   _%tag129508%_)))
                              (let ()
                                (declare (not safe))
                                (_%E129397129406%_))))))))
                 (_%parse129145%_
                  (lambda (_%e129186%_)
                    (letrec ((_%make-cons129188%_
                              (lambda (_%hd129376%_ _%tl129377%_)
                                (let ((_g129720_ _%hd129376%_)
                                      (_g129722_ _%tl129377%_))
                                  (begin
                                    (let ((_g129721_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129720_)
                                                 (##vector-length _g129720_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129721_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129721_)))
                                    (let ((_g129723_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129722_)
                                                 (##vector-length _g129722_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129723_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129723_)))
                                    (let ((_%hd-e129379%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129720_ 0)))
                                          (_%hd-vars129380%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129720_ 1))))
                                      (let ((_%tl-e129381%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129722_ 0)))
                                            (_%tl-vars129382%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129722_ 1))))
                                        (values (let ((__tmp129724
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e129379%_
                                                               _%tl-e129381%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129724))
                                                (append _%hd-vars129380%_
                                                        _%tl-vars129382%_))))))))
                             (_%make-splice129189%_
                              (lambda (_%where129312%_
                                       _%depth129313%_
                                       _%hd129314%_
                                       _%tl129315%_)
                                (let ((_g129725_ _%hd129314%_)
                                      (_g129727_ _%tl129315%_))
                                  (begin
                                    (let ((_g129726_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129725_)
                                                 (##vector-length _g129725_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129726_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129726_)))
                                    (let ((_g129728_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129727_)
                                                 (##vector-length _g129727_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129728_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129728_)))
                                    (let ((_%hd-e129317%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129725_ 0)))
                                          (_%hd-vars129318%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129725_ 1))))
                                      (let ((_%tl-e129319%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129727_ 0)))
                                            (_%tl-vars129320%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129727_ 1))))
                                        (let _%lp129322%_ ((_%rest129324%_
                                                            _%hd-vars129318%_)
                                                           (_%targets129325%_
                                                            '())
                                                           (_%vars129326%_
                                                            _%tl-vars129320%_))
                                          (let* ((_%rest129327129337%_
                                                  _%rest129324%_)
                                                 (_%else129329129345%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets129325%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129142%_
                                                           _%where129312%_))
                                                        (values (let ((__tmp129729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129730
                                      (let ((__tmp129731
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e129319%_
                                                     _%targets129325%_))))
                                        (declare (not safe))
                                        (cons _%hd-e129317%_ __tmp129731))))
                                 (declare (not safe))
                                 (cons _%depth129313%_ __tmp129730))))
                          (declare (not safe))
                          (cons 'splice __tmp129729))
                        _%vars129326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129331129357%_
                                                  (lambda (_%rest129348%_
                                                           _%hd-pat129349%_
                                                           _%hd-depth*129350%_)
                                                    (let ((_%hd-depth129352%_
                                                           (fx- _%hd-depth*129350%_
                                                                _%depth129313%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129352%_))
                                                          (let ((__tmp129733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _%hd-pat129349%_) _%targets129325%_))
                        (__tmp129732
                         (cons (cons _%hd-depth129352%_ _%hd-pat129349%_)
                               _%vars129326%_)))
                    (declare (not safe))
                    (_%lp129322%_ _%rest129348%_ __tmp129733 __tmp129732))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129352%_))
                      (let ((__tmp129734
                             (cons (cons 'pattern _%hd-pat129349%_)
                                   _%targets129325%_)))
                        (declare (not safe))
                        (_%lp129322%_
                         _%rest129348%_
                         __tmp129734
                         _%vars129326%_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129142%_
                         _%where129312%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129327129337%_))
                                                (let ((_%hd129332129360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129327129337%_)))
                                                      (_%tl129333129362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129327129337%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129332129360%_))
                                                      (let ((_%hd129334129365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129332129360%_)))
                    (_%tl129335129367%_
                     (let () (declare (not safe)) (##cdr _%hd129332129360%_))))
                (let* ((_%hd-depth*129370%_ _%hd129334129365%_)
                       (_%hd-pat129372%_ _%tl129335129367%_)
                       (_%rest129374%_ _%tl129333129362%_))
                  (declare (not safe))
                  (_%K129331129357%_
                   _%rest129374%_
                   _%hd-pat129372%_
                   _%hd-depth*129370%_)))
              (let () (declare (not safe)) (_%else129329129345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else129329129345%_)))))))))))
                             (_%recur129190%_
                              (lambda (_%e129195%_ _%is-e?129196%_)
                                (if (_%is-e?129196%_ _%e129195%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129142%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e129195%_))
                                        (let ()
                                          (let* ((_%pat129200%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e129195%_)))
                                                 (_%depth129202%_
                                                  (##structure-ref
                                                   _%pat129200%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth129202%_)
                                                (values (cons 'ref
                                                              _%pat129200%_)
                                                        (cons (cons _%depth129202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat129200%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat129200%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129195%_))
                                            (let ()
                                              (values (cons 'term _%e129195%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129195%_))
                                                (let ()
                                                  (let* ((_%e129206129213%_
                                                          _%e129195%_)
                                                         (_%E129208129217%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e129206129213%_))))
                                                         (_%E129207129299%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e129206129213%_))
                        (let ((_%e129209129221%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129206129213%_))))
                          (let ((_%hd129210129224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129209129221%_)))
                                (_%tl129211129226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129209129221%_))))
                            (let* ((_%hd129229%_ _%hd129210129224%_)
                                   (_%rest129231%_ _%tl129211129226%_))
                              (if '#t
                                  (if (_%is-e?129196%_ _%hd129229%_)
                                      (let* ((_%e129232129239%_ _%rest129231%_)
                                             (_%E129234129243%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx129142%_
                                                   _%e129195%_))))
                                             (_%E129233129257%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129232129239%_))
                                                    (let ((_%e129235129247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129232129239%_))))
                                                      (let ((_%hd129236129250%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129235129247%_)))
                    (_%tl129237129252%_
                     (let () (declare (not safe)) (##cdr _%e129235129247%_))))
                (let ((_%rest129255%_ _%hd129236129250%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl129237129252%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur129190%_ _%rest129255%_ false))
                          (let () (declare (not safe)) (_%E129234129243%_)))
                      (let () (declare (not safe)) (_%E129234129243%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E129234129243%_))))))
                                        (declare (not safe))
                                        (_%E129233129257%_))
                                      (let _%lp129261%_ ((_%rest129263%_
                                                          _%rest129231%_)
                                                         (_%depth129264%_ '0))
                                        (let* ((_%e129265129272%_
                                                _%rest129263%_)
                                               (_%E129267129276%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth129264%_)
                                                      (let ((__tmp129736
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur129190%_ _%hd129229%_ _%is-e?129196%_)))
                    (__tmp129735
                     (let ()
                       (declare (not safe))
                       (_%recur129190%_ _%rest129263%_ _%is-e?129196%_))))
                (declare (not safe))
                (_%make-splice129189%_
                 _%e129195%_
                 _%depth129264%_
                 __tmp129736
                 __tmp129735))
              (let ((__tmp129738
                     (let ()
                       (declare (not safe))
                       (_%recur129190%_ _%hd129229%_ _%is-e?129196%_)))
                    (__tmp129737
                     (let ()
                       (declare (not safe))
                       (_%recur129190%_ _%rest129263%_ _%is-e?129196%_))))
                (declare (not safe))
                (_%make-cons129188%_ __tmp129738 __tmp129737)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129266129295%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e129265129272%_))
                                                      (let ((_%e129268129280%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e129265129272%_))))
                (let ((_%hd129269129283%_
                       (let () (declare (not safe)) (##car _%e129268129280%_)))
                      (_%tl129270129285%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e129268129280%_))))
                  (let* ((_%rest-hd129288%_ _%hd129269129283%_)
                         (_%rest-tl129290%_ _%tl129270129285%_))
                    (if '#t
                        (if (_%is-e?129196%_ _%rest-hd129288%_)
                            (let ((__tmp129739
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%depth129264%_ '1))))
                              (declare (not safe))
                              (_%lp129261%_ _%rest-tl129290%_ __tmp129739))
                            (if (fxpositive? _%depth129264%_)
                                (let ((__tmp129741
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129190%_
                                          _%hd129229%_
                                          _%is-e?129196%_)))
                                      (__tmp129740
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129190%_
                                          _%rest129263%_
                                          _%is-e?129196%_))))
                                  (declare (not safe))
                                  (_%make-splice129189%_
                                   _%e129195%_
                                   _%depth129264%_
                                   __tmp129741
                                   __tmp129740))
                                (let ((__tmp129743
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129190%_
                                          _%hd129229%_
                                          _%is-e?129196%_)))
                                      (__tmp129742
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129190%_
                                          _%rest129263%_
                                          _%is-e?129196%_))))
                                  (declare (not safe))
                                  (_%make-cons129188%_
                                   __tmp129743
                                   __tmp129742))))
                        (let () (declare (not safe)) (_%E129267129276%_))))))
              (let () (declare (not safe)) (_%E129267129276%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%E129266129295%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129208129217%_))))))
                        (let () (declare (not safe)) (_%E129208129217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%E129207129299%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129195%_))
                                                    (let ((_g129744_
                                                           (let ((__tmp129746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _%e129195%_)))))
                     (declare (not safe))
                     (_%recur129190%_ __tmp129746 _%is-e?129196%_))))
              (begin
                (let ((_g129745_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129744_)
                             (##vector-length _g129744_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129745_ 2)))
                      (error "Context expects 2 values" _g129745_)))
                (let ((_%e129304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129744_ 0)))
                      (_%vars129305%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129744_ 1))))
                  (values (cons 'vector _%e129304%_) _%vars129305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129195%_))
                                                        (let ((_g129747_
                                                               (let ((__tmp129749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _%e129195%_)))))
                         (declare (not safe))
                         (_%recur129190%_ __tmp129749 _%is-e?129196%_))))
                  (begin
                    (let ((_g129748_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129747_)
                                 (##vector-length _g129747_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129748_ 2)))
                          (error "Context expects 2 values" _g129748_)))
                    (let ((_%e129308%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129747_ 0)))
                          (_%vars129309%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129747_ 1))))
                      (values (cons 'box _%e129308%_) _%vars129309%_))))
                (let () (values (cons 'datum _%e129195%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129750_
                             (let ()
                               (declare (not safe))
                               (_%recur129190%_ _%e129186%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129751_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129750_)
                                       (##vector-length _g129750_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129751_ 2)))
                                (error "Context expects 2 values" _g129751_)))
                          (let ((_%tree129192%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129750_ 0)))
                                (_%vars129193%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129750_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars129193%_))
                                _%tree129192%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129142%_
                                   _%vars129193%_))))))))))
          (let* ((_%e129146129156%_ _%stx129142%_)
                 (_%E129148129160%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129142%_))))
                 (_%E129147129182%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129146129156%_))
                        (let ((_%e129149129164%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129146129156%_))))
                          (let ((_%hd129150129167%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129149129164%_)))
                                (_%tl129151129169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129149129164%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129151129169%_))
                                (let ((_%e129152129172%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129151129169%_))))
                                  (let ((_%hd129153129175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129152129172%_)))
                                        (_%tl129154129177%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129152129172%_))))
                                    (let ((_%form129180%_ _%hd129153129175%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129154129177%_))
                                          (if '#t
                                              (let ((__tmp129753
                                                     (let ((__tmp129754
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse129145%_
                                                               _%form129180%_))))
                                                       (declare (not safe))
                                                       (_%generate129144%_
                                                        __tmp129754)))
                                                    (__tmp129752
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129142%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129753
                                                 __tmp129752))
                                              (let ()
                                                (declare (not safe))
                                                (_%E129148129160%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129148129160%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E129148129160%_)))))
                        (let () (declare (not safe)) (_%E129148129160%_))))))
            (declare (not safe))
            (_%E129147129182%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128391%_
               _%identifier=?128392%_
               _%unwrap-e128393%_
               _%wrap-e128394%_)
        (letrec ((_%generate-bindings128396%_
                  (lambda (_%target129006%_
                           _%ids129007%_
                           _%clauses129008%_
                           _%clause-ids129009%_
                           _%E129010%_)
                    (letrec ((_%generate1129012%_
                              (lambda (_%clause129109%_
                                       _%clause-id129110%_
                                       _%E129111%_)
                                (cons (cons _%clause-id129110%_ '())
                                      (cons (let ((__tmp129756
                                                   (cons _%target129006%_ '()))
                                                  (__tmp129755
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause128398%_
                                                      _%target129006%_
                                                      _%ids129007%_
                                                      _%clause129109%_
                                                      _%E129111%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129756
                                               __tmp129755))
                                            '())))))
                      (let _%lp129014%_ ((_%rest129016%_ _%clauses129008%_)
                                         (_%rest-ids129017%_
                                          _%clause-ids129009%_)
                                         (_%bindings129018%_ '()))
                        (let* ((_%rest129019129027%_ _%rest129016%_)
                               (_%else129021129035%_
                                (lambda () _%bindings129018%_))
                               (_%K129023129097%_
                                (lambda (_%rest129038%_ _%clause129039%_)
                                  (let* ((_%rest-ids129040129047%_
                                          _%rest-ids129017%_)
                                         (_%E129042129051%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids129040129047%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K129043129085%_
                                          (lambda (_%rest-ids129054%_
                                                   _%clause-id129055%_)
                                            (let* ((_%rest-ids129056129064%_
                                                    _%rest-ids129054%_)
                                                   (_%else129058129072%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1129012%_
                                                               _%clause129039%_
                                                               _%clause-id129055%_
                                                               _%E129010%_))
                                                            _%bindings129018%_)))
                                                   (_%K129060129077%_
                                                    (lambda (_%next-clause-id129075%_)
                                                      (let ((__tmp129757
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1129012%_
                              _%clause129039%_
                              _%clause-id129055%_
                              _%next-clause-id129075%_))
                           _%bindings129018%_)))
                (declare (not safe))
                (_%lp129014%_
                 _%rest129038%_
                 _%rest-ids129054%_
                 __tmp129757)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids129056129064%_))
                                                  (let* ((_%hd129061129080%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids129056129064%_)))
                                                         (_%next-clause-id129083%_
                                                          _%hd129061129080%_))
                                                    (declare (not safe))
                                                    (_%K129060129077%_
                                                     _%next-clause-id129083%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else129058129072%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids129040129047%_))
                                        (let ((_%hd129044129088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids129040129047%_)))
                                              (_%tl129045129090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids129040129047%_))))
                                          (let* ((_%clause-id129093%_
                                                  _%hd129044129088%_)
                                                 (_%rest-ids129095%_
                                                  _%tl129045129090%_))
                                            (declare (not safe))
                                            (_%K129043129085%_
                                             _%rest-ids129095%_
                                             _%clause-id129093%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E129042129051%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest129019129027%_))
                              (let ((_%hd129024129100%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest129019129027%_)))
                                    (_%tl129025129102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest129019129027%_))))
                                (let* ((_%clause129105%_ _%hd129024129100%_)
                                       (_%rest129107%_ _%tl129025129102%_))
                                  (declare (not safe))
                                  (_%K129023129097%_
                                   _%rest129107%_
                                   _%clause129105%_)))
                              (let ()
                                (declare (not safe))
                                (_%else129021129035%_))))))))
                 (_%generate-body128397%_
                  (lambda (_%bindings128966%_ _%body128967%_)
                    (let _%recur128969%_ ((_%rest128971%_ _%bindings128966%_))
                      (let* ((_%rest128972128980%_ _%rest128971%_)
                             (_%else128974128988%_ (lambda () _%body128967%_))
                             (_%K128976128994%_
                              (lambda (_%rest128991%_ _%hd128992%_)
                                (let ((__tmp129759 (cons _%hd128992%_ '()))
                                      (__tmp129758
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128969%_ _%rest128991%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129759
                                   __tmp129758)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128972128980%_))
                            (let ((_%hd128977128997%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128972128980%_)))
                                  (_%tl128978128999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128972128980%_))))
                              (let* ((_%hd129002%_ _%hd128977128997%_)
                                     (_%rest129004%_ _%tl128978128999%_))
                                (declare (not safe))
                                (_%K128976128994%_
                                 _%rest129004%_
                                 _%hd129002%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128974128988%_)))))))
                 (_%generate-clause128398%_
                  (lambda (_%target128829%_
                           _%ids128830%_
                           _%clause128831%_
                           _%E128832%_)
                    (letrec ((_%generate1128834%_
                              (lambda (_%hd128921%_
                                       _%fender128922%_
                                       _%body128923%_)
                                (let ((_g129760_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause128400%_
                                          _%hd128921%_
                                          _%ids128830%_))))
                                  (begin
                                    (let ((_g129761_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129760_)
                                                 (##vector-length _g129760_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129761_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129761_)))
                                    (let ((_%e128925%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129760_ 0)))
                                          (_%mvars128926%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129760_ 1))))
                                      (let* ((_%pvars128928%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128926%_))))
                                             (_%E128930%_
                                              (cons _%E128832%_
                                                    (cons _%target128829%_
                                                          '())))
                                             (_%K128963%_
                                              (let ((__tmp129762
                                                     (let ((__tmp129764
                                                            (map (lambda (_%mvar128932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128933%_)
                           (let* ((_%mvar128934128941%_ _%mvar128932%_)
                                  (_%E128936128945%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128934128941%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128937128951%_
                                   (lambda (_%depth128948%_ _%id128949%_)
                                     (cons _%id128949%_
                                           (cons (let ((__tmp129766
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128949%_)))
                                                       (__tmp129765
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128933%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129766
                                                    __tmp129765
                                                    _%depth128948%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128934128941%_))
                                 (let ((_%hd128938128954%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128934128941%_)))
                                       (_%tl128939128956%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128934128941%_))))
                                   (let* ((_%id128959%_ _%hd128938128954%_)
                                          (_%depth128961%_ _%tl128939128956%_))
                                     (declare (not safe))
                                     (_%K128937128951%_
                                      _%depth128961%_
                                      _%id128959%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128936128945%_)))))
                         _%mvars128926%_
                         _%pvars128928%_))
                   (__tmp129763
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128922%_ '#t))
                        _%body128923%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128922%_
                           _%body128923%_
                           _%E128930%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129764 __tmp129763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128928%_
                                                 __tmp129762))))
                                        (declare (not safe))
                                        (_%generate-match128399%_
                                         _%hd128921%_
                                         _%target128829%_
                                         _%e128925%_
                                         _%mvars128926%_
                                         _%K128963%_
                                         _%E128930%_))))))))
                      (let* ((_%e128835128855%_ _%clause128831%_)
                             (_%E128844128859%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128835128855%_))))
                             (_%E128837128893%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128835128855%_))
                                    (let ((_%e128845128863%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128835128855%_))))
                                      (let ((_%hd128846128866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128845128863%_)))
                                            (_%tl128847128868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128845128863%_))))
                                        (let ((_%hd128871%_
                                               _%hd128846128866%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128847128868%_))
                                              (let ((_%e128848128873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128847128868%_))))
                                                (let ((_%hd128849128876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128848128873%_)))
                                                      (_%tl128850128878%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128848128873%_))))
                                                  (let ((_%fender128881%_
                                                         _%hd128849128876%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128850128878%_))
                                                        (let ((_%e128851128883%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128850128878%_))))
                  (let ((_%hd128852128886%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128851128883%_)))
                        (_%tl128853128888%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128851128883%_))))
                    (let ((_%body128891%_ _%hd128852128886%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128853128888%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128834%_
                                 _%hd128871%_
                                 _%fender128881%_
                                 _%body128891%_))
                              (let ()
                                (declare (not safe))
                                (_%E128844128859%_)))
                          (let () (declare (not safe)) (_%E128844128859%_))))))
                (let () (declare (not safe)) (_%E128844128859%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128844128859%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128844128859%_)))))
                             (_%E128836128917%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128835128855%_))
                                    (let ((_%e128838128897%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128835128855%_))))
                                      (let ((_%hd128839128900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128838128897%_)))
                                            (_%tl128840128902%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128838128897%_))))
                                        (let ((_%hd128905%_
                                               _%hd128839128900%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128840128902%_))
                                              (let ((_%e128841128907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128840128902%_))))
                                                (let ((_%hd128842128910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128841128907%_)))
                                                      (_%tl128843128912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128841128907%_))))
                                                  (let ((_%body128915%_
                                                         _%hd128842128910%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128843128912%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128834%_
                                                               _%hd128905%_
                                                               '#t
                                                               _%body128915%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128837128893%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128837128893%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128837128893%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128837128893%_))))))
                        (declare (not safe))
                        (_%E128836128917%_)))))
                 (_%generate-match128399%_
                  (lambda (_%where128578%_
                           _%target128579%_
                           _%hd128580%_
                           _%mvars128581%_
                           _%K128582%_
                           _%E128583%_)
                    (letrec ((_%BUG128585%_
                              (lambda (_%q128827%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128391%_
                                         _%hd128580%_
                                         _%q128827%_))))
                             (_%recur128586%_
                              (lambda (_%e128677%_
                                       _%vars128678%_
                                       _%target128679%_
                                       _%E128680%_
                                       _%k128681%_)
                                (let* ((_%e128682128689%_ _%e128677%_)
                                       (_%E128684128693%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128682128689%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128685128815%_
                                        (lambda (_%body128696%_ _%tag128697%_)
                                          (let ((_%$e128699%_ _%tag128697%_))
                                            (if (eq? 'any _%$e128699%_)
                                                (_%k128681%_ _%vars128678%_)
                                                (if (eq? 'id _%$e128699%_)
                                                    (let ((__tmp129771
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128679%_)))
                                                          (__tmp129767
                                                           (let ((__tmp129769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129770
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128394%_
                                    _%body128696%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128392%_
                             __tmp129770
                             _%target128679%_)))
                         (__tmp129768 (_%k128681%_ _%vars128678%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129769 __tmp129768 _%E128680%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129771 __tmp129767 _%E128680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128699%_)
                                                        (_%k128681%_
                                                         (cons (cons _%body128696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128679%_)
                       _%vars128678%_))
                (if (eq? 'cons _%$e128699%_)
                    (let ((_%$e128702%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128703%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128704%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129778
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128679%_)))
                            (__tmp129772
                             (let ((__tmp129777
                                    (cons (cons (cons _%$e128702%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128393%_
                                                         _%target128679%_))
                                                      '()))
                                          '()))
                                   (__tmp129773
                                    (let ((__tmp129776
                                           (cons (cons (cons _%$hd128703%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128702%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128702%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129774
                                           (let* ((_%body128705128712%_
                                                   _%body128696%_)
                                                  (_%E128707128716%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128705128712%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128708128724%_
                                                   (lambda (_%tl128719%_
                                                            _%hd128720%_)
                                                     (let ((__tmp129775
                                                            (lambda (_%vars128722%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128586%_
                         _%tl128719%_
                         _%vars128722%_
                         _%$tl128704%_
                         _%E128680%_
                         _%k128681%_)))))
               (declare (not safe))
               (_%recur128586%_
                _%hd128720%_
                _%vars128678%_
                _%$hd128703%_
                _%E128680%_
                __tmp129775)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128705128712%_))
                                                 (let ((_%hd128709128727%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128705128712%_)))
                                                       (_%tl128710128729%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128705128712%_))))
                                                   (let* ((_%hd128732%_
                                                           _%hd128709128727%_)
                                                          (_%tl128734%_
                                                           _%tl128710128729%_))
                                                     (declare (not safe))
                                                     (_%K128708128724%_
                                                      _%tl128734%_
                                                      _%hd128732%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128707128716%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129776
                                       __tmp129774))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129777
                                __tmp129773))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129778
                         __tmp129772
                         _%E128680%_)))
                    (if (eq? 'splice _%$e128699%_)
                        (let* ((_%body128735128742%_ _%body128696%_)
                               (_%E128737128746%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128735128742%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128738128797%_
                                (lambda (_%tl128749%_ _%hd128750%_)
                                  (let* ((_%rlen128752%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128587%_
                                             _%tl128749%_)))
                                         (_%$target128754%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128756%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128758%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128760%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128762%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128764%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128766%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128768%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128588%_
                                             _%hd128750%_)))
                                         (_%lvars128770%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128768%_)))
                                         (_%tlvars128772%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128768%_)))
                                         (_%linit128776%_
                                          (map (lambda (_%var128774%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128770%_)))
                                    (letrec ((_%make-loop128779%_
                                              (lambda (_%vars128783%_)
                                                (let ((__tmp129781
                                                       (cons (cons (cons _%$lp128760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129797
                                        (cons _%$hd128756%_ _%lvars128770%_))
                                       (__tmp129782
                                        (let ((__tmp129796
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128756%_)))
                                              (__tmp129787
                                               (let ((__tmp129795
                                                      (cons (cons (cons _%$lp-e128762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128393%_
                                   _%$hd128756%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129788
                                                      (let ((__tmp129794
                                                             (cons (cons (cons _%$lp-hd128764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128762%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128766%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128762%_))
                                             '()))
                                 '())))
                    (__tmp129789
                     (let ((__tmp129790
                            (lambda (_%hdvars128785%_)
                              (let ((__tmp129791
                                     (let ((__tmp129792
                                            (map (lambda (_%svar128787%_
                                                          _%lvar128788%_)
                                                   (let ((__tmp129793
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128787%_
                                                             _%hdvars128785%_
                                                             _%BUG128585%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129793
                                                      _%lvar128788%_)))
                                                 _%svars128768%_
                                                 _%lvars128770%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128766%_ __tmp129792))))
                                (declare (not safe))
                                (cons _%$lp128760%_ __tmp129791)))))
                       (declare (not safe))
                       (_%recur128586%_
                        _%hd128750%_
                        '()
                        _%$lp-hd128764%_
                        _%E128680%_
                        __tmp129790))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129794 __tmp129789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129795
                                                  __tmp129788)))
                                              (__tmp129783
                                               (let ((__tmp129786
                                                      (map (lambda (_%lvar128790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128791%_)
                     (cons (cons _%tlvar128791%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128790%_))
                                 '())))
                   _%lvars128770%_
                   _%tlvars128772%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129784
                                                      (_%k128681%_
                                                       (let ((__tmp129785
                                                              (lambda (_%svar128793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128794%_
                               _%r128795%_)
                        (cons (cons _%svar128793%_ _%tlvar128794%_)
                              _%r128795%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129785
                  _%vars128783%_
                  _%svars128768%_
                  _%tlvars128772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129786
                                                  __tmp129784))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129796
                                           __tmp129787
                                           __tmp129783))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129797
                                    __tmp129782))
                                 '()))
                     '()))
              (__tmp129779
               (let ((__tmp129780
                      (let ()
                        (declare (not safe))
                        (cons _%$target128754%_ _%linit128776%_))))
                 (declare (not safe))
                 (cons _%$lp128760%_ __tmp129780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129781
                                                   __tmp129779)))))
                                      (let ((_%body128781%_
                                             (let ((__tmp129799
                                                    (cons (cons (cons _%$target128754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128758%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128679%_
                                 _%rlen128752%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129798
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128586%_
                                                       _%tl128749%_
                                                       _%vars128678%_
                                                       _%$tl128758%_
                                                       _%E128680%_
                                                       _%make-loop128779%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129799
                                                __tmp129798))))
                                        (let ((__tmp129803
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128679%_)))
                                              (__tmp129800
                                               (if (zero? _%rlen128752%_)
                                                   _%body128781%_
                                                   (let ((__tmp129801
                                                          (let ((__tmp129802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128679%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129802 _%rlen128752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129801
                                                      _%body128781%_
                                                      _%E128680%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129803
                                           __tmp129800
                                           _%E128680%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128735128742%_))
                              (let ((_%hd128739128800%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128735128742%_)))
                                    (_%tl128740128802%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128735128742%_))))
                                (let* ((_%hd128805%_ _%hd128739128800%_)
                                       (_%tl128807%_ _%tl128740128802%_))
                                  (declare (not safe))
                                  (_%K128738128797%_
                                   _%tl128807%_
                                   _%hd128805%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128737128746%_))))
                        (if (eq? 'null _%$e128699%_)
                            (let ((__tmp129805
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128679%_)))
                                  (__tmp129804 (_%k128681%_ _%vars128678%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129805
                               __tmp129804
                               _%E128680%_))
                            (if (eq? 'vector _%$e128699%_)
                                (let ((_%$e128809%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129810
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128679%_)))
                                        (__tmp129806
                                         (let ((__tmp129808
                                                (cons (cons (cons _%$e128809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129809
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128393%_
                                    _%target128679%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129809))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129807
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128586%_
                                                   _%body128696%_
                                                   _%vars128678%_
                                                   _%$e128809%_
                                                   _%E128680%_
                                                   _%k128681%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129808
                                            __tmp129807))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129810
                                     __tmp129806
                                     _%E128680%_)))
                                (if (eq? 'box _%$e128699%_)
                                    (let ((_%$e128811%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129815
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128679%_)))
                                            (__tmp129811
                                             (let ((__tmp129813
                                                    (cons (cons (cons _%$e128811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129814
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128393%_
                                        _%target128679%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129814))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129812
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128586%_
                                                       _%body128696%_
                                                       _%vars128678%_
                                                       _%$e128811%_
                                                       _%E128680%_
                                                       _%k128681%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129813
                                                __tmp129812))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129815
                                         __tmp129811
                                         _%E128680%_)))
                                    (if (eq? 'datum _%$e128699%_)
                                        (let ((_%$e128813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129821
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128679%_)))
                                                (__tmp129816
                                                 (let ((__tmp129820
                                                        (cons (cons (cons _%$e128813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128679%_))
                                  '()))
                      '()))
               (__tmp129817
                (let ((__tmp129819
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128813%_ _%body128696%_)))
                      (__tmp129818 (_%k128681%_ _%vars128678%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129819 __tmp129818 _%E128680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129820
                                                    __tmp129817))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129821
                                             __tmp129816
                                             _%E128680%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128585%_
                                           _%e128677%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128682128689%_))
                                      (let ((_%hd128686128818%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128682128689%_)))
                                            (_%tl128687128820%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128682128689%_))))
                                        (let* ((_%tag128823%_
                                                _%hd128686128818%_)
                                               (_%body128825%_
                                                _%tl128687128820%_))
                                          (declare (not safe))
                                          (_%K128685128815%_
                                           _%body128825%_
                                           _%tag128823%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128684128693%_))))))
                             (_%splice-rlen128587%_
                              (lambda (_%e128639%_)
                                (let _%lp128641%_ ((_%e128643%_ _%e128639%_)
                                                   (_%n128644%_ '0))
                                  (let* ((_%e128645128652%_ _%e128643%_)
                                         (_%E128647128656%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128645128652%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128648128665%_
                                          (lambda (_%body128659%_
                                                   _%tag128660%_)
                                            (let ((_%$e128662%_ _%tag128660%_))
                                              (if (eq? 'splice _%$e128662%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128391%_
                                                     _%where128578%_))
                                                  (if (eq? 'cons _%$e128662%_)
                                                      (let ((__tmp129823
                                                             (cdr _%body128659%_))
                                                            (__tmp129822
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128644%_ '1))))
                (declare (not safe))
                (_%lp128641%_ __tmp129823 __tmp129822))
              _%n128644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128645128652%_))
                                        (let ((_%hd128649128668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128645128652%_)))
                                              (_%tl128650128670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128645128652%_))))
                                          (let* ((_%tag128673%_
                                                  _%hd128649128668%_)
                                                 (_%body128675%_
                                                  _%tl128650128670%_))
                                            (declare (not safe))
                                            (_%K128648128665%_
                                             _%body128675%_
                                             _%tag128673%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128647128656%_)))))))
                             (_%splice-vars128588%_
                              (lambda (_%e128595%_)
                                (let _%recur128597%_ ((_%e128599%_ _%e128595%_)
                                                      (_%vars128600%_ '()))
                                  (let* ((_%e128601128608%_ _%e128599%_)
                                         (_%E128603128612%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128601128608%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128604128627%_
                                          (lambda (_%body128615%_
                                                   _%tag128616%_)
                                            (let ((_%$e128618%_ _%tag128616%_))
                                              (if (eq? 'var _%$e128618%_)
                                                  (cons _%body128615%_
                                                        _%vars128600%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128618%_)
                                                          (eq? 'splice
                                                               _%$e128618%_))
                                                      (let ((__tmp129826
                                                             (cdr _%body128615%_))
                                                            (__tmp129824
                                                             (let ((__tmp129825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128615%_)))
                       (declare (not safe))
                       (_%recur128597%_ __tmp129825 _%vars128600%_))))
                (declare (not safe))
                (_%recur128597%_ __tmp129826 __tmp129824))
              (if (or (eq? 'vector _%$e128618%_) (eq? 'box _%$e128618%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128597%_ _%body128615%_ _%vars128600%_))
                  _%vars128600%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128601128608%_))
                                        (let ((_%hd128605128630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128601128608%_)))
                                              (_%tl128606128632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128601128608%_))))
                                          (let* ((_%tag128635%_
                                                  _%hd128605128630%_)
                                                 (_%body128637%_
                                                  _%tl128606128632%_))
                                            (declare (not safe))
                                            (_%K128604128627%_
                                             _%body128637%_
                                             _%tag128635%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128603128612%_)))))))
                             (_%make-body128589%_
                              (lambda (_%vars128591%_)
                                (cons _%K128582%_
                                      (map (lambda (_%mvar128593%_)
                                             (let ((__tmp129827
                                                    (car _%mvar128593%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129827
                                                _%vars128591%_
                                                _%BUG128585%_)))
                                           _%mvars128581%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128586%_
                         _%hd128580%_
                         '()
                         _%target128579%_
                         _%E128583%_
                         _%make-body128589%_)))))
                 (_%parse-clause128400%_
                  (lambda (_%hd128472%_ _%ids128473%_)
                    (let _%recur128475%_ ((_%e128477%_ _%hd128472%_)
                                          (_%vars128478%_ '())
                                          (_%depth128479%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128477%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e128477%_))
                                (let () (values '(any) _%vars128478%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e128477%_))
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Misplaced ellipsis"
                                       _%stx128391%_
                                       _%hd128472%_))
                                    (if (let ((__tmp129828
                                               (lambda (_%id128484%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e128477%_
                                                    _%id128484%_)))))
                                          (declare (not safe))
                                          (__find __tmp129828 _%ids128473%_))
                                        (let ()
                                          (values (cons 'id _%e128477%_)
                                                  _%vars128478%_))
                                        (if (let ((__tmp129829
                                                   (lambda (_%var128487%_)
                                                     (let ((__tmp129830
                                                            (car _%var128487%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e128477%_
                                                        __tmp129830)))))
                                              (declare (not safe))
                                              (__find __tmp129829
                                                      _%vars128478%_))
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Duplicate pattern variable"
                                               _%stx128391%_
                                               _%e128477%_))
                                            (let ()
                                              (values (cons 'var _%e128477%_)
                                                      (cons (cons _%e128477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth128479%_)
                    _%vars128478%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128477%_))
                              (let ()
                                (let* ((_%e128491128498%_ _%e128477%_)
                                       (_%E128493128502%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e128491128498%_))))
                                       (_%E128492128563%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e128491128498%_))
                                              (let ((_%e128494128506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128491128498%_))))
                                                (let ((_%hd128495128509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128494128506%_)))
                                                      (_%tl128496128511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128494128506%_))))
                                                  (let* ((_%hd128514%_
                                                          _%hd128495128509%_)
                                                         (_%rest128516%_
                                                          _%tl128496128511%_))
                                                    (if '#t
                                                        (let* ((_%make-pair128531%_
                                                                (lambda (_%tag128518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd128519%_
                                 _%tl128520%_)
                          (let* ((_%hd-depth128522%_
                                  (if (eq? _%tag128518%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth128479%_ '1))
                                      _%depth128479%_))
                                 (_g129831_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur128475%_
                                     _%hd128519%_
                                     _%vars128478%_
                                     _%hd-depth128522%_))))
                            (begin
                              (let ((_g129832_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129831_)
                                           (##vector-length _g129831_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129832_ 2)))
                                    (error "Context expects 2 values"
                                           _g129832_)))
                              (let ((_%hd128524%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129831_ 0)))
                                    (_%vars128525%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129831_ 1))))
                                (let ((_g129833_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128475%_
                                          _%tl128520%_
                                          _%vars128525%_
                                          _%depth128479%_))))
                                  (begin
                                    (let ((_g129834_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129833_)
                                                 (##vector-length _g129833_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129834_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129834_)))
                                    (let ((_%tl128527%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129833_ 0)))
                                          (_%vars128528%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129833_ 1))))
                                      (let ()
                                        (values (let ((__tmp129835
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd128524%_
                                                               _%tl128527%_))))
                                                  (declare (not safe))
                                                  (cons _%tag128518%_
                                                        __tmp129835))
                                                _%vars128528%_))))))))))
                       (_%e128532128539%_ _%rest128516%_)
                       (_%E128534128543%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair128531%_
                             'cons
                             _%hd128514%_
                             _%rest128516%_))))
                       (_%E128533128559%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128532128539%_))
                              (let ((_%e128535128547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e128532128539%_))))
                                (let ((_%hd128536128550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e128535128547%_)))
                                      (_%tl128537128552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e128535128547%_))))
                                  (let* ((_%rest-hd128555%_ _%hd128536128550%_)
                                         (_%rest-tl128557%_
                                          _%tl128537128552%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd128555%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128531%_
                                               'splice
                                               _%hd128514%_
                                               _%rest-tl128557%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128531%_
                                               'cons
                                               _%hd128514%_
                                               _%rest128516%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128534128543%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E128534128543%_))))))
                  (declare (not safe))
                  (_%E128533128559%_))
                (let () (declare (not safe)) (_%E128493128502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128493128502%_))))))
                                  (declare (not safe))
                                  (_%E128492128563%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128477%_))
                                  (let () (values '(null) _%vars128478%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128477%_))
                                      (let ((_g129836_
                                             (let ((__tmp129838
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128477%_)))))
                                               (declare (not safe))
                                               (_%recur128475%_
                                                __tmp129838
                                                _%vars128478%_
                                                _%depth128479%_))))
                                        (begin
                                          (let ((_g129837_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129836_)
                                                       (##vector-length
                                                        _g129836_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129837_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129837_)))
                                          (let ((_%e128569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129836_ 0)))
                                                (_%vars128570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129836_
                                                    1))))
                                            (values (cons 'vector _%e128569%_)
                                                    _%vars128570%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128477%_))
                                          (let ((_g129839_
                                                 (let ((__tmp129841
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%e128477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%recur128475%_
                                                    __tmp129841
                                                    _%vars128478%_
                                                    _%depth128479%_))))
                                            (begin
                                              (let ((_g129840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129839_)
                                                           (##vector-length
                                                            _g129839_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129840_)))
                                              (let ((_%e128573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129839_
                                                        0)))
                                                    (_%vars128574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129839_
                                                        1))))
                                                (values (cons 'box _%e128573%_)
                                                        _%vars128574%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128477%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e128477%_)))
                _%vars128478%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128391%_
                                                 _%e128477%_))))))))))))
          (let* ((_%e128401128414%_ _%stx128391%_)
                 (_%E128403128418%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128401128414%_))))
                 (_%E128402128468%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128401128414%_))
                        (let ((_%e128404128422%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128401128414%_))))
                          (let ((_%hd128405128425%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128404128422%_)))
                                (_%tl128406128427%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128404128422%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128406128427%_))
                                (let ((_%e128407128430%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128406128427%_))))
                                  (let ((_%hd128408128433%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128407128430%_)))
                                        (_%tl128409128435%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128407128430%_))))
                                    (let ((_%expr128438%_ _%hd128408128433%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128409128435%_))
                                          (let ((_%e128410128440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128409128435%_))))
                                            (let ((_%hd128411128443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128410128440%_)))
                                                  (_%tl128412128445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128410128440%_))))
                                              (let* ((_%ids128448%_
                                                      _%hd128411128443%_)
                                                     (_%clauses128450%_
                                                      _%tl128412128445%_))
                                                (if '#t
                                                    (if (let ((__tmp129842
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids128448%_))))
                  (declare (not safe))
                  (not __tmp129842))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128391%_
                   _%ids128448%_))
                (if (let ((__tmp129843
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses128450%_))))
                      (declare (not safe))
                      (not __tmp129843))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128391%_))
                    (let ()
                      (let* ((_%ids128455%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids128448%_)))
                             (_%clauses128457%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses128450%_)))
                             (_%clause-ids128459%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses128457%_)))
                             (_%E128461%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target128463%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first128465%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses128457%_))
                                  _%E128461%_
                                  (car _%clause-ids128459%_))))
                        (let ((__tmp129845
                               (let ((__tmp129846
                                      (let ((__tmp129848
                                             (let ((__tmp129852
                                                    (cons (cons (cons _%E128461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129854 (cons _%target128463%_ '()))
                                    (__tmp129853
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target128463%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129854
                                 __tmp129853))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129849
                                                    (let ((__tmp129851
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings128396%_
                                                              _%target128463%_
                                                              _%ids128455%_
                                                              _%clauses128457%_
                                                              _%clause-ids128459%_
                                                              _%E128461%_)))
                                                          (__tmp129850
                                                           (cons _%first128465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr128438%_ '()))))
              (declare (not safe))
              (_%generate-body128397%_ __tmp129851 __tmp129850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129852
                                                __tmp129849)))
                                            (__tmp129847
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx128391%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129848
                                         __tmp129847))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129846)))
                              (__tmp129844
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx128391%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129845 __tmp129844))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128403128418%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128403128418%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128403128418%_)))))
                        (let () (declare (not safe)) (_%E128403128418%_))))))
            (declare (not safe))
            (_%E128402128468%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129116%_)
        (let* ((_%identifier=?129118%_ 'free-identifier=?)
               (_%unwrap-e129120%_ 'syntax-e)
               (_%wrap-e129122%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129116%_
           _%identifier=?129118%_
           _%unwrap-e129120%_
           _%wrap-e129122%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129124%_ _%identifier=?129125%_)
        (let* ((_%unwrap-e129127%_ 'syntax-e) (_%wrap-e129129%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129124%_
           _%identifier=?129125%_
           _%unwrap-e129127%_
           _%wrap-e129129%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129131%_ _%identifier=?129132%_ _%unwrap-e129133%_)
        (let ((_%wrap-e129135%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129131%_
           _%identifier=?129132%_
           _%unwrap-e129133%_
           _%wrap-e129135%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129856_
        (let ((_g129855_ (let () (declare (not safe)) (##length _g129856_))))
          (cond ((let () (declare (not safe)) (##fx= _g129855_ 1))
                 (apply (lambda (_%stx129116%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx129116%_)))
                        _g129856_))
                ((let () (declare (not safe)) (##fx= _g129855_ 2))
                 (apply (lambda (_%stx129124%_ _%identifier=?129125%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx129124%_
                             _%identifier=?129125%_)))
                        _g129856_))
                ((let () (declare (not safe)) (##fx= _g129855_ 3))
                 (apply (lambda (_%stx129131%_
                                 _%identifier=?129132%_
                                 _%unwrap-e129133%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx129131%_
                             _%identifier=?129132%_
                             _%unwrap-e129133%_)))
                        _g129856_))
                ((let () (declare (not safe)) (##fx= _g129855_ 4))
                 (apply (lambda (_%stx129137%_
                                 _%identifier=?129138%_
                                 _%unwrap-e129139%_
                                 _%wrap-e129140%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx129137%_
                             _%identifier=?129138%_
                             _%unwrap-e129139%_
                             _%wrap-e129140%_)))
                        _g129856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129856_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128388%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128388%_))
            (let ((__tmp129857
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128388%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129857 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128346%_ . _%rest128347%_)
        (let ((_%len128349%_ (length _%hd128346%_)))
          (let _%lp128351%_ ((_%rest128353%_ _%rest128347%_))
            (let* ((_%rest128354128362%_ _%rest128353%_)
                   (_%else128356128370%_ (lambda () '#!void))
                   (_%K128358128376%_
                    (lambda (_%rest128373%_ _%hd128374%_)
                      (if (let ((__tmp129858 (length _%hd128374%_)))
                            (declare (not safe))
                            (##fx= _%len128349%_ __tmp129858))
                          (let ()
                            (declare (not safe))
                            (_%lp128351%_ _%rest128373%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128374%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128354128362%_))
                  (let ((_%hd128359128379%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128354128362%_)))
                        (_%tl128360128381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128354128362%_))))
                    (let* ((_%hd128384%_ _%hd128359128379%_)
                           (_%rest128386%_ _%tl128360128381%_))
                      (declare (not safe))
                      (_%K128358128376%_ _%rest128386%_ _%hd128384%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128301%_ _%n128302%_)
        (let _%lp128304%_ ((_%rest128306%_ _%stx128301%_) (_%r128307%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128306%_))
              (let* ((_%g128308128315%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128306%_)))
                     (_%E128310128319%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128308128315%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128311128325%_
                      (lambda (_%rest128322%_ _%hd128323%_)
                        (let ((__tmp129859 (cons _%hd128323%_ _%r128307%_)))
                          (declare (not safe))
                          (_%lp128304%_ _%rest128322%_ __tmp129859)))))
                (if (let () (declare (not safe)) (##pair? _%g128308128315%_))
                    (let ((_%hd128312128328%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128308128315%_)))
                          (_%tl128313128330%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128308128315%_))))
                      (let* ((_%hd128333%_ _%hd128312128328%_)
                             (_%rest128335%_ _%tl128313128330%_))
                        (declare (not safe))
                        (_%K128311128325%_ _%rest128335%_ _%hd128333%_)))
                    (let () (declare (not safe)) (_%E128310128319%_))))
              (let _%lp128337%_ ((_%n128339%_ _%n128302%_)
                                 (_%l128340%_ _%r128307%_)
                                 (_%r128341%_ _%rest128306%_))
                (if (let () (declare (not safe)) (null? _%l128340%_))
                    (let () (values _%l128340%_ _%r128341%_))
                    (if (fxpositive? _%n128339%_)
                        (let ((__tmp129862
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%n128339%_ '1)))
                              (__tmp129861 (cdr _%l128340%_))
                              (__tmp129860
                               (cons (car _%l128340%_) _%r128341%_)))
                          (declare (not safe))
                          (_%lp128337%_ __tmp129862 __tmp129861 __tmp129860))
                        (let ()
                          (values (reverse _%l128340%_) _%r128341%_)))))))))))
