(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712256087)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129702 (list gx#expander::t))
            (__tmp129701 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129702
         '(id depth)
         __tmp129701
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129698%_
        (apply make-instance gx#syntax-pattern::t _%$args129698%_)))
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
      (lambda (_%self129684%_ _%stx129685%_)
        (let ((_%self129688%_ _%self129684%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129685%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129150%_)
        (letrec ((_%generate129152%_
                  (lambda (_%e129392%_)
                    (letrec ((_%BUG129394%_
                              (lambda (_%q129559%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129150%_
                                         _%e129392%_
                                         _%q129559%_))))
                             (_%local-pattern-e129395%_
                              (lambda (_%pat129557%_)
                                (let ((__tmp129703
                                       (##structure-ref
                                        _%pat129557%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129703))))
                             (_%getvar129396%_
                              (lambda (_%q129554%_ _%vars129555%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129554%_
                                   _%vars129555%_
                                   _%BUG129394%_))))
                             (_%getarg129397%_
                              (lambda (_%arg129520%_ _%vars129521%_)
                                (let* ((_%arg129522129529%_ _%arg129520%_)
                                       (_%E129524129533%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129522129529%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129525129542%_
                                        (lambda (_%e129536%_ _%tag129537%_)
                                          (let ((_%$e129539%_ _%tag129537%_))
                                            (if (eq? 'ref _%$e129539%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar129396%_
                                                   _%e129536%_
                                                   _%vars129521%_))
                                                (if (eq? 'pattern _%$e129539%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e129395%_
                                                       _%e129536%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG129394%_
                                                       _%arg129520%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129522129529%_))
                                      (let ((_%hd129526129545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129522129529%_)))
                                            (_%tl129527129547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129522129529%_))))
                                        (let* ((_%tag129550%_
                                                _%hd129526129545%_)
                                               (_%e129552%_
                                                _%tl129527129547%_))
                                          (declare (not safe))
                                          (_%K129525129542%_
                                           _%e129552%_
                                           _%tag129550%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E129524129533%_)))))))
                      (let _%recur129399%_ ((_%e129401%_ _%e129392%_)
                                            (_%vars129402%_ '()))
                        (let* ((_%e129403129410%_ _%e129401%_)
                               (_%E129405129414%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129403129410%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129406129508%_
                                (lambda (_%body129417%_ _%tag129418%_)
                                  (let ((_%$e129420%_ _%tag129418%_))
                                    (if (eq? 'datum _%$e129420%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129417%_))
                                        (if (eq? 'term _%$e129420%_)
                                            (let ((_%id129423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129417%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129423%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129423%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%marks129426%_))
                                                        (let ((__tmp129704
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129417%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129704))
                (let ((__tmp129706
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129417%_)))
                      (__tmp129705
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129417%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129706
                   __tmp129705
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129423%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129417%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%BUG129394%_
                                                         _%e129401%_)))))
                                            (if (eq? 'pattern _%$e129420%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e129395%_
                                                   _%body129417%_))
                                                (if (eq? 'ref _%$e129420%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar129396%_
                                                       _%body129417%_
                                                       _%vars129402%_))
                                                    (if (eq? 'cons
                                                             _%$e129420%_)
                                                        (let ((__tmp129709
                                                               (let ((__tmp129710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body129417%_)))
                         (declare (not safe))
                         (_%recur129399%_ __tmp129710 _%vars129402%_)))
                      (__tmp129707
                       (let ((__tmp129708 (cdr _%body129417%_)))
                         (declare (not safe))
                         (_%recur129399%_ __tmp129708 _%vars129402%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129709 __tmp129707))
                (if (eq? 'vector _%$e129420%_)
                    (let ((__tmp129711
                           (let ()
                             (declare (not safe))
                             (_%recur129399%_ _%body129417%_ _%vars129402%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129711))
                    (if (eq? 'box _%$e129420%_)
                        (let ((__tmp129712
                               (let ()
                                 (declare (not safe))
                                 (_%recur129399%_
                                  _%body129417%_
                                  _%vars129402%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129712))
                        (if (eq? 'splice _%$e129420%_)
                            (let* ((_%body129429129440%_ _%body129417%_)
                                   (_%E129431129444%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129429129440%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129432129482%_
                                    (lambda (_%args129447%_
                                             _%iv129448%_
                                             _%hd129449%_
                                             _%depth129450%_)
                                      (let* ((_%targets129456%_
                                              (map (lambda (_%g129451129453%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg129397%_
                                                        _%g129451129453%_
                                                        _%vars129402%_)))
                                                   _%args129447%_))
                                             (_%fold-in129458%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129447%_)))
                                             (_%fold-out129460%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129462%_
                                              (let ((__tmp129713
                                                     (cons _%fold-out129460%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129713
                                                 _%fold-in129458%_)))
                                             (_%lambda-body129479%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129450%_ '1))
                                                  (let ((_%r-args129470%_
                                                         (map (lambda (_%arg129464%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129464%_)))
                      _%args129447%_))
                (_%r-vars129471%_
                 (let ((__tmp129714
                        (lambda (_%arg129466%_ _%var129467%_ _%r129468%_)
                          (cons (cons (cdr _%arg129466%_) _%var129467%_)
                                _%r129468%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129714
                    _%vars129402%_
                    _%args129447%_
                    _%fold-in129458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129715
                                                           (let ((__tmp129716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129720
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth129450%_ '1)))
                                (__tmp129717
                                 (let ((__tmp129718
                                        (let ((__tmp129719
                                               (cons 'var _%fold-out129460%_)))
                                          (declare (not safe))
                                          (cons __tmp129719
                                                _%r-args129470%_))))
                                   (declare (not safe))
                                   (cons _%hd129449%_ __tmp129718))))
                            (declare (not safe))
                            (cons __tmp129720 __tmp129717))))
                     (declare (not safe))
                     (cons 'splice __tmp129716))))
              (declare (not safe))
              (_%recur129399%_ __tmp129715 _%r-vars129471%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars129477%_
                                                          (let ((__tmp129721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129473%_ _%var129474%_ _%r129475%_)
                           (cons (cons (cdr _%arg129473%_) _%var129474%_)
                                 _%r129475%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129721
                     _%vars129402%_
                     _%args129447%_
                     _%fold-in129458%_)))
                 (__tmp129722
                  (let ()
                    (declare (not safe))
                    (_%recur129399%_ _%hd129449%_ _%hd-vars129477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129722
                                                     _%fold-out129460%_)))))
                                        (let ((__tmp129726
                                               (if (let ((__tmp129727
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129456%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129727 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129456%_))
                                                   '#!void))
                                              (__tmp129723
                                               (let ((__tmp129725
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129462%_
                                                         _%lambda-body129479%_)))
                                                     (__tmp129724
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur129399%_
                                                         _%iv129448%_
                                                         _%vars129402%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129725
                                                  __tmp129724
                                                  _%targets129456%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129726
                                           __tmp129723))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129429129440%_))
                                  (let ((_%hd129433129485%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129429129440%_)))
                                        (_%tl129434129487%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129429129440%_))))
                                    (let ((_%depth129490%_ _%hd129433129485%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129434129487%_))
                                          (let ((_%hd129435129492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129434129487%_)))
                                                (_%tl129436129494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129434129487%_))))
                                            (let ((_%hd129497%_
                                                   _%hd129435129492%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129436129494%_))
                                                  (let ((_%hd129437129499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129436129494%_)))
                                                        (_%tl129438129501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129436129494%_))))
                                                    (let* ((_%iv129504%_
                                                            _%hd129437129499%_)
                                                           (_%args129506%_
                                                            _%tl129438129501%_))
                                                      (declare (not safe))
                                                      (_%K129432129482%_
                                                       _%args129506%_
                                                       _%iv129504%_
                                                       _%hd129497%_
                                                       _%depth129490%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E129431129444%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129431129444%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129431129444%_))))
                            (if (eq? 'var _%$e129420%_)
                                _%body129417%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG129394%_ _%e129401%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129403129410%_))
                              (let ((_%hd129407129511%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129403129410%_)))
                                    (_%tl129408129513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129403129410%_))))
                                (let* ((_%tag129516%_ _%hd129407129511%_)
                                       (_%body129518%_ _%tl129408129513%_))
                                  (declare (not safe))
                                  (_%K129406129508%_
                                   _%body129518%_
                                   _%tag129516%_)))
                              (let ()
                                (declare (not safe))
                                (_%E129405129414%_))))))))
                 (_%parse129153%_
                  (lambda (_%e129194%_)
                    (letrec ((_%make-cons129196%_
                              (lambda (_%hd129384%_ _%tl129385%_)
                                (let ((_g129728_ _%hd129384%_)
                                      (_g129730_ _%tl129385%_))
                                  (begin
                                    (let ((_g129729_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129728_)
                                                 (##vector-length _g129728_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129729_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129729_)))
                                    (let ((_g129731_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129730_)
                                                 (##vector-length _g129730_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129731_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129731_)))
                                    (let ((_%hd-e129387%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129728_ 0)))
                                          (_%hd-vars129388%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129728_ 1))))
                                      (let ((_%tl-e129389%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129730_ 0)))
                                            (_%tl-vars129390%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129730_ 1))))
                                        (values (let ((__tmp129732
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e129387%_
                                                               _%tl-e129389%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129732))
                                                (append _%hd-vars129388%_
                                                        _%tl-vars129390%_))))))))
                             (_%make-splice129197%_
                              (lambda (_%where129320%_
                                       _%depth129321%_
                                       _%hd129322%_
                                       _%tl129323%_)
                                (let ((_g129733_ _%hd129322%_)
                                      (_g129735_ _%tl129323%_))
                                  (begin
                                    (let ((_g129734_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129733_)
                                                 (##vector-length _g129733_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129734_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129734_)))
                                    (let ((_g129736_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129735_)
                                                 (##vector-length _g129735_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129736_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129736_)))
                                    (let ((_%hd-e129325%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129733_ 0)))
                                          (_%hd-vars129326%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129733_ 1))))
                                      (let ((_%tl-e129327%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129735_ 0)))
                                            (_%tl-vars129328%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129735_ 1))))
                                        (let _%lp129330%_ ((_%rest129332%_
                                                            _%hd-vars129326%_)
                                                           (_%targets129333%_
                                                            '())
                                                           (_%vars129334%_
                                                            _%tl-vars129328%_))
                                          (let* ((_%rest129335129345%_
                                                  _%rest129332%_)
                                                 (_%else129337129353%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets129333%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129150%_
                                                           _%where129320%_))
                                                        (values (let ((__tmp129737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129738
                                      (let ((__tmp129739
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e129327%_
                                                     _%targets129333%_))))
                                        (declare (not safe))
                                        (cons _%hd-e129325%_ __tmp129739))))
                                 (declare (not safe))
                                 (cons _%depth129321%_ __tmp129738))))
                          (declare (not safe))
                          (cons 'splice __tmp129737))
                        _%vars129334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129339129365%_
                                                  (lambda (_%rest129356%_
                                                           _%hd-pat129357%_
                                                           _%hd-depth*129358%_)
                                                    (let ((_%hd-depth129360%_
                                                           (fx- _%hd-depth*129358%_
                                                                _%depth129321%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129360%_))
                                                          (let ((__tmp129741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _%hd-pat129357%_) _%targets129333%_))
                        (__tmp129740
                         (cons (cons _%hd-depth129360%_ _%hd-pat129357%_)
                               _%vars129334%_)))
                    (declare (not safe))
                    (_%lp129330%_ _%rest129356%_ __tmp129741 __tmp129740))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129360%_))
                      (let ((__tmp129742
                             (cons (cons 'pattern _%hd-pat129357%_)
                                   _%targets129333%_)))
                        (declare (not safe))
                        (_%lp129330%_
                         _%rest129356%_
                         __tmp129742
                         _%vars129334%_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129150%_
                         _%where129320%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129335129345%_))
                                                (let ((_%hd129340129368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129335129345%_)))
                                                      (_%tl129341129370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129335129345%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129340129368%_))
                                                      (let ((_%hd129342129373%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129340129368%_)))
                    (_%tl129343129375%_
                     (let () (declare (not safe)) (##cdr _%hd129340129368%_))))
                (let* ((_%hd-depth*129378%_ _%hd129342129373%_)
                       (_%hd-pat129380%_ _%tl129343129375%_)
                       (_%rest129382%_ _%tl129341129370%_))
                  (declare (not safe))
                  (_%K129339129365%_
                   _%rest129382%_
                   _%hd-pat129380%_
                   _%hd-depth*129378%_)))
              (let () (declare (not safe)) (_%else129337129353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else129337129353%_)))))))))))
                             (_%recur129198%_
                              (lambda (_%e129203%_ _%is-e?129204%_)
                                (if (_%is-e?129204%_ _%e129203%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129150%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e129203%_))
                                        (let ()
                                          (let* ((_%pat129208%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e129203%_)))
                                                 (_%depth129210%_
                                                  (##structure-ref
                                                   _%pat129208%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth129210%_)
                                                (values (cons 'ref
                                                              _%pat129208%_)
                                                        (cons (cons _%depth129210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat129208%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat129208%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129203%_))
                                            (let ()
                                              (values (cons 'term _%e129203%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129203%_))
                                                (let ()
                                                  (let* ((_%e129214129221%_
                                                          _%e129203%_)
                                                         (_%E129216129225%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e129214129221%_))))
                                                         (_%E129215129307%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e129214129221%_))
                        (let ((_%e129217129229%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129214129221%_))))
                          (let ((_%hd129218129232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129217129229%_)))
                                (_%tl129219129234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129217129229%_))))
                            (let* ((_%hd129237%_ _%hd129218129232%_)
                                   (_%rest129239%_ _%tl129219129234%_))
                              (if '#t
                                  (if (_%is-e?129204%_ _%hd129237%_)
                                      (let* ((_%e129240129247%_ _%rest129239%_)
                                             (_%E129242129251%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx129150%_
                                                   _%e129203%_))))
                                             (_%E129241129265%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129240129247%_))
                                                    (let ((_%e129243129255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129240129247%_))))
                                                      (let ((_%hd129244129258%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129243129255%_)))
                    (_%tl129245129260%_
                     (let () (declare (not safe)) (##cdr _%e129243129255%_))))
                (let ((_%rest129263%_ _%hd129244129258%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl129245129260%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur129198%_ _%rest129263%_ false))
                          (let () (declare (not safe)) (_%E129242129251%_)))
                      (let () (declare (not safe)) (_%E129242129251%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E129242129251%_))))))
                                        (declare (not safe))
                                        (_%E129241129265%_))
                                      (let _%lp129269%_ ((_%rest129271%_
                                                          _%rest129239%_)
                                                         (_%depth129272%_ '0))
                                        (let* ((_%e129273129280%_
                                                _%rest129271%_)
                                               (_%E129275129284%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth129272%_)
                                                      (let ((__tmp129744
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur129198%_ _%hd129237%_ _%is-e?129204%_)))
                    (__tmp129743
                     (let ()
                       (declare (not safe))
                       (_%recur129198%_ _%rest129271%_ _%is-e?129204%_))))
                (declare (not safe))
                (_%make-splice129197%_
                 _%e129203%_
                 _%depth129272%_
                 __tmp129744
                 __tmp129743))
              (let ((__tmp129746
                     (let ()
                       (declare (not safe))
                       (_%recur129198%_ _%hd129237%_ _%is-e?129204%_)))
                    (__tmp129745
                     (let ()
                       (declare (not safe))
                       (_%recur129198%_ _%rest129271%_ _%is-e?129204%_))))
                (declare (not safe))
                (_%make-cons129196%_ __tmp129746 __tmp129745)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129274129303%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e129273129280%_))
                                                      (let ((_%e129276129288%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e129273129280%_))))
                (let ((_%hd129277129291%_
                       (let () (declare (not safe)) (##car _%e129276129288%_)))
                      (_%tl129278129293%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e129276129288%_))))
                  (let* ((_%rest-hd129296%_ _%hd129277129291%_)
                         (_%rest-tl129298%_ _%tl129278129293%_))
                    (if '#t
                        (if (_%is-e?129204%_ _%rest-hd129296%_)
                            (let ((__tmp129747
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%depth129272%_ '1))))
                              (declare (not safe))
                              (_%lp129269%_ _%rest-tl129298%_ __tmp129747))
                            (if (fxpositive? _%depth129272%_)
                                (let ((__tmp129749
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129198%_
                                          _%hd129237%_
                                          _%is-e?129204%_)))
                                      (__tmp129748
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129198%_
                                          _%rest129271%_
                                          _%is-e?129204%_))))
                                  (declare (not safe))
                                  (_%make-splice129197%_
                                   _%e129203%_
                                   _%depth129272%_
                                   __tmp129749
                                   __tmp129748))
                                (let ((__tmp129751
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129198%_
                                          _%hd129237%_
                                          _%is-e?129204%_)))
                                      (__tmp129750
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129198%_
                                          _%rest129271%_
                                          _%is-e?129204%_))))
                                  (declare (not safe))
                                  (_%make-cons129196%_
                                   __tmp129751
                                   __tmp129750))))
                        (let () (declare (not safe)) (_%E129275129284%_))))))
              (let () (declare (not safe)) (_%E129275129284%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%E129274129303%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129216129225%_))))))
                        (let () (declare (not safe)) (_%E129216129225%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%E129215129307%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129203%_))
                                                    (let ((_g129752_
                                                           (let ((__tmp129754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _%e129203%_)))))
                     (declare (not safe))
                     (_%recur129198%_ __tmp129754 _%is-e?129204%_))))
              (begin
                (let ((_g129753_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129752_)
                             (##vector-length _g129752_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129753_ 2)))
                      (error "Context expects 2 values" _g129753_)))
                (let ((_%e129312%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129752_ 0)))
                      (_%vars129313%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129752_ 1))))
                  (values (cons 'vector _%e129312%_) _%vars129313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129203%_))
                                                        (let ((_g129755_
                                                               (let ((__tmp129757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _%e129203%_)))))
                         (declare (not safe))
                         (_%recur129198%_ __tmp129757 _%is-e?129204%_))))
                  (begin
                    (let ((_g129756_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129755_)
                                 (##vector-length _g129755_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129756_ 2)))
                          (error "Context expects 2 values" _g129756_)))
                    (let ((_%e129316%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129755_ 0)))
                          (_%vars129317%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129755_ 1))))
                      (values (cons 'box _%e129316%_) _%vars129317%_))))
                (let () (values (cons 'datum _%e129203%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129758_
                             (let ()
                               (declare (not safe))
                               (_%recur129198%_ _%e129194%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129759_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129758_)
                                       (##vector-length _g129758_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129759_ 2)))
                                (error "Context expects 2 values" _g129759_)))
                          (let ((_%tree129200%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129758_ 0)))
                                (_%vars129201%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129758_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars129201%_))
                                _%tree129200%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129150%_
                                   _%vars129201%_))))))))))
          (let* ((_%e129154129164%_ _%stx129150%_)
                 (_%E129156129168%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129150%_))))
                 (_%E129155129190%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129154129164%_))
                        (let ((_%e129157129172%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129154129164%_))))
                          (let ((_%hd129158129175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129157129172%_)))
                                (_%tl129159129177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129157129172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129159129177%_))
                                (let ((_%e129160129180%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129159129177%_))))
                                  (let ((_%hd129161129183%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129160129180%_)))
                                        (_%tl129162129185%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129160129180%_))))
                                    (let ((_%form129188%_ _%hd129161129183%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129162129185%_))
                                          (if '#t
                                              (let ((__tmp129761
                                                     (let ((__tmp129762
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse129153%_
                                                               _%form129188%_))))
                                                       (declare (not safe))
                                                       (_%generate129152%_
                                                        __tmp129762)))
                                                    (__tmp129760
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129150%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129761
                                                 __tmp129760))
                                              (let ()
                                                (declare (not safe))
                                                (_%E129156129168%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129156129168%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E129156129168%_)))))
                        (let () (declare (not safe)) (_%E129156129168%_))))))
            (declare (not safe))
            (_%E129155129190%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128399%_
               _%identifier=?128400%_
               _%unwrap-e128401%_
               _%wrap-e128402%_)
        (letrec ((_%generate-bindings128404%_
                  (lambda (_%target129014%_
                           _%ids129015%_
                           _%clauses129016%_
                           _%clause-ids129017%_
                           _%E129018%_)
                    (letrec ((_%generate1129020%_
                              (lambda (_%clause129117%_
                                       _%clause-id129118%_
                                       _%E129119%_)
                                (cons (cons _%clause-id129118%_ '())
                                      (cons (let ((__tmp129764
                                                   (cons _%target129014%_ '()))
                                                  (__tmp129763
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause128406%_
                                                      _%target129014%_
                                                      _%ids129015%_
                                                      _%clause129117%_
                                                      _%E129119%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129764
                                               __tmp129763))
                                            '())))))
                      (let _%lp129022%_ ((_%rest129024%_ _%clauses129016%_)
                                         (_%rest-ids129025%_
                                          _%clause-ids129017%_)
                                         (_%bindings129026%_ '()))
                        (let* ((_%rest129027129035%_ _%rest129024%_)
                               (_%else129029129043%_
                                (lambda () _%bindings129026%_))
                               (_%K129031129105%_
                                (lambda (_%rest129046%_ _%clause129047%_)
                                  (let* ((_%rest-ids129048129055%_
                                          _%rest-ids129025%_)
                                         (_%E129050129059%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids129048129055%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K129051129093%_
                                          (lambda (_%rest-ids129062%_
                                                   _%clause-id129063%_)
                                            (let* ((_%rest-ids129064129072%_
                                                    _%rest-ids129062%_)
                                                   (_%else129066129080%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1129020%_
                                                               _%clause129047%_
                                                               _%clause-id129063%_
                                                               _%E129018%_))
                                                            _%bindings129026%_)))
                                                   (_%K129068129085%_
                                                    (lambda (_%next-clause-id129083%_)
                                                      (let ((__tmp129765
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1129020%_
                              _%clause129047%_
                              _%clause-id129063%_
                              _%next-clause-id129083%_))
                           _%bindings129026%_)))
                (declare (not safe))
                (_%lp129022%_
                 _%rest129046%_
                 _%rest-ids129062%_
                 __tmp129765)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids129064129072%_))
                                                  (let* ((_%hd129069129088%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids129064129072%_)))
                                                         (_%next-clause-id129091%_
                                                          _%hd129069129088%_))
                                                    (declare (not safe))
                                                    (_%K129068129085%_
                                                     _%next-clause-id129091%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else129066129080%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids129048129055%_))
                                        (let ((_%hd129052129096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids129048129055%_)))
                                              (_%tl129053129098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids129048129055%_))))
                                          (let* ((_%clause-id129101%_
                                                  _%hd129052129096%_)
                                                 (_%rest-ids129103%_
                                                  _%tl129053129098%_))
                                            (declare (not safe))
                                            (_%K129051129093%_
                                             _%rest-ids129103%_
                                             _%clause-id129101%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E129050129059%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest129027129035%_))
                              (let ((_%hd129032129108%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest129027129035%_)))
                                    (_%tl129033129110%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest129027129035%_))))
                                (let* ((_%clause129113%_ _%hd129032129108%_)
                                       (_%rest129115%_ _%tl129033129110%_))
                                  (declare (not safe))
                                  (_%K129031129105%_
                                   _%rest129115%_
                                   _%clause129113%_)))
                              (let ()
                                (declare (not safe))
                                (_%else129029129043%_))))))))
                 (_%generate-body128405%_
                  (lambda (_%bindings128974%_ _%body128975%_)
                    (let _%recur128977%_ ((_%rest128979%_ _%bindings128974%_))
                      (let* ((_%rest128980128988%_ _%rest128979%_)
                             (_%else128982128996%_ (lambda () _%body128975%_))
                             (_%K128984129002%_
                              (lambda (_%rest128999%_ _%hd129000%_)
                                (let ((__tmp129767 (cons _%hd129000%_ '()))
                                      (__tmp129766
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128977%_ _%rest128999%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129767
                                   __tmp129766)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128980128988%_))
                            (let ((_%hd128985129005%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128980128988%_)))
                                  (_%tl128986129007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128980128988%_))))
                              (let* ((_%hd129010%_ _%hd128985129005%_)
                                     (_%rest129012%_ _%tl128986129007%_))
                                (declare (not safe))
                                (_%K128984129002%_
                                 _%rest129012%_
                                 _%hd129010%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128982128996%_)))))))
                 (_%generate-clause128406%_
                  (lambda (_%target128837%_
                           _%ids128838%_
                           _%clause128839%_
                           _%E128840%_)
                    (letrec ((_%generate1128842%_
                              (lambda (_%hd128929%_
                                       _%fender128930%_
                                       _%body128931%_)
                                (let ((_g129768_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause128408%_
                                          _%hd128929%_
                                          _%ids128838%_))))
                                  (begin
                                    (let ((_g129769_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129768_)
                                                 (##vector-length _g129768_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129769_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129769_)))
                                    (let ((_%e128933%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129768_ 0)))
                                          (_%mvars128934%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129768_ 1))))
                                      (let* ((_%pvars128936%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128934%_))))
                                             (_%E128938%_
                                              (cons _%E128840%_
                                                    (cons _%target128837%_
                                                          '())))
                                             (_%K128971%_
                                              (let ((__tmp129770
                                                     (let ((__tmp129772
                                                            (map (lambda (_%mvar128940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128941%_)
                           (let* ((_%mvar128942128949%_ _%mvar128940%_)
                                  (_%E128944128953%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128942128949%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128945128959%_
                                   (lambda (_%depth128956%_ _%id128957%_)
                                     (cons _%id128957%_
                                           (cons (let ((__tmp129774
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128957%_)))
                                                       (__tmp129773
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128941%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129774
                                                    __tmp129773
                                                    _%depth128956%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128942128949%_))
                                 (let ((_%hd128946128962%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128942128949%_)))
                                       (_%tl128947128964%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128942128949%_))))
                                   (let* ((_%id128967%_ _%hd128946128962%_)
                                          (_%depth128969%_ _%tl128947128964%_))
                                     (declare (not safe))
                                     (_%K128945128959%_
                                      _%depth128969%_
                                      _%id128967%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128944128953%_)))))
                         _%mvars128934%_
                         _%pvars128936%_))
                   (__tmp129771
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128930%_ '#t))
                        _%body128931%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128930%_
                           _%body128931%_
                           _%E128938%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129772 __tmp129771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128936%_
                                                 __tmp129770))))
                                        (declare (not safe))
                                        (_%generate-match128407%_
                                         _%hd128929%_
                                         _%target128837%_
                                         _%e128933%_
                                         _%mvars128934%_
                                         _%K128971%_
                                         _%E128938%_))))))))
                      (let* ((_%e128843128863%_ _%clause128839%_)
                             (_%E128852128867%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128843128863%_))))
                             (_%E128845128901%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128843128863%_))
                                    (let ((_%e128853128871%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128843128863%_))))
                                      (let ((_%hd128854128874%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128853128871%_)))
                                            (_%tl128855128876%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128853128871%_))))
                                        (let ((_%hd128879%_
                                               _%hd128854128874%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128855128876%_))
                                              (let ((_%e128856128881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128855128876%_))))
                                                (let ((_%hd128857128884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128856128881%_)))
                                                      (_%tl128858128886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128856128881%_))))
                                                  (let ((_%fender128889%_
                                                         _%hd128857128884%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128858128886%_))
                                                        (let ((_%e128859128891%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128858128886%_))))
                  (let ((_%hd128860128894%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128859128891%_)))
                        (_%tl128861128896%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128859128891%_))))
                    (let ((_%body128899%_ _%hd128860128894%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128861128896%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128842%_
                                 _%hd128879%_
                                 _%fender128889%_
                                 _%body128899%_))
                              (let ()
                                (declare (not safe))
                                (_%E128852128867%_)))
                          (let () (declare (not safe)) (_%E128852128867%_))))))
                (let () (declare (not safe)) (_%E128852128867%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128852128867%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128852128867%_)))))
                             (_%E128844128925%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128843128863%_))
                                    (let ((_%e128846128905%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128843128863%_))))
                                      (let ((_%hd128847128908%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128846128905%_)))
                                            (_%tl128848128910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128846128905%_))))
                                        (let ((_%hd128913%_
                                               _%hd128847128908%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128848128910%_))
                                              (let ((_%e128849128915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128848128910%_))))
                                                (let ((_%hd128850128918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128849128915%_)))
                                                      (_%tl128851128920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128849128915%_))))
                                                  (let ((_%body128923%_
                                                         _%hd128850128918%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128851128920%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128842%_
                                                               _%hd128913%_
                                                               '#t
                                                               _%body128923%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128845128901%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128845128901%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128845128901%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128845128901%_))))))
                        (declare (not safe))
                        (_%E128844128925%_)))))
                 (_%generate-match128407%_
                  (lambda (_%where128586%_
                           _%target128587%_
                           _%hd128588%_
                           _%mvars128589%_
                           _%K128590%_
                           _%E128591%_)
                    (letrec ((_%BUG128593%_
                              (lambda (_%q128835%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128399%_
                                         _%hd128588%_
                                         _%q128835%_))))
                             (_%recur128594%_
                              (lambda (_%e128685%_
                                       _%vars128686%_
                                       _%target128687%_
                                       _%E128688%_
                                       _%k128689%_)
                                (let* ((_%e128690128697%_ _%e128685%_)
                                       (_%E128692128701%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128690128697%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128693128823%_
                                        (lambda (_%body128704%_ _%tag128705%_)
                                          (let ((_%$e128707%_ _%tag128705%_))
                                            (if (eq? 'any _%$e128707%_)
                                                (_%k128689%_ _%vars128686%_)
                                                (if (eq? 'id _%$e128707%_)
                                                    (let ((__tmp129779
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128687%_)))
                                                          (__tmp129775
                                                           (let ((__tmp129777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129778
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128402%_
                                    _%body128704%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128400%_
                             __tmp129778
                             _%target128687%_)))
                         (__tmp129776 (_%k128689%_ _%vars128686%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129777 __tmp129776 _%E128688%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129779 __tmp129775 _%E128688%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128707%_)
                                                        (_%k128689%_
                                                         (cons (cons _%body128704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128687%_)
                       _%vars128686%_))
                (if (eq? 'cons _%$e128707%_)
                    (let ((_%$e128710%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128711%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128712%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129786
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128687%_)))
                            (__tmp129780
                             (let ((__tmp129785
                                    (cons (cons (cons _%$e128710%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128401%_
                                                         _%target128687%_))
                                                      '()))
                                          '()))
                                   (__tmp129781
                                    (let ((__tmp129784
                                           (cons (cons (cons _%$hd128711%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128710%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128710%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129782
                                           (let* ((_%body128713128720%_
                                                   _%body128704%_)
                                                  (_%E128715128724%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128713128720%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128716128732%_
                                                   (lambda (_%tl128727%_
                                                            _%hd128728%_)
                                                     (let ((__tmp129783
                                                            (lambda (_%vars128730%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128594%_
                         _%tl128727%_
                         _%vars128730%_
                         _%$tl128712%_
                         _%E128688%_
                         _%k128689%_)))))
               (declare (not safe))
               (_%recur128594%_
                _%hd128728%_
                _%vars128686%_
                _%$hd128711%_
                _%E128688%_
                __tmp129783)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128713128720%_))
                                                 (let ((_%hd128717128735%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128713128720%_)))
                                                       (_%tl128718128737%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128713128720%_))))
                                                   (let* ((_%hd128740%_
                                                           _%hd128717128735%_)
                                                          (_%tl128742%_
                                                           _%tl128718128737%_))
                                                     (declare (not safe))
                                                     (_%K128716128732%_
                                                      _%tl128742%_
                                                      _%hd128740%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128715128724%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129784
                                       __tmp129782))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129785
                                __tmp129781))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129786
                         __tmp129780
                         _%E128688%_)))
                    (if (eq? 'splice _%$e128707%_)
                        (let* ((_%body128743128750%_ _%body128704%_)
                               (_%E128745128754%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128743128750%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128746128805%_
                                (lambda (_%tl128757%_ _%hd128758%_)
                                  (let* ((_%rlen128760%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128595%_
                                             _%tl128757%_)))
                                         (_%$target128762%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128764%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128766%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128768%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128770%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128772%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128774%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128776%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128596%_
                                             _%hd128758%_)))
                                         (_%lvars128778%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128776%_)))
                                         (_%tlvars128780%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128776%_)))
                                         (_%linit128784%_
                                          (map (lambda (_%var128782%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128778%_)))
                                    (letrec ((_%make-loop128787%_
                                              (lambda (_%vars128791%_)
                                                (let ((__tmp129789
                                                       (cons (cons (cons _%$lp128768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129805
                                        (cons _%$hd128764%_ _%lvars128778%_))
                                       (__tmp129790
                                        (let ((__tmp129804
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128764%_)))
                                              (__tmp129795
                                               (let ((__tmp129803
                                                      (cons (cons (cons _%$lp-e128770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128401%_
                                   _%$hd128764%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129796
                                                      (let ((__tmp129802
                                                             (cons (cons (cons _%$lp-hd128772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128770%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128774%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128770%_))
                                             '()))
                                 '())))
                    (__tmp129797
                     (let ((__tmp129798
                            (lambda (_%hdvars128793%_)
                              (let ((__tmp129799
                                     (let ((__tmp129800
                                            (map (lambda (_%svar128795%_
                                                          _%lvar128796%_)
                                                   (let ((__tmp129801
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128795%_
                                                             _%hdvars128793%_
                                                             _%BUG128593%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129801
                                                      _%lvar128796%_)))
                                                 _%svars128776%_
                                                 _%lvars128778%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128774%_ __tmp129800))))
                                (declare (not safe))
                                (cons _%$lp128768%_ __tmp129799)))))
                       (declare (not safe))
                       (_%recur128594%_
                        _%hd128758%_
                        '()
                        _%$lp-hd128772%_
                        _%E128688%_
                        __tmp129798))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129802 __tmp129797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129803
                                                  __tmp129796)))
                                              (__tmp129791
                                               (let ((__tmp129794
                                                      (map (lambda (_%lvar128798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128799%_)
                     (cons (cons _%tlvar128799%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128798%_))
                                 '())))
                   _%lvars128778%_
                   _%tlvars128780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129792
                                                      (_%k128689%_
                                                       (let ((__tmp129793
                                                              (lambda (_%svar128801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128802%_
                               _%r128803%_)
                        (cons (cons _%svar128801%_ _%tlvar128802%_)
                              _%r128803%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129793
                  _%vars128791%_
                  _%svars128776%_
                  _%tlvars128780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129794
                                                  __tmp129792))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129804
                                           __tmp129795
                                           __tmp129791))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129805
                                    __tmp129790))
                                 '()))
                     '()))
              (__tmp129787
               (let ((__tmp129788
                      (let ()
                        (declare (not safe))
                        (cons _%$target128762%_ _%linit128784%_))))
                 (declare (not safe))
                 (cons _%$lp128768%_ __tmp129788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129789
                                                   __tmp129787)))))
                                      (let ((_%body128789%_
                                             (let ((__tmp129807
                                                    (cons (cons (cons _%$target128762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128766%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128687%_
                                 _%rlen128760%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129806
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128594%_
                                                       _%tl128757%_
                                                       _%vars128686%_
                                                       _%$tl128766%_
                                                       _%E128688%_
                                                       _%make-loop128787%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129807
                                                __tmp129806))))
                                        (let ((__tmp129811
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128687%_)))
                                              (__tmp129808
                                               (if (zero? _%rlen128760%_)
                                                   _%body128789%_
                                                   (let ((__tmp129809
                                                          (let ((__tmp129810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128687%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129810 _%rlen128760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129809
                                                      _%body128789%_
                                                      _%E128688%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129811
                                           __tmp129808
                                           _%E128688%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128743128750%_))
                              (let ((_%hd128747128808%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128743128750%_)))
                                    (_%tl128748128810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128743128750%_))))
                                (let* ((_%hd128813%_ _%hd128747128808%_)
                                       (_%tl128815%_ _%tl128748128810%_))
                                  (declare (not safe))
                                  (_%K128746128805%_
                                   _%tl128815%_
                                   _%hd128813%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128745128754%_))))
                        (if (eq? 'null _%$e128707%_)
                            (let ((__tmp129813
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128687%_)))
                                  (__tmp129812 (_%k128689%_ _%vars128686%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129813
                               __tmp129812
                               _%E128688%_))
                            (if (eq? 'vector _%$e128707%_)
                                (let ((_%$e128817%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129818
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128687%_)))
                                        (__tmp129814
                                         (let ((__tmp129816
                                                (cons (cons (cons _%$e128817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129817
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128401%_
                                    _%target128687%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129817))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129815
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128594%_
                                                   _%body128704%_
                                                   _%vars128686%_
                                                   _%$e128817%_
                                                   _%E128688%_
                                                   _%k128689%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129816
                                            __tmp129815))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129818
                                     __tmp129814
                                     _%E128688%_)))
                                (if (eq? 'box _%$e128707%_)
                                    (let ((_%$e128819%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129823
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128687%_)))
                                            (__tmp129819
                                             (let ((__tmp129821
                                                    (cons (cons (cons _%$e128819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129822
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128401%_
                                        _%target128687%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129822))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129820
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128594%_
                                                       _%body128704%_
                                                       _%vars128686%_
                                                       _%$e128819%_
                                                       _%E128688%_
                                                       _%k128689%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129821
                                                __tmp129820))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129823
                                         __tmp129819
                                         _%E128688%_)))
                                    (if (eq? 'datum _%$e128707%_)
                                        (let ((_%$e128821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129829
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128687%_)))
                                                (__tmp129824
                                                 (let ((__tmp129828
                                                        (cons (cons (cons _%$e128821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128687%_))
                                  '()))
                      '()))
               (__tmp129825
                (let ((__tmp129827
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128821%_ _%body128704%_)))
                      (__tmp129826 (_%k128689%_ _%vars128686%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129827 __tmp129826 _%E128688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129828
                                                    __tmp129825))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129829
                                             __tmp129824
                                             _%E128688%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128593%_
                                           _%e128685%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128690128697%_))
                                      (let ((_%hd128694128826%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128690128697%_)))
                                            (_%tl128695128828%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128690128697%_))))
                                        (let* ((_%tag128831%_
                                                _%hd128694128826%_)
                                               (_%body128833%_
                                                _%tl128695128828%_))
                                          (declare (not safe))
                                          (_%K128693128823%_
                                           _%body128833%_
                                           _%tag128831%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128692128701%_))))))
                             (_%splice-rlen128595%_
                              (lambda (_%e128647%_)
                                (let _%lp128649%_ ((_%e128651%_ _%e128647%_)
                                                   (_%n128652%_ '0))
                                  (let* ((_%e128653128660%_ _%e128651%_)
                                         (_%E128655128664%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128653128660%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128656128673%_
                                          (lambda (_%body128667%_
                                                   _%tag128668%_)
                                            (let ((_%$e128670%_ _%tag128668%_))
                                              (if (eq? 'splice _%$e128670%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128399%_
                                                     _%where128586%_))
                                                  (if (eq? 'cons _%$e128670%_)
                                                      (let ((__tmp129831
                                                             (cdr _%body128667%_))
                                                            (__tmp129830
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128652%_ '1))))
                (declare (not safe))
                (_%lp128649%_ __tmp129831 __tmp129830))
              _%n128652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128653128660%_))
                                        (let ((_%hd128657128676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128653128660%_)))
                                              (_%tl128658128678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128653128660%_))))
                                          (let* ((_%tag128681%_
                                                  _%hd128657128676%_)
                                                 (_%body128683%_
                                                  _%tl128658128678%_))
                                            (declare (not safe))
                                            (_%K128656128673%_
                                             _%body128683%_
                                             _%tag128681%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128655128664%_)))))))
                             (_%splice-vars128596%_
                              (lambda (_%e128603%_)
                                (let _%recur128605%_ ((_%e128607%_ _%e128603%_)
                                                      (_%vars128608%_ '()))
                                  (let* ((_%e128609128616%_ _%e128607%_)
                                         (_%E128611128620%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128609128616%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128612128635%_
                                          (lambda (_%body128623%_
                                                   _%tag128624%_)
                                            (let ((_%$e128626%_ _%tag128624%_))
                                              (if (eq? 'var _%$e128626%_)
                                                  (cons _%body128623%_
                                                        _%vars128608%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128626%_)
                                                          (eq? 'splice
                                                               _%$e128626%_))
                                                      (let ((__tmp129834
                                                             (cdr _%body128623%_))
                                                            (__tmp129832
                                                             (let ((__tmp129833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128623%_)))
                       (declare (not safe))
                       (_%recur128605%_ __tmp129833 _%vars128608%_))))
                (declare (not safe))
                (_%recur128605%_ __tmp129834 __tmp129832))
              (if (or (eq? 'vector _%$e128626%_) (eq? 'box _%$e128626%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128605%_ _%body128623%_ _%vars128608%_))
                  _%vars128608%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128609128616%_))
                                        (let ((_%hd128613128638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128609128616%_)))
                                              (_%tl128614128640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128609128616%_))))
                                          (let* ((_%tag128643%_
                                                  _%hd128613128638%_)
                                                 (_%body128645%_
                                                  _%tl128614128640%_))
                                            (declare (not safe))
                                            (_%K128612128635%_
                                             _%body128645%_
                                             _%tag128643%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128611128620%_)))))))
                             (_%make-body128597%_
                              (lambda (_%vars128599%_)
                                (cons _%K128590%_
                                      (map (lambda (_%mvar128601%_)
                                             (let ((__tmp129835
                                                    (car _%mvar128601%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129835
                                                _%vars128599%_
                                                _%BUG128593%_)))
                                           _%mvars128589%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128594%_
                         _%hd128588%_
                         '()
                         _%target128587%_
                         _%E128591%_
                         _%make-body128597%_)))))
                 (_%parse-clause128408%_
                  (lambda (_%hd128480%_ _%ids128481%_)
                    (let _%recur128483%_ ((_%e128485%_ _%hd128480%_)
                                          (_%vars128486%_ '())
                                          (_%depth128487%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128485%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e128485%_))
                                (let () (values '(any) _%vars128486%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e128485%_))
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Misplaced ellipsis"
                                       _%stx128399%_
                                       _%hd128480%_))
                                    (if (let ((__tmp129836
                                               (lambda (_%id128492%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e128485%_
                                                    _%id128492%_)))))
                                          (declare (not safe))
                                          (__find __tmp129836 _%ids128481%_))
                                        (let ()
                                          (values (cons 'id _%e128485%_)
                                                  _%vars128486%_))
                                        (if (let ((__tmp129837
                                                   (lambda (_%var128495%_)
                                                     (let ((__tmp129838
                                                            (car _%var128495%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e128485%_
                                                        __tmp129838)))))
                                              (declare (not safe))
                                              (__find __tmp129837
                                                      _%vars128486%_))
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Duplicate pattern variable"
                                               _%stx128399%_
                                               _%e128485%_))
                                            (let ()
                                              (values (cons 'var _%e128485%_)
                                                      (cons (cons _%e128485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth128487%_)
                    _%vars128486%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128485%_))
                              (let ()
                                (let* ((_%e128499128506%_ _%e128485%_)
                                       (_%E128501128510%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e128499128506%_))))
                                       (_%E128500128571%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e128499128506%_))
                                              (let ((_%e128502128514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128499128506%_))))
                                                (let ((_%hd128503128517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128502128514%_)))
                                                      (_%tl128504128519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128502128514%_))))
                                                  (let* ((_%hd128522%_
                                                          _%hd128503128517%_)
                                                         (_%rest128524%_
                                                          _%tl128504128519%_))
                                                    (if '#t
                                                        (let* ((_%make-pair128539%_
                                                                (lambda (_%tag128526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd128527%_
                                 _%tl128528%_)
                          (let* ((_%hd-depth128530%_
                                  (if (eq? _%tag128526%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth128487%_ '1))
                                      _%depth128487%_))
                                 (_g129839_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur128483%_
                                     _%hd128527%_
                                     _%vars128486%_
                                     _%hd-depth128530%_))))
                            (begin
                              (let ((_g129840_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129839_)
                                           (##vector-length _g129839_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129840_ 2)))
                                    (error "Context expects 2 values"
                                           _g129840_)))
                              (let ((_%hd128532%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129839_ 0)))
                                    (_%vars128533%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129839_ 1))))
                                (let ((_g129841_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128483%_
                                          _%tl128528%_
                                          _%vars128533%_
                                          _%depth128487%_))))
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
                                    (let ((_%tl128535%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129841_ 0)))
                                          (_%vars128536%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129841_ 1))))
                                      (let ()
                                        (values (let ((__tmp129843
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd128532%_
                                                               _%tl128535%_))))
                                                  (declare (not safe))
                                                  (cons _%tag128526%_
                                                        __tmp129843))
                                                _%vars128536%_))))))))))
                       (_%e128540128547%_ _%rest128524%_)
                       (_%E128542128551%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair128539%_
                             'cons
                             _%hd128522%_
                             _%rest128524%_))))
                       (_%E128541128567%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128540128547%_))
                              (let ((_%e128543128555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e128540128547%_))))
                                (let ((_%hd128544128558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e128543128555%_)))
                                      (_%tl128545128560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e128543128555%_))))
                                  (let* ((_%rest-hd128563%_ _%hd128544128558%_)
                                         (_%rest-tl128565%_
                                          _%tl128545128560%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd128563%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128539%_
                                               'splice
                                               _%hd128522%_
                                               _%rest-tl128565%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128539%_
                                               'cons
                                               _%hd128522%_
                                               _%rest128524%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128542128551%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E128542128551%_))))))
                  (declare (not safe))
                  (_%E128541128567%_))
                (let () (declare (not safe)) (_%E128501128510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128501128510%_))))))
                                  (declare (not safe))
                                  (_%E128500128571%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128485%_))
                                  (let () (values '(null) _%vars128486%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128485%_))
                                      (let ((_g129844_
                                             (let ((__tmp129846
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128485%_)))))
                                               (declare (not safe))
                                               (_%recur128483%_
                                                __tmp129846
                                                _%vars128486%_
                                                _%depth128487%_))))
                                        (begin
                                          (let ((_g129845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129844_)
                                                       (##vector-length
                                                        _g129844_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129845_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129845_)))
                                          (let ((_%e128577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129844_ 0)))
                                                (_%vars128578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129844_
                                                    1))))
                                            (values (cons 'vector _%e128577%_)
                                                    _%vars128578%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128485%_))
                                          (let ((_g129847_
                                                 (let ((__tmp129849
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%e128485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%recur128483%_
                                                    __tmp129849
                                                    _%vars128486%_
                                                    _%depth128487%_))))
                                            (begin
                                              (let ((_g129848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129847_)
                                                           (##vector-length
                                                            _g129847_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129848_)))
                                              (let ((_%e128581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129847_
                                                        0)))
                                                    (_%vars128582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129847_
                                                        1))))
                                                (values (cons 'box _%e128581%_)
                                                        _%vars128582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128485%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e128485%_)))
                _%vars128486%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128399%_
                                                 _%e128485%_))))))))))))
          (let* ((_%e128409128422%_ _%stx128399%_)
                 (_%E128411128426%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128409128422%_))))
                 (_%E128410128476%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128409128422%_))
                        (let ((_%e128412128430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128409128422%_))))
                          (let ((_%hd128413128433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128412128430%_)))
                                (_%tl128414128435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128412128430%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128414128435%_))
                                (let ((_%e128415128438%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128414128435%_))))
                                  (let ((_%hd128416128441%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128415128438%_)))
                                        (_%tl128417128443%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128415128438%_))))
                                    (let ((_%expr128446%_ _%hd128416128441%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128417128443%_))
                                          (let ((_%e128418128448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128417128443%_))))
                                            (let ((_%hd128419128451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128418128448%_)))
                                                  (_%tl128420128453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128418128448%_))))
                                              (let* ((_%ids128456%_
                                                      _%hd128419128451%_)
                                                     (_%clauses128458%_
                                                      _%tl128420128453%_))
                                                (if '#t
                                                    (if (let ((__tmp129850
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids128456%_))))
                  (declare (not safe))
                  (not __tmp129850))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128399%_
                   _%ids128456%_))
                (if (let ((__tmp129851
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses128458%_))))
                      (declare (not safe))
                      (not __tmp129851))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128399%_))
                    (let ()
                      (let* ((_%ids128463%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids128456%_)))
                             (_%clauses128465%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses128458%_)))
                             (_%clause-ids128467%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses128465%_)))
                             (_%E128469%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target128471%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first128473%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses128465%_))
                                  _%E128469%_
                                  (car _%clause-ids128467%_))))
                        (let ((__tmp129853
                               (let ((__tmp129854
                                      (let ((__tmp129856
                                             (let ((__tmp129860
                                                    (cons (cons (cons _%E128469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129862 (cons _%target128471%_ '()))
                                    (__tmp129861
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target128471%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129862
                                 __tmp129861))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129857
                                                    (let ((__tmp129859
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings128404%_
                                                              _%target128471%_
                                                              _%ids128463%_
                                                              _%clauses128465%_
                                                              _%clause-ids128467%_
                                                              _%E128469%_)))
                                                          (__tmp129858
                                                           (cons _%first128473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr128446%_ '()))))
              (declare (not safe))
              (_%generate-body128405%_ __tmp129859 __tmp129858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129860
                                                __tmp129857)))
                                            (__tmp129855
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx128399%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129856
                                         __tmp129855))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129854)))
                              (__tmp129852
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx128399%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129853 __tmp129852))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128411128426%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128411128426%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128411128426%_)))))
                        (let () (declare (not safe)) (_%E128411128426%_))))))
            (declare (not safe))
            (_%E128410128476%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129124%_)
        (let* ((_%identifier=?129126%_ 'free-identifier=?)
               (_%unwrap-e129128%_ 'syntax-e)
               (_%wrap-e129130%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129124%_
           _%identifier=?129126%_
           _%unwrap-e129128%_
           _%wrap-e129130%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129132%_ _%identifier=?129133%_)
        (let* ((_%unwrap-e129135%_ 'syntax-e) (_%wrap-e129137%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129132%_
           _%identifier=?129133%_
           _%unwrap-e129135%_
           _%wrap-e129137%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129139%_ _%identifier=?129140%_ _%unwrap-e129141%_)
        (let ((_%wrap-e129143%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129139%_
           _%identifier=?129140%_
           _%unwrap-e129141%_
           _%wrap-e129143%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129864_
        (let ((_g129863_ (let () (declare (not safe)) (##length _g129864_))))
          (cond ((let () (declare (not safe)) (##fx= _g129863_ 1))
                 (apply (lambda (_%stx129124%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx129124%_)))
                        _g129864_))
                ((let () (declare (not safe)) (##fx= _g129863_ 2))
                 (apply (lambda (_%stx129132%_ _%identifier=?129133%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx129132%_
                             _%identifier=?129133%_)))
                        _g129864_))
                ((let () (declare (not safe)) (##fx= _g129863_ 3))
                 (apply (lambda (_%stx129139%_
                                 _%identifier=?129140%_
                                 _%unwrap-e129141%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx129139%_
                             _%identifier=?129140%_
                             _%unwrap-e129141%_)))
                        _g129864_))
                ((let () (declare (not safe)) (##fx= _g129863_ 4))
                 (apply (lambda (_%stx129145%_
                                 _%identifier=?129146%_
                                 _%unwrap-e129147%_
                                 _%wrap-e129148%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx129145%_
                             _%identifier=?129146%_
                             _%unwrap-e129147%_
                             _%wrap-e129148%_)))
                        _g129864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129864_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128396%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128396%_))
            (let ((__tmp129865
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128396%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129865 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128354%_ . _%rest128355%_)
        (let ((_%len128357%_ (length _%hd128354%_)))
          (let _%lp128359%_ ((_%rest128361%_ _%rest128355%_))
            (let* ((_%rest128362128370%_ _%rest128361%_)
                   (_%else128364128378%_ (lambda () '#!void))
                   (_%K128366128384%_
                    (lambda (_%rest128381%_ _%hd128382%_)
                      (if (let ((__tmp129866 (length _%hd128382%_)))
                            (declare (not safe))
                            (##fx= _%len128357%_ __tmp129866))
                          (let ()
                            (declare (not safe))
                            (_%lp128359%_ _%rest128381%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128382%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128362128370%_))
                  (let ((_%hd128367128387%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128362128370%_)))
                        (_%tl128368128389%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128362128370%_))))
                    (let* ((_%hd128392%_ _%hd128367128387%_)
                           (_%rest128394%_ _%tl128368128389%_))
                      (declare (not safe))
                      (_%K128366128384%_ _%rest128394%_ _%hd128392%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128309%_ _%n128310%_)
        (let _%lp128312%_ ((_%rest128314%_ _%stx128309%_) (_%r128315%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128314%_))
              (let* ((_%g128316128323%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128314%_)))
                     (_%E128318128327%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128316128323%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128319128333%_
                      (lambda (_%rest128330%_ _%hd128331%_)
                        (let ((__tmp129867 (cons _%hd128331%_ _%r128315%_)))
                          (declare (not safe))
                          (_%lp128312%_ _%rest128330%_ __tmp129867)))))
                (if (let () (declare (not safe)) (##pair? _%g128316128323%_))
                    (let ((_%hd128320128336%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128316128323%_)))
                          (_%tl128321128338%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128316128323%_))))
                      (let* ((_%hd128341%_ _%hd128320128336%_)
                             (_%rest128343%_ _%tl128321128338%_))
                        (declare (not safe))
                        (_%K128319128333%_ _%rest128343%_ _%hd128341%_)))
                    (let () (declare (not safe)) (_%E128318128327%_))))
              (let _%lp128345%_ ((_%n128347%_ _%n128310%_)
                                 (_%l128348%_ _%r128315%_)
                                 (_%r128349%_ _%rest128314%_))
                (if (let () (declare (not safe)) (null? _%l128348%_))
                    (let () (values _%l128348%_ _%r128349%_))
                    (if (fxpositive? _%n128347%_)
                        (let ((__tmp129870
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%n128347%_ '1)))
                              (__tmp129869 (cdr _%l128348%_))
                              (__tmp129868
                               (cons (car _%l128348%_) _%r128349%_)))
                          (declare (not safe))
                          (_%lp128345%_ __tmp129870 __tmp129869 __tmp129868))
                        (let ()
                          (values (reverse _%l128348%_) _%r128349%_)))))))))))
