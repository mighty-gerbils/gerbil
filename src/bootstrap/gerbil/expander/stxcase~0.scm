(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712773525)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129803 (list gx#expander::t))
            (__tmp129802 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129803
         '(id depth)
         __tmp129802
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129799%_
        (apply make-instance gx#syntax-pattern::t _%$args129799%_)))
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
      (lambda (_%self128406129783%_ _%stx129785%_)
        (let* ((_%self129787%_ _%self128406129783%_)
               (_%self129789%_ _%self129787%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129785%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129249%_)
        (letrec ((_%generate129251%_
                  (lambda (_%e129491%_)
                    (letrec ((_%BUG129493%_
                              (lambda (_%q129658%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129249%_
                                         _%e129491%_
                                         _%q129658%_))))
                             (_%local-pattern-e129494%_
                              (lambda (_%pat129656%_)
                                (let ((__tmp129804
                                       (##structure-ref
                                        _%pat129656%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129804))))
                             (_%getvar129495%_
                              (lambda (_%q129653%_ _%vars129654%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129653%_
                                   _%vars129654%_
                                   _%BUG129493%_))))
                             (_%getarg129496%_
                              (lambda (_%arg129619%_ _%vars129620%_)
                                (let* ((_%arg129621129628%_ _%arg129619%_)
                                       (_%E129623129632%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129621129628%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129624129641%_
                                        (lambda (_%e129635%_ _%tag129636%_)
                                          (let ((_%$e129638%_ _%tag129636%_))
                                            (if (eq? 'ref _%$e129638%_)
                                                (_%getvar129495%_
                                                 _%e129635%_
                                                 _%vars129620%_)
                                                (if (eq? 'pattern _%$e129638%_)
                                                    (_%local-pattern-e129494%_
                                                     _%e129635%_)
                                                    (_%BUG129493%_
                                                     _%arg129619%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129621129628%_))
                                      (let ((_%hd129625129644%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129621129628%_)))
                                            (_%tl129626129646%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129621129628%_))))
                                        (let* ((_%tag129649%_
                                                _%hd129625129644%_)
                                               (_%e129651%_
                                                _%tl129626129646%_))
                                          (_%K129624129641%_
                                           _%e129651%_
                                           _%tag129649%_)))
                                      (_%E129623129632%_))))))
                      (let _%recur129498%_ ((_%e129500%_ _%e129491%_)
                                            (_%vars129501%_ '()))
                        (let* ((_%e129502129509%_ _%e129500%_)
                               (_%E129504129513%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129502129509%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129505129607%_
                                (lambda (_%body129516%_ _%tag129517%_)
                                  (let ((_%$e129519%_ _%tag129517%_))
                                    (if (eq? 'datum _%$e129519%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129516%_))
                                        (if (eq? 'term _%$e129519%_)
                                            (let ((_%id129522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129516%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129522%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129522%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks129525%_)
                                                        (let ((__tmp129805
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129516%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129805))
                (let ((__tmp129807
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129516%_)))
                      (__tmp129806
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129516%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129807
                   __tmp129806
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129522%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129516%_))
                                                      (_%BUG129493%_
                                                       _%e129500%_))))
                                            (if (eq? 'pattern _%$e129519%_)
                                                (_%local-pattern-e129494%_
                                                 _%body129516%_)
                                                (if (eq? 'ref _%$e129519%_)
                                                    (_%getvar129495%_
                                                     _%body129516%_
                                                     _%vars129501%_)
                                                    (if (eq? 'cons
                                                             _%$e129519%_)
                                                        (let ((__tmp129809
                                                               (_%recur129498%_
                                                                (car _%body129516%_)
                                                                _%vars129501%_))
                                                              (__tmp129808
                                                               (_%recur129498%_
                                                                (cdr _%body129516%_)
                                                                _%vars129501%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp129809
                                                           __tmp129808))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e129519%_)
                    (let ((__tmp129810
                           (_%recur129498%_ _%body129516%_ _%vars129501%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129810))
                    (if (eq? 'box _%$e129519%_)
                        (let ((__tmp129811
                               (_%recur129498%_
                                _%body129516%_
                                _%vars129501%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129811))
                        (if (eq? 'splice _%$e129519%_)
                            (let* ((_%body129528129539%_ _%body129516%_)
                                   (_%E129530129543%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129528129539%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129531129581%_
                                    (lambda (_%args129546%_
                                             _%iv129547%_
                                             _%hd129548%_
                                             _%depth129549%_)
                                      (let* ((_%targets129555%_
                                              (map (lambda (_%g129550129552%_)
                                                     (_%getarg129496%_
                                                      _%g129550129552%_
                                                      _%vars129501%_))
                                                   _%args129546%_))
                                             (_%fold-in129557%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129546%_)))
                                             (_%fold-out129559%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129561%_
                                              (let ((__tmp129812
                                                     (cons _%fold-out129559%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129812
                                                 _%fold-in129557%_)))
                                             (_%lambda-body129578%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129549%_ '1))
                                                  (let ((_%r-args129569%_
                                                         (map (lambda (_%arg129563%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129563%_)))
                      _%args129546%_))
                (_%r-vars129570%_
                 (let ((__tmp129813
                        (lambda (_%arg129565%_ _%var129566%_ _%r129567%_)
                          (cons (cons (cdr _%arg129565%_) _%var129566%_)
                                _%r129567%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129813
                    _%vars129501%_
                    _%args129546%_
                    _%fold-in129557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur129498%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth129549%_ '1))
                         (cons _%hd129548%_
                               (cons (cons 'var _%fold-out129559%_)
                                     _%r-args129569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars129570%_))
                                                  (let* ((_%hd-vars129576%_
                                                          (let ((__tmp129814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129572%_ _%var129573%_ _%r129574%_)
                           (cons (cons (cdr _%arg129572%_) _%var129573%_)
                                 _%r129574%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129814
                     _%vars129501%_
                     _%args129546%_
                     _%fold-in129557%_)))
                 (__tmp129815
                  (_%recur129498%_ _%hd129548%_ _%hd-vars129576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129815
                                                     _%fold-out129559%_)))))
                                        (let ((__tmp129819
                                               (if (let ((__tmp129820
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129555%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129820 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129555%_))
                                                   '#!void))
                                              (__tmp129816
                                               (let ((__tmp129818
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129561%_
                                                         _%lambda-body129578%_)))
                                                     (__tmp129817
                                                      (_%recur129498%_
                                                       _%iv129547%_
                                                       _%vars129501%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129818
                                                  __tmp129817
                                                  _%targets129555%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129819
                                           __tmp129816))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129528129539%_))
                                  (let ((_%hd129532129584%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129528129539%_)))
                                        (_%tl129533129586%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129528129539%_))))
                                    (let ((_%depth129589%_ _%hd129532129584%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129533129586%_))
                                          (let ((_%hd129534129591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129533129586%_)))
                                                (_%tl129535129593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129533129586%_))))
                                            (let ((_%hd129596%_
                                                   _%hd129534129591%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129535129593%_))
                                                  (let ((_%hd129536129598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129535129593%_)))
                                                        (_%tl129537129600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129535129593%_))))
                                                    (let* ((_%iv129603%_
                                                            _%hd129536129598%_)
                                                           (_%args129605%_
                                                            _%tl129537129600%_))
                                                      (_%K129531129581%_
                                                       _%args129605%_
                                                       _%iv129603%_
                                                       _%hd129596%_
                                                       _%depth129589%_)))
                                                  (_%E129530129543%_))))
                                          (_%E129530129543%_))))
                                  (_%E129530129543%_)))
                            (if (eq? 'var _%$e129519%_)
                                _%body129516%_
                                (_%BUG129493%_ _%e129500%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129502129509%_))
                              (let ((_%hd129506129610%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129502129509%_)))
                                    (_%tl129507129612%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129502129509%_))))
                                (let* ((_%tag129615%_ _%hd129506129610%_)
                                       (_%body129617%_ _%tl129507129612%_))
                                  (_%K129505129607%_
                                   _%body129617%_
                                   _%tag129615%_)))
                              (_%E129504129513%_)))))))
                 (_%parse129252%_
                  (lambda (_%e129293%_)
                    (letrec ((_%make-cons129295%_
                              (lambda (_%hd129483%_ _%tl129484%_)
                                (let ((_g129821_ _%hd129483%_)
                                      (_g129823_ _%tl129484%_))
                                  (begin
                                    (let ((_g129822_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129821_)
                                                 (##vector-length _g129821_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129822_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129822_)))
                                    (let ((_g129824_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129823_)
                                                 (##vector-length _g129823_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129824_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129824_)))
                                    (let ((_%hd-e129486%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129821_ 0)))
                                          (_%hd-vars129487%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129821_ 1))))
                                      (let ((_%tl-e129488%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129823_ 0)))
                                            (_%tl-vars129489%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129823_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e129486%_
                                                            _%tl-e129488%_))
                                                (append _%hd-vars129487%_
                                                        _%tl-vars129489%_))))))))
                             (_%make-splice129296%_
                              (lambda (_%where129419%_
                                       _%depth129420%_
                                       _%hd129421%_
                                       _%tl129422%_)
                                (let ((_g129825_ _%hd129421%_)
                                      (_g129827_ _%tl129422%_))
                                  (begin
                                    (let ((_g129826_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129825_)
                                                 (##vector-length _g129825_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129826_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129826_)))
                                    (let ((_g129828_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129827_)
                                                 (##vector-length _g129827_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129828_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129828_)))
                                    (let ((_%hd-e129424%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129825_ 0)))
                                          (_%hd-vars129425%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129825_ 1))))
                                      (let ((_%tl-e129426%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129827_ 0)))
                                            (_%tl-vars129427%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129827_ 1))))
                                        (let _%lp129429%_ ((_%rest129431%_
                                                            _%hd-vars129425%_)
                                                           (_%targets129432%_
                                                            '())
                                                           (_%vars129433%_
                                                            _%tl-vars129427%_))
                                          (let* ((_%rest129434129444%_
                                                  _%rest129431%_)
                                                 (_%else129436129452%_
                                                  (lambda ()
                                                    (if (null? _%targets129432%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129249%_
                                                           _%where129419%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth129420%_
                                    (cons _%hd-e129424%_
                                          (cons _%tl-e129426%_
                                                _%targets129432%_))))
                        _%vars129433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129438129464%_
                                                  (lambda (_%rest129455%_
                                                           _%hd-pat129456%_
                                                           _%hd-depth*129457%_)
                                                    (let ((_%hd-depth129459%_
                                                           (fx- _%hd-depth*129457%_
                                                                _%depth129420%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129459%_))
                                                          (_%lp129429%_
                                                           _%rest129455%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat129456%_)
                         _%targets129432%_)
                   (cons (cons _%hd-depth129459%_ _%hd-pat129456%_)
                         _%vars129433%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129459%_))
                      (_%lp129429%_
                       _%rest129455%_
                       (cons (cons 'pattern _%hd-pat129456%_)
                             _%targets129432%_)
                       _%vars129433%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129249%_
                         _%where129419%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129434129444%_))
                                                (let ((_%hd129439129467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129434129444%_)))
                                                      (_%tl129440129469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129434129444%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129439129467%_))
                                                      (let ((_%hd129441129472%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129439129467%_)))
                    (_%tl129442129474%_
                     (let () (declare (not safe)) (##cdr _%hd129439129467%_))))
                (let* ((_%hd-depth*129477%_ _%hd129441129472%_)
                       (_%hd-pat129479%_ _%tl129442129474%_)
                       (_%rest129481%_ _%tl129440129469%_))
                  (_%K129438129464%_
                   _%rest129481%_
                   _%hd-pat129479%_
                   _%hd-depth*129477%_)))
              (_%else129436129452%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else129436129452%_))))))))))
                             (_%recur129297%_
                              (lambda (_%e129302%_ _%is-e?129303%_)
                                (if (_%is-e?129303%_ _%e129302%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129249%_))
                                    (if (gx#syntax-local-pattern? _%e129302%_)
                                        (let* ((_%pat129307%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e129302%_)))
                                               (_%depth129309%_
                                                (##structure-ref
                                                 _%pat129307%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth129309%_)
                                              (values (cons 'ref _%pat129307%_)
                                                      (cons (cons _%depth129309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat129307%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat129307%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129302%_))
                                            (values (cons 'term _%e129302%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129302%_))
                                                (let* ((_%e129313129320%_
                                                        _%e129302%_)
                                                       (_%E129315129324%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e129313129320%_))))
                                                       (_%E129314129406%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e129313129320%_))
                      (let ((_%e129316129328%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e129313129320%_))))
                        (let ((_%hd129317129331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129316129328%_)))
                              (_%tl129318129333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129316129328%_))))
                          (let* ((_%hd129336%_ _%hd129317129331%_)
                                 (_%rest129338%_ _%tl129318129333%_))
                            (if '#t
                                (if (_%is-e?129303%_ _%hd129336%_)
                                    (let* ((_%e129339129346%_ _%rest129338%_)
                                           (_%E129341129350%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _%stx129249%_
                                                 _%e129302%_))))
                                           (_%E129340129364%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%e129339129346%_))
                                                  (let ((_%e129342129354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e129339129346%_))))
                                                    (let ((_%hd129343129357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e129342129354%_)))
                                                          (_%tl129344129359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e129342129354%_))))
                                                      (let ((_%rest129362%_
                                                             _%hd129343129357%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl129344129359%_))
                                                            (if '#t
                                                                (_%recur129297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest129362%_
                         false)
                        (_%E129341129350%_))
                    (_%E129341129350%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129341129350%_)))))
                                      (_%E129340129364%_))
                                    (let _%lp129368%_ ((_%rest129370%_
                                                        _%rest129338%_)
                                                       (_%depth129371%_ '0))
                                      (let* ((_%e129372129379%_ _%rest129370%_)
                                             (_%E129374129383%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth129371%_)
                                                    (_%make-splice129296%_
                                                     _%e129302%_
                                                     _%depth129371%_
                                                     (_%recur129297%_
                                                      _%hd129336%_
                                                      _%is-e?129303%_)
                                                     (_%recur129297%_
                                                      _%rest129370%_
                                                      _%is-e?129303%_))
                                                    (_%make-cons129295%_
                                                     (_%recur129297%_
                                                      _%hd129336%_
                                                      _%is-e?129303%_)
                                                     (_%recur129297%_
                                                      _%rest129370%_
                                                      _%is-e?129303%_)))))
                                             (_%E129373129402%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129372129379%_))
                                                    (let ((_%e129375129387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129372129379%_))))
                                                      (let ((_%hd129376129390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129375129387%_)))
                    (_%tl129377129392%_
                     (let () (declare (not safe)) (##cdr _%e129375129387%_))))
                (let* ((_%rest-hd129395%_ _%hd129376129390%_)
                       (_%rest-tl129397%_ _%tl129377129392%_))
                  (if '#t
                      (if (_%is-e?129303%_ _%rest-hd129395%_)
                          (_%lp129368%_
                           _%rest-tl129397%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%depth129371%_ '1)))
                          (if (fxpositive? _%depth129371%_)
                              (_%make-splice129296%_
                               _%e129302%_
                               _%depth129371%_
                               (_%recur129297%_ _%hd129336%_ _%is-e?129303%_)
                               (_%recur129297%_
                                _%rest129370%_
                                _%is-e?129303%_))
                              (_%make-cons129295%_
                               (_%recur129297%_ _%hd129336%_ _%is-e?129303%_)
                               (_%recur129297%_
                                _%rest129370%_
                                _%is-e?129303%_))))
                      (_%E129374129383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129374129383%_)))))
                                        (_%E129373129402%_))))
                                (_%E129315129324%_)))))
                      (_%E129315129324%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129314129406%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129302%_))
                                                    (let ((_g129829_
                                                           (_%recur129297%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e129302%_)))
                    _%is-e?129303%_)))
              (begin
                (let ((_g129830_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129829_)
                             (##vector-length _g129829_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129830_ 2)))
                      (error "Context expects 2 values" _g129830_)))
                (let ((_%e129411%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129829_ 0)))
                      (_%vars129412%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129829_ 1))))
                  (values (cons 'vector _%e129411%_) _%vars129412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129302%_))
                                                        (let ((_g129831_
                                                               (_%recur129297%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e129302%_)))
                        _%is-e?129303%_)))
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
                          (error "Context expects 2 values" _g129832_)))
                    (let ((_%e129415%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129831_ 0)))
                          (_%vars129416%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129831_ 1))))
                      (values (cons 'box _%e129415%_) _%vars129416%_))))
                (values (cons 'datum _%e129302%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129833_
                             (_%recur129297%_ _%e129293%_ gx#ellipsis?)))
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
                                (error "Context expects 2 values" _g129834_)))
                          (let ((_%tree129299%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129833_ 0)))
                                (_%vars129300%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129833_ 1))))
                            (if (null? _%vars129300%_)
                                _%tree129299%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129249%_
                                   _%vars129300%_))))))))))
          (let* ((_%e129253129263%_ _%stx129249%_)
                 (_%E129255129267%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129249%_))))
                 (_%E129254129289%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129253129263%_))
                        (let ((_%e129256129271%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129253129263%_))))
                          (let ((_%hd129257129274%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129256129271%_)))
                                (_%tl129258129276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129256129271%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129258129276%_))
                                (let ((_%e129259129279%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129258129276%_))))
                                  (let ((_%hd129260129282%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129259129279%_)))
                                        (_%tl129261129284%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129259129279%_))))
                                    (let ((_%form129287%_ _%hd129260129282%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129261129284%_))
                                          (if '#t
                                              (let ((__tmp129836
                                                     (_%generate129251%_
                                                      (_%parse129252%_
                                                       _%form129287%_)))
                                                    (__tmp129835
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129249%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129836
                                                 __tmp129835))
                                              (_%E129255129267%_))
                                          (_%E129255129267%_)))))
                                (_%E129255129267%_))))
                        (_%E129255129267%_)))))
            (_%E129254129289%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128498%_
               _%identifier=?128499%_
               _%unwrap-e128500%_
               _%wrap-e128501%_)
        (letrec ((_%generate-bindings128503%_
                  (lambda (_%target129113%_
                           _%ids129114%_
                           _%clauses129115%_
                           _%clause-ids129116%_
                           _%E129117%_)
                    (letrec ((_%generate1129119%_
                              (lambda (_%clause129216%_
                                       _%clause-id129217%_
                                       _%E129218%_)
                                (cons (cons _%clause-id129217%_ '())
                                      (cons (let ((__tmp129838
                                                   (cons _%target129113%_ '()))
                                                  (__tmp129837
                                                   (_%generate-clause128505%_
                                                    _%target129113%_
                                                    _%ids129114%_
                                                    _%clause129216%_
                                                    _%E129218%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129838
                                               __tmp129837))
                                            '())))))
                      (let _%lp129121%_ ((_%rest129123%_ _%clauses129115%_)
                                         (_%rest-ids129124%_
                                          _%clause-ids129116%_)
                                         (_%bindings129125%_ '()))
                        (let* ((_%rest129126129134%_ _%rest129123%_)
                               (_%else129128129142%_
                                (lambda () _%bindings129125%_))
                               (_%K129130129204%_
                                (lambda (_%rest129145%_ _%clause129146%_)
                                  (let* ((_%rest-ids129147129154%_
                                          _%rest-ids129124%_)
                                         (_%E129149129158%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids129147129154%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K129150129192%_
                                          (lambda (_%rest-ids129161%_
                                                   _%clause-id129162%_)
                                            (let* ((_%rest-ids129163129171%_
                                                    _%rest-ids129161%_)
                                                   (_%else129165129179%_
                                                    (lambda ()
                                                      (cons (_%generate1129119%_
                                                             _%clause129146%_
                                                             _%clause-id129162%_
                                                             _%E129117%_)
                                                            _%bindings129125%_)))
                                                   (_%K129167129184%_
                                                    (lambda (_%next-clause-id129182%_)
                                                      (_%lp129121%_
                                                       _%rest129145%_
                                                       _%rest-ids129161%_
                                                       (cons (_%generate1129119%_
                                                              _%clause129146%_
                                                              _%clause-id129162%_
                                                              _%next-clause-id129182%_)
                                                             _%bindings129125%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids129163129171%_))
                                                  (let* ((_%hd129168129187%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids129163129171%_)))
                                                         (_%next-clause-id129190%_
                                                          _%hd129168129187%_))
                                                    (_%K129167129184%_
                                                     _%next-clause-id129190%_))
                                                  (_%else129165129179%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids129147129154%_))
                                        (let ((_%hd129151129195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids129147129154%_)))
                                              (_%tl129152129197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids129147129154%_))))
                                          (let* ((_%clause-id129200%_
                                                  _%hd129151129195%_)
                                                 (_%rest-ids129202%_
                                                  _%tl129152129197%_))
                                            (_%K129150129192%_
                                             _%rest-ids129202%_
                                             _%clause-id129200%_)))
                                        (_%E129149129158%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest129126129134%_))
                              (let ((_%hd129131129207%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest129126129134%_)))
                                    (_%tl129132129209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest129126129134%_))))
                                (let* ((_%clause129212%_ _%hd129131129207%_)
                                       (_%rest129214%_ _%tl129132129209%_))
                                  (_%K129130129204%_
                                   _%rest129214%_
                                   _%clause129212%_)))
                              (_%else129128129142%_)))))))
                 (_%generate-body128504%_
                  (lambda (_%bindings129073%_ _%body129074%_)
                    (let _%recur129076%_ ((_%rest129078%_ _%bindings129073%_))
                      (let* ((_%rest129079129087%_ _%rest129078%_)
                             (_%else129081129095%_ (lambda () _%body129074%_))
                             (_%K129083129101%_
                              (lambda (_%rest129098%_ _%hd129099%_)
                                (let ((__tmp129840 (cons _%hd129099%_ '()))
                                      (__tmp129839
                                       (_%recur129076%_ _%rest129098%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129840
                                   __tmp129839)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest129079129087%_))
                            (let ((_%hd129084129104%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest129079129087%_)))
                                  (_%tl129085129106%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest129079129087%_))))
                              (let* ((_%hd129109%_ _%hd129084129104%_)
                                     (_%rest129111%_ _%tl129085129106%_))
                                (_%K129083129101%_
                                 _%rest129111%_
                                 _%hd129109%_)))
                            (_%else129081129095%_))))))
                 (_%generate-clause128505%_
                  (lambda (_%target128936%_
                           _%ids128937%_
                           _%clause128938%_
                           _%E128939%_)
                    (letrec ((_%generate1128941%_
                              (lambda (_%hd129028%_
                                       _%fender129029%_
                                       _%body129030%_)
                                (let ((_g129841_
                                       (_%parse-clause128507%_
                                        _%hd129028%_
                                        _%ids128937%_)))
                                  (begin
                                    (let ((_g129842_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129841_)
                                                 (##vector-length _g129841_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129842_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129842_)))
                                    (let ((_%e129032%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129841_ 0)))
                                          (_%mvars129033%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129841_ 1))))
                                      (let* ((_%pvars129035%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars129033%_))))
                                             (_%E129037%_
                                              (cons _%E128939%_
                                                    (cons _%target128936%_
                                                          '())))
                                             (_%K129070%_
                                              (let ((__tmp129843
                                                     (let ((__tmp129845
                                                            (map (lambda (_%mvar129039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar129040%_)
                           (let* ((_%mvar129041129048%_ _%mvar129039%_)
                                  (_%E129043129052%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar129041129048%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K129044129058%_
                                   (lambda (_%depth129055%_ _%id129056%_)
                                     (cons _%id129056%_
                                           (cons (let ((__tmp129847
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id129056%_)))
                                                       (__tmp129846
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar129040%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129847
                                                    __tmp129846
                                                    _%depth129055%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar129041129048%_))
                                 (let ((_%hd129045129061%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar129041129048%_)))
                                       (_%tl129046129063%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar129041129048%_))))
                                   (let* ((_%id129066%_ _%hd129045129061%_)
                                          (_%depth129068%_ _%tl129046129063%_))
                                     (_%K129044129058%_
                                      _%depth129068%_
                                      _%id129066%_)))
                                 (_%E129043129052%_))))
                         _%mvars129033%_
                         _%pvars129035%_))
                   (__tmp129844
                    (if (eq? _%fender129029%_ '#t)
                        _%body129030%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender129029%_
                           _%body129030%_
                           _%E129037%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129845 __tmp129844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars129035%_
                                                 __tmp129843))))
                                        (_%generate-match128506%_
                                         _%hd129028%_
                                         _%target128936%_
                                         _%e129032%_
                                         _%mvars129033%_
                                         _%K129070%_
                                         _%E129037%_))))))))
                      (let* ((_%e128942128962%_ _%clause128938%_)
                             (_%E128951128966%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128942128962%_))))
                             (_%E128944129000%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128942128962%_))
                                    (let ((_%e128952128970%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128942128962%_))))
                                      (let ((_%hd128953128973%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128952128970%_)))
                                            (_%tl128954128975%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128952128970%_))))
                                        (let ((_%hd128978%_
                                               _%hd128953128973%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128954128975%_))
                                              (let ((_%e128955128980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128954128975%_))))
                                                (let ((_%hd128956128983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128955128980%_)))
                                                      (_%tl128957128985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128955128980%_))))
                                                  (let ((_%fender128988%_
                                                         _%hd128956128983%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128957128985%_))
                                                        (let ((_%e128958128990%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128957128985%_))))
                  (let ((_%hd128959128993%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128958128990%_)))
                        (_%tl128960128995%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128958128990%_))))
                    (let ((_%body128998%_ _%hd128959128993%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128960128995%_))
                          (if '#t
                              (_%generate1128941%_
                               _%hd128978%_
                               _%fender128988%_
                               _%body128998%_)
                              (_%E128951128966%_))
                          (_%E128951128966%_)))))
                (_%E128951128966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E128951128966%_)))))
                                    (_%E128951128966%_))))
                             (_%E128943129024%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128942128962%_))
                                    (let ((_%e128945129004%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128942128962%_))))
                                      (let ((_%hd128946129007%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128945129004%_)))
                                            (_%tl128947129009%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128945129004%_))))
                                        (let ((_%hd129012%_
                                               _%hd128946129007%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128947129009%_))
                                              (let ((_%e128948129014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128947129009%_))))
                                                (let ((_%hd128949129017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128948129014%_)))
                                                      (_%tl128950129019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128948129014%_))))
                                                  (let ((_%body129022%_
                                                         _%hd128949129017%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128950129019%_))
                                                        (if '#t
                                                            (_%generate1128941%_
                                                             _%hd129012%_
                                                             '#t
                                                             _%body129022%_)
                                                            (_%E128944129000%_))
                                                        (_%E128944129000%_)))))
                                              (_%E128944129000%_)))))
                                    (_%E128944129000%_)))))
                        (_%E128943129024%_)))))
                 (_%generate-match128506%_
                  (lambda (_%where128685%_
                           _%target128686%_
                           _%hd128687%_
                           _%mvars128688%_
                           _%K128689%_
                           _%E128690%_)
                    (letrec ((_%BUG128692%_
                              (lambda (_%q128934%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128498%_
                                         _%hd128687%_
                                         _%q128934%_))))
                             (_%recur128693%_
                              (lambda (_%e128784%_
                                       _%vars128785%_
                                       _%target128786%_
                                       _%E128787%_
                                       _%k128788%_)
                                (let* ((_%e128789128796%_ _%e128784%_)
                                       (_%E128791128800%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128789128796%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128792128922%_
                                        (lambda (_%body128803%_ _%tag128804%_)
                                          (let ((_%$e128806%_ _%tag128804%_))
                                            (if (eq? 'any _%$e128806%_)
                                                (_%k128788%_ _%vars128785%_)
                                                (if (eq? 'id _%$e128806%_)
                                                    (let ((__tmp129852
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128786%_)))
                                                          (__tmp129848
                                                           (let ((__tmp129850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129851
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128501%_
                                    _%body128803%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128499%_
                             __tmp129851
                             _%target128786%_)))
                         (__tmp129849 (_%k128788%_ _%vars128785%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129850 __tmp129849 _%E128787%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129852 __tmp129848 _%E128787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128806%_)
                                                        (_%k128788%_
                                                         (cons (cons _%body128803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128786%_)
                       _%vars128785%_))
                (if (eq? 'cons _%$e128806%_)
                    (let ((_%$e128809%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128810%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128811%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129858
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128786%_)))
                            (__tmp129853
                             (let ((__tmp129857
                                    (cons (cons (cons _%$e128809%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128500%_
                                                         _%target128786%_))
                                                      '()))
                                          '()))
                                   (__tmp129854
                                    (let ((__tmp129856
                                           (cons (cons (cons _%$hd128810%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128809%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128809%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129855
                                           (let* ((_%body128812128819%_
                                                   _%body128803%_)
                                                  (_%E128814128823%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128812128819%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128815128831%_
                                                   (lambda (_%tl128826%_
                                                            _%hd128827%_)
                                                     (_%recur128693%_
                                                      _%hd128827%_
                                                      _%vars128785%_
                                                      _%$hd128810%_
                                                      _%E128787%_
                                                      (lambda (_%vars128829%_)
                                                        (_%recur128693%_
                                                         _%tl128826%_
                                                         _%vars128829%_
                                                         _%$tl128811%_
                                                         _%E128787%_
                                                         _%k128788%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128812128819%_))
                                                 (let ((_%hd128816128834%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128812128819%_)))
                                                       (_%tl128817128836%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128812128819%_))))
                                                   (let* ((_%hd128839%_
                                                           _%hd128816128834%_)
                                                          (_%tl128841%_
                                                           _%tl128817128836%_))
                                                     (_%K128815128831%_
                                                      _%tl128841%_
                                                      _%hd128839%_)))
                                                 (_%E128814128823%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129856
                                       __tmp129855))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129857
                                __tmp129854))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129858
                         __tmp129853
                         _%E128787%_)))
                    (if (eq? 'splice _%$e128806%_)
                        (let* ((_%body128842128849%_ _%body128803%_)
                               (_%E128844128853%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128842128849%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128845128904%_
                                (lambda (_%tl128856%_ _%hd128857%_)
                                  (let* ((_%rlen128859%_
                                          (_%splice-rlen128694%_ _%tl128856%_))
                                         (_%$target128861%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128863%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128865%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128867%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128869%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128871%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128873%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128875%_
                                          (_%splice-vars128695%_ _%hd128857%_))
                                         (_%lvars128877%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128875%_)))
                                         (_%tlvars128879%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128875%_)))
                                         (_%linit128883%_
                                          (map (lambda (_%var128881%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128877%_)))
                                    (letrec ((_%make-loop128886%_
                                              (lambda (_%vars128890%_)
                                                (let ((__tmp129860
                                                       (cons (cons (cons _%$lp128867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129873
                                        (cons _%$hd128863%_ _%lvars128877%_))
                                       (__tmp129861
                                        (let ((__tmp129872
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128863%_)))
                                              (__tmp129866
                                               (let ((__tmp129871
                                                      (cons (cons (cons _%$lp-e128869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128500%_
                                   _%$hd128863%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129867
                                                      (let ((__tmp129870
                                                             (cons (cons (cons _%$lp-hd128871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128869%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128873%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128869%_))
                                             '()))
                                 '())))
                    (__tmp129868
                     (_%recur128693%_
                      _%hd128857%_
                      '()
                      _%$lp-hd128871%_
                      _%E128787%_
                      (lambda (_%hdvars128892%_)
                        (cons _%$lp128867%_
                              (cons _%$lp-tl128873%_
                                    (map (lambda (_%svar128894%_
                                                  _%lvar128895%_)
                                           (let ((__tmp129869
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar128894%_
                                                     _%hdvars128892%_
                                                     _%BUG128692%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp129869
                                              _%lvar128895%_)))
                                         _%svars128875%_
                                         _%lvars128877%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129870 __tmp129868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129871
                                                  __tmp129867)))
                                              (__tmp129862
                                               (let ((__tmp129865
                                                      (map (lambda (_%lvar128897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128898%_)
                     (cons (cons _%tlvar128898%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128897%_))
                                 '())))
                   _%lvars128877%_
                   _%tlvars128879%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129863
                                                      (_%k128788%_
                                                       (let ((__tmp129864
                                                              (lambda (_%svar128900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128901%_
                               _%r128902%_)
                        (cons (cons _%svar128900%_ _%tlvar128901%_)
                              _%r128902%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129864
                  _%vars128890%_
                  _%svars128875%_
                  _%tlvars128879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129865
                                                  __tmp129863))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129872
                                           __tmp129866
                                           __tmp129862))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129873
                                    __tmp129861))
                                 '()))
                     '()))
              (__tmp129859
               (cons _%$lp128867%_ (cons _%$target128861%_ _%linit128883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129860
                                                   __tmp129859)))))
                                      (let ((_%body128888%_
                                             (let ((__tmp129875
                                                    (cons (cons (cons _%$target128861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128865%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128786%_
                                 _%rlen128859%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129874
                                                    (_%recur128693%_
                                                     _%tl128856%_
                                                     _%vars128785%_
                                                     _%$tl128865%_
                                                     _%E128787%_
                                                     _%make-loop128886%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129875
                                                __tmp129874))))
                                        (let ((__tmp129879
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128786%_)))
                                              (__tmp129876
                                               (if (zero? _%rlen128859%_)
                                                   _%body128888%_
                                                   (let ((__tmp129877
                                                          (let ((__tmp129878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128786%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129878 _%rlen128859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129877
                                                      _%body128888%_
                                                      _%E128787%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129879
                                           __tmp129876
                                           _%E128787%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128842128849%_))
                              (let ((_%hd128846128907%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128842128849%_)))
                                    (_%tl128847128909%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128842128849%_))))
                                (let* ((_%hd128912%_ _%hd128846128907%_)
                                       (_%tl128914%_ _%tl128847128909%_))
                                  (_%K128845128904%_
                                   _%tl128914%_
                                   _%hd128912%_)))
                              (_%E128844128853%_)))
                        (if (eq? 'null _%$e128806%_)
                            (let ((__tmp129881
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128786%_)))
                                  (__tmp129880 (_%k128788%_ _%vars128785%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129881
                               __tmp129880
                               _%E128787%_))
                            (if (eq? 'vector _%$e128806%_)
                                (let ((_%$e128916%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129886
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128786%_)))
                                        (__tmp129882
                                         (let ((__tmp129884
                                                (cons (cons (cons _%$e128916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129885
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128500%_
                                    _%target128786%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129885))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129883
                                                (_%recur128693%_
                                                 _%body128803%_
                                                 _%vars128785%_
                                                 _%$e128916%_
                                                 _%E128787%_
                                                 _%k128788%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129884
                                            __tmp129883))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129886
                                     __tmp129882
                                     _%E128787%_)))
                                (if (eq? 'box _%$e128806%_)
                                    (let ((_%$e128918%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129891
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128786%_)))
                                            (__tmp129887
                                             (let ((__tmp129889
                                                    (cons (cons (cons _%$e128918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129890
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128500%_
                                        _%target128786%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129890))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129888
                                                    (_%recur128693%_
                                                     _%body128803%_
                                                     _%vars128785%_
                                                     _%$e128918%_
                                                     _%E128787%_
                                                     _%k128788%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129889
                                                __tmp129888))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129891
                                         __tmp129887
                                         _%E128787%_)))
                                    (if (eq? 'datum _%$e128806%_)
                                        (let ((_%$e128920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129897
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128786%_)))
                                                (__tmp129892
                                                 (let ((__tmp129896
                                                        (cons (cons (cons _%$e128920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128786%_))
                                  '()))
                      '()))
               (__tmp129893
                (let ((__tmp129895
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128920%_ _%body128803%_)))
                      (__tmp129894 (_%k128788%_ _%vars128785%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129895 __tmp129894 _%E128787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129896
                                                    __tmp129893))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129897
                                             __tmp129892
                                             _%E128787%_)))
                                        (_%BUG128692%_
                                         _%e128784%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128789128796%_))
                                      (let ((_%hd128793128925%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128789128796%_)))
                                            (_%tl128794128927%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128789128796%_))))
                                        (let* ((_%tag128930%_
                                                _%hd128793128925%_)
                                               (_%body128932%_
                                                _%tl128794128927%_))
                                          (_%K128792128922%_
                                           _%body128932%_
                                           _%tag128930%_)))
                                      (_%E128791128800%_)))))
                             (_%splice-rlen128694%_
                              (lambda (_%e128746%_)
                                (let _%lp128748%_ ((_%e128750%_ _%e128746%_)
                                                   (_%n128751%_ '0))
                                  (let* ((_%e128752128759%_ _%e128750%_)
                                         (_%E128754128763%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128752128759%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128755128772%_
                                          (lambda (_%body128766%_
                                                   _%tag128767%_)
                                            (let ((_%$e128769%_ _%tag128767%_))
                                              (if (eq? 'splice _%$e128769%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128498%_
                                                     _%where128685%_))
                                                  (if (eq? 'cons _%$e128769%_)
                                                      (_%lp128748%_
                                                       (cdr _%body128766%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n128751%_
                                                                '1)))
                                                      _%n128751%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128752128759%_))
                                        (let ((_%hd128756128775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128752128759%_)))
                                              (_%tl128757128777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128752128759%_))))
                                          (let* ((_%tag128780%_
                                                  _%hd128756128775%_)
                                                 (_%body128782%_
                                                  _%tl128757128777%_))
                                            (_%K128755128772%_
                                             _%body128782%_
                                             _%tag128780%_)))
                                        (_%E128754128763%_))))))
                             (_%splice-vars128695%_
                              (lambda (_%e128702%_)
                                (let _%recur128704%_ ((_%e128706%_ _%e128702%_)
                                                      (_%vars128707%_ '()))
                                  (let* ((_%e128708128715%_ _%e128706%_)
                                         (_%E128710128719%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128708128715%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128711128734%_
                                          (lambda (_%body128722%_
                                                   _%tag128723%_)
                                            (let ((_%$e128725%_ _%tag128723%_))
                                              (if (eq? 'var _%$e128725%_)
                                                  (cons _%body128722%_
                                                        _%vars128707%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128725%_)
                                                          (eq? 'splice
                                                               _%$e128725%_))
                                                      (_%recur128704%_
                                                       (cdr _%body128722%_)
                                                       (_%recur128704%_
                                                        (car _%body128722%_)
                                                        _%vars128707%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e128725%_)
                      (eq? 'box _%$e128725%_))
                  (_%recur128704%_ _%body128722%_ _%vars128707%_)
                  _%vars128707%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128708128715%_))
                                        (let ((_%hd128712128737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128708128715%_)))
                                              (_%tl128713128739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128708128715%_))))
                                          (let* ((_%tag128742%_
                                                  _%hd128712128737%_)
                                                 (_%body128744%_
                                                  _%tl128713128739%_))
                                            (_%K128711128734%_
                                             _%body128744%_
                                             _%tag128742%_)))
                                        (_%E128710128719%_))))))
                             (_%make-body128696%_
                              (lambda (_%vars128698%_)
                                (cons _%K128689%_
                                      (map (lambda (_%mvar128700%_)
                                             (let ((__tmp129898
                                                    (car _%mvar128700%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129898
                                                _%vars128698%_
                                                _%BUG128692%_)))
                                           _%mvars128688%_)))))
                      (_%recur128693%_
                       _%hd128687%_
                       '()
                       _%target128686%_
                       _%E128690%_
                       _%make-body128696%_))))
                 (_%parse-clause128507%_
                  (lambda (_%hd128579%_ _%ids128580%_)
                    (let _%recur128582%_ ((_%e128584%_ _%hd128579%_)
                                          (_%vars128585%_ '())
                                          (_%depth128586%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128584%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e128584%_))
                              (values '(any) _%vars128585%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e128584%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx128498%_
                                     _%hd128579%_))
                                  (if (let ((__tmp129899
                                             (lambda (_%id128591%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e128584%_
                                                  _%id128591%_)))))
                                        (declare (not safe))
                                        (__find __tmp129899 _%ids128580%_))
                                      (values (cons 'id _%e128584%_)
                                              _%vars128585%_)
                                      (if (let ((__tmp129900
                                                 (lambda (_%var128594%_)
                                                   (let ((__tmp129901
                                                          (car _%var128594%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e128584%_
                                                      __tmp129901)))))
                                            (declare (not safe))
                                            (__find __tmp129900
                                                    _%vars128585%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx128498%_
                                             _%e128584%_))
                                          (values (cons 'var _%e128584%_)
                                                  (cons (cons _%e128584%_
                                                              _%depth128586%_)
                                                        _%vars128585%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128584%_))
                              (let* ((_%e128598128605%_ _%e128584%_)
                                     (_%E128600128609%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e128598128605%_))))
                                     (_%E128599128670%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e128598128605%_))
                                            (let ((_%e128601128613%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e128598128605%_))))
                                              (let ((_%hd128602128616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e128601128613%_)))
                                                    (_%tl128603128618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e128601128613%_))))
                                                (let* ((_%hd128621%_
                                                        _%hd128602128616%_)
                                                       (_%rest128623%_
                                                        _%tl128603128618%_))
                                                  (if '#t
                                                      (let* ((_%make-pair128638%_
                                                              (lambda (_%tag128625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd128626%_
                               _%tl128627%_)
                        (let* ((_%hd-depth128629%_
                                (if (eq? _%tag128625%_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%depth128586%_ '1))
                                    _%depth128586%_))
                               (_g129902_
                                (_%recur128582%_
                                 _%hd128626%_
                                 _%vars128585%_
                                 _%hd-depth128629%_)))
                          (begin
                            (let ((_g129903_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g129902_)
                                         (##vector-length _g129902_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g129903_ 2)))
                                  (error "Context expects 2 values"
                                         _g129903_)))
                            (let ((_%hd128631%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g129902_ 0)))
                                  (_%vars128632%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g129902_ 1))))
                              (let ((_g129904_
                                     (_%recur128582%_
                                      _%tl128627%_
                                      _%vars128632%_
                                      _%depth128586%_)))
                                (begin
                                  (let ((_g129905_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g129904_)
                                               (##vector-length _g129904_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g129905_ 2)))
                                        (error "Context expects 2 values"
                                               _g129905_)))
                                  (let ((_%tl128634%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g129904_ 0)))
                                        (_%vars128635%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g129904_ 1))))
                                    (values (cons _%tag128625%_
                                                  (cons _%hd128631%_
                                                        _%tl128634%_))
                                            _%vars128635%_)))))))))
                     (_%e128639128646%_ _%rest128623%_)
                     (_%E128641128650%_
                      (lambda ()
                        (_%make-pair128638%_
                         'cons
                         _%hd128621%_
                         _%rest128623%_)))
                     (_%E128640128666%_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%e128639128646%_))
                            (let ((_%e128642128654%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%e128639128646%_))))
                              (let ((_%hd128643128657%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e128642128654%_)))
                                    (_%tl128644128659%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e128642128654%_))))
                                (let* ((_%rest-hd128662%_ _%hd128643128657%_)
                                       (_%rest-tl128664%_ _%tl128644128659%_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _%rest-hd128662%_))
                                          (_%make-pair128638%_
                                           'splice
                                           _%hd128621%_
                                           _%rest-tl128664%_)
                                          (_%make-pair128638%_
                                           'cons
                                           _%hd128621%_
                                           _%rest128623%_))
                                      (_%E128641128650%_)))))
                            (_%E128641128650%_)))))
                (_%E128640128666%_))
              (_%E128600128609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E128600128609%_)))))
                                (_%E128599128670%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128584%_))
                                  (values '(null) _%vars128585%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128584%_))
                                      (let ((_g129906_
                                             (_%recur128582%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e128584%_)))
                                              _%vars128585%_
                                              _%depth128586%_)))
                                        (begin
                                          (let ((_g129907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129906_)
                                                       (##vector-length
                                                        _g129906_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129907_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129907_)))
                                          (let ((_%e128676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129906_ 0)))
                                                (_%vars128677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129906_
                                                    1))))
                                            (values (cons 'vector _%e128676%_)
                                                    _%vars128677%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128584%_))
                                          (let ((_g129908_
                                                 (_%recur128582%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e128584%_)))
                                                  _%vars128585%_
                                                  _%depth128586%_)))
                                            (begin
                                              (let ((_g129909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129908_)
                                                           (##vector-length
                                                            _g129908_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129909_)))
                                              (let ((_%e128680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129908_
                                                        0)))
                                                    (_%vars128681%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129908_
                                                        1))))
                                                (values (cons 'box _%e128680%_)
                                                        _%vars128681%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128584%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e128584%_)))
                                                      _%vars128585%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128498%_
                                                 _%e128584%_))))))))))))
          (let* ((_%e128508128521%_ _%stx128498%_)
                 (_%E128510128525%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128508128521%_))))
                 (_%E128509128575%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128508128521%_))
                        (let ((_%e128511128529%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128508128521%_))))
                          (let ((_%hd128512128532%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128511128529%_)))
                                (_%tl128513128534%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128511128529%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128513128534%_))
                                (let ((_%e128514128537%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128513128534%_))))
                                  (let ((_%hd128515128540%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128514128537%_)))
                                        (_%tl128516128542%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128514128537%_))))
                                    (let ((_%expr128545%_ _%hd128515128540%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128516128542%_))
                                          (let ((_%e128517128547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128516128542%_))))
                                            (let ((_%hd128518128550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128517128547%_)))
                                                  (_%tl128519128552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128517128547%_))))
                                              (let* ((_%ids128555%_
                                                      _%hd128518128550%_)
                                                     (_%clauses128557%_
                                                      _%tl128519128552%_))
                                                (if '#t
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#identifier-list? _%ids128555%_)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128498%_
                   _%ids128555%_))
                (if (not (let ()
                           (declare (not safe))
                           (gx#stx-list? _%clauses128557%_)))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128498%_))
                    (let* ((_%ids128562%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%ids128555%_)))
                           (_%clauses128564%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _%clauses128557%_)))
                           (_%clause-ids128566%_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _%clauses128564%_)))
                           (_%E128568%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%target128570%_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_%first128572%_
                            (if (null? _%clauses128564%_)
                                _%E128568%_
                                (car _%clause-ids128566%_))))
                      (let ((__tmp129911
                             (let ((__tmp129912
                                    (let ((__tmp129914
                                           (let ((__tmp129916
                                                  (cons (cons (cons _%E128568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp129918 (cons _%target128570%_ '()))
                                  (__tmp129917
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%target128570%_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp129918 __tmp129917))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp129915
                                                  (_%generate-body128504%_
                                                   (_%generate-bindings128503%_
                                                    _%target128570%_
                                                    _%ids128562%_
                                                    _%clauses128564%_
                                                    _%clause-ids128566%_
                                                    _%E128568%_)
                                                   (cons _%first128572%_
                                                         (cons _%expr128545%_
                                                               '())))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp129916
                                              __tmp129915)))
                                          (__tmp129913
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _%stx128498%_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp129914
                                       __tmp129913))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp129912)))
                            (__tmp129910
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx128498%_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp129911 __tmp129910)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128510128525%_)))))
                                          (_%E128510128525%_)))))
                                (_%E128510128525%_))))
                        (_%E128510128525%_)))))
            (_%E128509128575%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129223%_)
        (let* ((_%identifier=?129225%_ 'free-identifier=?)
               (_%unwrap-e129227%_ 'syntax-e)
               (_%wrap-e129229%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx129223%_
           _%identifier=?129225%_
           _%unwrap-e129227%_
           _%wrap-e129229%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129231%_ _%identifier=?129232%_)
        (let* ((_%unwrap-e129234%_ 'syntax-e) (_%wrap-e129236%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx129231%_
           _%identifier=?129232%_
           _%unwrap-e129234%_
           _%wrap-e129236%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129238%_ _%identifier=?129239%_ _%unwrap-e129240%_)
        (let ((_%wrap-e129242%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx129238%_
           _%identifier=?129239%_
           _%unwrap-e129240%_
           _%wrap-e129242%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129920_
        (let ((_g129919_ (let () (declare (not safe)) (##length _g129920_))))
          (cond ((let () (declare (not safe)) (##fx= _g129919_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g129920_))
                ((let () (declare (not safe)) (##fx= _g129919_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g129920_))
                ((let () (declare (not safe)) (##fx= _g129919_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g129920_))
                ((let () (declare (not safe)) (##fx= _g129919_ 4))
                 (apply gx#macro-expand-syntax-case__% _g129920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129920_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128495%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128495%_))
            (let ((__tmp129921
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128495%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129921 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128453%_ . _%rest128454%_)
        (let ((_%len128456%_ (length _%hd128453%_)))
          (let _%lp128458%_ ((_%rest128460%_ _%rest128454%_))
            (let* ((_%rest128461128469%_ _%rest128460%_)
                   (_%else128463128477%_ (lambda () '#!void))
                   (_%K128465128483%_
                    (lambda (_%rest128480%_ _%hd128481%_)
                      (if (let ((__tmp129922 (length _%hd128481%_)))
                            (declare (not safe))
                            (##fx= _%len128456%_ __tmp129922))
                          (_%lp128458%_ _%rest128480%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128481%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128461128469%_))
                  (let ((_%hd128466128486%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128461128469%_)))
                        (_%tl128467128488%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128461128469%_))))
                    (let* ((_%hd128491%_ _%hd128466128486%_)
                           (_%rest128493%_ _%tl128467128488%_))
                      (_%K128465128483%_ _%rest128493%_ _%hd128491%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128408%_ _%n128409%_)
        (let _%lp128411%_ ((_%rest128413%_ _%stx128408%_) (_%r128414%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128413%_))
              (let* ((_%g128415128422%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128413%_)))
                     (_%E128417128426%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128415128422%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128418128432%_
                      (lambda (_%rest128429%_ _%hd128430%_)
                        (_%lp128411%_
                         _%rest128429%_
                         (cons _%hd128430%_ _%r128414%_)))))
                (if (let () (declare (not safe)) (##pair? _%g128415128422%_))
                    (let ((_%hd128419128435%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128415128422%_)))
                          (_%tl128420128437%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128415128422%_))))
                      (let* ((_%hd128440%_ _%hd128419128435%_)
                             (_%rest128442%_ _%tl128420128437%_))
                        (_%K128418128432%_ _%rest128442%_ _%hd128440%_)))
                    (_%E128417128426%_)))
              (let _%lp128444%_ ((_%n128446%_ _%n128409%_)
                                 (_%l128447%_ _%r128414%_)
                                 (_%r128448%_ _%rest128413%_))
                (if (null? _%l128447%_)
                    (values _%l128447%_ _%r128448%_)
                    (if (fxpositive? _%n128446%_)
                        (_%lp128444%_
                         (let () (declare (not safe)) (##fx- _%n128446%_ '1))
                         (cdr _%l128447%_)
                         (cons (car _%l128447%_) _%r128448%_))
                        (values (reverse _%l128447%_) _%r128448%_))))))))))
