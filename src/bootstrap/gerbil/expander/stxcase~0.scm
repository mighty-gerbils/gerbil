(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712299485)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129629 (list gx#expander::t))
            (__tmp129628 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129629
         '(id depth)
         __tmp129628
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129625%_
        (apply make-instance gx#syntax-pattern::t _%$args129625%_)))
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
      (lambda (_%self129611%_ _%stx129612%_)
        (let ((_%self129615%_ _%self129611%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129612%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129077%_)
        (letrec ((_%generate129079%_
                  (lambda (_%e129319%_)
                    (letrec ((_%BUG129321%_
                              (lambda (_%q129486%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129077%_
                                         _%e129319%_
                                         _%q129486%_))))
                             (_%local-pattern-e129322%_
                              (lambda (_%pat129484%_)
                                (let ((__tmp129630
                                       (##structure-ref
                                        _%pat129484%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129630))))
                             (_%getvar129323%_
                              (lambda (_%q129481%_ _%vars129482%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129481%_
                                   _%vars129482%_
                                   _%BUG129321%_))))
                             (_%getarg129324%_
                              (lambda (_%arg129447%_ _%vars129448%_)
                                (let* ((_%arg129449129456%_ _%arg129447%_)
                                       (_%E129451129460%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129449129456%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129452129469%_
                                        (lambda (_%e129463%_ _%tag129464%_)
                                          (let ((_%$e129466%_ _%tag129464%_))
                                            (if (eq? 'ref _%$e129466%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar129323%_
                                                   _%e129463%_
                                                   _%vars129448%_))
                                                (if (eq? 'pattern _%$e129466%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e129322%_
                                                       _%e129463%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG129321%_
                                                       _%arg129447%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129449129456%_))
                                      (let ((_%hd129453129472%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129449129456%_)))
                                            (_%tl129454129474%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129449129456%_))))
                                        (let* ((_%tag129477%_
                                                _%hd129453129472%_)
                                               (_%e129479%_
                                                _%tl129454129474%_))
                                          (declare (not safe))
                                          (_%K129452129469%_
                                           _%e129479%_
                                           _%tag129477%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E129451129460%_)))))))
                      (let _%recur129326%_ ((_%e129328%_ _%e129319%_)
                                            (_%vars129329%_ '()))
                        (let* ((_%e129330129337%_ _%e129328%_)
                               (_%E129332129341%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129330129337%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129333129435%_
                                (lambda (_%body129344%_ _%tag129345%_)
                                  (let ((_%$e129347%_ _%tag129345%_))
                                    (if (eq? 'datum _%$e129347%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129344%_))
                                        (if (eq? 'term _%$e129347%_)
                                            (let ((_%id129350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129344%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129350%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129350%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%marks129353%_))
                                                        (let ((__tmp129631
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129344%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129631))
                (let ((__tmp129633
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129344%_)))
                      (__tmp129632
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129344%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129633
                   __tmp129632
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129350%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129344%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%BUG129321%_
                                                         _%e129328%_)))))
                                            (if (eq? 'pattern _%$e129347%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e129322%_
                                                   _%body129344%_))
                                                (if (eq? 'ref _%$e129347%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar129323%_
                                                       _%body129344%_
                                                       _%vars129329%_))
                                                    (if (eq? 'cons
                                                             _%$e129347%_)
                                                        (let ((__tmp129636
                                                               (let ((__tmp129637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body129344%_)))
                         (declare (not safe))
                         (_%recur129326%_ __tmp129637 _%vars129329%_)))
                      (__tmp129634
                       (let ((__tmp129635 (cdr _%body129344%_)))
                         (declare (not safe))
                         (_%recur129326%_ __tmp129635 _%vars129329%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129636 __tmp129634))
                (if (eq? 'vector _%$e129347%_)
                    (let ((__tmp129638
                           (let ()
                             (declare (not safe))
                             (_%recur129326%_ _%body129344%_ _%vars129329%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129638))
                    (if (eq? 'box _%$e129347%_)
                        (let ((__tmp129639
                               (let ()
                                 (declare (not safe))
                                 (_%recur129326%_
                                  _%body129344%_
                                  _%vars129329%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129639))
                        (if (eq? 'splice _%$e129347%_)
                            (let* ((_%body129356129367%_ _%body129344%_)
                                   (_%E129358129371%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129356129367%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129359129409%_
                                    (lambda (_%args129374%_
                                             _%iv129375%_
                                             _%hd129376%_
                                             _%depth129377%_)
                                      (let* ((_%targets129383%_
                                              (map (lambda (_%g129378129380%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg129324%_
                                                        _%g129378129380%_
                                                        _%vars129329%_)))
                                                   _%args129374%_))
                                             (_%fold-in129385%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129374%_)))
                                             (_%fold-out129387%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129389%_
                                              (let ((__tmp129640
                                                     (cons _%fold-out129387%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129640
                                                 _%fold-in129385%_)))
                                             (_%lambda-body129406%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129377%_ '1))
                                                  (let ((_%r-args129397%_
                                                         (map (lambda (_%arg129391%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129391%_)))
                      _%args129374%_))
                (_%r-vars129398%_
                 (let ((__tmp129641
                        (lambda (_%arg129393%_ _%var129394%_ _%r129395%_)
                          (cons (cons (cdr _%arg129393%_) _%var129394%_)
                                _%r129395%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129641
                    _%vars129329%_
                    _%args129374%_
                    _%fold-in129385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129642
                                                           (let ((__tmp129643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129647
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth129377%_ '1)))
                                (__tmp129644
                                 (let ((__tmp129645
                                        (let ((__tmp129646
                                               (cons 'var _%fold-out129387%_)))
                                          (declare (not safe))
                                          (cons __tmp129646
                                                _%r-args129397%_))))
                                   (declare (not safe))
                                   (cons _%hd129376%_ __tmp129645))))
                            (declare (not safe))
                            (cons __tmp129647 __tmp129644))))
                     (declare (not safe))
                     (cons 'splice __tmp129643))))
              (declare (not safe))
              (_%recur129326%_ __tmp129642 _%r-vars129398%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars129404%_
                                                          (let ((__tmp129648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129400%_ _%var129401%_ _%r129402%_)
                           (cons (cons (cdr _%arg129400%_) _%var129401%_)
                                 _%r129402%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129648
                     _%vars129329%_
                     _%args129374%_
                     _%fold-in129385%_)))
                 (__tmp129649
                  (let ()
                    (declare (not safe))
                    (_%recur129326%_ _%hd129376%_ _%hd-vars129404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129649
                                                     _%fold-out129387%_)))))
                                        (let ((__tmp129653
                                               (if (let ((__tmp129654
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129383%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129654 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129383%_))
                                                   '#!void))
                                              (__tmp129650
                                               (let ((__tmp129652
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129389%_
                                                         _%lambda-body129406%_)))
                                                     (__tmp129651
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur129326%_
                                                         _%iv129375%_
                                                         _%vars129329%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129652
                                                  __tmp129651
                                                  _%targets129383%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129653
                                           __tmp129650))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129356129367%_))
                                  (let ((_%hd129360129412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129356129367%_)))
                                        (_%tl129361129414%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129356129367%_))))
                                    (let ((_%depth129417%_ _%hd129360129412%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129361129414%_))
                                          (let ((_%hd129362129419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129361129414%_)))
                                                (_%tl129363129421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129361129414%_))))
                                            (let ((_%hd129424%_
                                                   _%hd129362129419%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129363129421%_))
                                                  (let ((_%hd129364129426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129363129421%_)))
                                                        (_%tl129365129428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129363129421%_))))
                                                    (let* ((_%iv129431%_
                                                            _%hd129364129426%_)
                                                           (_%args129433%_
                                                            _%tl129365129428%_))
                                                      (declare (not safe))
                                                      (_%K129359129409%_
                                                       _%args129433%_
                                                       _%iv129431%_
                                                       _%hd129424%_
                                                       _%depth129417%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E129358129371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129358129371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129358129371%_))))
                            (if (eq? 'var _%$e129347%_)
                                _%body129344%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG129321%_ _%e129328%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129330129337%_))
                              (let ((_%hd129334129438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129330129337%_)))
                                    (_%tl129335129440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129330129337%_))))
                                (let* ((_%tag129443%_ _%hd129334129438%_)
                                       (_%body129445%_ _%tl129335129440%_))
                                  (declare (not safe))
                                  (_%K129333129435%_
                                   _%body129445%_
                                   _%tag129443%_)))
                              (let ()
                                (declare (not safe))
                                (_%E129332129341%_))))))))
                 (_%parse129080%_
                  (lambda (_%e129121%_)
                    (letrec ((_%make-cons129123%_
                              (lambda (_%hd129311%_ _%tl129312%_)
                                (let ((_g129655_ _%hd129311%_)
                                      (_g129657_ _%tl129312%_))
                                  (begin
                                    (let ((_g129656_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129655_)
                                                 (##vector-length _g129655_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129656_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129656_)))
                                    (let ((_g129658_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129657_)
                                                 (##vector-length _g129657_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129658_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129658_)))
                                    (let ((_%hd-e129314%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129655_ 0)))
                                          (_%hd-vars129315%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129655_ 1))))
                                      (let ((_%tl-e129316%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129657_ 0)))
                                            (_%tl-vars129317%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129657_ 1))))
                                        (values (let ((__tmp129659
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e129314%_
                                                               _%tl-e129316%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129659))
                                                (append _%hd-vars129315%_
                                                        _%tl-vars129317%_))))))))
                             (_%make-splice129124%_
                              (lambda (_%where129247%_
                                       _%depth129248%_
                                       _%hd129249%_
                                       _%tl129250%_)
                                (let ((_g129660_ _%hd129249%_)
                                      (_g129662_ _%tl129250%_))
                                  (begin
                                    (let ((_g129661_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129660_)
                                                 (##vector-length _g129660_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129661_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129661_)))
                                    (let ((_g129663_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129662_)
                                                 (##vector-length _g129662_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129663_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129663_)))
                                    (let ((_%hd-e129252%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129660_ 0)))
                                          (_%hd-vars129253%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129660_ 1))))
                                      (let ((_%tl-e129254%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129662_ 0)))
                                            (_%tl-vars129255%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129662_ 1))))
                                        (let _%lp129257%_ ((_%rest129259%_
                                                            _%hd-vars129253%_)
                                                           (_%targets129260%_
                                                            '())
                                                           (_%vars129261%_
                                                            _%tl-vars129255%_))
                                          (let* ((_%rest129262129272%_
                                                  _%rest129259%_)
                                                 (_%else129264129280%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets129260%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129077%_
                                                           _%where129247%_))
                                                        (values (let ((__tmp129664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129665
                                      (let ((__tmp129666
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e129254%_
                                                     _%targets129260%_))))
                                        (declare (not safe))
                                        (cons _%hd-e129252%_ __tmp129666))))
                                 (declare (not safe))
                                 (cons _%depth129248%_ __tmp129665))))
                          (declare (not safe))
                          (cons 'splice __tmp129664))
                        _%vars129261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129266129292%_
                                                  (lambda (_%rest129283%_
                                                           _%hd-pat129284%_
                                                           _%hd-depth*129285%_)
                                                    (let ((_%hd-depth129287%_
                                                           (fx- _%hd-depth*129285%_
                                                                _%depth129248%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129287%_))
                                                          (let ((__tmp129668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _%hd-pat129284%_) _%targets129260%_))
                        (__tmp129667
                         (cons (cons _%hd-depth129287%_ _%hd-pat129284%_)
                               _%vars129261%_)))
                    (declare (not safe))
                    (_%lp129257%_ _%rest129283%_ __tmp129668 __tmp129667))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129287%_))
                      (let ((__tmp129669
                             (cons (cons 'pattern _%hd-pat129284%_)
                                   _%targets129260%_)))
                        (declare (not safe))
                        (_%lp129257%_
                         _%rest129283%_
                         __tmp129669
                         _%vars129261%_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129077%_
                         _%where129247%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129262129272%_))
                                                (let ((_%hd129267129295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129262129272%_)))
                                                      (_%tl129268129297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129262129272%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129267129295%_))
                                                      (let ((_%hd129269129300%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129267129295%_)))
                    (_%tl129270129302%_
                     (let () (declare (not safe)) (##cdr _%hd129267129295%_))))
                (let* ((_%hd-depth*129305%_ _%hd129269129300%_)
                       (_%hd-pat129307%_ _%tl129270129302%_)
                       (_%rest129309%_ _%tl129268129297%_))
                  (declare (not safe))
                  (_%K129266129292%_
                   _%rest129309%_
                   _%hd-pat129307%_
                   _%hd-depth*129305%_)))
              (let () (declare (not safe)) (_%else129264129280%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else129264129280%_)))))))))))
                             (_%recur129125%_
                              (lambda (_%e129130%_ _%is-e?129131%_)
                                (if (_%is-e?129131%_ _%e129130%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129077%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e129130%_))
                                        (let ()
                                          (let* ((_%pat129135%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e129130%_)))
                                                 (_%depth129137%_
                                                  (##structure-ref
                                                   _%pat129135%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth129137%_)
                                                (values (cons 'ref
                                                              _%pat129135%_)
                                                        (cons (cons _%depth129137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat129135%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat129135%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129130%_))
                                            (let ()
                                              (values (cons 'term _%e129130%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129130%_))
                                                (let ()
                                                  (let* ((_%e129141129148%_
                                                          _%e129130%_)
                                                         (_%E129143129152%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e129141129148%_))))
                                                         (_%E129142129234%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e129141129148%_))
                        (let ((_%e129144129156%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129141129148%_))))
                          (let ((_%hd129145129159%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129144129156%_)))
                                (_%tl129146129161%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129144129156%_))))
                            (let* ((_%hd129164%_ _%hd129145129159%_)
                                   (_%rest129166%_ _%tl129146129161%_))
                              (if '#t
                                  (if (_%is-e?129131%_ _%hd129164%_)
                                      (let* ((_%e129167129174%_ _%rest129166%_)
                                             (_%E129169129178%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx129077%_
                                                   _%e129130%_))))
                                             (_%E129168129192%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129167129174%_))
                                                    (let ((_%e129170129182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129167129174%_))))
                                                      (let ((_%hd129171129185%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129170129182%_)))
                    (_%tl129172129187%_
                     (let () (declare (not safe)) (##cdr _%e129170129182%_))))
                (let ((_%rest129190%_ _%hd129171129185%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl129172129187%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur129125%_ _%rest129190%_ false))
                          (let () (declare (not safe)) (_%E129169129178%_)))
                      (let () (declare (not safe)) (_%E129169129178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E129169129178%_))))))
                                        (declare (not safe))
                                        (_%E129168129192%_))
                                      (let _%lp129196%_ ((_%rest129198%_
                                                          _%rest129166%_)
                                                         (_%depth129199%_ '0))
                                        (let* ((_%e129200129207%_
                                                _%rest129198%_)
                                               (_%E129202129211%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth129199%_)
                                                      (let ((__tmp129671
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur129125%_ _%hd129164%_ _%is-e?129131%_)))
                    (__tmp129670
                     (let ()
                       (declare (not safe))
                       (_%recur129125%_ _%rest129198%_ _%is-e?129131%_))))
                (declare (not safe))
                (_%make-splice129124%_
                 _%e129130%_
                 _%depth129199%_
                 __tmp129671
                 __tmp129670))
              (let ((__tmp129673
                     (let ()
                       (declare (not safe))
                       (_%recur129125%_ _%hd129164%_ _%is-e?129131%_)))
                    (__tmp129672
                     (let ()
                       (declare (not safe))
                       (_%recur129125%_ _%rest129198%_ _%is-e?129131%_))))
                (declare (not safe))
                (_%make-cons129123%_ __tmp129673 __tmp129672)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129201129230%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e129200129207%_))
                                                      (let ((_%e129203129215%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e129200129207%_))))
                (let ((_%hd129204129218%_
                       (let () (declare (not safe)) (##car _%e129203129215%_)))
                      (_%tl129205129220%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e129203129215%_))))
                  (let* ((_%rest-hd129223%_ _%hd129204129218%_)
                         (_%rest-tl129225%_ _%tl129205129220%_))
                    (if '#t
                        (if (_%is-e?129131%_ _%rest-hd129223%_)
                            (let ((__tmp129674
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%depth129199%_ '1))))
                              (declare (not safe))
                              (_%lp129196%_ _%rest-tl129225%_ __tmp129674))
                            (if (fxpositive? _%depth129199%_)
                                (let ((__tmp129676
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129125%_
                                          _%hd129164%_
                                          _%is-e?129131%_)))
                                      (__tmp129675
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129125%_
                                          _%rest129198%_
                                          _%is-e?129131%_))))
                                  (declare (not safe))
                                  (_%make-splice129124%_
                                   _%e129130%_
                                   _%depth129199%_
                                   __tmp129676
                                   __tmp129675))
                                (let ((__tmp129678
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129125%_
                                          _%hd129164%_
                                          _%is-e?129131%_)))
                                      (__tmp129677
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129125%_
                                          _%rest129198%_
                                          _%is-e?129131%_))))
                                  (declare (not safe))
                                  (_%make-cons129123%_
                                   __tmp129678
                                   __tmp129677))))
                        (let () (declare (not safe)) (_%E129202129211%_))))))
              (let () (declare (not safe)) (_%E129202129211%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%E129201129230%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129143129152%_))))))
                        (let () (declare (not safe)) (_%E129143129152%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%E129142129234%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129130%_))
                                                    (let ((_g129679_
                                                           (let ((__tmp129681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _%e129130%_)))))
                     (declare (not safe))
                     (_%recur129125%_ __tmp129681 _%is-e?129131%_))))
              (begin
                (let ((_g129680_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129679_)
                             (##vector-length _g129679_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129680_ 2)))
                      (error "Context expects 2 values" _g129680_)))
                (let ((_%e129239%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129679_ 0)))
                      (_%vars129240%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129679_ 1))))
                  (values (cons 'vector _%e129239%_) _%vars129240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129130%_))
                                                        (let ((_g129682_
                                                               (let ((__tmp129684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _%e129130%_)))))
                         (declare (not safe))
                         (_%recur129125%_ __tmp129684 _%is-e?129131%_))))
                  (begin
                    (let ((_g129683_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129682_)
                                 (##vector-length _g129682_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129683_ 2)))
                          (error "Context expects 2 values" _g129683_)))
                    (let ((_%e129243%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129682_ 0)))
                          (_%vars129244%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129682_ 1))))
                      (values (cons 'box _%e129243%_) _%vars129244%_))))
                (let () (values (cons 'datum _%e129130%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129685_
                             (let ()
                               (declare (not safe))
                               (_%recur129125%_ _%e129121%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129686_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129685_)
                                       (##vector-length _g129685_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129686_ 2)))
                                (error "Context expects 2 values" _g129686_)))
                          (let ((_%tree129127%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129685_ 0)))
                                (_%vars129128%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129685_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars129128%_))
                                _%tree129127%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129077%_
                                   _%vars129128%_))))))))))
          (let* ((_%e129081129091%_ _%stx129077%_)
                 (_%E129083129095%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129077%_))))
                 (_%E129082129117%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129081129091%_))
                        (let ((_%e129084129099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129081129091%_))))
                          (let ((_%hd129085129102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129084129099%_)))
                                (_%tl129086129104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129084129099%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129086129104%_))
                                (let ((_%e129087129107%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129086129104%_))))
                                  (let ((_%hd129088129110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129087129107%_)))
                                        (_%tl129089129112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129087129107%_))))
                                    (let ((_%form129115%_ _%hd129088129110%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129089129112%_))
                                          (if '#t
                                              (let ((__tmp129688
                                                     (let ((__tmp129689
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse129080%_
                                                               _%form129115%_))))
                                                       (declare (not safe))
                                                       (_%generate129079%_
                                                        __tmp129689)))
                                                    (__tmp129687
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129077%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129688
                                                 __tmp129687))
                                              (let ()
                                                (declare (not safe))
                                                (_%E129083129095%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129083129095%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E129083129095%_)))))
                        (let () (declare (not safe)) (_%E129083129095%_))))))
            (declare (not safe))
            (_%E129082129117%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128326%_
               _%identifier=?128327%_
               _%unwrap-e128328%_
               _%wrap-e128329%_)
        (letrec ((_%generate-bindings128331%_
                  (lambda (_%target128941%_
                           _%ids128942%_
                           _%clauses128943%_
                           _%clause-ids128944%_
                           _%E128945%_)
                    (letrec ((_%generate1128947%_
                              (lambda (_%clause129044%_
                                       _%clause-id129045%_
                                       _%E129046%_)
                                (cons (cons _%clause-id129045%_ '())
                                      (cons (let ((__tmp129691
                                                   (cons _%target128941%_ '()))
                                                  (__tmp129690
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause128333%_
                                                      _%target128941%_
                                                      _%ids128942%_
                                                      _%clause129044%_
                                                      _%E129046%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129691
                                               __tmp129690))
                                            '())))))
                      (let _%lp128949%_ ((_%rest128951%_ _%clauses128943%_)
                                         (_%rest-ids128952%_
                                          _%clause-ids128944%_)
                                         (_%bindings128953%_ '()))
                        (let* ((_%rest128954128962%_ _%rest128951%_)
                               (_%else128956128970%_
                                (lambda () _%bindings128953%_))
                               (_%K128958129032%_
                                (lambda (_%rest128973%_ _%clause128974%_)
                                  (let* ((_%rest-ids128975128982%_
                                          _%rest-ids128952%_)
                                         (_%E128977128986%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128975128982%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128978129020%_
                                          (lambda (_%rest-ids128989%_
                                                   _%clause-id128990%_)
                                            (let* ((_%rest-ids128991128999%_
                                                    _%rest-ids128989%_)
                                                   (_%else128993129007%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128947%_
                                                               _%clause128974%_
                                                               _%clause-id128990%_
                                                               _%E128945%_))
                                                            _%bindings128953%_)))
                                                   (_%K128995129012%_
                                                    (lambda (_%next-clause-id129010%_)
                                                      (let ((__tmp129692
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128947%_
                              _%clause128974%_
                              _%clause-id128990%_
                              _%next-clause-id129010%_))
                           _%bindings128953%_)))
                (declare (not safe))
                (_%lp128949%_
                 _%rest128973%_
                 _%rest-ids128989%_
                 __tmp129692)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128991128999%_))
                                                  (let* ((_%hd128996129015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128991128999%_)))
                                                         (_%next-clause-id129018%_
                                                          _%hd128996129015%_))
                                                    (declare (not safe))
                                                    (_%K128995129012%_
                                                     _%next-clause-id129018%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else128993129007%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128975128982%_))
                                        (let ((_%hd128979129023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128975128982%_)))
                                              (_%tl128980129025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128975128982%_))))
                                          (let* ((_%clause-id129028%_
                                                  _%hd128979129023%_)
                                                 (_%rest-ids129030%_
                                                  _%tl128980129025%_))
                                            (declare (not safe))
                                            (_%K128978129020%_
                                             _%rest-ids129030%_
                                             _%clause-id129028%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128977128986%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128954128962%_))
                              (let ((_%hd128959129035%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128954128962%_)))
                                    (_%tl128960129037%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128954128962%_))))
                                (let* ((_%clause129040%_ _%hd128959129035%_)
                                       (_%rest129042%_ _%tl128960129037%_))
                                  (declare (not safe))
                                  (_%K128958129032%_
                                   _%rest129042%_
                                   _%clause129040%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128956128970%_))))))))
                 (_%generate-body128332%_
                  (lambda (_%bindings128901%_ _%body128902%_)
                    (let _%recur128904%_ ((_%rest128906%_ _%bindings128901%_))
                      (let* ((_%rest128907128915%_ _%rest128906%_)
                             (_%else128909128923%_ (lambda () _%body128902%_))
                             (_%K128911128929%_
                              (lambda (_%rest128926%_ _%hd128927%_)
                                (let ((__tmp129694 (cons _%hd128927%_ '()))
                                      (__tmp129693
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128904%_ _%rest128926%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129694
                                   __tmp129693)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128907128915%_))
                            (let ((_%hd128912128932%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128907128915%_)))
                                  (_%tl128913128934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128907128915%_))))
                              (let* ((_%hd128937%_ _%hd128912128932%_)
                                     (_%rest128939%_ _%tl128913128934%_))
                                (declare (not safe))
                                (_%K128911128929%_
                                 _%rest128939%_
                                 _%hd128937%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128909128923%_)))))))
                 (_%generate-clause128333%_
                  (lambda (_%target128764%_
                           _%ids128765%_
                           _%clause128766%_
                           _%E128767%_)
                    (letrec ((_%generate1128769%_
                              (lambda (_%hd128856%_
                                       _%fender128857%_
                                       _%body128858%_)
                                (let ((_g129695_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause128335%_
                                          _%hd128856%_
                                          _%ids128765%_))))
                                  (begin
                                    (let ((_g129696_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129695_)
                                                 (##vector-length _g129695_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129696_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129696_)))
                                    (let ((_%e128860%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129695_ 0)))
                                          (_%mvars128861%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129695_ 1))))
                                      (let* ((_%pvars128863%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128861%_))))
                                             (_%E128865%_
                                              (cons _%E128767%_
                                                    (cons _%target128764%_
                                                          '())))
                                             (_%K128898%_
                                              (let ((__tmp129697
                                                     (let ((__tmp129699
                                                            (map (lambda (_%mvar128867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128868%_)
                           (let* ((_%mvar128869128876%_ _%mvar128867%_)
                                  (_%E128871128880%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128869128876%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128872128886%_
                                   (lambda (_%depth128883%_ _%id128884%_)
                                     (cons _%id128884%_
                                           (cons (let ((__tmp129701
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128884%_)))
                                                       (__tmp129700
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128868%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129701
                                                    __tmp129700
                                                    _%depth128883%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128869128876%_))
                                 (let ((_%hd128873128889%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128869128876%_)))
                                       (_%tl128874128891%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128869128876%_))))
                                   (let* ((_%id128894%_ _%hd128873128889%_)
                                          (_%depth128896%_ _%tl128874128891%_))
                                     (declare (not safe))
                                     (_%K128872128886%_
                                      _%depth128896%_
                                      _%id128894%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128871128880%_)))))
                         _%mvars128861%_
                         _%pvars128863%_))
                   (__tmp129698
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128857%_ '#t))
                        _%body128858%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128857%_
                           _%body128858%_
                           _%E128865%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129699 __tmp129698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128863%_
                                                 __tmp129697))))
                                        (declare (not safe))
                                        (_%generate-match128334%_
                                         _%hd128856%_
                                         _%target128764%_
                                         _%e128860%_
                                         _%mvars128861%_
                                         _%K128898%_
                                         _%E128865%_))))))))
                      (let* ((_%e128770128790%_ _%clause128766%_)
                             (_%E128779128794%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128770128790%_))))
                             (_%E128772128828%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128770128790%_))
                                    (let ((_%e128780128798%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128770128790%_))))
                                      (let ((_%hd128781128801%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128780128798%_)))
                                            (_%tl128782128803%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128780128798%_))))
                                        (let ((_%hd128806%_
                                               _%hd128781128801%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128782128803%_))
                                              (let ((_%e128783128808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128782128803%_))))
                                                (let ((_%hd128784128811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128783128808%_)))
                                                      (_%tl128785128813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128783128808%_))))
                                                  (let ((_%fender128816%_
                                                         _%hd128784128811%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128785128813%_))
                                                        (let ((_%e128786128818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128785128813%_))))
                  (let ((_%hd128787128821%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128786128818%_)))
                        (_%tl128788128823%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128786128818%_))))
                    (let ((_%body128826%_ _%hd128787128821%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128788128823%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128769%_
                                 _%hd128806%_
                                 _%fender128816%_
                                 _%body128826%_))
                              (let ()
                                (declare (not safe))
                                (_%E128779128794%_)))
                          (let () (declare (not safe)) (_%E128779128794%_))))))
                (let () (declare (not safe)) (_%E128779128794%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128779128794%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128779128794%_)))))
                             (_%E128771128852%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128770128790%_))
                                    (let ((_%e128773128832%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128770128790%_))))
                                      (let ((_%hd128774128835%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128773128832%_)))
                                            (_%tl128775128837%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128773128832%_))))
                                        (let ((_%hd128840%_
                                               _%hd128774128835%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128775128837%_))
                                              (let ((_%e128776128842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128775128837%_))))
                                                (let ((_%hd128777128845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128776128842%_)))
                                                      (_%tl128778128847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128776128842%_))))
                                                  (let ((_%body128850%_
                                                         _%hd128777128845%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128778128847%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128769%_
                                                               _%hd128840%_
                                                               '#t
                                                               _%body128850%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128772128828%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128772128828%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128772128828%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128772128828%_))))))
                        (declare (not safe))
                        (_%E128771128852%_)))))
                 (_%generate-match128334%_
                  (lambda (_%where128513%_
                           _%target128514%_
                           _%hd128515%_
                           _%mvars128516%_
                           _%K128517%_
                           _%E128518%_)
                    (letrec ((_%BUG128520%_
                              (lambda (_%q128762%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128326%_
                                         _%hd128515%_
                                         _%q128762%_))))
                             (_%recur128521%_
                              (lambda (_%e128612%_
                                       _%vars128613%_
                                       _%target128614%_
                                       _%E128615%_
                                       _%k128616%_)
                                (let* ((_%e128617128624%_ _%e128612%_)
                                       (_%E128619128628%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128617128624%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128620128750%_
                                        (lambda (_%body128631%_ _%tag128632%_)
                                          (let ((_%$e128634%_ _%tag128632%_))
                                            (if (eq? 'any _%$e128634%_)
                                                (_%k128616%_ _%vars128613%_)
                                                (if (eq? 'id _%$e128634%_)
                                                    (let ((__tmp129706
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128614%_)))
                                                          (__tmp129702
                                                           (let ((__tmp129704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129705
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128329%_
                                    _%body128631%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128327%_
                             __tmp129705
                             _%target128614%_)))
                         (__tmp129703 (_%k128616%_ _%vars128613%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129704 __tmp129703 _%E128615%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129706 __tmp129702 _%E128615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128634%_)
                                                        (_%k128616%_
                                                         (cons (cons _%body128631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128614%_)
                       _%vars128613%_))
                (if (eq? 'cons _%$e128634%_)
                    (let ((_%$e128637%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128638%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128639%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129713
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128614%_)))
                            (__tmp129707
                             (let ((__tmp129712
                                    (cons (cons (cons _%$e128637%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128328%_
                                                         _%target128614%_))
                                                      '()))
                                          '()))
                                   (__tmp129708
                                    (let ((__tmp129711
                                           (cons (cons (cons _%$hd128638%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128637%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128637%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129709
                                           (let* ((_%body128640128647%_
                                                   _%body128631%_)
                                                  (_%E128642128651%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128640128647%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128643128659%_
                                                   (lambda (_%tl128654%_
                                                            _%hd128655%_)
                                                     (let ((__tmp129710
                                                            (lambda (_%vars128657%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128521%_
                         _%tl128654%_
                         _%vars128657%_
                         _%$tl128639%_
                         _%E128615%_
                         _%k128616%_)))))
               (declare (not safe))
               (_%recur128521%_
                _%hd128655%_
                _%vars128613%_
                _%$hd128638%_
                _%E128615%_
                __tmp129710)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128640128647%_))
                                                 (let ((_%hd128644128662%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128640128647%_)))
                                                       (_%tl128645128664%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128640128647%_))))
                                                   (let* ((_%hd128667%_
                                                           _%hd128644128662%_)
                                                          (_%tl128669%_
                                                           _%tl128645128664%_))
                                                     (declare (not safe))
                                                     (_%K128643128659%_
                                                      _%tl128669%_
                                                      _%hd128667%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128642128651%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129711
                                       __tmp129709))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129712
                                __tmp129708))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129713
                         __tmp129707
                         _%E128615%_)))
                    (if (eq? 'splice _%$e128634%_)
                        (let* ((_%body128670128677%_ _%body128631%_)
                               (_%E128672128681%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128670128677%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128673128732%_
                                (lambda (_%tl128684%_ _%hd128685%_)
                                  (let* ((_%rlen128687%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128522%_
                                             _%tl128684%_)))
                                         (_%$target128689%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128691%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128693%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128695%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128697%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128699%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128701%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128703%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128523%_
                                             _%hd128685%_)))
                                         (_%lvars128705%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128703%_)))
                                         (_%tlvars128707%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128703%_)))
                                         (_%linit128711%_
                                          (map (lambda (_%var128709%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128705%_)))
                                    (letrec ((_%make-loop128714%_
                                              (lambda (_%vars128718%_)
                                                (let ((__tmp129716
                                                       (cons (cons (cons _%$lp128695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129732
                                        (cons _%$hd128691%_ _%lvars128705%_))
                                       (__tmp129717
                                        (let ((__tmp129731
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128691%_)))
                                              (__tmp129722
                                               (let ((__tmp129730
                                                      (cons (cons (cons _%$lp-e128697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128328%_
                                   _%$hd128691%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129723
                                                      (let ((__tmp129729
                                                             (cons (cons (cons _%$lp-hd128699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128697%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128701%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128697%_))
                                             '()))
                                 '())))
                    (__tmp129724
                     (let ((__tmp129725
                            (lambda (_%hdvars128720%_)
                              (let ((__tmp129726
                                     (let ((__tmp129727
                                            (map (lambda (_%svar128722%_
                                                          _%lvar128723%_)
                                                   (let ((__tmp129728
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128722%_
                                                             _%hdvars128720%_
                                                             _%BUG128520%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129728
                                                      _%lvar128723%_)))
                                                 _%svars128703%_
                                                 _%lvars128705%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128701%_ __tmp129727))))
                                (declare (not safe))
                                (cons _%$lp128695%_ __tmp129726)))))
                       (declare (not safe))
                       (_%recur128521%_
                        _%hd128685%_
                        '()
                        _%$lp-hd128699%_
                        _%E128615%_
                        __tmp129725))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129729 __tmp129724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129730
                                                  __tmp129723)))
                                              (__tmp129718
                                               (let ((__tmp129721
                                                      (map (lambda (_%lvar128725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128726%_)
                     (cons (cons _%tlvar128726%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128725%_))
                                 '())))
                   _%lvars128705%_
                   _%tlvars128707%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129719
                                                      (_%k128616%_
                                                       (let ((__tmp129720
                                                              (lambda (_%svar128728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128729%_
                               _%r128730%_)
                        (cons (cons _%svar128728%_ _%tlvar128729%_)
                              _%r128730%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129720
                  _%vars128718%_
                  _%svars128703%_
                  _%tlvars128707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129721
                                                  __tmp129719))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129731
                                           __tmp129722
                                           __tmp129718))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129732
                                    __tmp129717))
                                 '()))
                     '()))
              (__tmp129714
               (let ((__tmp129715
                      (let ()
                        (declare (not safe))
                        (cons _%$target128689%_ _%linit128711%_))))
                 (declare (not safe))
                 (cons _%$lp128695%_ __tmp129715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129716
                                                   __tmp129714)))))
                                      (let ((_%body128716%_
                                             (let ((__tmp129734
                                                    (cons (cons (cons _%$target128689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128693%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128614%_
                                 _%rlen128687%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129733
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128521%_
                                                       _%tl128684%_
                                                       _%vars128613%_
                                                       _%$tl128693%_
                                                       _%E128615%_
                                                       _%make-loop128714%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129734
                                                __tmp129733))))
                                        (let ((__tmp129738
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128614%_)))
                                              (__tmp129735
                                               (if (zero? _%rlen128687%_)
                                                   _%body128716%_
                                                   (let ((__tmp129736
                                                          (let ((__tmp129737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128614%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129737 _%rlen128687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129736
                                                      _%body128716%_
                                                      _%E128615%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129738
                                           __tmp129735
                                           _%E128615%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128670128677%_))
                              (let ((_%hd128674128735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128670128677%_)))
                                    (_%tl128675128737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128670128677%_))))
                                (let* ((_%hd128740%_ _%hd128674128735%_)
                                       (_%tl128742%_ _%tl128675128737%_))
                                  (declare (not safe))
                                  (_%K128673128732%_
                                   _%tl128742%_
                                   _%hd128740%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128672128681%_))))
                        (if (eq? 'null _%$e128634%_)
                            (let ((__tmp129740
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128614%_)))
                                  (__tmp129739 (_%k128616%_ _%vars128613%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129740
                               __tmp129739
                               _%E128615%_))
                            (if (eq? 'vector _%$e128634%_)
                                (let ((_%$e128744%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129745
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128614%_)))
                                        (__tmp129741
                                         (let ((__tmp129743
                                                (cons (cons (cons _%$e128744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129744
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128328%_
                                    _%target128614%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129744))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129742
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128521%_
                                                   _%body128631%_
                                                   _%vars128613%_
                                                   _%$e128744%_
                                                   _%E128615%_
                                                   _%k128616%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129743
                                            __tmp129742))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129745
                                     __tmp129741
                                     _%E128615%_)))
                                (if (eq? 'box _%$e128634%_)
                                    (let ((_%$e128746%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129750
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128614%_)))
                                            (__tmp129746
                                             (let ((__tmp129748
                                                    (cons (cons (cons _%$e128746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129749
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128328%_
                                        _%target128614%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129749))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129747
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128521%_
                                                       _%body128631%_
                                                       _%vars128613%_
                                                       _%$e128746%_
                                                       _%E128615%_
                                                       _%k128616%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129748
                                                __tmp129747))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129750
                                         __tmp129746
                                         _%E128615%_)))
                                    (if (eq? 'datum _%$e128634%_)
                                        (let ((_%$e128748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129756
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128614%_)))
                                                (__tmp129751
                                                 (let ((__tmp129755
                                                        (cons (cons (cons _%$e128748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128614%_))
                                  '()))
                      '()))
               (__tmp129752
                (let ((__tmp129754
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128748%_ _%body128631%_)))
                      (__tmp129753 (_%k128616%_ _%vars128613%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129754 __tmp129753 _%E128615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129755
                                                    __tmp129752))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129756
                                             __tmp129751
                                             _%E128615%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128520%_
                                           _%e128612%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128617128624%_))
                                      (let ((_%hd128621128753%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128617128624%_)))
                                            (_%tl128622128755%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128617128624%_))))
                                        (let* ((_%tag128758%_
                                                _%hd128621128753%_)
                                               (_%body128760%_
                                                _%tl128622128755%_))
                                          (declare (not safe))
                                          (_%K128620128750%_
                                           _%body128760%_
                                           _%tag128758%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128619128628%_))))))
                             (_%splice-rlen128522%_
                              (lambda (_%e128574%_)
                                (let _%lp128576%_ ((_%e128578%_ _%e128574%_)
                                                   (_%n128579%_ '0))
                                  (let* ((_%e128580128587%_ _%e128578%_)
                                         (_%E128582128591%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128580128587%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128583128600%_
                                          (lambda (_%body128594%_
                                                   _%tag128595%_)
                                            (let ((_%$e128597%_ _%tag128595%_))
                                              (if (eq? 'splice _%$e128597%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128326%_
                                                     _%where128513%_))
                                                  (if (eq? 'cons _%$e128597%_)
                                                      (let ((__tmp129758
                                                             (cdr _%body128594%_))
                                                            (__tmp129757
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128579%_ '1))))
                (declare (not safe))
                (_%lp128576%_ __tmp129758 __tmp129757))
              _%n128579%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128580128587%_))
                                        (let ((_%hd128584128603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128580128587%_)))
                                              (_%tl128585128605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128580128587%_))))
                                          (let* ((_%tag128608%_
                                                  _%hd128584128603%_)
                                                 (_%body128610%_
                                                  _%tl128585128605%_))
                                            (declare (not safe))
                                            (_%K128583128600%_
                                             _%body128610%_
                                             _%tag128608%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128582128591%_)))))))
                             (_%splice-vars128523%_
                              (lambda (_%e128530%_)
                                (let _%recur128532%_ ((_%e128534%_ _%e128530%_)
                                                      (_%vars128535%_ '()))
                                  (let* ((_%e128536128543%_ _%e128534%_)
                                         (_%E128538128547%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128536128543%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128539128562%_
                                          (lambda (_%body128550%_
                                                   _%tag128551%_)
                                            (let ((_%$e128553%_ _%tag128551%_))
                                              (if (eq? 'var _%$e128553%_)
                                                  (cons _%body128550%_
                                                        _%vars128535%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128553%_)
                                                          (eq? 'splice
                                                               _%$e128553%_))
                                                      (let ((__tmp129761
                                                             (cdr _%body128550%_))
                                                            (__tmp129759
                                                             (let ((__tmp129760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128550%_)))
                       (declare (not safe))
                       (_%recur128532%_ __tmp129760 _%vars128535%_))))
                (declare (not safe))
                (_%recur128532%_ __tmp129761 __tmp129759))
              (if (or (eq? 'vector _%$e128553%_) (eq? 'box _%$e128553%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128532%_ _%body128550%_ _%vars128535%_))
                  _%vars128535%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128536128543%_))
                                        (let ((_%hd128540128565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128536128543%_)))
                                              (_%tl128541128567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128536128543%_))))
                                          (let* ((_%tag128570%_
                                                  _%hd128540128565%_)
                                                 (_%body128572%_
                                                  _%tl128541128567%_))
                                            (declare (not safe))
                                            (_%K128539128562%_
                                             _%body128572%_
                                             _%tag128570%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128538128547%_)))))))
                             (_%make-body128524%_
                              (lambda (_%vars128526%_)
                                (cons _%K128517%_
                                      (map (lambda (_%mvar128528%_)
                                             (let ((__tmp129762
                                                    (car _%mvar128528%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129762
                                                _%vars128526%_
                                                _%BUG128520%_)))
                                           _%mvars128516%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128521%_
                         _%hd128515%_
                         '()
                         _%target128514%_
                         _%E128518%_
                         _%make-body128524%_)))))
                 (_%parse-clause128335%_
                  (lambda (_%hd128407%_ _%ids128408%_)
                    (let _%recur128410%_ ((_%e128412%_ _%hd128407%_)
                                          (_%vars128413%_ '())
                                          (_%depth128414%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128412%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e128412%_))
                                (let () (values '(any) _%vars128413%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e128412%_))
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Misplaced ellipsis"
                                       _%stx128326%_
                                       _%hd128407%_))
                                    (if (let ((__tmp129763
                                               (lambda (_%id128419%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e128412%_
                                                    _%id128419%_)))))
                                          (declare (not safe))
                                          (__find __tmp129763 _%ids128408%_))
                                        (let ()
                                          (values (cons 'id _%e128412%_)
                                                  _%vars128413%_))
                                        (if (let ((__tmp129764
                                                   (lambda (_%var128422%_)
                                                     (let ((__tmp129765
                                                            (car _%var128422%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e128412%_
                                                        __tmp129765)))))
                                              (declare (not safe))
                                              (__find __tmp129764
                                                      _%vars128413%_))
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Duplicate pattern variable"
                                               _%stx128326%_
                                               _%e128412%_))
                                            (let ()
                                              (values (cons 'var _%e128412%_)
                                                      (cons (cons _%e128412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth128414%_)
                    _%vars128413%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128412%_))
                              (let ()
                                (let* ((_%e128426128433%_ _%e128412%_)
                                       (_%E128428128437%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e128426128433%_))))
                                       (_%E128427128498%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e128426128433%_))
                                              (let ((_%e128429128441%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128426128433%_))))
                                                (let ((_%hd128430128444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128429128441%_)))
                                                      (_%tl128431128446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128429128441%_))))
                                                  (let* ((_%hd128449%_
                                                          _%hd128430128444%_)
                                                         (_%rest128451%_
                                                          _%tl128431128446%_))
                                                    (if '#t
                                                        (let* ((_%make-pair128466%_
                                                                (lambda (_%tag128453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd128454%_
                                 _%tl128455%_)
                          (let* ((_%hd-depth128457%_
                                  (if (eq? _%tag128453%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth128414%_ '1))
                                      _%depth128414%_))
                                 (_g129766_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur128410%_
                                     _%hd128454%_
                                     _%vars128413%_
                                     _%hd-depth128457%_))))
                            (begin
                              (let ((_g129767_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129766_)
                                           (##vector-length _g129766_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129767_ 2)))
                                    (error "Context expects 2 values"
                                           _g129767_)))
                              (let ((_%hd128459%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129766_ 0)))
                                    (_%vars128460%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129766_ 1))))
                                (let ((_g129768_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128410%_
                                          _%tl128455%_
                                          _%vars128460%_
                                          _%depth128414%_))))
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
                                    (let ((_%tl128462%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129768_ 0)))
                                          (_%vars128463%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129768_ 1))))
                                      (let ()
                                        (values (let ((__tmp129770
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd128459%_
                                                               _%tl128462%_))))
                                                  (declare (not safe))
                                                  (cons _%tag128453%_
                                                        __tmp129770))
                                                _%vars128463%_))))))))))
                       (_%e128467128474%_ _%rest128451%_)
                       (_%E128469128478%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair128466%_
                             'cons
                             _%hd128449%_
                             _%rest128451%_))))
                       (_%E128468128494%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128467128474%_))
                              (let ((_%e128470128482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e128467128474%_))))
                                (let ((_%hd128471128485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e128470128482%_)))
                                      (_%tl128472128487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e128470128482%_))))
                                  (let* ((_%rest-hd128490%_ _%hd128471128485%_)
                                         (_%rest-tl128492%_
                                          _%tl128472128487%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd128490%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128466%_
                                               'splice
                                               _%hd128449%_
                                               _%rest-tl128492%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128466%_
                                               'cons
                                               _%hd128449%_
                                               _%rest128451%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128469128478%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E128469128478%_))))))
                  (declare (not safe))
                  (_%E128468128494%_))
                (let () (declare (not safe)) (_%E128428128437%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128428128437%_))))))
                                  (declare (not safe))
                                  (_%E128427128498%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128412%_))
                                  (let () (values '(null) _%vars128413%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128412%_))
                                      (let ((_g129771_
                                             (let ((__tmp129773
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128412%_)))))
                                               (declare (not safe))
                                               (_%recur128410%_
                                                __tmp129773
                                                _%vars128413%_
                                                _%depth128414%_))))
                                        (begin
                                          (let ((_g129772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129771_)
                                                       (##vector-length
                                                        _g129771_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129772_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129772_)))
                                          (let ((_%e128504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129771_ 0)))
                                                (_%vars128505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129771_
                                                    1))))
                                            (values (cons 'vector _%e128504%_)
                                                    _%vars128505%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128412%_))
                                          (let ((_g129774_
                                                 (let ((__tmp129776
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%e128412%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%recur128410%_
                                                    __tmp129776
                                                    _%vars128413%_
                                                    _%depth128414%_))))
                                            (begin
                                              (let ((_g129775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129774_)
                                                           (##vector-length
                                                            _g129774_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129775_)))
                                              (let ((_%e128508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129774_
                                                        0)))
                                                    (_%vars128509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129774_
                                                        1))))
                                                (values (cons 'box _%e128508%_)
                                                        _%vars128509%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128412%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e128412%_)))
                _%vars128413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128326%_
                                                 _%e128412%_))))))))))))
          (let* ((_%e128336128349%_ _%stx128326%_)
                 (_%E128338128353%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128336128349%_))))
                 (_%E128337128403%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128336128349%_))
                        (let ((_%e128339128357%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128336128349%_))))
                          (let ((_%hd128340128360%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128339128357%_)))
                                (_%tl128341128362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128339128357%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128341128362%_))
                                (let ((_%e128342128365%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128341128362%_))))
                                  (let ((_%hd128343128368%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128342128365%_)))
                                        (_%tl128344128370%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128342128365%_))))
                                    (let ((_%expr128373%_ _%hd128343128368%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128344128370%_))
                                          (let ((_%e128345128375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128344128370%_))))
                                            (let ((_%hd128346128378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128345128375%_)))
                                                  (_%tl128347128380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128345128375%_))))
                                              (let* ((_%ids128383%_
                                                      _%hd128346128378%_)
                                                     (_%clauses128385%_
                                                      _%tl128347128380%_))
                                                (if '#t
                                                    (if (let ((__tmp129777
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids128383%_))))
                  (declare (not safe))
                  (not __tmp129777))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128326%_
                   _%ids128383%_))
                (if (let ((__tmp129778
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses128385%_))))
                      (declare (not safe))
                      (not __tmp129778))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128326%_))
                    (let ()
                      (let* ((_%ids128390%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids128383%_)))
                             (_%clauses128392%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses128385%_)))
                             (_%clause-ids128394%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses128392%_)))
                             (_%E128396%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target128398%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first128400%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses128392%_))
                                  _%E128396%_
                                  (car _%clause-ids128394%_))))
                        (let ((__tmp129780
                               (let ((__tmp129781
                                      (let ((__tmp129783
                                             (let ((__tmp129787
                                                    (cons (cons (cons _%E128396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129789 (cons _%target128398%_ '()))
                                    (__tmp129788
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target128398%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129789
                                 __tmp129788))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129784
                                                    (let ((__tmp129786
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings128331%_
                                                              _%target128398%_
                                                              _%ids128390%_
                                                              _%clauses128392%_
                                                              _%clause-ids128394%_
                                                              _%E128396%_)))
                                                          (__tmp129785
                                                           (cons _%first128400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr128373%_ '()))))
              (declare (not safe))
              (_%generate-body128332%_ __tmp129786 __tmp129785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129787
                                                __tmp129784)))
                                            (__tmp129782
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx128326%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129783
                                         __tmp129782))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129781)))
                              (__tmp129779
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx128326%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129780 __tmp129779))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128338128353%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128338128353%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128338128353%_)))))
                        (let () (declare (not safe)) (_%E128338128353%_))))))
            (declare (not safe))
            (_%E128337128403%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129051%_)
        (let* ((_%identifier=?129053%_ 'free-identifier=?)
               (_%unwrap-e129055%_ 'syntax-e)
               (_%wrap-e129057%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129051%_
           _%identifier=?129053%_
           _%unwrap-e129055%_
           _%wrap-e129057%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129059%_ _%identifier=?129060%_)
        (let* ((_%unwrap-e129062%_ 'syntax-e) (_%wrap-e129064%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129059%_
           _%identifier=?129060%_
           _%unwrap-e129062%_
           _%wrap-e129064%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129066%_ _%identifier=?129067%_ _%unwrap-e129068%_)
        (let ((_%wrap-e129070%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129066%_
           _%identifier=?129067%_
           _%unwrap-e129068%_
           _%wrap-e129070%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129791_
        (let ((_g129790_ (let () (declare (not safe)) (##length _g129791_))))
          (cond ((let () (declare (not safe)) (##fx= _g129790_ 1))
                 (apply (lambda (_%stx129051%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx129051%_)))
                        _g129791_))
                ((let () (declare (not safe)) (##fx= _g129790_ 2))
                 (apply (lambda (_%stx129059%_ _%identifier=?129060%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx129059%_
                             _%identifier=?129060%_)))
                        _g129791_))
                ((let () (declare (not safe)) (##fx= _g129790_ 3))
                 (apply (lambda (_%stx129066%_
                                 _%identifier=?129067%_
                                 _%unwrap-e129068%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx129066%_
                             _%identifier=?129067%_
                             _%unwrap-e129068%_)))
                        _g129791_))
                ((let () (declare (not safe)) (##fx= _g129790_ 4))
                 (apply (lambda (_%stx129072%_
                                 _%identifier=?129073%_
                                 _%unwrap-e129074%_
                                 _%wrap-e129075%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx129072%_
                             _%identifier=?129073%_
                             _%unwrap-e129074%_
                             _%wrap-e129075%_)))
                        _g129791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129791_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128323%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128323%_))
            (let ((__tmp129792
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128323%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129792 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128281%_ . _%rest128282%_)
        (let ((_%len128284%_ (length _%hd128281%_)))
          (let _%lp128286%_ ((_%rest128288%_ _%rest128282%_))
            (let* ((_%rest128289128297%_ _%rest128288%_)
                   (_%else128291128305%_ (lambda () '#!void))
                   (_%K128293128311%_
                    (lambda (_%rest128308%_ _%hd128309%_)
                      (if (let ((__tmp129793 (length _%hd128309%_)))
                            (declare (not safe))
                            (##fx= _%len128284%_ __tmp129793))
                          (let ()
                            (declare (not safe))
                            (_%lp128286%_ _%rest128308%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128309%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128289128297%_))
                  (let ((_%hd128294128314%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128289128297%_)))
                        (_%tl128295128316%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128289128297%_))))
                    (let* ((_%hd128319%_ _%hd128294128314%_)
                           (_%rest128321%_ _%tl128295128316%_))
                      (declare (not safe))
                      (_%K128293128311%_ _%rest128321%_ _%hd128319%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128236%_ _%n128237%_)
        (let _%lp128239%_ ((_%rest128241%_ _%stx128236%_) (_%r128242%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128241%_))
              (let* ((_%g128243128250%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128241%_)))
                     (_%E128245128254%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128243128250%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128246128260%_
                      (lambda (_%rest128257%_ _%hd128258%_)
                        (let ((__tmp129794 (cons _%hd128258%_ _%r128242%_)))
                          (declare (not safe))
                          (_%lp128239%_ _%rest128257%_ __tmp129794)))))
                (if (let () (declare (not safe)) (##pair? _%g128243128250%_))
                    (let ((_%hd128247128263%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128243128250%_)))
                          (_%tl128248128265%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128243128250%_))))
                      (let* ((_%hd128268%_ _%hd128247128263%_)
                             (_%rest128270%_ _%tl128248128265%_))
                        (declare (not safe))
                        (_%K128246128260%_ _%rest128270%_ _%hd128268%_)))
                    (let () (declare (not safe)) (_%E128245128254%_))))
              (let _%lp128272%_ ((_%n128274%_ _%n128237%_)
                                 (_%l128275%_ _%r128242%_)
                                 (_%r128276%_ _%rest128241%_))
                (if (let () (declare (not safe)) (null? _%l128275%_))
                    (let () (values _%l128275%_ _%r128276%_))
                    (if (fxpositive? _%n128274%_)
                        (let ((__tmp129797
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%n128274%_ '1)))
                              (__tmp129796 (cdr _%l128275%_))
                              (__tmp129795
                               (cons (car _%l128275%_) _%r128276%_)))
                          (declare (not safe))
                          (_%lp128272%_ __tmp129797 __tmp129796 __tmp129795))
                        (let ()
                          (values (reverse _%l128275%_) _%r128276%_)))))))))))
