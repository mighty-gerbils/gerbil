(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1712696213)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp129654 (list gx#expander::t))
            (__tmp129653 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp129654
         '(id depth)
         __tmp129653
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args129650%_
        (apply make-instance gx#syntax-pattern::t _%$args129650%_)))
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
      (lambda (_%self129636%_ _%stx129637%_)
        (let ((_%self129640%_ _%self129636%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx129637%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx129102%_)
        (letrec ((_%generate129104%_
                  (lambda (_%e129344%_)
                    (letrec ((_%BUG129346%_
                              (lambda (_%q129511%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx129102%_
                                         _%e129344%_
                                         _%q129511%_))))
                             (_%local-pattern-e129347%_
                              (lambda (_%pat129509%_)
                                (let ((__tmp129655
                                       (##structure-ref
                                        _%pat129509%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp129655))))
                             (_%getvar129348%_
                              (lambda (_%q129506%_ _%vars129507%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q129506%_
                                   _%vars129507%_
                                   _%BUG129346%_))))
                             (_%getarg129349%_
                              (lambda (_%arg129472%_ _%vars129473%_)
                                (let* ((_%arg129474129481%_ _%arg129472%_)
                                       (_%E129476129485%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg129474129481%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K129477129494%_
                                        (lambda (_%e129488%_ _%tag129489%_)
                                          (let ((_%$e129491%_ _%tag129489%_))
                                            (if (eq? 'ref _%$e129491%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%getvar129348%_
                                                   _%e129488%_
                                                   _%vars129473%_))
                                                (if (eq? 'pattern _%$e129491%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%local-pattern-e129347%_
                                                       _%e129488%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%BUG129346%_
                                                       _%arg129472%_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg129474129481%_))
                                      (let ((_%hd129478129497%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg129474129481%_)))
                                            (_%tl129479129499%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg129474129481%_))))
                                        (let* ((_%tag129502%_
                                                _%hd129478129497%_)
                                               (_%e129504%_
                                                _%tl129479129499%_))
                                          (declare (not safe))
                                          (_%K129477129494%_
                                           _%e129504%_
                                           _%tag129502%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E129476129485%_)))))))
                      (let _%recur129351%_ ((_%e129353%_ _%e129344%_)
                                            (_%vars129354%_ '()))
                        (let* ((_%e129355129362%_ _%e129353%_)
                               (_%E129357129366%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e129355129362%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K129358129460%_
                                (lambda (_%body129369%_ _%tag129370%_)
                                  (let ((_%$e129372%_ _%tag129370%_))
                                    (if (eq? 'datum _%$e129372%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body129369%_))
                                        (if (eq? 'term _%$e129372%_)
                                            (let ((_%id129375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body129369%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id129375%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks129378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id129375%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%marks129378%_))
                                                        (let ((__tmp129656
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body129369%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp129656))
                (let ((__tmp129658
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body129369%_)))
                      (__tmp129657
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body129369%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp129658
                   __tmp129657
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id129375%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body129369%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%BUG129346%_
                                                         _%e129353%_)))))
                                            (if (eq? 'pattern _%$e129372%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%local-pattern-e129347%_
                                                   _%body129369%_))
                                                (if (eq? 'ref _%$e129372%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%getvar129348%_
                                                       _%body129369%_
                                                       _%vars129354%_))
                                                    (if (eq? 'cons
                                                             _%$e129372%_)
                                                        (let ((__tmp129661
                                                               (let ((__tmp129662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _%body129369%_)))
                         (declare (not safe))
                         (_%recur129351%_ __tmp129662 _%vars129354%_)))
                      (__tmp129659
                       (let ((__tmp129660 (cdr _%body129369%_)))
                         (declare (not safe))
                         (_%recur129351%_ __tmp129660 _%vars129354%_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp129661 __tmp129659))
                (if (eq? 'vector _%$e129372%_)
                    (let ((__tmp129663
                           (let ()
                             (declare (not safe))
                             (_%recur129351%_ _%body129369%_ _%vars129354%_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp129663))
                    (if (eq? 'box _%$e129372%_)
                        (let ((__tmp129664
                               (let ()
                                 (declare (not safe))
                                 (_%recur129351%_
                                  _%body129369%_
                                  _%vars129354%_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp129664))
                        (if (eq? 'splice _%$e129372%_)
                            (let* ((_%body129381129392%_ _%body129369%_)
                                   (_%E129383129396%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body129381129392%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K129384129434%_
                                    (lambda (_%args129399%_
                                             _%iv129400%_
                                             _%hd129401%_
                                             _%depth129402%_)
                                      (let* ((_%targets129408%_
                                              (map (lambda (_%g129403129405%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%getarg129349%_
                                                        _%g129403129405%_
                                                        _%vars129354%_)))
                                                   _%args129399%_))
                                             (_%fold-in129410%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args129399%_)))
                                             (_%fold-out129412%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args129414%_
                                              (let ((__tmp129665
                                                     (cons _%fold-out129412%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp129665
                                                 _%fold-in129410%_)))
                                             (_%lambda-body129431%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth129402%_ '1))
                                                  (let ((_%r-args129422%_
                                                         (map (lambda (_%arg129416%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg129416%_)))
                      _%args129399%_))
                (_%r-vars129423%_
                 (let ((__tmp129666
                        (lambda (_%arg129418%_ _%var129419%_ _%r129420%_)
                          (cons (cons (cdr _%arg129418%_) _%var129419%_)
                                _%r129420%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp129666
                    _%vars129354%_
                    _%args129399%_
                    _%fold-in129410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp129667
                                                           (let ((__tmp129668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129672
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%depth129402%_ '1)))
                                (__tmp129669
                                 (let ((__tmp129670
                                        (let ((__tmp129671
                                               (cons 'var _%fold-out129412%_)))
                                          (declare (not safe))
                                          (cons __tmp129671
                                                _%r-args129422%_))))
                                   (declare (not safe))
                                   (cons _%hd129401%_ __tmp129670))))
                            (declare (not safe))
                            (cons __tmp129672 __tmp129669))))
                     (declare (not safe))
                     (cons 'splice __tmp129668))))
              (declare (not safe))
              (_%recur129351%_ __tmp129667 _%r-vars129423%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%hd-vars129429%_
                                                          (let ((__tmp129673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg129425%_ _%var129426%_ _%r129427%_)
                           (cons (cons (cdr _%arg129425%_) _%var129426%_)
                                 _%r129427%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp129673
                     _%vars129354%_
                     _%args129399%_
                     _%fold-in129410%_)))
                 (__tmp129674
                  (let ()
                    (declare (not safe))
                    (_%recur129351%_ _%hd129401%_ _%hd-vars129429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp129674
                                                     _%fold-out129412%_)))))
                                        (let ((__tmp129678
                                               (if (let ((__tmp129679
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets129408%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp129679 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets129408%_))
                                                   '#!void))
                                              (__tmp129675
                                               (let ((__tmp129677
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args129414%_
                                                         _%lambda-body129431%_)))
                                                     (__tmp129676
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%recur129351%_
                                                         _%iv129400%_
                                                         _%vars129354%_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp129677
                                                  __tmp129676
                                                  _%targets129408%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp129678
                                           __tmp129675))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body129381129392%_))
                                  (let ((_%hd129385129437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body129381129392%_)))
                                        (_%tl129386129439%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body129381129392%_))))
                                    (let ((_%depth129442%_ _%hd129385129437%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl129386129439%_))
                                          (let ((_%hd129387129444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl129386129439%_)))
                                                (_%tl129388129446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl129386129439%_))))
                                            (let ((_%hd129449%_
                                                   _%hd129387129444%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl129388129446%_))
                                                  (let ((_%hd129389129451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl129388129446%_)))
                                                        (_%tl129390129453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl129388129446%_))))
                                                    (let* ((_%iv129456%_
                                                            _%hd129389129451%_)
                                                           (_%args129458%_
                                                            _%tl129390129453%_))
                                                      (declare (not safe))
                                                      (_%K129384129434%_
                                                       _%args129458%_
                                                       _%iv129456%_
                                                       _%hd129449%_
                                                       _%depth129442%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E129383129396%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129383129396%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129383129396%_))))
                            (if (eq? 'var _%$e129372%_)
                                _%body129369%_
                                (let ()
                                  (declare (not safe))
                                  (_%BUG129346%_ _%e129353%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e129355129362%_))
                              (let ((_%hd129359129463%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e129355129362%_)))
                                    (_%tl129360129465%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e129355129362%_))))
                                (let* ((_%tag129468%_ _%hd129359129463%_)
                                       (_%body129470%_ _%tl129360129465%_))
                                  (declare (not safe))
                                  (_%K129358129460%_
                                   _%body129470%_
                                   _%tag129468%_)))
                              (let ()
                                (declare (not safe))
                                (_%E129357129366%_))))))))
                 (_%parse129105%_
                  (lambda (_%e129146%_)
                    (letrec ((_%make-cons129148%_
                              (lambda (_%hd129336%_ _%tl129337%_)
                                (let ((_g129680_ _%hd129336%_)
                                      (_g129682_ _%tl129337%_))
                                  (begin
                                    (let ((_g129681_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129680_)
                                                 (##vector-length _g129680_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129681_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129681_)))
                                    (let ((_g129683_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129682_)
                                                 (##vector-length _g129682_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129683_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129683_)))
                                    (let ((_%hd-e129339%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129680_ 0)))
                                          (_%hd-vars129340%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129680_ 1))))
                                      (let ((_%tl-e129341%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129682_ 0)))
                                            (_%tl-vars129342%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129682_ 1))))
                                        (values (let ((__tmp129684
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd-e129339%_
                                                               _%tl-e129341%_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp129684))
                                                (append _%hd-vars129340%_
                                                        _%tl-vars129342%_))))))))
                             (_%make-splice129149%_
                              (lambda (_%where129272%_
                                       _%depth129273%_
                                       _%hd129274%_
                                       _%tl129275%_)
                                (let ((_g129685_ _%hd129274%_)
                                      (_g129687_ _%tl129275%_))
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
                                          (error "Context expects 2 values"
                                                 _g129686_)))
                                    (let ((_g129688_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129687_)
                                                 (##vector-length _g129687_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129688_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129688_)))
                                    (let ((_%hd-e129277%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129685_ 0)))
                                          (_%hd-vars129278%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129685_ 1))))
                                      (let ((_%tl-e129279%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129687_ 0)))
                                            (_%tl-vars129280%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129687_ 1))))
                                        (let _%lp129282%_ ((_%rest129284%_
                                                            _%hd-vars129278%_)
                                                           (_%targets129285%_
                                                            '())
                                                           (_%vars129286%_
                                                            _%tl-vars129280%_))
                                          (let* ((_%rest129287129297%_
                                                  _%rest129284%_)
                                                 (_%else129289129305%_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _%targets129285%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx129102%_
                                                           _%where129272%_))
                                                        (values (let ((__tmp129689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp129690
                                      (let ((__tmp129691
                                             (let ()
                                               (declare (not safe))
                                               (cons _%tl-e129279%_
                                                     _%targets129285%_))))
                                        (declare (not safe))
                                        (cons _%hd-e129277%_ __tmp129691))))
                                 (declare (not safe))
                                 (cons _%depth129273%_ __tmp129690))))
                          (declare (not safe))
                          (cons 'splice __tmp129689))
                        _%vars129286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K129291129317%_
                                                  (lambda (_%rest129308%_
                                                           _%hd-pat129309%_
                                                           _%hd-depth*129310%_)
                                                    (let ((_%hd-depth129312%_
                                                           (fx- _%hd-depth*129310%_
                                                                _%depth129273%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth129312%_))
                                                          (let ((__tmp129693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _%hd-pat129309%_) _%targets129285%_))
                        (__tmp129692
                         (cons (cons _%hd-depth129312%_ _%hd-pat129309%_)
                               _%vars129286%_)))
                    (declare (not safe))
                    (_%lp129282%_ _%rest129308%_ __tmp129693 __tmp129692))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth129312%_))
                      (let ((__tmp129694
                             (cons (cons 'pattern _%hd-pat129309%_)
                                   _%targets129285%_)))
                        (declare (not safe))
                        (_%lp129282%_
                         _%rest129308%_
                         __tmp129694
                         _%vars129286%_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx129102%_
                         _%where129272%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest129287129297%_))
                                                (let ((_%hd129292129320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest129287129297%_)))
                                                      (_%tl129293129322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest129287129297%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd129292129320%_))
                                                      (let ((_%hd129294129325%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd129292129320%_)))
                    (_%tl129295129327%_
                     (let () (declare (not safe)) (##cdr _%hd129292129320%_))))
                (let* ((_%hd-depth*129330%_ _%hd129294129325%_)
                       (_%hd-pat129332%_ _%tl129295129327%_)
                       (_%rest129334%_ _%tl129293129322%_))
                  (declare (not safe))
                  (_%K129291129317%_
                   _%rest129334%_
                   _%hd-pat129332%_
                   _%hd-depth*129330%_)))
              (let () (declare (not safe)) (_%else129289129305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else129289129305%_)))))))))))
                             (_%recur129150%_
                              (lambda (_%e129155%_ _%is-e?129156%_)
                                (if (_%is-e?129156%_ _%e129155%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx129102%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern?
                                           _%e129155%_))
                                        (let ()
                                          (let* ((_%pat129160%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-local-e__0
                                                     _%e129155%_)))
                                                 (_%depth129162%_
                                                  (##structure-ref
                                                   _%pat129160%_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                            (if (fxpositive? _%depth129162%_)
                                                (values (cons 'ref
                                                              _%pat129160%_)
                                                        (cons (cons _%depth129162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pat129160%_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (values (cons 'pattern
                                                              _%pat129160%_)
                                                        '()))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e129155%_))
                                            (let ()
                                              (values (cons 'term _%e129155%_)
                                                      '()))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e129155%_))
                                                (let ()
                                                  (let* ((_%e129166129173%_
                                                          _%e129155%_)
                                                         (_%E129168129177%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid syntax-case clause"
                                                               _%e129166129173%_))))
                                                         (_%E129167129259%_
                                                          (lambda ()
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%e129166129173%_))
                        (let ((_%e129169129181%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129166129173%_))))
                          (let ((_%hd129170129184%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129169129181%_)))
                                (_%tl129171129186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129169129181%_))))
                            (let* ((_%hd129189%_ _%hd129170129184%_)
                                   (_%rest129191%_ _%tl129171129186%_))
                              (if '#t
                                  (if (_%is-e?129156%_ _%hd129189%_)
                                      (let* ((_%e129192129199%_ _%rest129191%_)
                                             (_%E129194129203%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad ellipsis syntax"
                                                   _%stx129102%_
                                                   _%e129155%_))))
                                             (_%E129193129217%_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%e129192129199%_))
                                                    (let ((_%e129195129207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%e129192129199%_))))
                                                      (let ((_%hd129196129210%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e129195129207%_)))
                    (_%tl129197129212%_
                     (let () (declare (not safe)) (##cdr _%e129195129207%_))))
                (let ((_%rest129215%_ _%hd129196129210%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl129197129212%_))
                      (if '#t
                          (let ()
                            (declare (not safe))
                            (_%recur129150%_ _%rest129215%_ false))
                          (let () (declare (not safe)) (_%E129194129203%_)))
                      (let () (declare (not safe)) (_%E129194129203%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E129194129203%_))))))
                                        (declare (not safe))
                                        (_%E129193129217%_))
                                      (let _%lp129221%_ ((_%rest129223%_
                                                          _%rest129191%_)
                                                         (_%depth129224%_ '0))
                                        (let* ((_%e129225129232%_
                                                _%rest129223%_)
                                               (_%E129227129236%_
                                                (lambda ()
                                                  (if (fxpositive?
                                                       _%depth129224%_)
                                                      (let ((__tmp129696
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_%recur129150%_ _%hd129189%_ _%is-e?129156%_)))
                    (__tmp129695
                     (let ()
                       (declare (not safe))
                       (_%recur129150%_ _%rest129223%_ _%is-e?129156%_))))
                (declare (not safe))
                (_%make-splice129149%_
                 _%e129155%_
                 _%depth129224%_
                 __tmp129696
                 __tmp129695))
              (let ((__tmp129698
                     (let ()
                       (declare (not safe))
                       (_%recur129150%_ _%hd129189%_ _%is-e?129156%_)))
                    (__tmp129697
                     (let ()
                       (declare (not safe))
                       (_%recur129150%_ _%rest129223%_ _%is-e?129156%_))))
                (declare (not safe))
                (_%make-cons129148%_ __tmp129698 __tmp129697)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129226129255%_
                                                (lambda ()
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%e129225129232%_))
                                                      (let ((_%e129228129240%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%e129225129232%_))))
                (let ((_%hd129229129243%_
                       (let () (declare (not safe)) (##car _%e129228129240%_)))
                      (_%tl129230129245%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e129228129240%_))))
                  (let* ((_%rest-hd129248%_ _%hd129229129243%_)
                         (_%rest-tl129250%_ _%tl129230129245%_))
                    (if '#t
                        (if (_%is-e?129156%_ _%rest-hd129248%_)
                            (let ((__tmp129699
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%depth129224%_ '1))))
                              (declare (not safe))
                              (_%lp129221%_ _%rest-tl129250%_ __tmp129699))
                            (if (fxpositive? _%depth129224%_)
                                (let ((__tmp129701
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129150%_
                                          _%hd129189%_
                                          _%is-e?129156%_)))
                                      (__tmp129700
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129150%_
                                          _%rest129223%_
                                          _%is-e?129156%_))))
                                  (declare (not safe))
                                  (_%make-splice129149%_
                                   _%e129155%_
                                   _%depth129224%_
                                   __tmp129701
                                   __tmp129700))
                                (let ((__tmp129703
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129150%_
                                          _%hd129189%_
                                          _%is-e?129156%_)))
                                      (__tmp129702
                                       (let ()
                                         (declare (not safe))
                                         (_%recur129150%_
                                          _%rest129223%_
                                          _%is-e?129156%_))))
                                  (declare (not safe))
                                  (_%make-cons129148%_
                                   __tmp129703
                                   __tmp129702))))
                        (let () (declare (not safe)) (_%E129227129236%_))))))
              (let () (declare (not safe)) (_%E129227129236%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_%E129226129255%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E129168129177%_))))))
                        (let () (declare (not safe)) (_%E129168129177%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%E129167129259%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e129155%_))
                                                    (let ((_g129704_
                                                           (let ((__tmp129706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _%e129155%_)))))
                     (declare (not safe))
                     (_%recur129150%_ __tmp129706 _%is-e?129156%_))))
              (begin
                (let ((_g129705_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g129704_)
                             (##vector-length _g129704_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g129705_ 2)))
                      (error "Context expects 2 values" _g129705_)))
                (let ((_%e129264%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129704_ 0)))
                      (_%vars129265%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g129704_ 1))))
                  (values (cons 'vector _%e129264%_) _%vars129265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e129155%_))
                                                        (let ((_g129707_
                                                               (let ((__tmp129709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _%e129155%_)))))
                         (declare (not safe))
                         (_%recur129150%_ __tmp129709 _%is-e?129156%_))))
                  (begin
                    (let ((_g129708_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g129707_)
                                 (##vector-length _g129707_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g129708_ 2)))
                          (error "Context expects 2 values" _g129708_)))
                    (let ((_%e129268%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129707_ 0)))
                          (_%vars129269%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g129707_ 1))))
                      (values (cons 'box _%e129268%_) _%vars129269%_))))
                (let () (values (cons 'datum _%e129155%_) '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g129710_
                             (let ()
                               (declare (not safe))
                               (_%recur129150%_ _%e129146%_ gx#ellipsis?))))
                        (begin
                          (let ((_g129711_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g129710_)
                                       (##vector-length _g129710_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g129711_ 2)))
                                (error "Context expects 2 values" _g129711_)))
                          (let ((_%tree129152%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129710_ 0)))
                                (_%vars129153%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g129710_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%vars129153%_))
                                _%tree129152%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx129102%_
                                   _%vars129153%_))))))))))
          (let* ((_%e129106129116%_ _%stx129102%_)
                 (_%E129108129120%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx129102%_))))
                 (_%E129107129142%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e129106129116%_))
                        (let ((_%e129109129124%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e129106129116%_))))
                          (let ((_%hd129110129127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129109129124%_)))
                                (_%tl129111129129%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129109129124%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl129111129129%_))
                                (let ((_%e129112129132%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl129111129129%_))))
                                  (let ((_%hd129113129135%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e129112129132%_)))
                                        (_%tl129114129137%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e129112129132%_))))
                                    (let ((_%form129140%_ _%hd129113129135%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl129114129137%_))
                                          (if '#t
                                              (let ((__tmp129713
                                                     (let ((__tmp129714
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse129105%_
                                                               _%form129140%_))))
                                                       (declare (not safe))
                                                       (_%generate129104%_
                                                        __tmp129714)))
                                                    (__tmp129712
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _%stx129102%_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp129713
                                                 __tmp129712))
                                              (let ()
                                                (declare (not safe))
                                                (_%E129108129120%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%E129108129120%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E129108129120%_)))))
                        (let () (declare (not safe)) (_%E129108129120%_))))))
            (declare (not safe))
            (_%E129107129142%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx128351%_
               _%identifier=?128352%_
               _%unwrap-e128353%_
               _%wrap-e128354%_)
        (letrec ((_%generate-bindings128356%_
                  (lambda (_%target128966%_
                           _%ids128967%_
                           _%clauses128968%_
                           _%clause-ids128969%_
                           _%E128970%_)
                    (letrec ((_%generate1128972%_
                              (lambda (_%clause129069%_
                                       _%clause-id129070%_
                                       _%E129071%_)
                                (cons (cons _%clause-id129070%_ '())
                                      (cons (let ((__tmp129716
                                                   (cons _%target128966%_ '()))
                                                  (__tmp129715
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-clause128358%_
                                                      _%target128966%_
                                                      _%ids128967%_
                                                      _%clause129069%_
                                                      _%E129071%_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp129716
                                               __tmp129715))
                                            '())))))
                      (let _%lp128974%_ ((_%rest128976%_ _%clauses128968%_)
                                         (_%rest-ids128977%_
                                          _%clause-ids128969%_)
                                         (_%bindings128978%_ '()))
                        (let* ((_%rest128979128987%_ _%rest128976%_)
                               (_%else128981128995%_
                                (lambda () _%bindings128978%_))
                               (_%K128983129057%_
                                (lambda (_%rest128998%_ _%clause128999%_)
                                  (let* ((_%rest-ids129000129007%_
                                          _%rest-ids128977%_)
                                         (_%E129002129011%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids129000129007%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K129003129045%_
                                          (lambda (_%rest-ids129014%_
                                                   _%clause-id129015%_)
                                            (let* ((_%rest-ids129016129024%_
                                                    _%rest-ids129014%_)
                                                   (_%else129018129032%_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128972%_
                                                               _%clause128999%_
                                                               _%clause-id129015%_
                                                               _%E128970%_))
                                                            _%bindings128978%_)))
                                                   (_%K129020129037%_
                                                    (lambda (_%next-clause-id129035%_)
                                                      (let ((__tmp129717
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_%generate1128972%_
                              _%clause128999%_
                              _%clause-id129015%_
                              _%next-clause-id129035%_))
                           _%bindings128978%_)))
                (declare (not safe))
                (_%lp128974%_
                 _%rest128998%_
                 _%rest-ids129014%_
                 __tmp129717)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids129016129024%_))
                                                  (let* ((_%hd129021129040%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids129016129024%_)))
                                                         (_%next-clause-id129043%_
                                                          _%hd129021129040%_))
                                                    (declare (not safe))
                                                    (_%K129020129037%_
                                                     _%next-clause-id129043%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else129018129032%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids129000129007%_))
                                        (let ((_%hd129004129048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids129000129007%_)))
                                              (_%tl129005129050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids129000129007%_))))
                                          (let* ((_%clause-id129053%_
                                                  _%hd129004129048%_)
                                                 (_%rest-ids129055%_
                                                  _%tl129005129050%_))
                                            (declare (not safe))
                                            (_%K129003129045%_
                                             _%rest-ids129055%_
                                             _%clause-id129053%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E129002129011%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest128979128987%_))
                              (let ((_%hd128984129060%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128979128987%_)))
                                    (_%tl128985129062%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128979128987%_))))
                                (let* ((_%clause129065%_ _%hd128984129060%_)
                                       (_%rest129067%_ _%tl128985129062%_))
                                  (declare (not safe))
                                  (_%K128983129057%_
                                   _%rest129067%_
                                   _%clause129065%_)))
                              (let ()
                                (declare (not safe))
                                (_%else128981128995%_))))))))
                 (_%generate-body128357%_
                  (lambda (_%bindings128926%_ _%body128927%_)
                    (let _%recur128929%_ ((_%rest128931%_ _%bindings128926%_))
                      (let* ((_%rest128932128940%_ _%rest128931%_)
                             (_%else128934128948%_ (lambda () _%body128927%_))
                             (_%K128936128954%_
                              (lambda (_%rest128951%_ _%hd128952%_)
                                (let ((__tmp129719 (cons _%hd128952%_ '()))
                                      (__tmp129718
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128929%_ _%rest128951%_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp129719
                                   __tmp129718)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest128932128940%_))
                            (let ((_%hd128937128957%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest128932128940%_)))
                                  (_%tl128938128959%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest128932128940%_))))
                              (let* ((_%hd128962%_ _%hd128937128957%_)
                                     (_%rest128964%_ _%tl128938128959%_))
                                (declare (not safe))
                                (_%K128936128954%_
                                 _%rest128964%_
                                 _%hd128962%_)))
                            (let ()
                              (declare (not safe))
                              (_%else128934128948%_)))))))
                 (_%generate-clause128358%_
                  (lambda (_%target128789%_
                           _%ids128790%_
                           _%clause128791%_
                           _%E128792%_)
                    (letrec ((_%generate1128794%_
                              (lambda (_%hd128881%_
                                       _%fender128882%_
                                       _%body128883%_)
                                (let ((_g129720_
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-clause128360%_
                                          _%hd128881%_
                                          _%ids128790%_))))
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
                                    (let ((_%e128885%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129720_ 0)))
                                          (_%mvars128886%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129720_ 1))))
                                      (let* ((_%pvars128888%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars128886%_))))
                                             (_%E128890%_
                                              (cons _%E128792%_
                                                    (cons _%target128789%_
                                                          '())))
                                             (_%K128923%_
                                              (let ((__tmp129722
                                                     (let ((__tmp129724
                                                            (map (lambda (_%mvar128892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar128893%_)
                           (let* ((_%mvar128894128901%_ _%mvar128892%_)
                                  (_%E128896128905%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar128894128901%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K128897128911%_
                                   (lambda (_%depth128908%_ _%id128909%_)
                                     (cons _%id128909%_
                                           (cons (let ((__tmp129726
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id128909%_)))
                                                       (__tmp129725
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar128893%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp129726
                                                    __tmp129725
                                                    _%depth128908%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar128894128901%_))
                                 (let ((_%hd128898128914%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar128894128901%_)))
                                       (_%tl128899128916%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar128894128901%_))))
                                   (let* ((_%id128919%_ _%hd128898128914%_)
                                          (_%depth128921%_ _%tl128899128916%_))
                                     (declare (not safe))
                                     (_%K128897128911%_
                                      _%depth128921%_
                                      _%id128919%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%E128896128905%_)))))
                         _%mvars128886%_
                         _%pvars128888%_))
                   (__tmp129723
                    (if (let ()
                          (declare (not safe))
                          (eq? _%fender128882%_ '#t))
                        _%body128883%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender128882%_
                           _%body128883%_
                           _%E128890%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp129724 __tmp129723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars128888%_
                                                 __tmp129722))))
                                        (declare (not safe))
                                        (_%generate-match128359%_
                                         _%hd128881%_
                                         _%target128789%_
                                         _%e128885%_
                                         _%mvars128886%_
                                         _%K128923%_
                                         _%E128890%_))))))))
                      (let* ((_%e128795128815%_ _%clause128791%_)
                             (_%E128804128819%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e128795128815%_))))
                             (_%E128797128853%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128795128815%_))
                                    (let ((_%e128805128823%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128795128815%_))))
                                      (let ((_%hd128806128826%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128805128823%_)))
                                            (_%tl128807128828%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128805128823%_))))
                                        (let ((_%hd128831%_
                                               _%hd128806128826%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128807128828%_))
                                              (let ((_%e128808128833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128807128828%_))))
                                                (let ((_%hd128809128836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128808128833%_)))
                                                      (_%tl128810128838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128808128833%_))))
                                                  (let ((_%fender128841%_
                                                         _%hd128809128836%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl128810128838%_))
                                                        (let ((_%e128811128843%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl128810128838%_))))
                  (let ((_%hd128812128846%_
                         (let ()
                           (declare (not safe))
                           (##car _%e128811128843%_)))
                        (_%tl128813128848%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e128811128843%_))))
                    (let ((_%body128851%_ _%hd128812128846%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl128813128848%_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_%generate1128794%_
                                 _%hd128831%_
                                 _%fender128841%_
                                 _%body128851%_))
                              (let ()
                                (declare (not safe))
                                (_%E128804128819%_)))
                          (let () (declare (not safe)) (_%E128804128819%_))))))
                (let () (declare (not safe)) (_%E128804128819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128804128819%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128804128819%_)))))
                             (_%E128796128877%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e128795128815%_))
                                    (let ((_%e128798128857%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e128795128815%_))))
                                      (let ((_%hd128799128860%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128798128857%_)))
                                            (_%tl128800128862%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128798128857%_))))
                                        (let ((_%hd128865%_
                                               _%hd128799128860%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl128800128862%_))
                                              (let ((_%e128801128867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl128800128862%_))))
                                                (let ((_%hd128802128870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128801128867%_)))
                                                      (_%tl128803128872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128801128867%_))))
                                                  (let ((_%body128875%_
                                                         _%hd128802128870%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl128803128872%_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate1128794%_
                                                               _%hd128865%_
                                                               '#t
                                                               _%body128875%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%E128797128853%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%E128797128853%_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_%E128797128853%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%E128797128853%_))))))
                        (declare (not safe))
                        (_%E128796128877%_)))))
                 (_%generate-match128359%_
                  (lambda (_%where128538%_
                           _%target128539%_
                           _%hd128540%_
                           _%mvars128541%_
                           _%K128542%_
                           _%E128543%_)
                    (letrec ((_%BUG128545%_
                              (lambda (_%q128787%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx128351%_
                                         _%hd128540%_
                                         _%q128787%_))))
                             (_%recur128546%_
                              (lambda (_%e128637%_
                                       _%vars128638%_
                                       _%target128639%_
                                       _%E128640%_
                                       _%k128641%_)
                                (let* ((_%e128642128649%_ _%e128637%_)
                                       (_%E128644128653%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e128642128649%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K128645128775%_
                                        (lambda (_%body128656%_ _%tag128657%_)
                                          (let ((_%$e128659%_ _%tag128657%_))
                                            (if (eq? 'any _%$e128659%_)
                                                (_%k128641%_ _%vars128638%_)
                                                (if (eq? 'id _%$e128659%_)
                                                    (let ((__tmp129731
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target128639%_)))
                                                          (__tmp129727
                                                           (let ((__tmp129729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129730
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e128354%_
                                    _%body128656%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?128352%_
                             __tmp129730
                             _%target128639%_)))
                         (__tmp129728 (_%k128641%_ _%vars128638%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp129729 __tmp129728 _%E128640%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp129731 __tmp129727 _%E128640%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e128659%_)
                                                        (_%k128641%_
                                                         (cons (cons _%body128656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target128639%_)
                       _%vars128638%_))
                (if (eq? 'cons _%$e128659%_)
                    (let ((_%$e128662%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd128663%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl128664%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp129738
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target128639%_)))
                            (__tmp129732
                             (let ((__tmp129737
                                    (cons (cons (cons _%$e128662%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e128353%_
                                                         _%target128639%_))
                                                      '()))
                                          '()))
                                   (__tmp129733
                                    (let ((__tmp129736
                                           (cons (cons (cons _%$hd128663%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e128662%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl128664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e128662%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp129734
                                           (let* ((_%body128665128672%_
                                                   _%body128656%_)
                                                  (_%E128667128676%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body128665128672%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K128668128684%_
                                                   (lambda (_%tl128679%_
                                                            _%hd128680%_)
                                                     (let ((__tmp129735
                                                            (lambda (_%vars128682%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%recur128546%_
                         _%tl128679%_
                         _%vars128682%_
                         _%$tl128664%_
                         _%E128640%_
                         _%k128641%_)))))
               (declare (not safe))
               (_%recur128546%_
                _%hd128680%_
                _%vars128638%_
                _%$hd128663%_
                _%E128640%_
                __tmp129735)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body128665128672%_))
                                                 (let ((_%hd128669128687%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body128665128672%_)))
                                                       (_%tl128670128689%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body128665128672%_))))
                                                   (let* ((_%hd128692%_
                                                           _%hd128669128687%_)
                                                          (_%tl128694%_
                                                           _%tl128670128689%_))
                                                     (declare (not safe))
                                                     (_%K128668128684%_
                                                      _%tl128694%_
                                                      _%hd128692%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%E128667128676%_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp129736
                                       __tmp129734))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp129737
                                __tmp129733))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp129738
                         __tmp129732
                         _%E128640%_)))
                    (if (eq? 'splice _%$e128659%_)
                        (let* ((_%body128695128702%_ _%body128656%_)
                               (_%E128697128706%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body128695128702%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K128698128757%_
                                (lambda (_%tl128709%_ _%hd128710%_)
                                  (let* ((_%rlen128712%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-rlen128547%_
                                             _%tl128709%_)))
                                         (_%$target128714%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd128716%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl128718%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp128720%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e128722%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd128724%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl128726%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars128728%_
                                          (let ()
                                            (declare (not safe))
                                            (_%splice-vars128548%_
                                             _%hd128710%_)))
                                         (_%lvars128730%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128728%_)))
                                         (_%tlvars128732%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars128728%_)))
                                         (_%linit128736%_
                                          (map (lambda (_%var128734%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars128730%_)))
                                    (letrec ((_%make-loop128739%_
                                              (lambda (_%vars128743%_)
                                                (let ((__tmp129741
                                                       (cons (cons (cons _%$lp128720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp129757
                                        (cons _%$hd128716%_ _%lvars128730%_))
                                       (__tmp129742
                                        (let ((__tmp129756
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd128716%_)))
                                              (__tmp129747
                                               (let ((__tmp129755
                                                      (cons (cons (cons _%$lp-e128722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e128353%_
                                   _%$hd128716%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129748
                                                      (let ((__tmp129754
                                                             (cons (cons (cons _%$lp-hd128724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e128722%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl128726%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e128722%_))
                                             '()))
                                 '())))
                    (__tmp129749
                     (let ((__tmp129750
                            (lambda (_%hdvars128745%_)
                              (let ((__tmp129751
                                     (let ((__tmp129752
                                            (map (lambda (_%svar128747%_
                                                          _%lvar128748%_)
                                                   (let ((__tmp129753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (agetq__%
                                                             _%svar128747%_
                                                             _%hdvars128745%_
                                                             _%BUG128545%_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp129753
                                                      _%lvar128748%_)))
                                                 _%svars128728%_
                                                 _%lvars128730%_)))
                                       (declare (not safe))
                                       (cons _%$lp-tl128726%_ __tmp129752))))
                                (declare (not safe))
                                (cons _%$lp128720%_ __tmp129751)))))
                       (declare (not safe))
                       (_%recur128546%_
                        _%hd128710%_
                        '()
                        _%$lp-hd128724%_
                        _%E128640%_
                        __tmp129750))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp129754 __tmp129749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129755
                                                  __tmp129748)))
                                              (__tmp129743
                                               (let ((__tmp129746
                                                      (map (lambda (_%lvar128750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar128751%_)
                     (cons (cons _%tlvar128751%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar128750%_))
                                 '())))
                   _%lvars128730%_
                   _%tlvars128732%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp129744
                                                      (_%k128641%_
                                                       (let ((__tmp129745
                                                              (lambda (_%svar128753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar128754%_
                               _%r128755%_)
                        (cons (cons _%svar128753%_ _%tlvar128754%_)
                              _%r128755%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp129745
                  _%vars128743%_
                  _%svars128728%_
                  _%tlvars128732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp129746
                                                  __tmp129744))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129756
                                           __tmp129747
                                           __tmp129743))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp129757
                                    __tmp129742))
                                 '()))
                     '()))
              (__tmp129739
               (let ((__tmp129740
                      (let ()
                        (declare (not safe))
                        (cons _%$target128714%_ _%linit128736%_))))
                 (declare (not safe))
                 (cons _%$lp128720%_ __tmp129740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp129741
                                                   __tmp129739)))))
                                      (let ((_%body128741%_
                                             (let ((__tmp129759
                                                    (cons (cons (cons _%$target128714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl128718%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target128639%_
                                 _%rlen128712%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129758
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128546%_
                                                       _%tl128709%_
                                                       _%vars128638%_
                                                       _%$tl128718%_
                                                       _%E128640%_
                                                       _%make-loop128739%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129759
                                                __tmp129758))))
                                        (let ((__tmp129763
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target128639%_)))
                                              (__tmp129760
                                               (if (zero? _%rlen128712%_)
                                                   _%body128741%_
                                                   (let ((__tmp129761
                                                          (let ((__tmp129762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target128639%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp129762 _%rlen128712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp129761
                                                      _%body128741%_
                                                      _%E128640%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp129763
                                           __tmp129760
                                           _%E128640%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body128695128702%_))
                              (let ((_%hd128699128760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body128695128702%_)))
                                    (_%tl128700128762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body128695128702%_))))
                                (let* ((_%hd128765%_ _%hd128699128760%_)
                                       (_%tl128767%_ _%tl128700128762%_))
                                  (declare (not safe))
                                  (_%K128698128757%_
                                   _%tl128767%_
                                   _%hd128765%_)))
                              (let ()
                                (declare (not safe))
                                (_%E128697128706%_))))
                        (if (eq? 'null _%$e128659%_)
                            (let ((__tmp129765
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target128639%_)))
                                  (__tmp129764 (_%k128641%_ _%vars128638%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp129765
                               __tmp129764
                               _%E128640%_))
                            (if (eq? 'vector _%$e128659%_)
                                (let ((_%$e128769%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp129770
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target128639%_)))
                                        (__tmp129766
                                         (let ((__tmp129768
                                                (cons (cons (cons _%$e128769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp129769
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e128353%_
                                    _%target128639%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp129769))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp129767
                                                (let ()
                                                  (declare (not safe))
                                                  (_%recur128546%_
                                                   _%body128656%_
                                                   _%vars128638%_
                                                   _%$e128769%_
                                                   _%E128640%_
                                                   _%k128641%_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp129768
                                            __tmp129767))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp129770
                                     __tmp129766
                                     _%E128640%_)))
                                (if (eq? 'box _%$e128659%_)
                                    (let ((_%$e128771%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp129775
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target128639%_)))
                                            (__tmp129771
                                             (let ((__tmp129773
                                                    (cons (cons (cons _%$e128771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129774
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e128353%_
                                        _%target128639%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp129774))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129772
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%recur128546%_
                                                       _%body128656%_
                                                       _%vars128638%_
                                                       _%$e128771%_
                                                       _%E128640%_
                                                       _%k128641%_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129773
                                                __tmp129772))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp129775
                                         __tmp129771
                                         _%E128640%_)))
                                    (if (eq? 'datum _%$e128659%_)
                                        (let ((_%$e128773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp129781
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target128639%_)))
                                                (__tmp129776
                                                 (let ((__tmp129780
                                                        (cons (cons (cons _%$e128773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target128639%_))
                                  '()))
                      '()))
               (__tmp129777
                (let ((__tmp129779
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e128773%_ _%body128656%_)))
                      (__tmp129778 (_%k128641%_ _%vars128638%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp129779 __tmp129778 _%E128640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp129780
                                                    __tmp129777))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp129781
                                             __tmp129776
                                             _%E128640%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%BUG128545%_
                                           _%e128637%_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e128642128649%_))
                                      (let ((_%hd128646128778%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e128642128649%_)))
                                            (_%tl128647128780%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e128642128649%_))))
                                        (let* ((_%tag128783%_
                                                _%hd128646128778%_)
                                               (_%body128785%_
                                                _%tl128647128780%_))
                                          (declare (not safe))
                                          (_%K128645128775%_
                                           _%body128785%_
                                           _%tag128783%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E128644128653%_))))))
                             (_%splice-rlen128547%_
                              (lambda (_%e128599%_)
                                (let _%lp128601%_ ((_%e128603%_ _%e128599%_)
                                                   (_%n128604%_ '0))
                                  (let* ((_%e128605128612%_ _%e128603%_)
                                         (_%E128607128616%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128605128612%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128608128625%_
                                          (lambda (_%body128619%_
                                                   _%tag128620%_)
                                            (let ((_%$e128622%_ _%tag128620%_))
                                              (if (eq? 'splice _%$e128622%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx128351%_
                                                     _%where128538%_))
                                                  (if (eq? 'cons _%$e128622%_)
                                                      (let ((__tmp129783
                                                             (cdr _%body128619%_))
                                                            (__tmp129782
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _%n128604%_ '1))))
                (declare (not safe))
                (_%lp128601%_ __tmp129783 __tmp129782))
              _%n128604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128605128612%_))
                                        (let ((_%hd128609128628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128605128612%_)))
                                              (_%tl128610128630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128605128612%_))))
                                          (let* ((_%tag128633%_
                                                  _%hd128609128628%_)
                                                 (_%body128635%_
                                                  _%tl128610128630%_))
                                            (declare (not safe))
                                            (_%K128608128625%_
                                             _%body128635%_
                                             _%tag128633%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128607128616%_)))))))
                             (_%splice-vars128548%_
                              (lambda (_%e128555%_)
                                (let _%recur128557%_ ((_%e128559%_ _%e128555%_)
                                                      (_%vars128560%_ '()))
                                  (let* ((_%e128561128568%_ _%e128559%_)
                                         (_%E128563128572%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e128561128568%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K128564128587%_
                                          (lambda (_%body128575%_
                                                   _%tag128576%_)
                                            (let ((_%$e128578%_ _%tag128576%_))
                                              (if (eq? 'var _%$e128578%_)
                                                  (cons _%body128575%_
                                                        _%vars128560%_)
                                                  (if (or (eq? 'cons
                                                               _%$e128578%_)
                                                          (eq? 'splice
                                                               _%$e128578%_))
                                                      (let ((__tmp129786
                                                             (cdr _%body128575%_))
                                                            (__tmp129784
                                                             (let ((__tmp129785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _%body128575%_)))
                       (declare (not safe))
                       (_%recur128557%_ __tmp129785 _%vars128560%_))))
                (declare (not safe))
                (_%recur128557%_ __tmp129786 __tmp129784))
              (if (or (eq? 'vector _%$e128578%_) (eq? 'box _%$e128578%_))
                  (let ()
                    (declare (not safe))
                    (_%recur128557%_ _%body128575%_ _%vars128560%_))
                  _%vars128560%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e128561128568%_))
                                        (let ((_%hd128565128590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128561128568%_)))
                                              (_%tl128566128592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128561128568%_))))
                                          (let* ((_%tag128595%_
                                                  _%hd128565128590%_)
                                                 (_%body128597%_
                                                  _%tl128566128592%_))
                                            (declare (not safe))
                                            (_%K128564128587%_
                                             _%body128597%_
                                             _%tag128595%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128563128572%_)))))))
                             (_%make-body128549%_
                              (lambda (_%vars128551%_)
                                (cons _%K128542%_
                                      (map (lambda (_%mvar128553%_)
                                             (let ((__tmp129787
                                                    (car _%mvar128553%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp129787
                                                _%vars128551%_
                                                _%BUG128545%_)))
                                           _%mvars128541%_)))))
                      (let ()
                        (declare (not safe))
                        (_%recur128546%_
                         _%hd128540%_
                         '()
                         _%target128539%_
                         _%E128543%_
                         _%make-body128549%_)))))
                 (_%parse-clause128360%_
                  (lambda (_%hd128432%_ _%ids128433%_)
                    (let _%recur128435%_ ((_%e128437%_ _%hd128432%_)
                                          (_%vars128438%_ '())
                                          (_%depth128439%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e128437%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (gx#underscore? _%e128437%_))
                                (let () (values '(any) _%vars128438%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#ellipsis? _%e128437%_))
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Misplaced ellipsis"
                                       _%stx128351%_
                                       _%hd128432%_))
                                    (if (let ((__tmp129788
                                               (lambda (_%id128444%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#bound-identifier=?
                                                    _%e128437%_
                                                    _%id128444%_)))))
                                          (declare (not safe))
                                          (__find __tmp129788 _%ids128433%_))
                                        (let ()
                                          (values (cons 'id _%e128437%_)
                                                  _%vars128438%_))
                                        (if (let ((__tmp129789
                                                   (lambda (_%var128447%_)
                                                     (let ((__tmp129790
                                                            (car _%var128447%_)))
                                                       (declare (not safe))
                                                       (gx#bound-identifier=?
                                                        _%e128437%_
                                                        __tmp129790)))))
                                              (declare (not safe))
                                              (__find __tmp129789
                                                      _%vars128438%_))
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Duplicate pattern variable"
                                               _%stx128351%_
                                               _%e128437%_))
                                            (let ()
                                              (values (cons 'var _%e128437%_)
                                                      (cons (cons _%e128437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%depth128439%_)
                    _%vars128438%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128437%_))
                              (let ()
                                (let* ((_%e128451128458%_ _%e128437%_)
                                       (_%E128453128462%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid syntax-case clause"
                                             _%e128451128458%_))))
                                       (_%E128452128523%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e128451128458%_))
                                              (let ((_%e128454128466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128451128458%_))))
                                                (let ((_%hd128455128469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e128454128466%_)))
                                                      (_%tl128456128471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e128454128466%_))))
                                                  (let* ((_%hd128474%_
                                                          _%hd128455128469%_)
                                                         (_%rest128476%_
                                                          _%tl128456128471%_))
                                                    (if '#t
                                                        (let* ((_%make-pair128491%_
                                                                (lambda (_%tag128478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%hd128479%_
                                 _%tl128480%_)
                          (let* ((_%hd-depth128482%_
                                  (if (eq? _%tag128478%_ 'splice)
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%depth128439%_ '1))
                                      _%depth128439%_))
                                 (_g129791_
                                  (let ()
                                    (declare (not safe))
                                    (_%recur128435%_
                                     _%hd128479%_
                                     _%vars128438%_
                                     _%hd-depth128482%_))))
                            (begin
                              (let ((_g129792_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g129791_)
                                           (##vector-length _g129791_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g129792_ 2)))
                                    (error "Context expects 2 values"
                                           _g129792_)))
                              (let ((_%hd128484%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129791_ 0)))
                                    (_%vars128485%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g129791_ 1))))
                                (let ((_g129793_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur128435%_
                                          _%tl128480%_
                                          _%vars128485%_
                                          _%depth128439%_))))
                                  (begin
                                    (let ((_g129794_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129793_)
                                                 (##vector-length _g129793_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129794_ 2)))
                                          (error "Context expects 2 values"
                                                 _g129794_)))
                                    (let ((_%tl128487%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129793_ 0)))
                                          (_%vars128488%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129793_ 1))))
                                      (let ()
                                        (values (let ((__tmp129795
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _%hd128484%_
                                                               _%tl128487%_))))
                                                  (declare (not safe))
                                                  (cons _%tag128478%_
                                                        __tmp129795))
                                                _%vars128488%_))))))))))
                       (_%e128492128499%_ _%rest128476%_)
                       (_%E128494128503%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (_%make-pair128491%_
                             'cons
                             _%hd128474%_
                             _%rest128476%_))))
                       (_%E128493128519%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e128492128499%_))
                              (let ((_%e128495128507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%e128492128499%_))))
                                (let ((_%hd128496128510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e128495128507%_)))
                                      (_%tl128497128512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e128495128507%_))))
                                  (let* ((_%rest-hd128515%_ _%hd128496128510%_)
                                         (_%rest-tl128517%_
                                          _%tl128497128512%_))
                                    (if '#t
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#ellipsis? _%rest-hd128515%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128491%_
                                               'splice
                                               _%hd128474%_
                                               _%rest-tl128517%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%make-pair128491%_
                                               'cons
                                               _%hd128474%_
                                               _%rest128476%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E128494128503%_))))))
                              (let ()
                                (declare (not safe))
                                (_%E128494128503%_))))))
                  (declare (not safe))
                  (_%E128493128519%_))
                (let () (declare (not safe)) (_%E128453128462%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%E128453128462%_))))))
                                  (declare (not safe))
                                  (_%E128452128523%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e128437%_))
                                  (let () (values '(null) _%vars128438%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e128437%_))
                                      (let ((_g129796_
                                             (let ((__tmp129798
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e128437%_)))))
                                               (declare (not safe))
                                               (_%recur128435%_
                                                __tmp129798
                                                _%vars128438%_
                                                _%depth128439%_))))
                                        (begin
                                          (let ((_g129797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129796_)
                                                       (##vector-length
                                                        _g129796_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129797_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129797_)))
                                          (let ((_%e128529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129796_ 0)))
                                                (_%vars128530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129796_
                                                    1))))
                                            (values (cons 'vector _%e128529%_)
                                                    _%vars128530%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e128437%_))
                                          (let ((_g129799_
                                                 (let ((__tmp129801
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%e128437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%recur128435%_
                                                    __tmp129801
                                                    _%vars128438%_
                                                    _%depth128439%_))))
                                            (begin
                                              (let ((_g129800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g129799_)
                                                           (##vector-length
                                                            _g129799_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g129800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g129800_)))
                                              (let ((_%e128533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129799_
                                                        0)))
                                                    (_%vars128534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g129799_
                                                        1))))
                                                (values (cons 'box _%e128533%_)
                                                        _%vars128534%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e128437%_))
                                              (let ()
                                                (values (cons 'datum
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%e128437%_)))
                _%vars128438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx128351%_
                                                 _%e128437%_))))))))))))
          (let* ((_%e128361128374%_ _%stx128351%_)
                 (_%E128363128378%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e128361128374%_))))
                 (_%E128362128428%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e128361128374%_))
                        (let ((_%e128364128382%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e128361128374%_))))
                          (let ((_%hd128365128385%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e128364128382%_)))
                                (_%tl128366128387%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e128364128382%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl128366128387%_))
                                (let ((_%e128367128390%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl128366128387%_))))
                                  (let ((_%hd128368128393%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e128367128390%_)))
                                        (_%tl128369128395%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e128367128390%_))))
                                    (let ((_%expr128398%_ _%hd128368128393%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl128369128395%_))
                                          (let ((_%e128370128400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl128369128395%_))))
                                            (let ((_%hd128371128403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128370128400%_)))
                                                  (_%tl128372128405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128370128400%_))))
                                              (let* ((_%ids128408%_
                                                      _%hd128371128403%_)
                                                     (_%clauses128410%_
                                                      _%tl128372128405%_))
                                                (if '#t
                                                    (if (let ((__tmp129802
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _%ids128408%_))))
                  (declare (not safe))
                  (not __tmp129802))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _%stx128351%_
                   _%ids128408%_))
                (if (let ((__tmp129803
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _%clauses128410%_))))
                      (declare (not safe))
                      (not __tmp129803))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _%stx128351%_))
                    (let ()
                      (let* ((_%ids128415%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%ids128408%_)))
                             (_%clauses128417%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax->list _%clauses128410%_)))
                             (_%clause-ids128419%_
                              (let ()
                                (declare (not safe))
                                (gx#gentemps _%clauses128417%_)))
                             (_%E128421%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%target128423%_
                              (let () (declare (not safe)) (gx#genident__0)))
                             (_%first128425%_
                              (if (let ()
                                    (declare (not safe))
                                    (null? _%clauses128417%_))
                                  _%E128421%_
                                  (car _%clause-ids128419%_))))
                        (let ((__tmp129805
                               (let ((__tmp129806
                                      (let ((__tmp129808
                                             (let ((__tmp129812
                                                    (cons (cons (cons _%E128421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp129814 (cons _%target128423%_ '()))
                                    (__tmp129813
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        'raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%target128423%_))))
                                (declare (not safe))
                                (gx#core-list
                                 'lambda%
                                 __tmp129814
                                 __tmp129813))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp129809
                                                    (let ((__tmp129811
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-bindings128356%_
                                                              _%target128423%_
                                                              _%ids128415%_
                                                              _%clauses128417%_
                                                              _%clause-ids128419%_
                                                              _%E128421%_)))
                                                          (__tmp129810
                                                           (cons _%first128425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr128398%_ '()))))
              (declare (not safe))
              (_%generate-body128357%_ __tmp129811 __tmp129810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp129812
                                                __tmp129809)))
                                            (__tmp129807
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-source _%stx128351%_))))
                                        (declare (not safe))
                                        (gx#stx-wrap-source
                                         __tmp129808
                                         __tmp129807))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'begin-annotation
                                  '@syntax-case
                                  __tmp129806)))
                              (__tmp129804
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx128351%_))))
                          (declare (not safe))
                          (gx#stx-wrap-source __tmp129805 __tmp129804))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E128363128378%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E128363128378%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%E128363128378%_)))))
                        (let () (declare (not safe)) (_%E128363128378%_))))))
            (declare (not safe))
            (_%E128362128428%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx129076%_)
        (let* ((_%identifier=?129078%_ 'free-identifier=?)
               (_%unwrap-e129080%_ 'syntax-e)
               (_%wrap-e129082%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129076%_
           _%identifier=?129078%_
           _%unwrap-e129080%_
           _%wrap-e129082%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx129084%_ _%identifier=?129085%_)
        (let* ((_%unwrap-e129087%_ 'syntax-e) (_%wrap-e129089%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129084%_
           _%identifier=?129085%_
           _%unwrap-e129087%_
           _%wrap-e129089%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx129091%_ _%identifier=?129092%_ _%unwrap-e129093%_)
        (let ((_%wrap-e129095%_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129091%_
           _%identifier=?129092%_
           _%unwrap-e129093%_
           _%wrap-e129095%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g129816_
        (let ((_g129815_ (let () (declare (not safe)) (##length _g129816_))))
          (cond ((let () (declare (not safe)) (##fx= _g129815_ 1))
                 (apply (lambda (_%stx129076%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _%stx129076%_)))
                        _g129816_))
                ((let () (declare (not safe)) (##fx= _g129815_ 2))
                 (apply (lambda (_%stx129084%_ _%identifier=?129085%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _%stx129084%_
                             _%identifier=?129085%_)))
                        _g129816_))
                ((let () (declare (not safe)) (##fx= _g129815_ 3))
                 (apply (lambda (_%stx129091%_
                                 _%identifier=?129092%_
                                 _%unwrap-e129093%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _%stx129091%_
                             _%identifier=?129092%_
                             _%unwrap-e129093%_)))
                        _g129816_))
                ((let () (declare (not safe)) (##fx= _g129815_ 4))
                 (apply (lambda (_%stx129097%_
                                 _%identifier=?129098%_
                                 _%unwrap-e129099%_
                                 _%wrap-e129100%_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _%stx129097%_
                             _%identifier=?129098%_
                             _%unwrap-e129099%_
                             _%wrap-e129100%_)))
                        _g129816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g129816_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx128348%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx128348%_))
            (let ((__tmp129817
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx128348%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp129817 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd128306%_ . _%rest128307%_)
        (let ((_%len128309%_ (length _%hd128306%_)))
          (let _%lp128311%_ ((_%rest128313%_ _%rest128307%_))
            (let* ((_%rest128314128322%_ _%rest128313%_)
                   (_%else128316128330%_ (lambda () '#!void))
                   (_%K128318128336%_
                    (lambda (_%rest128333%_ _%hd128334%_)
                      (if (let ((__tmp129818 (length _%hd128334%_)))
                            (declare (not safe))
                            (##fx= _%len128309%_ __tmp129818))
                          (let ()
                            (declare (not safe))
                            (_%lp128311%_ _%rest128333%_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd128334%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest128314128322%_))
                  (let ((_%hd128319128339%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128314128322%_)))
                        (_%tl128320128341%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128314128322%_))))
                    (let* ((_%hd128344%_ _%hd128319128339%_)
                           (_%rest128346%_ _%tl128320128341%_))
                      (declare (not safe))
                      (_%K128318128336%_ _%rest128346%_ _%hd128344%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx128261%_ _%n128262%_)
        (let _%lp128264%_ ((_%rest128266%_ _%stx128261%_) (_%r128267%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest128266%_))
              (let* ((_%g128268128275%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest128266%_)))
                     (_%E128270128279%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g128268128275%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K128271128285%_
                      (lambda (_%rest128282%_ _%hd128283%_)
                        (let ((__tmp129819 (cons _%hd128283%_ _%r128267%_)))
                          (declare (not safe))
                          (_%lp128264%_ _%rest128282%_ __tmp129819)))))
                (if (let () (declare (not safe)) (##pair? _%g128268128275%_))
                    (let ((_%hd128272128288%_
                           (let ()
                             (declare (not safe))
                             (##car _%g128268128275%_)))
                          (_%tl128273128290%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g128268128275%_))))
                      (let* ((_%hd128293%_ _%hd128272128288%_)
                             (_%rest128295%_ _%tl128273128290%_))
                        (declare (not safe))
                        (_%K128271128285%_ _%rest128295%_ _%hd128293%_)))
                    (let () (declare (not safe)) (_%E128270128279%_))))
              (let _%lp128297%_ ((_%n128299%_ _%n128262%_)
                                 (_%l128300%_ _%r128267%_)
                                 (_%r128301%_ _%rest128266%_))
                (if (let () (declare (not safe)) (null? _%l128300%_))
                    (let () (values _%l128300%_ _%r128301%_))
                    (if (fxpositive? _%n128299%_)
                        (let ((__tmp129822
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%n128299%_ '1)))
                              (__tmp129821 (cdr _%l128300%_))
                              (__tmp129820
                               (cons (car _%l128300%_) _%r128301%_)))
                          (declare (not safe))
                          (_%lp128297%_ __tmp129822 __tmp129821 __tmp129820))
                        (let ()
                          (values (reverse _%l128300%_) _%r128301%_)))))))))))
