(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712269046)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129628 (list gx#expander::t))
            (__tmp129627 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129628
         '(id depth)
         __tmp129627
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129624%_
        (apply make-instance gx#syntax-pattern::t _%$args129624%_)))
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
      (lambda (_%self129610%_ _%stx129611%_)
        (let ((_%self129614%_ _%self129610%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129611%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129076%_)
        (letrec ((_%generate129078%_
                  (lambda (_%e129318%_)
                    (letrec ((_%BUG129320%_
                              (lambda (_%q129485%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129076%_
                                         _%e129318%_
                                         _%q129485%_))))
                             (_%local-pattern-e129321%_
                              (lambda (_%pat129483%_)
                                (let ((__tmp129629
                                       (##structure-ref
                                        _%pat129483%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129629))))
                             (_%getvar129322%_
                              (lambda (_%q129480%_ _%vars129481%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129480%_
                                   _%vars129481%_
                                   _%BUG129320%_))))
                             (_%getarg129323%_
                              (lambda (_%arg129446%_ _%vars129447%_)
                                (let* ((_%arg129448129455%_ _%arg129446%_)
                                       (_%E129450129459%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129448129455%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129451129468%_
                                        (lambda (_%e129462%_ _%tag129463%_)
                                          (let ((_%$e129465%_ _%tag129463%_))
                                            (if (eq? 'ref _%$e129465%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar129322%_
                                                   _%e129462%_
                                                   _%vars129447%_))
                                                (if (eq? 'pattern _%$e129465%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e129321%_
                                                       _%e129462%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG129320%_
                                                       _%arg129446%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129448129455%_))
                                      (let ((_%hd129452129471%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129448129455%_)))
                                            (_%tl129453129473%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129448129455%_))))
                                        (let* ((_%tag129476%_
                                                _%hd129452129471%_)
                                               (_%e129478%_
                                                _%tl129453129473%_))
                                          (declare (not safe))
                                          (_%K129451129468%_
                                           _%e129478%_
                                           _%tag129476%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E129450129459%_)))))))
                      (let _%recur129325%_ ((_%e129327%_ _%e129318%_)
                                            (_%vars129328%_ '()))
                        (let* ((_%e129329129336%_ _%e129327%_)
                               (_%E129331129340%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129329129336%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129332129434%_
                                (lambda (_%body129343%_ _%tag129344%_)
                                  (let ((_%$e129346%_ _%tag129344%_))
                                    (if (eq? 'datum _%$e129346%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129343%_))
                                        (if (eq? 'term _%$e129346%_)
                                            (let ((_%id129349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129343%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129349%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129349%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%marks129352%_))
                                                        (let ((__tmp129630
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129343%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129630))
                (let ((__tmp129632
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129343%_)))
                      (__tmp129631
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129343%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129632
                   __tmp129631
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129349%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129343%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%BUG129320%_
                                                         _%e129327%_)))))
                                            (if (eq? 'pattern _%$e129346%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e129321%_
                                                   _%body129343%_))
                                                (if (eq? 'ref _%$e129346%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar129322%_
                                                       _%body129343%_
                                                       _%vars129328%_))
                                                    (if (eq? 'cons
                                                             _%$e129346%_)
                                                        (let ((__tmp129635
                                                               (let ((__tmp129636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body129343%_)))
                         (declare (not safe))
                         (_%recur129325%_ __tmp129636 _%vars129328%_)))
                      (__tmp129633
                       (let ((__tmp129634 (cdr _%body129343%_)))
                         (declare (not safe))
                         (_%recur129325%_ __tmp129634 _%vars129328%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129635 __tmp129633))
                (if (eq? 'vector _%$e129346%_)
                    (let ((__tmp129637
                           (let ()
                             (declare (not safe))
                             (_%recur129325%_ _%body129343%_ _%vars129328%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129637))
                    (if (eq? 'box _%$e129346%_)
                        (let ((__tmp129638
                               (let ()
                                 (declare (not safe))
                                 (_%recur129325%_
                                  _%body129343%_
                                  _%vars129328%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129638))
                        (if (eq? 'splice _%$e129346%_)
                            (let* ((_%body129355129366%_ _%body129343%_)
                                   (_%E129357129370%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129355129366%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129358129408%_
                                    (lambda (_%args129373%_
                                             _%iv129374%_
                                             _%hd129375%_
                                             _%depth129376%_)
                                      (let* ((_%targets129382%_
                                              (map (lambda (_%g129377129379%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg129323%_
                                                        _%g129377129379%_
                                                        _%vars129328%_)))
                                                   _%args129373%_))
                                             (_%fold-in129384%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129373%_)))
                                             (_%fold-out129386%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129388%_
                                              (let ((__tmp129639
                                                     (cons _%fold-out129386%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129639
                                                 _%fold-in129384%_)))
                                             (_%lambda-body129405%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129376%_ '1))
                                                  (let ((_%r-args129396%_
                                                         (map (lambda (_%arg129390%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129390%_)))
                      _%args129373%_))
                (_%r-vars129397%_
                 (let ((__tmp129640
                        (lambda (_%arg129392%_ _%var129393%_ _%r129394%_)
                          (cons (cons (cdr _%arg129392%_) _%var129393%_)
                                _%r129394%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129640
                    _%vars129328%_
                    _%args129373%_
                    _%fold-in129384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129641
                                                           (let ((__tmp129642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129646
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth129376%_ '1)))
                                (__tmp129643
                                 (let ((__tmp129644
                                        (let ((__tmp129645
                                               (cons 'var _%fold-out129386%_)))
                                          (declare (not safe))
                                          (cons __tmp129645
                                                _%r-args129396%_))))
                                   (declare (not safe))
                                   (cons _%hd129375%_ __tmp129644))))
                            (declare (not safe))
                            (cons __tmp129646 __tmp129643))))
                     (declare (not safe))
                     (cons 'splice __tmp129642))))
              (declare (not safe))
              (_%recur129325%_ __tmp129641 _%r-vars129397%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars129403%_
                                                          (let ((__tmp129647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129399%_ _%var129400%_ _%r129401%_)
                           (cons (cons (cdr _%arg129399%_) _%var129400%_)
                                 _%r129401%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129647
                     _%vars129328%_
                     _%args129373%_
                     _%fold-in129384%_)))
                 (__tmp129648
                  (let ()
                    (declare (not safe))
                    (_%recur129325%_ _%hd129375%_ _%hd-vars129403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129648
                                                     _%fold-out129386%_)))))
                                        (let ((__tmp129652
                                               (if (let ((__tmp129653
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129382%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129653 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129382%_))
                                                   '#!void))
                                              (__tmp129649
                                               (let ((__tmp129651
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129388%_
                                                         _%lambda-body129405%_)))
                                                     (__tmp129650
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur129325%_
                                                         _%iv129374%_
                                                         _%vars129328%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129651
                                                  __tmp129650
                                                  _%targets129382%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129652
                                           __tmp129649))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129355129366%_))
                                  (let ((_%hd129359129411%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129355129366%_)))
                                        (_%tl129360129413%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129355129366%_))))
                                    (let ((_%depth129416%_ _%hd129359129411%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129360129413%_))
                                          (let ((_%hd129361129418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129360129413%_)))
                                                (_%tl129362129420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129360129413%_))))
                                            (let ((_%hd129423%_
                                                   _%hd129361129418%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129362129420%_))
                                                  (let ((_%hd129363129425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129362129420%_)))
                                                        (_%tl129364129427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129362129420%_))))
                                                    (let* ((_%iv129430%_
                                                            _%hd129363129425%_)
                                                           (_%args129432%_
                                                            _%tl129364129427%_))
                                                      (declare (not safe))
                                                      (_%K129358129408%_
                                                       _%args129432%_
                                                       _%iv129430%_
                                                       _%hd129423%_
                                                       _%depth129416%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E129357129370%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129357129370%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129357129370%_))))
                            (if (eq? 'var _%$e129346%_)
                                _%body129343%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG129320%_ _%e129327%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129329129336%_))
                              (let ((_%hd129333129437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129329129336%_)))
                                    (_%tl129334129439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129329129336%_))))
                                (let* ((_%tag129442%_ _%hd129333129437%_)
                                       (_%body129444%_ _%tl129334129439%_))
                                  (declare (not safe))
                                  (_%K129332129434%_
                                   _%body129444%_
                                   _%tag129442%_)))
                              (let ()
                                (declare (not safe))
                                (_%E129331129340%_))))))))
                 (_%parse129079%_
                  (lambda (_%e129120%_)
                    (letrec ((_%make-cons129122%_
                              (lambda (_%hd129310%_ _%tl129311%_)
                                (let ((_g129654_ _%hd129310%_)
                                      (_g129656_ _%tl129311%_))
                                  (begin
                                    (let ((_g129655_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129654_)
                                                 (##vector-length _g129654_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129655_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129655_)))
                                    (let ((_g129657_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129656_)
                                                 (##vector-length _g129656_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129657_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129657_)))
                                    (let ((_%hd-e129313%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129654_ 0)))
                                          (_%hd-vars129314%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129654_ 1))))
                                      (let ((_%tl-e129315%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129656_ 0)))
                                            (_%tl-vars129316%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129656_ 1))))
                                        (values (let ((__tmp129658
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e129313%_
                                                               _%tl-e129315%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129658))
                                                (append _%hd-vars129314%_
                                                        _%tl-vars129316%_))))))))
                             (_%make-splice129123%_
                              (lambda (_%where129246%_
                                       _%depth129247%_
                                       _%hd129248%_
                                       _%tl129249%_)
                                (let ((_g129659_ _%hd129248%_)
                                      (_g129661_ _%tl129249%_))
                                  (begin
                                    (let ((_g129660_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129659_)
                                                 (##vector-length _g129659_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129660_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129660_)))
                                    (let ((_g129662_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129661_)
                                                 (##vector-length _g129661_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129662_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129662_)))
                                    (let ((_%hd-e129251%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129659_ 0)))
                                          (_%hd-vars129252%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129659_ 1))))
                                      (let ((_%tl-e129253%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129661_ 0)))
                                            (_%tl-vars129254%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129661_ 1))))
                                        (let _%lp129256%_ ((_%rest129258%_
                                                            _%hd-vars129252%_)
                                                           (_%targets129259%_
                                                            '())
                                                           (_%vars129260%_
                                                            _%tl-vars129254%_))
                                          (let* ((_%rest129261129271%_
                                                  _%rest129258%_)
                                                 (_%else129263129279%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets129259%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129076%_
                                                           _%where129246%_))
                                                        (values (let ((__tmp129663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129664
                                      (let ((__tmp129665
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e129253%_
                                                     _%targets129259%_))))
                                        (declare (not safe))
                                        (cons _%hd-e129251%_ __tmp129665))))
                                 (declare (not safe))
                                 (cons _%depth129247%_ __tmp129664))))
                          (declare (not safe))
                          (cons 'splice __tmp129663))
                        _%vars129260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129265129291%_
                                                  (lambda (_%rest129282%_
                                                           _%hd-pat129283%_
                                                           _%hd-depth*129284%_)
                                                    (let ((_%hd-depth129286%_
                                                           (fx- _%hd-depth*129284%_
                                                                _%depth129247%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129286%_))
                                                          (let ((__tmp129667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _%hd-pat129283%_) _%targets129259%_))
                        (__tmp129666
                         (cons (cons _%hd-depth129286%_ _%hd-pat129283%_)
                               _%vars129260%_)))
                    (declare (not safe))
                    (_%lp129256%_ _%rest129282%_ __tmp129667 __tmp129666))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129286%_))
                      (let ((__tmp129668
                             (cons (cons 'pattern _%hd-pat129283%_)
                                   _%targets129259%_)))
                        (declare (not safe))
                        (_%lp129256%_
                         _%rest129282%_
                         __tmp129668
                         _%vars129260%_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129076%_
                         _%where129246%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129261129271%_))
                                                (let ((_%hd129266129294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129261129271%_)))
                                                      (_%tl129267129296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129261129271%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129266129294%_))
                                                      (let ((_%hd129268129299%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129266129294%_)))
                    (_%tl129269129301%_
                     (let () (declare (not safe)) (##cdr _%hd129266129294%_))))
                (let* ((_%hd-depth*129304%_ _%hd129268129299%_)
                       (_%hd-pat129306%_ _%tl129269129301%_)
                       (_%rest129308%_ _%tl129267129296%_))
                  (declare (not safe))
                  (_%K129265129291%_
                   _%rest129308%_
                   _%hd-pat129306%_
                   _%hd-depth*129304%_)))
              (let () (declare (not safe)) (_%else129263129279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else129263129279%_)))))))))))
                             (_%recur129124%_
                              (lambda (_%e129129%_ _%is-e?129130%_)
                                (if (_%is-e?129130%_ _%e129129%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129076%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e129129%_))
                                        (let ()
                                          (let* ((_%pat129134%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e129129%_)))
                                                 (_%depth129136%_
                                                  (##structure-ref
                                                   _%pat129134%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth129136%_)
                                                (values (cons 'ref
                                                              _%pat129134%_)
                                                        (cons (cons _%depth129136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat129134%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat129134%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129129%_))
                                            (let ()
                                              (values (cons 'term _%e129129%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129129%_))
                                                (let ()
                                                  (let* ((_%e129140129147%_
                                                          _%e129129%_)
                                                         (_%E129142129151%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e129140129147%_))))
                                                         (_%E129141129233%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e129140129147%_))
                        (let ((_%e129143129155%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129140129147%_))))
                          (let ((_%hd129144129158%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129143129155%_)))
                                (_%tl129145129160%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129143129155%_))))
                            (let* ((_%hd129163%_ _%hd129144129158%_)
                                   (_%rest129165%_ _%tl129145129160%_))
                              (if '#t
                                  (if (_%is-e?129130%_ _%hd129163%_)
                                      (let* ((_%e129166129173%_ _%rest129165%_)
                                             (_%E129168129177%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx129076%_
                                                   _%e129129%_))))
                                             (_%E129167129191%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129166129173%_))
                                                    (let ((_%e129169129181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129166129173%_))))
                                                      (let ((_%hd129170129184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129169129181%_)))
                    (_%tl129171129186%_
                     (let () (declare (not safe)) (##cdr _%e129169129181%_))))
                (let ((_%rest129189%_ _%hd129170129184%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl129171129186%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur129124%_ _%rest129189%_ false))
                          (let () (declare (not safe)) (_%E129168129177%_)))
                      (let () (declare (not safe)) (_%E129168129177%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E129168129177%_))))))
                                        (declare (not safe))
                                        (_%E129167129191%_))
                                      (let _%lp129195%_ ((_%rest129197%_
                                                          _%rest129165%_)
                                                         (_%depth129198%_ '0))
                                        (let* ((_%e129199129206%_
                                                _%rest129197%_)
                                               (_%E129201129210%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth129198%_)
                                                      (let ((__tmp129670
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur129124%_ _%hd129163%_ _%is-e?129130%_)))
                    (__tmp129669
                     (let ()
                       (declare (not safe))
                       (_%recur129124%_ _%rest129197%_ _%is-e?129130%_))))
                (declare (not safe))
                (_%make-splice129123%_
                 _%e129129%_
                 _%depth129198%_
                 __tmp129670
                 __tmp129669))
              (let ((__tmp129672
                     (let ()
                       (declare (not safe))
                       (_%recur129124%_ _%hd129163%_ _%is-e?129130%_)))
                    (__tmp129671
                     (let ()
                       (declare (not safe))
                       (_%recur129124%_ _%rest129197%_ _%is-e?129130%_))))
                (declare (not safe))
                (_%make-cons129122%_ __tmp129672 __tmp129671)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129200129229%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e129199129206%_))
                                                      (let ((_%e129202129214%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e129199129206%_))))
                (let ((_%hd129203129217%_
                       (let () (declare (not safe)) (##car _%e129202129214%_)))
                      (_%tl129204129219%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e129202129214%_))))
                  (let* ((_%rest-hd129222%_ _%hd129203129217%_)
                         (_%rest-tl129224%_ _%tl129204129219%_))
                    (if '#t
                        (if (_%is-e?129130%_ _%rest-hd129222%_)
                            (let ((__tmp129673
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%depth129198%_ '1))))
                              (declare (not safe))
                              (_%lp129195%_ _%rest-tl129224%_ __tmp129673))
                            (if (fxpositive? _%depth129198%_)
                                (let ((__tmp129675
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129124%_
                                          _%hd129163%_
                                          _%is-e?129130%_)))
                                      (__tmp129674
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129124%_
                                          _%rest129197%_
                                          _%is-e?129130%_))))
                                  (declare (not safe))
                                  (_%make-splice129123%_
                                   _%e129129%_
                                   _%depth129198%_
                                   __tmp129675
                                   __tmp129674))
                                (let ((__tmp129677
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129124%_
                                          _%hd129163%_
                                          _%is-e?129130%_)))
                                      (__tmp129676
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129124%_
                                          _%rest129197%_
                                          _%is-e?129130%_))))
                                  (declare (not safe))
                                  (_%make-cons129122%_
                                   __tmp129677
                                   __tmp129676))))
                        (let () (declare (not safe)) (_%E129201129210%_))))))
              (let () (declare (not safe)) (_%E129201129210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%E129200129229%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129142129151%_))))))
                        (let () (declare (not safe)) (_%E129142129151%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%E129141129233%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129129%_))
                                                    (let ((_g129678_
                                                           (let ((__tmp129680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _%e129129%_)))))
                     (declare (not safe))
                     (_%recur129124%_ __tmp129680 _%is-e?129130%_))))
              (begin
                (let ((_g129679_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129678_)
                             (##vector-length _g129678_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129679_ 2)))
                      (error "Context expects 2 values" _g129679_)))
                (let ((_%e129238%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129678_ 0)))
                      (_%vars129239%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129678_ 1))))
                  (values (cons 'vector _%e129238%_) _%vars129239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129129%_))
                                                        (let ((_g129681_
                                                               (let ((__tmp129683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _%e129129%_)))))
                         (declare (not safe))
                         (_%recur129124%_ __tmp129683 _%is-e?129130%_))))
                  (begin
                    (let ((_g129682_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129681_)
                                 (##vector-length _g129681_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129682_ 2)))
                          (error "Context expects 2 values" _g129682_)))
                    (let ((_%e129242%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129681_ 0)))
                          (_%vars129243%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129681_ 1))))
                      (values (cons 'box _%e129242%_) _%vars129243%_))))
                (let () (values (cons 'datum _%e129129%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129684_
                             (let ()
                               (declare (not safe))
                               (_%recur129124%_ _%e129120%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129685_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129684_)
                                       (##vector-length _g129684_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129685_ 2)))
                                (error "Context expects 2 values" _g129685_)))
                          (let ((_%tree129126%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129684_ 0)))
                                (_%vars129127%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129684_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars129127%_))
                                _%tree129126%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129076%_
                                   _%vars129127%_))))))))))
          (let* ((_%e129080129090%_ _%stx129076%_)
                 (_%E129082129094%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129076%_))))
                 (_%E129081129116%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129080129090%_))
                        (let ((_%e129083129098%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129080129090%_))))
                          (let ((_%hd129084129101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129083129098%_)))
                                (_%tl129085129103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129083129098%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129085129103%_))
                                (let ((_%e129086129106%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129085129103%_))))
                                  (let ((_%hd129087129109%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129086129106%_)))
                                        (_%tl129088129111%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129086129106%_))))
                                    (let ((_%form129114%_ _%hd129087129109%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129088129111%_))
                                          (if '#t
                                              (let ((__tmp129687
                                                     (let ((__tmp129688
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse129079%_
                                                               _%form129114%_))))
                                                       (declare (not safe))
                                                       (_%generate129078%_
                                                        __tmp129688)))
                                                    (__tmp129686
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129076%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129687
                                                 __tmp129686))
                                              (let ()
                                                (declare (not safe))
                                                (_%E129082129094%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129082129094%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E129082129094%_)))))
                        (let () (declare (not safe)) (_%E129082129094%_))))))
            (declare (not safe))
            (_%E129081129116%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128325%_
               _%identifier=?128326%_
               _%unwrap-e128327%_
               _%wrap-e128328%_)
        (letrec ((_%generate-bindings128330%_
                  (lambda (_%target128940%_
                           _%ids128941%_
                           _%clauses128942%_
                           _%clause-ids128943%_
                           _%E128944%_)
                    (letrec ((_%generate1128946%_
                              (lambda (_%clause129043%_
                                       _%clause-id129044%_
                                       _%E129045%_)
                                (cons (cons _%clause-id129044%_ '())
                                      (cons (let ((__tmp129690
                                                   (cons _%target128940%_ '()))
                                                  (__tmp129689
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause128332%_
                                                      _%target128940%_
                                                      _%ids128941%_
                                                      _%clause129043%_
                                                      _%E129045%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129690
                                               __tmp129689))
                                            '())))))
                      (let _%lp128948%_ ((_%rest128950%_ _%clauses128942%_)
                                         (_%rest-ids128951%_
                                          _%clause-ids128943%_)
                                         (_%bindings128952%_ '()))
                        (let* ((_%rest128953128961%_ _%rest128950%_)
                               (_%else128955128969%_
                                (lambda () _%bindings128952%_))
                               (_%K128957129031%_
                                (lambda (_%rest128972%_ _%clause128973%_)
                                  (let* ((_%rest-ids128974128981%_
                                          _%rest-ids128951%_)
                                         (_%E128976128985%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids128974128981%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K128977129019%_
                                          (lambda (_%rest-ids128988%_
                                                   _%clause-id128989%_)
                                            (let* ((_%rest-ids128990128998%_
                                                    _%rest-ids128988%_)
                                                   (_%else128992129006%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128946%_
                                                               _%clause128973%_
                                                               _%clause-id128989%_
                                                               _%E128944%_))
                                                            _%bindings128952%_)))
                                                   (_%K128994129011%_
                                                    (lambda (_%next-clause-id129009%_)
                                                      (let ((__tmp129691
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128946%_
                              _%clause128973%_
                              _%clause-id128989%_
                              _%next-clause-id129009%_))
                           _%bindings128952%_)))
                (declare (not safe))
                (_%lp128948%_
                 _%rest128972%_
                 _%rest-ids128988%_
                 __tmp129691)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids128990128998%_))
                                                  (let* ((_%hd128995129014%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids128990128998%_)))
                                                         (_%next-clause-id129017%_
                                                          _%hd128995129014%_))
                                                    (declare (not safe))
                                                    (_%K128994129011%_
                                                     _%next-clause-id129017%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else128992129006%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids128974128981%_))
                                        (let ((_%hd128978129022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids128974128981%_)))
                                              (_%tl128979129024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids128974128981%_))))
                                          (let* ((_%clause-id129027%_
                                                  _%hd128978129022%_)
                                                 (_%rest-ids129029%_
                                                  _%tl128979129024%_))
                                            (declare (not safe))
                                            (_%K128977129019%_
                                             _%rest-ids129029%_
                                             _%clause-id129027%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128976128985%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128953128961%_))
                              (let ((_%hd128958129034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128953128961%_)))
                                    (_%tl128959129036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128953128961%_))))
                                (let* ((_%clause129039%_ _%hd128958129034%_)
                                       (_%rest129041%_ _%tl128959129036%_))
                                  (declare (not safe))
                                  (_%K128957129031%_
                                   _%rest129041%_
                                   _%clause129039%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128955128969%_))))))))
                 (_%generate-body128331%_
                  (lambda (_%bindings128900%_ _%body128901%_)
                    (let _%recur128903%_ ((_%rest128905%_ _%bindings128900%_))
                      (let* ((_%rest128906128914%_ _%rest128905%_)
                             (_%else128908128922%_ (lambda () _%body128901%_))
                             (_%K128910128928%_
                              (lambda (_%rest128925%_ _%hd128926%_)
                                (let ((__tmp129693 (cons _%hd128926%_ '()))
                                      (__tmp129692
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128903%_ _%rest128925%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129693
                                   __tmp129692)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128906128914%_))
                            (let ((_%hd128911128931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128906128914%_)))
                                  (_%tl128912128933%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128906128914%_))))
                              (let* ((_%hd128936%_ _%hd128911128931%_)
                                     (_%rest128938%_ _%tl128912128933%_))
                                (declare (not safe))
                                (_%K128910128928%_
                                 _%rest128938%_
                                 _%hd128936%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128908128922%_)))))))
                 (_%generate-clause128332%_
                  (lambda (_%target128763%_
                           _%ids128764%_
                           _%clause128765%_
                           _%E128766%_)
                    (letrec ((_%generate1128768%_
                              (lambda (_%hd128855%_
                                       _%fender128856%_
                                       _%body128857%_)
                                (let ((_g129694_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause128334%_
                                          _%hd128855%_
                                          _%ids128764%_))))
                                  (begin
                                    (let ((_g129695_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129694_)
                                                 (##vector-length _g129694_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129695_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129695_)))
                                    (let ((_%e128859%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129694_ 0)))
                                          (_%mvars128860%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129694_ 1))))
                                      (let* ((_%pvars128862%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128860%_))))
                                             (_%E128864%_
                                              (cons _%E128766%_
                                                    (cons _%target128763%_
                                                          '())))
                                             (_%K128897%_
                                              (let ((__tmp129696
                                                     (let ((__tmp129698
                                                            (map (lambda (_%mvar128866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128867%_)
                           (let* ((_%mvar128868128875%_ _%mvar128866%_)
                                  (_%E128870128879%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128868128875%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128871128885%_
                                   (lambda (_%depth128882%_ _%id128883%_)
                                     (cons _%id128883%_
                                           (cons (let ((__tmp129700
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128883%_)))
                                                       (__tmp129699
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128867%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129700
                                                    __tmp129699
                                                    _%depth128882%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128868128875%_))
                                 (let ((_%hd128872128888%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128868128875%_)))
                                       (_%tl128873128890%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128868128875%_))))
                                   (let* ((_%id128893%_ _%hd128872128888%_)
                                          (_%depth128895%_ _%tl128873128890%_))
                                     (declare (not safe))
                                     (_%K128871128885%_
                                      _%depth128895%_
                                      _%id128893%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128870128879%_)))))
                         _%mvars128860%_
                         _%pvars128862%_))
                   (__tmp129697
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128856%_ '#t))
                        _%body128857%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128856%_
                           _%body128857%_
                           _%E128864%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129698 __tmp129697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128862%_
                                                 __tmp129696))))
                                        (declare (not safe))
                                        (_%generate-match128333%_
                                         _%hd128855%_
                                         _%target128763%_
                                         _%e128859%_
                                         _%mvars128860%_
                                         _%K128897%_
                                         _%E128864%_))))))))
                      (let* ((_%e128769128789%_ _%clause128765%_)
                             (_%E128778128793%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128769128789%_))))
                             (_%E128771128827%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128769128789%_))
                                    (let ((_%e128779128797%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128769128789%_))))
                                      (let ((_%hd128780128800%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128779128797%_)))
                                            (_%tl128781128802%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128779128797%_))))
                                        (let ((_%hd128805%_
                                               _%hd128780128800%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128781128802%_))
                                              (let ((_%e128782128807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128781128802%_))))
                                                (let ((_%hd128783128810%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128782128807%_)))
                                                      (_%tl128784128812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128782128807%_))))
                                                  (let ((_%fender128815%_
                                                         _%hd128783128810%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128784128812%_))
                                                        (let ((_%e128785128817%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128784128812%_))))
                  (let ((_%hd128786128820%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128785128817%_)))
                        (_%tl128787128822%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128785128817%_))))
                    (let ((_%body128825%_ _%hd128786128820%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128787128822%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128768%_
                                 _%hd128805%_
                                 _%fender128815%_
                                 _%body128825%_))
                              (let ()
                                (declare (not safe))
                                (_%E128778128793%_)))
                          (let () (declare (not safe)) (_%E128778128793%_))))))
                (let () (declare (not safe)) (_%E128778128793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128778128793%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128778128793%_)))))
                             (_%E128770128851%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128769128789%_))
                                    (let ((_%e128772128831%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128769128789%_))))
                                      (let ((_%hd128773128834%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128772128831%_)))
                                            (_%tl128774128836%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128772128831%_))))
                                        (let ((_%hd128839%_
                                               _%hd128773128834%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128774128836%_))
                                              (let ((_%e128775128841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128774128836%_))))
                                                (let ((_%hd128776128844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128775128841%_)))
                                                      (_%tl128777128846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128775128841%_))))
                                                  (let ((_%body128849%_
                                                         _%hd128776128844%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128777128846%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128768%_
                                                               _%hd128839%_
                                                               '#t
                                                               _%body128849%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128771128827%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128771128827%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128771128827%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128771128827%_))))))
                        (declare (not safe))
                        (_%E128770128851%_)))))
                 (_%generate-match128333%_
                  (lambda (_%where128512%_
                           _%target128513%_
                           _%hd128514%_
                           _%mvars128515%_
                           _%K128516%_
                           _%E128517%_)
                    (letrec ((_%BUG128519%_
                              (lambda (_%q128761%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128325%_
                                         _%hd128514%_
                                         _%q128761%_))))
                             (_%recur128520%_
                              (lambda (_%e128611%_
                                       _%vars128612%_
                                       _%target128613%_
                                       _%E128614%_
                                       _%k128615%_)
                                (let* ((_%e128616128623%_ _%e128611%_)
                                       (_%E128618128627%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128616128623%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128619128749%_
                                        (lambda (_%body128630%_ _%tag128631%_)
                                          (let ((_%$e128633%_ _%tag128631%_))
                                            (if (eq? 'any _%$e128633%_)
                                                (_%k128615%_ _%vars128612%_)
                                                (if (eq? 'id _%$e128633%_)
                                                    (let ((__tmp129705
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128613%_)))
                                                          (__tmp129701
                                                           (let ((__tmp129703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129704
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128328%_
                                    _%body128630%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128326%_
                             __tmp129704
                             _%target128613%_)))
                         (__tmp129702 (_%k128615%_ _%vars128612%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129703 __tmp129702 _%E128614%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129705 __tmp129701 _%E128614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128633%_)
                                                        (_%k128615%_
                                                         (cons (cons _%body128630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128613%_)
                       _%vars128612%_))
                (if (eq? 'cons _%$e128633%_)
                    (let ((_%$e128636%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128637%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128638%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129712
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128613%_)))
                            (__tmp129706
                             (let ((__tmp129711
                                    (cons (cons (cons _%$e128636%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128327%_
                                                         _%target128613%_))
                                                      '()))
                                          '()))
                                   (__tmp129707
                                    (let ((__tmp129710
                                           (cons (cons (cons _%$hd128637%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128636%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128636%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129708
                                           (let* ((_%body128639128646%_
                                                   _%body128630%_)
                                                  (_%E128641128650%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128639128646%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128642128658%_
                                                   (lambda (_%tl128653%_
                                                            _%hd128654%_)
                                                     (let ((__tmp129709
                                                            (lambda (_%vars128656%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128520%_
                         _%tl128653%_
                         _%vars128656%_
                         _%$tl128638%_
                         _%E128614%_
                         _%k128615%_)))))
               (declare (not safe))
               (_%recur128520%_
                _%hd128654%_
                _%vars128612%_
                _%$hd128637%_
                _%E128614%_
                __tmp129709)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128639128646%_))
                                                 (let ((_%hd128643128661%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128639128646%_)))
                                                       (_%tl128644128663%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128639128646%_))))
                                                   (let* ((_%hd128666%_
                                                           _%hd128643128661%_)
                                                          (_%tl128668%_
                                                           _%tl128644128663%_))
                                                     (declare (not safe))
                                                     (_%K128642128658%_
                                                      _%tl128668%_
                                                      _%hd128666%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128641128650%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129710
                                       __tmp129708))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129711
                                __tmp129707))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129712
                         __tmp129706
                         _%E128614%_)))
                    (if (eq? 'splice _%$e128633%_)
                        (let* ((_%body128669128676%_ _%body128630%_)
                               (_%E128671128680%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128669128676%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128672128731%_
                                (lambda (_%tl128683%_ _%hd128684%_)
                                  (let* ((_%rlen128686%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128521%_
                                             _%tl128683%_)))
                                         (_%$target128688%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128690%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128692%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128694%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128696%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128698%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128700%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128702%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128522%_
                                             _%hd128684%_)))
                                         (_%lvars128704%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128702%_)))
                                         (_%tlvars128706%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128702%_)))
                                         (_%linit128710%_
                                          (map (lambda (_%var128708%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128704%_)))
                                    (letrec ((_%make-loop128713%_
                                              (lambda (_%vars128717%_)
                                                (let ((__tmp129715
                                                       (cons (cons (cons _%$lp128694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129731
                                        (cons _%$hd128690%_ _%lvars128704%_))
                                       (__tmp129716
                                        (let ((__tmp129730
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128690%_)))
                                              (__tmp129721
                                               (let ((__tmp129729
                                                      (cons (cons (cons _%$lp-e128696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128327%_
                                   _%$hd128690%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129722
                                                      (let ((__tmp129728
                                                             (cons (cons (cons _%$lp-hd128698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128696%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128700%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128696%_))
                                             '()))
                                 '())))
                    (__tmp129723
                     (let ((__tmp129724
                            (lambda (_%hdvars128719%_)
                              (let ((__tmp129725
                                     (let ((__tmp129726
                                            (map (lambda (_%svar128721%_
                                                          _%lvar128722%_)
                                                   (let ((__tmp129727
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128721%_
                                                             _%hdvars128719%_
                                                             _%BUG128519%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129727
                                                      _%lvar128722%_)))
                                                 _%svars128702%_
                                                 _%lvars128704%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128700%_ __tmp129726))))
                                (declare (not safe))
                                (cons _%$lp128694%_ __tmp129725)))))
                       (declare (not safe))
                       (_%recur128520%_
                        _%hd128684%_
                        '()
                        _%$lp-hd128698%_
                        _%E128614%_
                        __tmp129724))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129728 __tmp129723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129729
                                                  __tmp129722)))
                                              (__tmp129717
                                               (let ((__tmp129720
                                                      (map (lambda (_%lvar128724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128725%_)
                     (cons (cons _%tlvar128725%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128724%_))
                                 '())))
                   _%lvars128704%_
                   _%tlvars128706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129718
                                                      (_%k128615%_
                                                       (let ((__tmp129719
                                                              (lambda (_%svar128727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128728%_
                               _%r128729%_)
                        (cons (cons _%svar128727%_ _%tlvar128728%_)
                              _%r128729%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129719
                  _%vars128717%_
                  _%svars128702%_
                  _%tlvars128706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129720
                                                  __tmp129718))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129730
                                           __tmp129721
                                           __tmp129717))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129731
                                    __tmp129716))
                                 '()))
                     '()))
              (__tmp129713
               (let ((__tmp129714
                      (let ()
                        (declare (not safe))
                        (cons _%$target128688%_ _%linit128710%_))))
                 (declare (not safe))
                 (cons _%$lp128694%_ __tmp129714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129715
                                                   __tmp129713)))))
                                      (let ((_%body128715%_
                                             (let ((__tmp129733
                                                    (cons (cons (cons _%$target128688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128692%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128613%_
                                 _%rlen128686%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129732
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128520%_
                                                       _%tl128683%_
                                                       _%vars128612%_
                                                       _%$tl128692%_
                                                       _%E128614%_
                                                       _%make-loop128713%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129733
                                                __tmp129732))))
                                        (let ((__tmp129737
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128613%_)))
                                              (__tmp129734
                                               (if (zero? _%rlen128686%_)
                                                   _%body128715%_
                                                   (let ((__tmp129735
                                                          (let ((__tmp129736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128613%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129736 _%rlen128686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129735
                                                      _%body128715%_
                                                      _%E128614%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129737
                                           __tmp129734
                                           _%E128614%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128669128676%_))
                              (let ((_%hd128673128734%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128669128676%_)))
                                    (_%tl128674128736%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128669128676%_))))
                                (let* ((_%hd128739%_ _%hd128673128734%_)
                                       (_%tl128741%_ _%tl128674128736%_))
                                  (declare (not safe))
                                  (_%K128672128731%_
                                   _%tl128741%_
                                   _%hd128739%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128671128680%_))))
                        (if (eq? 'null _%$e128633%_)
                            (let ((__tmp129739
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128613%_)))
                                  (__tmp129738 (_%k128615%_ _%vars128612%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129739
                               __tmp129738
                               _%E128614%_))
                            (if (eq? 'vector _%$e128633%_)
                                (let ((_%$e128743%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129744
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128613%_)))
                                        (__tmp129740
                                         (let ((__tmp129742
                                                (cons (cons (cons _%$e128743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129743
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128327%_
                                    _%target128613%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129743))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129741
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128520%_
                                                   _%body128630%_
                                                   _%vars128612%_
                                                   _%$e128743%_
                                                   _%E128614%_
                                                   _%k128615%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129742
                                            __tmp129741))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129744
                                     __tmp129740
                                     _%E128614%_)))
                                (if (eq? 'box _%$e128633%_)
                                    (let ((_%$e128745%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129749
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128613%_)))
                                            (__tmp129745
                                             (let ((__tmp129747
                                                    (cons (cons (cons _%$e128745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129748
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128327%_
                                        _%target128613%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129748))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129746
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128520%_
                                                       _%body128630%_
                                                       _%vars128612%_
                                                       _%$e128745%_
                                                       _%E128614%_
                                                       _%k128615%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129747
                                                __tmp129746))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129749
                                         __tmp129745
                                         _%E128614%_)))
                                    (if (eq? 'datum _%$e128633%_)
                                        (let ((_%$e128747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129755
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128613%_)))
                                                (__tmp129750
                                                 (let ((__tmp129754
                                                        (cons (cons (cons _%$e128747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128613%_))
                                  '()))
                      '()))
               (__tmp129751
                (let ((__tmp129753
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128747%_ _%body128630%_)))
                      (__tmp129752 (_%k128615%_ _%vars128612%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129753 __tmp129752 _%E128614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129754
                                                    __tmp129751))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129755
                                             __tmp129750
                                             _%E128614%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128519%_
                                           _%e128611%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128616128623%_))
                                      (let ((_%hd128620128752%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128616128623%_)))
                                            (_%tl128621128754%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128616128623%_))))
                                        (let* ((_%tag128757%_
                                                _%hd128620128752%_)
                                               (_%body128759%_
                                                _%tl128621128754%_))
                                          (declare (not safe))
                                          (_%K128619128749%_
                                           _%body128759%_
                                           _%tag128757%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128618128627%_))))))
                             (_%splice-rlen128521%_
                              (lambda (_%e128573%_)
                                (let _%lp128575%_ ((_%e128577%_ _%e128573%_)
                                                   (_%n128578%_ '0))
                                  (let* ((_%e128579128586%_ _%e128577%_)
                                         (_%E128581128590%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128579128586%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128582128599%_
                                          (lambda (_%body128593%_
                                                   _%tag128594%_)
                                            (let ((_%$e128596%_ _%tag128594%_))
                                              (if (eq? 'splice _%$e128596%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128325%_
                                                     _%where128512%_))
                                                  (if (eq? 'cons _%$e128596%_)
                                                      (let ((__tmp129757
                                                             (cdr _%body128593%_))
                                                            (__tmp129756
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128578%_ '1))))
                (declare (not safe))
                (_%lp128575%_ __tmp129757 __tmp129756))
              _%n128578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128579128586%_))
                                        (let ((_%hd128583128602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128579128586%_)))
                                              (_%tl128584128604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128579128586%_))))
                                          (let* ((_%tag128607%_
                                                  _%hd128583128602%_)
                                                 (_%body128609%_
                                                  _%tl128584128604%_))
                                            (declare (not safe))
                                            (_%K128582128599%_
                                             _%body128609%_
                                             _%tag128607%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128581128590%_)))))))
                             (_%splice-vars128522%_
                              (lambda (_%e128529%_)
                                (let _%recur128531%_ ((_%e128533%_ _%e128529%_)
                                                      (_%vars128534%_ '()))
                                  (let* ((_%e128535128542%_ _%e128533%_)
                                         (_%E128537128546%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128535128542%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128538128561%_
                                          (lambda (_%body128549%_
                                                   _%tag128550%_)
                                            (let ((_%$e128552%_ _%tag128550%_))
                                              (if (eq? 'var _%$e128552%_)
                                                  (cons _%body128549%_
                                                        _%vars128534%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128552%_)
                                                          (eq? 'splice
                                                               _%$e128552%_))
                                                      (let ((__tmp129760
                                                             (cdr _%body128549%_))
                                                            (__tmp129758
                                                             (let ((__tmp129759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128549%_)))
                       (declare (not safe))
                       (_%recur128531%_ __tmp129759 _%vars128534%_))))
                (declare (not safe))
                (_%recur128531%_ __tmp129760 __tmp129758))
              (if (or (eq? 'vector _%$e128552%_) (eq? 'box _%$e128552%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128531%_ _%body128549%_ _%vars128534%_))
                  _%vars128534%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128535128542%_))
                                        (let ((_%hd128539128564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128535128542%_)))
                                              (_%tl128540128566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128535128542%_))))
                                          (let* ((_%tag128569%_
                                                  _%hd128539128564%_)
                                                 (_%body128571%_
                                                  _%tl128540128566%_))
                                            (declare (not safe))
                                            (_%K128538128561%_
                                             _%body128571%_
                                             _%tag128569%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128537128546%_)))))))
                             (_%make-body128523%_
                              (lambda (_%vars128525%_)
                                (cons _%K128516%_
                                      (map (lambda (_%mvar128527%_)
                                             (let ((__tmp129761
                                                    (car _%mvar128527%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129761
                                                _%vars128525%_
                                                _%BUG128519%_)))
                                           _%mvars128515%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128520%_
                         _%hd128514%_
                         '()
                         _%target128513%_
                         _%E128517%_
                         _%make-body128523%_)))))
                 (_%parse-clause128334%_
                  (lambda (_%hd128406%_ _%ids128407%_)
                    (let _%recur128409%_ ((_%e128411%_ _%hd128406%_)
                                          (_%vars128412%_ '())
                                          (_%depth128413%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128411%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e128411%_))
                                (let () (values '(any) _%vars128412%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e128411%_))
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Misplaced ellipsis"
                                       _%stx128325%_
                                       _%hd128406%_))
                                    (if (let ((__tmp129762
                                               (lambda (_%id128418%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e128411%_
                                                    _%id128418%_)))))
                                          (declare (not safe))
                                          (__find __tmp129762 _%ids128407%_))
                                        (let ()
                                          (values (cons 'id _%e128411%_)
                                                  _%vars128412%_))
                                        (if (let ((__tmp129763
                                                   (lambda (_%var128421%_)
                                                     (let ((__tmp129764
                                                            (car _%var128421%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e128411%_
                                                        __tmp129764)))))
                                              (declare (not safe))
                                              (__find __tmp129763
                                                      _%vars128412%_))
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Duplicate pattern variable"
                                               _%stx128325%_
                                               _%e128411%_))
                                            (let ()
                                              (values (cons 'var _%e128411%_)
                                                      (cons (cons _%e128411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth128413%_)
                    _%vars128412%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128411%_))
                              (let ()
                                (let* ((_%e128425128432%_ _%e128411%_)
                                       (_%E128427128436%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e128425128432%_))))
                                       (_%E128426128497%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e128425128432%_))
                                              (let ((_%e128428128440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128425128432%_))))
                                                (let ((_%hd128429128443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128428128440%_)))
                                                      (_%tl128430128445%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128428128440%_))))
                                                  (let* ((_%hd128448%_
                                                          _%hd128429128443%_)
                                                         (_%rest128450%_
                                                          _%tl128430128445%_))
                                                    (if '#t
                                                        (let* ((_%make-pair128465%_
                                                                (lambda (_%tag128452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd128453%_
                                 _%tl128454%_)
                          (let* ((_%hd-depth128456%_
                                  (if (eq? _%tag128452%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth128413%_ '1))
                                      _%depth128413%_))
                                 (_g129765_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur128409%_
                                     _%hd128453%_
                                     _%vars128412%_
                                     _%hd-depth128456%_))))
                            (begin
                              (let ((_g129766_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129765_)
                                           (##vector-length _g129765_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129766_ 2)))
                                    (error "Context expects 2 values"
                                           _g129766_)))
                              (let ((_%hd128458%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129765_ 0)))
                                    (_%vars128459%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129765_ 1))))
                                (let ((_g129767_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128409%_
                                          _%tl128454%_
                                          _%vars128459%_
                                          _%depth128413%_))))
                                  (begin
                                    (let ((_g129768_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129767_)
                                                 (##vector-length _g129767_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129768_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129768_)))
                                    (let ((_%tl128461%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129767_ 0)))
                                          (_%vars128462%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129767_ 1))))
                                      (let ()
                                        (values (let ((__tmp129769
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd128458%_
                                                               _%tl128461%_))))
                                                  (declare (not safe))
                                                  (cons _%tag128452%_
                                                        __tmp129769))
                                                _%vars128462%_))))))))))
                       (_%e128466128473%_ _%rest128450%_)
                       (_%E128468128477%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair128465%_
                             'cons
                             _%hd128448%_
                             _%rest128450%_))))
                       (_%E128467128493%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128466128473%_))
                              (let ((_%e128469128481%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e128466128473%_))))
                                (let ((_%hd128470128484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e128469128481%_)))
                                      (_%tl128471128486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e128469128481%_))))
                                  (let* ((_%rest-hd128489%_ _%hd128470128484%_)
                                         (_%rest-tl128491%_
                                          _%tl128471128486%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd128489%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128465%_
                                               'splice
                                               _%hd128448%_
                                               _%rest-tl128491%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128465%_
                                               'cons
                                               _%hd128448%_
                                               _%rest128450%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128468128477%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E128468128477%_))))))
                  (declare (not safe))
                  (_%E128467128493%_))
                (let () (declare (not safe)) (_%E128427128436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128427128436%_))))))
                                  (declare (not safe))
                                  (_%E128426128497%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128411%_))
                                  (let () (values '(null) _%vars128412%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128411%_))
                                      (let ((_g129770_
                                             (let ((__tmp129772
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128411%_)))))
                                               (declare (not safe))
                                               (_%recur128409%_
                                                __tmp129772
                                                _%vars128412%_
                                                _%depth128413%_))))
                                        (begin
                                          (let ((_g129771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129770_)
                                                       (##vector-length
                                                        _g129770_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129771_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129771_)))
                                          (let ((_%e128503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129770_ 0)))
                                                (_%vars128504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129770_
                                                    1))))
                                            (values (cons 'vector _%e128503%_)
                                                    _%vars128504%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128411%_))
                                          (let ((_g129773_
                                                 (let ((__tmp129775
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%e128411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%recur128409%_
                                                    __tmp129775
                                                    _%vars128412%_
                                                    _%depth128413%_))))
                                            (begin
                                              (let ((_g129774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129773_)
                                                           (##vector-length
                                                            _g129773_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129774_)))
                                              (let ((_%e128507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129773_
                                                        0)))
                                                    (_%vars128508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129773_
                                                        1))))
                                                (values (cons 'box _%e128507%_)
                                                        _%vars128508%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128411%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e128411%_)))
                _%vars128412%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128325%_
                                                 _%e128411%_))))))))))))
          (let* ((_%e128335128348%_ _%stx128325%_)
                 (_%E128337128352%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128335128348%_))))
                 (_%E128336128402%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128335128348%_))
                        (let ((_%e128338128356%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128335128348%_))))
                          (let ((_%hd128339128359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128338128356%_)))
                                (_%tl128340128361%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128338128356%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128340128361%_))
                                (let ((_%e128341128364%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128340128361%_))))
                                  (let ((_%hd128342128367%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128341128364%_)))
                                        (_%tl128343128369%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128341128364%_))))
                                    (let ((_%expr128372%_ _%hd128342128367%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128343128369%_))
                                          (let ((_%e128344128374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128343128369%_))))
                                            (let ((_%hd128345128377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128344128374%_)))
                                                  (_%tl128346128379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128344128374%_))))
                                              (let* ((_%ids128382%_
                                                      _%hd128345128377%_)
                                                     (_%clauses128384%_
                                                      _%tl128346128379%_))
                                                (if '#t
                                                    (if (let ((__tmp129776
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids128382%_))))
                  (declare (not safe))
                  (not __tmp129776))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128325%_
                   _%ids128382%_))
                (if (let ((__tmp129777
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses128384%_))))
                      (declare (not safe))
                      (not __tmp129777))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128325%_))
                    (let ()
                      (let* ((_%ids128389%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids128382%_)))
                             (_%clauses128391%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses128384%_)))
                             (_%clause-ids128393%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses128391%_)))
                             (_%E128395%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target128397%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first128399%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses128391%_))
                                  _%E128395%_
                                  (car _%clause-ids128393%_))))
                        (let ((__tmp129779
                               (let ((__tmp129780
                                      (let ((__tmp129782
                                             (let ((__tmp129786
                                                    (cons (cons (cons _%E128395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129788 (cons _%target128397%_ '()))
                                    (__tmp129787
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target128397%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129788
                                 __tmp129787))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129783
                                                    (let ((__tmp129785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings128330%_
                                                              _%target128397%_
                                                              _%ids128389%_
                                                              _%clauses128391%_
                                                              _%clause-ids128393%_
                                                              _%E128395%_)))
                                                          (__tmp129784
                                                           (cons _%first128399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr128372%_ '()))))
              (declare (not safe))
              (_%generate-body128331%_ __tmp129785 __tmp129784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129786
                                                __tmp129783)))
                                            (__tmp129781
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx128325%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129782
                                         __tmp129781))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129780)))
                              (__tmp129778
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx128325%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129779 __tmp129778))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128337128352%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128337128352%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128337128352%_)))))
                        (let () (declare (not safe)) (_%E128337128352%_))))))
            (declare (not safe))
            (_%E128336128402%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129050%_)
        (let* ((_%identifier=?129052%_ 'free-identifier=?)
               (_%unwrap-e129054%_ 'syntax-e)
               (_%wrap-e129056%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129050%_
           _%identifier=?129052%_
           _%unwrap-e129054%_
           _%wrap-e129056%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129058%_ _%identifier=?129059%_)
        (let* ((_%unwrap-e129061%_ 'syntax-e) (_%wrap-e129063%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129058%_
           _%identifier=?129059%_
           _%unwrap-e129061%_
           _%wrap-e129063%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129065%_ _%identifier=?129066%_ _%unwrap-e129067%_)
        (let ((_%wrap-e129069%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129065%_
           _%identifier=?129066%_
           _%unwrap-e129067%_
           _%wrap-e129069%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129790_
        (let ((_g129789_ (let () (declare (not safe)) (##length _g129790_))))
          (cond ((let () (declare (not safe)) (##fx= _g129789_ 1))
                 (apply (lambda (_%stx129050%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx129050%_)))
                        _g129790_))
                ((let () (declare (not safe)) (##fx= _g129789_ 2))
                 (apply (lambda (_%stx129058%_ _%identifier=?129059%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx129058%_
                             _%identifier=?129059%_)))
                        _g129790_))
                ((let () (declare (not safe)) (##fx= _g129789_ 3))
                 (apply (lambda (_%stx129065%_
                                 _%identifier=?129066%_
                                 _%unwrap-e129067%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx129065%_
                             _%identifier=?129066%_
                             _%unwrap-e129067%_)))
                        _g129790_))
                ((let () (declare (not safe)) (##fx= _g129789_ 4))
                 (apply (lambda (_%stx129071%_
                                 _%identifier=?129072%_
                                 _%unwrap-e129073%_
                                 _%wrap-e129074%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx129071%_
                             _%identifier=?129072%_
                             _%unwrap-e129073%_
                             _%wrap-e129074%_)))
                        _g129790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129790_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128322%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128322%_))
            (let ((__tmp129791
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128322%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129791 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128280%_ . _%rest128281%_)
        (let ((_%len128283%_ (length _%hd128280%_)))
          (let _%lp128285%_ ((_%rest128287%_ _%rest128281%_))
            (let* ((_%rest128288128296%_ _%rest128287%_)
                   (_%else128290128304%_ (lambda () '#!void))
                   (_%K128292128310%_
                    (lambda (_%rest128307%_ _%hd128308%_)
                      (if (let ((__tmp129792 (length _%hd128308%_)))
                            (declare (not safe))
                            (##fx= _%len128283%_ __tmp129792))
                          (let ()
                            (declare (not safe))
                            (_%lp128285%_ _%rest128307%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128308%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128288128296%_))
                  (let ((_%hd128293128313%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128288128296%_)))
                        (_%tl128294128315%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128288128296%_))))
                    (let* ((_%hd128318%_ _%hd128293128313%_)
                           (_%rest128320%_ _%tl128294128315%_))
                      (declare (not safe))
                      (_%K128292128310%_ _%rest128320%_ _%hd128318%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128235%_ _%n128236%_)
        (let _%lp128238%_ ((_%rest128240%_ _%stx128235%_) (_%r128241%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128240%_))
              (let* ((_%g128242128249%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128240%_)))
                     (_%E128244128253%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128242128249%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128245128259%_
                      (lambda (_%rest128256%_ _%hd128257%_)
                        (let ((__tmp129793 (cons _%hd128257%_ _%r128241%_)))
                          (declare (not safe))
                          (_%lp128238%_ _%rest128256%_ __tmp129793)))))
                (if (let () (declare (not safe)) (##pair? _%g128242128249%_))
                    (let ((_%hd128246128262%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128242128249%_)))
                          (_%tl128247128264%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128242128249%_))))
                      (let* ((_%hd128267%_ _%hd128246128262%_)
                             (_%rest128269%_ _%tl128247128264%_))
                        (declare (not safe))
                        (_%K128245128259%_ _%rest128269%_ _%hd128267%_)))
                    (let () (declare (not safe)) (_%E128244128253%_))))
              (let _%lp128271%_ ((_%n128273%_ _%n128236%_)
                                 (_%l128274%_ _%r128241%_)
                                 (_%r128275%_ _%rest128240%_))
                (if (let () (declare (not safe)) (null? _%l128274%_))
                    (let () (values _%l128274%_ _%r128275%_))
                    (if (fxpositive? _%n128273%_)
                        (let ((__tmp129796
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%n128273%_ '1)))
                              (__tmp129795 (cdr _%l128274%_))
                              (__tmp129794
                               (cons (car _%l128274%_) _%r128275%_)))
                          (declare (not safe))
                          (_%lp128271%_ __tmp129796 __tmp129795 __tmp129794))
                        (let ()
                          (values (reverse _%l128274%_) _%r128275%_)))))))))))
