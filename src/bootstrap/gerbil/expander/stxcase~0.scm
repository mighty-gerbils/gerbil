(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1773012986)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp190646 (list gx#expander::t))
            (__tmp190645 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp190646
         '(id depth)
         __tmp190645
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args190642%_
        (apply make-instance gx#syntax-pattern::t _%$args190642%_)))
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
      (lambda (_%self190628%_ _%stx190629%_)
        (let ((_%self190632%_ _%self190628%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx190629%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx190095%_)
        (letrec ((_%generate190097%_
                  (lambda (_%e190337%_)
                    (letrec ((_%BUG190339%_
                              (lambda (_%q190504%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx190095%_
                                         _%e190337%_
                                         _%q190504%_))))
                             (_%local-pattern-e190340%_
                              (lambda (_%pat190502%_)
                                (let ((__tmp190647
                                       (##structure-ref
                                        _%pat190502%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp190647))))
                             (_%getvar190341%_
                              (lambda (_%q190499%_ _%vars190500%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q190499%_
                                   _%vars190500%_
                                   _%BUG190339%_))))
                             (_%getarg190342%_
                              (lambda (_%arg190465%_ _%vars190466%_)
                                (let* ((_%arg190467190474%_ _%arg190465%_)
                                       (_%E190469190478%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg190467190474%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K190470190487%_
                                        (lambda (_%e190481%_ _%tag190482%_)
                                          (let ((_%$e190484%_ _%tag190482%_))
                                            (if (eq? 'ref _%$e190484%_)
                                                (_%getvar190341%_
                                                 _%e190481%_
                                                 _%vars190466%_)
                                                (if (eq? 'pattern _%$e190484%_)
                                                    (_%local-pattern-e190340%_
                                                     _%e190481%_)
                                                    (_%BUG190339%_
                                                     _%arg190465%_)))))))
                                  (if (pair? _%arg190467190474%_)
                                      (let ((_%hd190471190490%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg190467190474%_)))
                                            (_%tl190472190492%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg190467190474%_))))
                                        (let* ((_%tag190495%_
                                                _%hd190471190490%_)
                                               (_%e190497%_
                                                _%tl190472190492%_))
                                          (_%K190470190487%_
                                           _%e190497%_
                                           _%tag190495%_)))
                                      (_%E190469190478%_))))))
                      (let _%recur190344%_ ((_%e190346%_ _%e190337%_)
                                            (_%vars190347%_ '()))
                        (let* ((_%e190348190355%_ _%e190346%_)
                               (_%E190350190359%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e190348190355%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K190351190453%_
                                (lambda (_%body190362%_ _%tag190363%_)
                                  (let ((_%$e190365%_ _%tag190363%_))
                                    (if (eq? 'datum _%$e190365%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body190362%_))
                                        (if (eq? 'term _%$e190365%_)
                                            (let ((_%id190368%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body190362%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id190368%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks190371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id190368%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks190371%_)
                                                        (let ((__tmp190648
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body190362%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp190648))
                (let ((__tmp190650
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body190362%_)))
                      (__tmp190649
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body190362%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp190650
                   __tmp190649
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id190368%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body190362%_))
                                                      (_%BUG190339%_
                                                       _%e190346%_))))
                                            (if (eq? 'pattern _%$e190365%_)
                                                (_%local-pattern-e190340%_
                                                 _%body190362%_)
                                                (if (eq? 'ref _%$e190365%_)
                                                    (_%getvar190341%_
                                                     _%body190362%_
                                                     _%vars190347%_)
                                                    (if (eq? 'cons
                                                             _%$e190365%_)
                                                        (let ((__tmp190652
                                                               (_%recur190344%_
                                                                (car _%body190362%_)
                                                                _%vars190347%_))
                                                              (__tmp190651
                                                               (_%recur190344%_
                                                                (cdr _%body190362%_)
                                                                _%vars190347%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp190652
                                                           __tmp190651))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e190365%_)
                    (let ((__tmp190653
                           (_%recur190344%_ _%body190362%_ _%vars190347%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp190653))
                    (if (eq? 'box _%$e190365%_)
                        (let ((__tmp190654
                               (_%recur190344%_
                                _%body190362%_
                                _%vars190347%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp190654))
                        (if (eq? 'splice _%$e190365%_)
                            (let* ((_%body190374190385%_ _%body190362%_)
                                   (_%E190376190389%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body190374190385%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K190377190427%_
                                    (lambda (_%args190392%_
                                             _%iv190393%_
                                             _%hd190394%_
                                             _%depth190395%_)
                                      (let* ((_%targets190401%_
                                              (map (lambda (_%g190396190398%_)
                                                     (_%getarg190342%_
                                                      _%g190396190398%_
                                                      _%vars190347%_))
                                                   _%args190392%_))
                                             (_%fold-in190403%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args190392%_)))
                                             (_%fold-out190405%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args190407%_
                                              (let ((__tmp190655
                                                     (cons _%fold-out190405%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp190655
                                                 _%fold-in190403%_)))
                                             (_%lambda-body190424%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth190395%_ '1))
                                                  (let ((_%r-args190415%_
                                                         (map (lambda (_%arg190409%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg190409%_)))
                      _%args190392%_))
                (_%r-vars190416%_
                 (let ((__tmp190656
                        (lambda (_%arg190411%_ _%var190412%_ _%r190413%_)
                          (cons (cons (cdr _%arg190411%_) _%var190412%_)
                                _%r190413%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp190656
                    _%vars190347%_
                    _%args190392%_
                    _%fold-in190403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur190344%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth190395%_ '1))
                         (cons _%hd190394%_
                               (cons (cons 'var _%fold-out190405%_)
                                     _%r-args190415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars190416%_))
                                                  (let* ((_%hd-vars190422%_
                                                          (let ((__tmp190657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg190418%_ _%var190419%_ _%r190420%_)
                           (cons (cons (cdr _%arg190418%_) _%var190419%_)
                                 _%r190420%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp190657
                     _%vars190347%_
                     _%args190392%_
                     _%fold-in190403%_)))
                 (__tmp190658
                  (_%recur190344%_ _%hd190394%_ _%hd-vars190422%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp190658
                                                     _%fold-out190405%_)))))
                                        (let ((__tmp190662
                                               (if (let ((__tmp190663
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets190401%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp190663 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets190401%_))
                                                   '#!void))
                                              (__tmp190659
                                               (let ((__tmp190661
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args190407%_
                                                         _%lambda-body190424%_)))
                                                     (__tmp190660
                                                      (_%recur190344%_
                                                       _%iv190393%_
                                                       _%vars190347%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp190661
                                                  __tmp190660
                                                  _%targets190401%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp190662
                                           __tmp190659))))))
                              (if (pair? _%body190374190385%_)
                                  (let ((_%hd190378190430%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body190374190385%_)))
                                        (_%tl190379190432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body190374190385%_))))
                                    (let ((_%depth190435%_ _%hd190378190430%_))
                                      (if (pair? _%tl190379190432%_)
                                          (let ((_%hd190380190437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl190379190432%_)))
                                                (_%tl190381190439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl190379190432%_))))
                                            (let ((_%hd190442%_
                                                   _%hd190380190437%_))
                                              (if (pair? _%tl190381190439%_)
                                                  (let ((_%hd190382190444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl190381190439%_)))
                                                        (_%tl190383190446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl190381190439%_))))
                                                    (let* ((_%iv190449%_
                                                            _%hd190382190444%_)
                                                           (_%args190451%_
                                                            _%tl190383190446%_))
                                                      (_%K190377190427%_
                                                       _%args190451%_
                                                       _%iv190449%_
                                                       _%hd190442%_
                                                       _%depth190435%_)))
                                                  (_%E190376190389%_))))
                                          (_%E190376190389%_))))
                                  (_%E190376190389%_)))
                            (if (eq? 'var _%$e190365%_)
                                _%body190362%_
                                (_%BUG190339%_ _%e190346%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e190348190355%_)
                              (let ((_%hd190352190456%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e190348190355%_)))
                                    (_%tl190353190458%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e190348190355%_))))
                                (let* ((_%tag190461%_ _%hd190352190456%_)
                                       (_%body190463%_ _%tl190353190458%_))
                                  (_%K190351190453%_
                                   _%body190463%_
                                   _%tag190461%_)))
                              (_%E190350190359%_)))))))
                 (_%parse190098%_
                  (lambda (_%e190139%_)
                    (letrec ((_%make-cons190141%_
                              (lambda (_%hd190329%_ _%tl190330%_)
                                (let ((_g190664_ _%hd190329%_)
                                      (_g190666_ _%tl190330%_))
                                  (begin
                                    (let ((_g190665_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190664_)
                                                 (##values-length _g190664_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190665_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190665_)))
                                    (let ((_g190667_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190666_)
                                                 (##values-length _g190666_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190667_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190667_)))
                                    (let ((_%hd-e190332%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190664_ 0)))
                                          (_%hd-vars190333%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190664_ 1))))
                                      (let ((_%tl-e190334%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190666_ 0)))
                                            (_%tl-vars190335%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190666_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e190332%_
                                                            _%tl-e190334%_))
                                                (append _%hd-vars190333%_
                                                        _%tl-vars190335%_))))))))
                             (_%make-splice190142%_
                              (lambda (_%where190265%_
                                       _%depth190266%_
                                       _%hd190267%_
                                       _%tl190268%_)
                                (let ((_g190668_ _%hd190267%_)
                                      (_g190670_ _%tl190268%_))
                                  (begin
                                    (let ((_g190669_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190668_)
                                                 (##values-length _g190668_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190669_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190669_)))
                                    (let ((_g190671_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190670_)
                                                 (##values-length _g190670_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190671_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190671_)))
                                    (let ((_%hd-e190270%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190668_ 0)))
                                          (_%hd-vars190271%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190668_ 1))))
                                      (let ((_%tl-e190272%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190670_ 0)))
                                            (_%tl-vars190273%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190670_ 1))))
                                        (let _%lp190275%_ ((_%rest190277%_
                                                            _%hd-vars190271%_)
                                                           (_%targets190278%_
                                                            '())
                                                           (_%vars190279%_
                                                            _%tl-vars190273%_))
                                          (let* ((_%rest190280190290%_
                                                  _%rest190277%_)
                                                 (_%else190282190298%_
                                                  (lambda ()
                                                    (if (null? _%targets190278%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx190095%_
                                                           _%where190265%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth190266%_
                                    (cons _%hd-e190270%_
                                          (cons _%tl-e190272%_
                                                _%targets190278%_))))
                        _%vars190279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K190284190310%_
                                                  (lambda (_%rest190301%_
                                                           _%hd-pat190302%_
                                                           _%hd-depth*190303%_)
                                                    (let ((_%hd-depth190305%_
                                                           (fx- _%hd-depth*190303%_
                                                                _%depth190266%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth190305%_))
                                                          (_%lp190275%_
                                                           _%rest190301%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat190302%_)
                         _%targets190278%_)
                   (cons (cons _%hd-depth190305%_ _%hd-pat190302%_)
                         _%vars190279%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth190305%_))
                      (_%lp190275%_
                       _%rest190301%_
                       (cons (cons 'pattern _%hd-pat190302%_)
                             _%targets190278%_)
                       _%vars190279%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx190095%_
                         _%where190265%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest190280190290%_)
                                                (let ((_%hd190285190313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest190280190290%_)))
                                                      (_%tl190286190315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest190280190290%_))))
                                                  (if (pair? _%hd190285190313%_)
                                                      (let ((_%hd190287190318%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd190285190313%_)))
                    (_%tl190288190320%_
                     (let () (declare (not safe)) (##cdr _%hd190285190313%_))))
                (let* ((_%hd-depth*190323%_ _%hd190287190318%_)
                       (_%hd-pat190325%_ _%tl190288190320%_)
                       (_%rest190327%_ _%tl190286190315%_))
                  (_%K190284190310%_
                   _%rest190327%_
                   _%hd-pat190325%_
                   _%hd-depth*190323%_)))
              (_%else190282190298%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else190282190298%_))))))))))
                             (_%recur190143%_
                              (lambda (_%e190148%_ _%is-e?190149%_)
                                (if (_%is-e?190149%_ _%e190148%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx190095%_))
                                    (if (gx#syntax-local-pattern? _%e190148%_)
                                        (let* ((_%pat190153%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e190148%_)))
                                               (_%depth190155%_
                                                (##structure-ref
                                                 _%pat190153%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth190155%_)
                                              (values (cons 'ref _%pat190153%_)
                                                      (cons (cons _%depth190155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat190153%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat190153%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e190148%_))
                                            (values (cons 'term _%e190148%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e190148%_))
                                                (let* ((_%e190159190166%_
                                                        _%e190148%_)
                                                       (_%E190161190170%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e190159190166%_))))
                                                       (_%E190160190252%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e190159190166%_))
                      (let ((_%e190162190174%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e190159190166%_))))
                        (let ((_%hd190163190177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190162190174%_)))
                              (_%tl190164190179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190162190174%_))))
                          (let* ((_%hd190182%_ _%hd190163190177%_)
                                 (_%rest190184%_ _%tl190164190179%_))
                            (if (_%is-e?190149%_ _%hd190182%_)
                                (let* ((_%e190185190192%_ _%rest190184%_)
                                       (_%E190187190196%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx190095%_
                                             _%e190148%_))))
                                       (_%E190186190210%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e190185190192%_))
                                              (let ((_%e190188190200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e190185190192%_))))
                                                (let ((_%hd190189190203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190188190200%_)))
                                                      (_%tl190190190205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190188190200%_))))
                                                  (let ((_%rest190208%_
                                                         _%hd190189190203%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190190190205%_))
                                                        (_%recur190143%_
                                                         _%rest190208%_
                                                         false)
                                                        (_%E190187190196%_)))))
                                              (_%E190187190196%_)))))
                                  (_%E190186190210%_))
                                (let _%lp190214%_ ((_%rest190216%_
                                                    _%rest190184%_)
                                                   (_%depth190217%_ '0))
                                  (let* ((_%e190218190225%_ _%rest190216%_)
                                         (_%E190220190229%_
                                          (lambda ()
                                            (if (fxpositive? _%depth190217%_)
                                                (_%make-splice190142%_
                                                 _%e190148%_
                                                 _%depth190217%_
                                                 (_%recur190143%_
                                                  _%hd190182%_
                                                  _%is-e?190149%_)
                                                 (_%recur190143%_
                                                  _%rest190216%_
                                                  _%is-e?190149%_))
                                                (_%make-cons190141%_
                                                 (_%recur190143%_
                                                  _%hd190182%_
                                                  _%is-e?190149%_)
                                                 (_%recur190143%_
                                                  _%rest190216%_
                                                  _%is-e?190149%_)))))
                                         (_%E190219190248%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e190218190225%_))
                                                (let ((_%e190221190233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e190218190225%_))))
                                                  (let ((_%hd190222190236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e190221190233%_)))
                                                        (_%tl190223190238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e190221190233%_))))
                                                    (let* ((_%rest-hd190241%_
                                                            _%hd190222190236%_)
                                                           (_%rest-tl190243%_
                                                            _%tl190223190238%_))
                                                      (if (_%is-e?190149%_
                                                           _%rest-hd190241%_)
                                                          (_%lp190214%_
                                                           _%rest-tl190243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth190217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth190217%_)
                      (_%make-splice190142%_
                       _%e190148%_
                       _%depth190217%_
                       (_%recur190143%_ _%hd190182%_ _%is-e?190149%_)
                       (_%recur190143%_ _%rest190216%_ _%is-e?190149%_))
                      (_%make-cons190141%_
                       (_%recur190143%_ _%hd190182%_ _%is-e?190149%_)
                       (_%recur190143%_ _%rest190216%_ _%is-e?190149%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E190220190229%_)))))
                                    (_%E190219190248%_)))))))
                      (_%E190161190170%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E190160190252%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e190148%_))
                                                    (let ((_g190672_
                                                           (_%recur190143%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e190148%_)))
                    _%is-e?190149%_)))
              (begin
                (let ((_g190673_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g190672_)
                             (##values-length _g190672_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g190673_ 2)))
                      (error "Context expects 2 values" _g190673_)))
                (let ((_%e190257%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190672_ 0)))
                      (_%vars190258%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190672_ 1))))
                  (values (cons 'vector _%e190257%_) _%vars190258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e190148%_))
                                                        (let ((_g190674_
                                                               (_%recur190143%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e190148%_)))
                        _%is-e?190149%_)))
                  (begin
                    (let ((_g190675_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g190674_)
                                 (##values-length _g190674_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g190675_ 2)))
                          (error "Context expects 2 values" _g190675_)))
                    (let ((_%e190261%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190674_ 0)))
                          (_%vars190262%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190674_ 1))))
                      (values (cons 'box _%e190261%_) _%vars190262%_))))
                (values (cons 'datum _%e190148%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g190676_
                             (_%recur190143%_ _%e190139%_ gx#ellipsis?)))
                        (begin
                          (let ((_g190677_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g190676_)
                                       (##values-length _g190676_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g190677_ 2)))
                                (error "Context expects 2 values" _g190677_)))
                          (let ((_%tree190145%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190676_ 0)))
                                (_%vars190146%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190676_ 1))))
                            (if (null? _%vars190146%_)
                                _%tree190145%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx190095%_
                                   _%vars190146%_))))))))))
          (let* ((_%e190099190109%_ _%stx190095%_)
                 (_%E190101190113%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx190095%_))))
                 (_%E190100190135%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e190099190109%_))
                        (let ((_%e190102190117%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e190099190109%_))))
                          (let ((_%hd190103190120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190102190117%_)))
                                (_%tl190104190122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190102190117%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190104190122%_))
                                (let ((_%e190105190125%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl190104190122%_))))
                                  (let ((_%hd190106190128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190105190125%_)))
                                        (_%tl190107190130%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190105190125%_))))
                                    (let ((_%form190133%_ _%hd190106190128%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190107190130%_))
                                          (let ((__tmp190679
                                                 (_%generate190097%_
                                                  (_%parse190098%_
                                                   _%form190133%_)))
                                                (__tmp190678
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx190095%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp190679
                                             __tmp190678))
                                          (_%E190101190113%_)))))
                                (_%E190101190113%_))))
                        (_%E190101190113%_)))))
            (_%E190100190135%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx189344%_
               _%identifier=?189345%_
               _%unwrap-e189346%_
               _%wrap-e189347%_)
        (letrec ((_%generate-bindings189349%_
                  (lambda (_%target189959%_
                           _%ids189960%_
                           _%clauses189961%_
                           _%clause-ids189962%_
                           _%E189963%_)
                    (letrec ((_%generate1189965%_
                              (lambda (_%clause190062%_
                                       _%clause-id190063%_
                                       _%E190064%_)
                                (cons (cons _%clause-id190063%_ '())
                                      (cons (let ((__tmp190681
                                                   (cons _%target189959%_ '()))
                                                  (__tmp190680
                                                   (_%generate-clause189351%_
                                                    _%target189959%_
                                                    _%ids189960%_
                                                    _%clause190062%_
                                                    _%E190064%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp190681
                                               __tmp190680))
                                            '())))))
                      (let _%lp189967%_ ((_%rest189969%_ _%clauses189961%_)
                                         (_%rest-ids189970%_
                                          _%clause-ids189962%_)
                                         (_%bindings189971%_ '()))
                        (let* ((_%rest189972189980%_ _%rest189969%_)
                               (_%else189974189988%_
                                (lambda () _%bindings189971%_))
                               (_%K189976190050%_
                                (lambda (_%rest189991%_ _%clause189992%_)
                                  (let* ((_%rest-ids189993190000%_
                                          _%rest-ids189970%_)
                                         (_%E189995190004%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids189993190000%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K189996190038%_
                                          (lambda (_%rest-ids190007%_
                                                   _%clause-id190008%_)
                                            (let* ((_%rest-ids190009190017%_
                                                    _%rest-ids190007%_)
                                                   (_%else190011190025%_
                                                    (lambda ()
                                                      (cons (_%generate1189965%_
                                                             _%clause189992%_
                                                             _%clause-id190008%_
                                                             _%E189963%_)
                                                            _%bindings189971%_)))
                                                   (_%K190013190030%_
                                                    (lambda (_%next-clause-id190028%_)
                                                      (_%lp189967%_
                                                       _%rest189991%_
                                                       _%rest-ids190007%_
                                                       (cons (_%generate1189965%_
                                                              _%clause189992%_
                                                              _%clause-id190008%_
                                                              _%next-clause-id190028%_)
                                                             _%bindings189971%_)))))
                                              (if (pair? _%rest-ids190009190017%_)
                                                  (let* ((_%hd190014190033%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids190009190017%_)))
                                                         (_%next-clause-id190036%_
                                                          _%hd190014190033%_))
                                                    (_%K190013190030%_
                                                     _%next-clause-id190036%_))
                                                  (_%else190011190025%_))))))
                                    (if (pair? _%rest-ids189993190000%_)
                                        (let ((_%hd189997190041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids189993190000%_)))
                                              (_%tl189998190043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids189993190000%_))))
                                          (let* ((_%clause-id190046%_
                                                  _%hd189997190041%_)
                                                 (_%rest-ids190048%_
                                                  _%tl189998190043%_))
                                            (_%K189996190038%_
                                             _%rest-ids190048%_
                                             _%clause-id190046%_)))
                                        (_%E189995190004%_))))))
                          (if (pair? _%rest189972189980%_)
                              (let ((_%hd189977190053%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest189972189980%_)))
                                    (_%tl189978190055%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest189972189980%_))))
                                (let* ((_%clause190058%_ _%hd189977190053%_)
                                       (_%rest190060%_ _%tl189978190055%_))
                                  (_%K189976190050%_
                                   _%rest190060%_
                                   _%clause190058%_)))
                              (_%else189974189988%_)))))))
                 (_%generate-body189350%_
                  (lambda (_%bindings189919%_ _%body189920%_)
                    (let _%recur189922%_ ((_%rest189924%_ _%bindings189919%_))
                      (let* ((_%rest189925189933%_ _%rest189924%_)
                             (_%else189927189941%_ (lambda () _%body189920%_))
                             (_%K189929189947%_
                              (lambda (_%rest189944%_ _%hd189945%_)
                                (let ((__tmp190683 (cons _%hd189945%_ '()))
                                      (__tmp190682
                                       (_%recur189922%_ _%rest189944%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp190683
                                   __tmp190682)))))
                        (if (pair? _%rest189925189933%_)
                            (let ((_%hd189930189950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest189925189933%_)))
                                  (_%tl189931189952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest189925189933%_))))
                              (let* ((_%hd189955%_ _%hd189930189950%_)
                                     (_%rest189957%_ _%tl189931189952%_))
                                (_%K189929189947%_
                                 _%rest189957%_
                                 _%hd189955%_)))
                            (_%else189927189941%_))))))
                 (_%generate-clause189351%_
                  (lambda (_%target189782%_
                           _%ids189783%_
                           _%clause189784%_
                           _%E189785%_)
                    (letrec ((_%generate1189787%_
                              (lambda (_%hd189874%_
                                       _%fender189875%_
                                       _%body189876%_)
                                (let ((_g190684_
                                       (_%parse-clause189353%_
                                        _%hd189874%_
                                        _%ids189783%_)))
                                  (begin
                                    (let ((_g190685_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190684_)
                                                 (##values-length _g190684_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190685_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190685_)))
                                    (let ((_%e189878%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190684_ 0)))
                                          (_%mvars189879%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190684_ 1))))
                                      (let* ((_%pvars189881%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars189879%_))))
                                             (_%E189883%_
                                              (cons _%E189785%_
                                                    (cons _%target189782%_
                                                          '())))
                                             (_%K189916%_
                                              (let ((__tmp190686
                                                     (let ((__tmp190688
                                                            (map (lambda (_%mvar189885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar189886%_)
                           (let* ((_%mvar189887189894%_ _%mvar189885%_)
                                  (_%E189889189898%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar189887189894%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K189890189904%_
                                   (lambda (_%depth189901%_ _%id189902%_)
                                     (cons _%id189902%_
                                           (cons (let ((__tmp190690
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id189902%_)))
                                                       (__tmp190689
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar189886%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp190690
                                                    __tmp190689
                                                    _%depth189901%_))
                                                 '())))))
                             (if (pair? _%mvar189887189894%_)
                                 (let ((_%hd189891189907%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar189887189894%_)))
                                       (_%tl189892189909%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar189887189894%_))))
                                   (let* ((_%id189912%_ _%hd189891189907%_)
                                          (_%depth189914%_ _%tl189892189909%_))
                                     (_%K189890189904%_
                                      _%depth189914%_
                                      _%id189912%_)))
                                 (_%E189889189898%_))))
                         _%mvars189879%_
                         _%pvars189881%_))
                   (__tmp190687
                    (if (eq? _%fender189875%_ '#t)
                        _%body189876%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender189875%_
                           _%body189876%_
                           _%E189883%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp190688 __tmp190687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars189881%_
                                                 __tmp190686))))
                                        (_%generate-match189352%_
                                         _%hd189874%_
                                         _%target189782%_
                                         _%e189878%_
                                         _%mvars189879%_
                                         _%K189916%_
                                         _%E189883%_))))))))
                      (let* ((_%e189788189808%_ _%clause189784%_)
                             (_%E189797189812%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e189788189808%_))))
                             (_%E189790189846%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189788189808%_))
                                    (let ((_%e189798189816%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189788189808%_))))
                                      (let ((_%hd189799189819%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189798189816%_)))
                                            (_%tl189800189821%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189798189816%_))))
                                        (let ((_%hd189824%_
                                               _%hd189799189819%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189800189821%_))
                                              (let ((_%e189801189826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189800189821%_))))
                                                (let ((_%hd189802189829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189801189826%_)))
                                                      (_%tl189803189831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189801189826%_))))
                                                  (let ((_%fender189834%_
                                                         _%hd189802189829%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl189803189831%_))
                                                        (let ((_%e189804189836%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl189803189831%_))))
                  (let ((_%hd189805189839%_
                         (let ()
                           (declare (not safe))
                           (##car _%e189804189836%_)))
                        (_%tl189806189841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e189804189836%_))))
                    (let ((_%body189844%_ _%hd189805189839%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189806189841%_))
                          (_%generate1189787%_
                           _%hd189824%_
                           _%fender189834%_
                           _%body189844%_)
                          (_%E189797189812%_)))))
                (_%E189797189812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E189797189812%_)))))
                                    (_%E189797189812%_))))
                             (_%E189789189870%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189788189808%_))
                                    (let ((_%e189791189850%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189788189808%_))))
                                      (let ((_%hd189792189853%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189791189850%_)))
                                            (_%tl189793189855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189791189850%_))))
                                        (let ((_%hd189858%_
                                               _%hd189792189853%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189793189855%_))
                                              (let ((_%e189794189860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189793189855%_))))
                                                (let ((_%hd189795189863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189794189860%_)))
                                                      (_%tl189796189865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189794189860%_))))
                                                  (let ((_%body189868%_
                                                         _%hd189795189863%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189796189865%_))
                                                        (_%generate1189787%_
                                                         _%hd189858%_
                                                         '#t
                                                         _%body189868%_)
                                                        (_%E189790189846%_)))))
                                              (_%E189790189846%_)))))
                                    (_%E189790189846%_)))))
                        (_%E189789189870%_)))))
                 (_%generate-match189352%_
                  (lambda (_%where189531%_
                           _%target189532%_
                           _%hd189533%_
                           _%mvars189534%_
                           _%K189535%_
                           _%E189536%_)
                    (letrec ((_%BUG189538%_
                              (lambda (_%q189780%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx189344%_
                                         _%hd189533%_
                                         _%q189780%_))))
                             (_%recur189539%_
                              (lambda (_%e189630%_
                                       _%vars189631%_
                                       _%target189632%_
                                       _%E189633%_
                                       _%k189634%_)
                                (let* ((_%e189635189642%_ _%e189630%_)
                                       (_%E189637189646%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e189635189642%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K189638189768%_
                                        (lambda (_%body189649%_ _%tag189650%_)
                                          (let ((_%$e189652%_ _%tag189650%_))
                                            (if (eq? 'any _%$e189652%_)
                                                (_%k189634%_ _%vars189631%_)
                                                (if (eq? 'id _%$e189652%_)
                                                    (let ((__tmp190695
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target189632%_)))
                                                          (__tmp190691
                                                           (let ((__tmp190693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190694
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e189347%_
                                    _%body189649%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?189345%_
                             __tmp190694
                             _%target189632%_)))
                         (__tmp190692 (_%k189634%_ _%vars189631%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp190693 __tmp190692 _%E189633%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp190695 __tmp190691 _%E189633%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e189652%_)
                                                        (_%k189634%_
                                                         (cons (cons _%body189649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target189632%_)
                       _%vars189631%_))
                (if (eq? 'cons _%$e189652%_)
                    (let ((_%$e189655%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd189656%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl189657%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp190701
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target189632%_)))
                            (__tmp190696
                             (let ((__tmp190700
                                    (cons (cons (cons _%$e189655%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e189346%_
                                                         _%target189632%_))
                                                      '()))
                                          '()))
                                   (__tmp190697
                                    (let ((__tmp190699
                                           (cons (cons (cons _%$hd189656%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e189655%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl189657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e189655%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp190698
                                           (let* ((_%body189658189665%_
                                                   _%body189649%_)
                                                  (_%E189660189669%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body189658189665%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K189661189677%_
                                                   (lambda (_%tl189672%_
                                                            _%hd189673%_)
                                                     (_%recur189539%_
                                                      _%hd189673%_
                                                      _%vars189631%_
                                                      _%$hd189656%_
                                                      _%E189633%_
                                                      (lambda (_%vars189675%_)
                                                        (_%recur189539%_
                                                         _%tl189672%_
                                                         _%vars189675%_
                                                         _%$tl189657%_
                                                         _%E189633%_
                                                         _%k189634%_))))))
                                             (if (pair? _%body189658189665%_)
                                                 (let ((_%hd189662189680%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body189658189665%_)))
                                                       (_%tl189663189682%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body189658189665%_))))
                                                   (let* ((_%hd189685%_
                                                           _%hd189662189680%_)
                                                          (_%tl189687%_
                                                           _%tl189663189682%_))
                                                     (_%K189661189677%_
                                                      _%tl189687%_
                                                      _%hd189685%_)))
                                                 (_%E189660189669%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp190699
                                       __tmp190698))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp190700
                                __tmp190697))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp190701
                         __tmp190696
                         _%E189633%_)))
                    (if (eq? 'splice _%$e189652%_)
                        (let* ((_%body189688189695%_ _%body189649%_)
                               (_%E189690189699%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body189688189695%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K189691189750%_
                                (lambda (_%tl189702%_ _%hd189703%_)
                                  (let* ((_%rlen189705%_
                                          (_%splice-rlen189540%_ _%tl189702%_))
                                         (_%$target189707%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd189709%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl189711%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp189713%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e189715%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd189717%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl189719%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars189721%_
                                          (_%splice-vars189541%_ _%hd189703%_))
                                         (_%lvars189723%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189721%_)))
                                         (_%tlvars189725%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189721%_)))
                                         (_%linit189729%_
                                          (map (lambda (_%var189727%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars189723%_)))
                                    (letrec ((_%make-loop189732%_
                                              (lambda (_%vars189736%_)
                                                (let ((__tmp190703
                                                       (cons (cons (cons _%$lp189713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp190716
                                        (cons _%$hd189709%_ _%lvars189723%_))
                                       (__tmp190704
                                        (let ((__tmp190715
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd189709%_)))
                                              (__tmp190709
                                               (let ((__tmp190714
                                                      (cons (cons (cons _%$lp-e189715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e189346%_
                                   _%$hd189709%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190710
                                                      (let ((__tmp190713
                                                             (cons (cons (cons _%$lp-hd189717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e189715%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl189719%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e189715%_))
                                             '()))
                                 '())))
                    (__tmp190711
                     (_%recur189539%_
                      _%hd189703%_
                      '()
                      _%$lp-hd189717%_
                      _%E189633%_
                      (lambda (_%hdvars189738%_)
                        (cons _%$lp189713%_
                              (cons _%$lp-tl189719%_
                                    (map (lambda (_%svar189740%_
                                                  _%lvar189741%_)
                                           (let ((__tmp190712
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar189740%_
                                                     _%hdvars189738%_
                                                     _%BUG189538%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp190712
                                              _%lvar189741%_)))
                                         _%svars189721%_
                                         _%lvars189723%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp190713 __tmp190711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190714
                                                  __tmp190710)))
                                              (__tmp190705
                                               (let ((__tmp190708
                                                      (map (lambda (_%lvar189743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar189744%_)
                     (cons (cons _%tlvar189744%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar189743%_))
                                 '())))
                   _%lvars189723%_
                   _%tlvars189725%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190706
                                                      (_%k189634%_
                                                       (let ((__tmp190707
                                                              (lambda (_%svar189746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar189747%_
                               _%r189748%_)
                        (cons (cons _%svar189746%_ _%tlvar189747%_)
                              _%r189748%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp190707
                  _%vars189736%_
                  _%svars189721%_
                  _%tlvars189725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190708
                                                  __tmp190706))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190715
                                           __tmp190709
                                           __tmp190705))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp190716
                                    __tmp190704))
                                 '()))
                     '()))
              (__tmp190702
               (cons _%$lp189713%_ (cons _%$target189707%_ _%linit189729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp190703
                                                   __tmp190702)))))
                                      (let ((_%body189734%_
                                             (let ((__tmp190718
                                                    (cons (cons (cons _%$target189707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl189711%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target189632%_
                                 _%rlen189705%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190717
                                                    (_%recur189539%_
                                                     _%tl189702%_
                                                     _%vars189631%_
                                                     _%$tl189711%_
                                                     _%E189633%_
                                                     _%make-loop189732%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190718
                                                __tmp190717))))
                                        (let ((__tmp190722
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target189632%_)))
                                              (__tmp190719
                                               (if (zero? _%rlen189705%_)
                                                   _%body189734%_
                                                   (let ((__tmp190720
                                                          (let ((__tmp190721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target189632%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp190721 _%rlen189705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp190720
                                                      _%body189734%_
                                                      _%E189633%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190722
                                           __tmp190719
                                           _%E189633%_))))))))
                          (if (pair? _%body189688189695%_)
                              (let ((_%hd189692189753%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body189688189695%_)))
                                    (_%tl189693189755%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body189688189695%_))))
                                (let* ((_%hd189758%_ _%hd189692189753%_)
                                       (_%tl189760%_ _%tl189693189755%_))
                                  (_%K189691189750%_
                                   _%tl189760%_
                                   _%hd189758%_)))
                              (_%E189690189699%_)))
                        (if (eq? 'null _%$e189652%_)
                            (let ((__tmp190724
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target189632%_)))
                                  (__tmp190723 (_%k189634%_ _%vars189631%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp190724
                               __tmp190723
                               _%E189633%_))
                            (if (eq? 'vector _%$e189652%_)
                                (let ((_%$e189762%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp190729
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target189632%_)))
                                        (__tmp190725
                                         (let ((__tmp190727
                                                (cons (cons (cons _%$e189762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp190728
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e189346%_
                                    _%target189632%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp190728))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp190726
                                                (_%recur189539%_
                                                 _%body189649%_
                                                 _%vars189631%_
                                                 _%$e189762%_
                                                 _%E189633%_
                                                 _%k189634%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp190727
                                            __tmp190726))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp190729
                                     __tmp190725
                                     _%E189633%_)))
                                (if (eq? 'box _%$e189652%_)
                                    (let ((_%$e189764%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp190734
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target189632%_)))
                                            (__tmp190730
                                             (let ((__tmp190732
                                                    (cons (cons (cons _%$e189764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp190733
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e189346%_
                                        _%target189632%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp190733))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190731
                                                    (_%recur189539%_
                                                     _%body189649%_
                                                     _%vars189631%_
                                                     _%$e189764%_
                                                     _%E189633%_
                                                     _%k189634%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190732
                                                __tmp190731))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp190734
                                         __tmp190730
                                         _%E189633%_)))
                                    (if (eq? 'datum _%$e189652%_)
                                        (let ((_%$e189766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp190740
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target189632%_)))
                                                (__tmp190735
                                                 (let ((__tmp190739
                                                        (cons (cons (cons _%$e189766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target189632%_))
                                  '()))
                      '()))
               (__tmp190736
                (let ((__tmp190738
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e189766%_ _%body189649%_)))
                      (__tmp190737 (_%k189634%_ _%vars189631%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp190738 __tmp190737 _%E189633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp190739
                                                    __tmp190736))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp190740
                                             __tmp190735
                                             _%E189633%_)))
                                        (_%BUG189538%_
                                         _%e189630%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e189635189642%_)
                                      (let ((_%hd189639189771%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189635189642%_)))
                                            (_%tl189640189773%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189635189642%_))))
                                        (let* ((_%tag189776%_
                                                _%hd189639189771%_)
                                               (_%body189778%_
                                                _%tl189640189773%_))
                                          (_%K189638189768%_
                                           _%body189778%_
                                           _%tag189776%_)))
                                      (_%E189637189646%_)))))
                             (_%splice-rlen189540%_
                              (lambda (_%e189592%_)
                                (let _%lp189594%_ ((_%e189596%_ _%e189592%_)
                                                   (_%n189597%_ '0))
                                  (let* ((_%e189598189605%_ _%e189596%_)
                                         (_%E189600189609%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189598189605%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189601189618%_
                                          (lambda (_%body189612%_
                                                   _%tag189613%_)
                                            (let ((_%$e189615%_ _%tag189613%_))
                                              (if (eq? 'splice _%$e189615%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx189344%_
                                                     _%where189531%_))
                                                  (if (eq? 'cons _%$e189615%_)
                                                      (_%lp189594%_
                                                       (cdr _%body189612%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n189597%_
                                                                '1)))
                                                      _%n189597%_))))))
                                    (if (pair? _%e189598189605%_)
                                        (let ((_%hd189602189621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189598189605%_)))
                                              (_%tl189603189623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189598189605%_))))
                                          (let* ((_%tag189626%_
                                                  _%hd189602189621%_)
                                                 (_%body189628%_
                                                  _%tl189603189623%_))
                                            (_%K189601189618%_
                                             _%body189628%_
                                             _%tag189626%_)))
                                        (_%E189600189609%_))))))
                             (_%splice-vars189541%_
                              (lambda (_%e189548%_)
                                (let _%recur189550%_ ((_%e189552%_ _%e189548%_)
                                                      (_%vars189553%_ '()))
                                  (let* ((_%e189554189561%_ _%e189552%_)
                                         (_%E189556189565%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189554189561%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189557189580%_
                                          (lambda (_%body189568%_
                                                   _%tag189569%_)
                                            (let ((_%$e189571%_ _%tag189569%_))
                                              (if (eq? 'var _%$e189571%_)
                                                  (cons _%body189568%_
                                                        _%vars189553%_)
                                                  (if (or (eq? 'cons
                                                               _%$e189571%_)
                                                          (eq? 'splice
                                                               _%$e189571%_))
                                                      (_%recur189550%_
                                                       (cdr _%body189568%_)
                                                       (_%recur189550%_
                                                        (car _%body189568%_)
                                                        _%vars189553%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e189571%_)
                      (eq? 'box _%$e189571%_))
                  (_%recur189550%_ _%body189568%_ _%vars189553%_)
                  _%vars189553%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e189554189561%_)
                                        (let ((_%hd189558189583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189554189561%_)))
                                              (_%tl189559189585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189554189561%_))))
                                          (let* ((_%tag189588%_
                                                  _%hd189558189583%_)
                                                 (_%body189590%_
                                                  _%tl189559189585%_))
                                            (_%K189557189580%_
                                             _%body189590%_
                                             _%tag189588%_)))
                                        (_%E189556189565%_))))))
                             (_%make-body189542%_
                              (lambda (_%vars189544%_)
                                (cons _%K189535%_
                                      (map (lambda (_%mvar189546%_)
                                             (let ((__tmp190741
                                                    (car _%mvar189546%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp190741
                                                _%vars189544%_
                                                _%BUG189538%_)))
                                           _%mvars189534%_)))))
                      (_%recur189539%_
                       _%hd189533%_
                       '()
                       _%target189532%_
                       _%E189536%_
                       _%make-body189542%_))))
                 (_%parse-clause189353%_
                  (lambda (_%hd189425%_ _%ids189426%_)
                    (let _%recur189428%_ ((_%e189430%_ _%hd189425%_)
                                          (_%vars189431%_ '())
                                          (_%depth189432%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e189430%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e189430%_))
                              (values '(any) _%vars189431%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e189430%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx189344%_
                                     _%hd189425%_))
                                  (if (let ((__tmp190742
                                             (lambda (_%id189437%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e189430%_
                                                  _%id189437%_)))))
                                        (declare (not safe))
                                        (__find __tmp190742 _%ids189426%_))
                                      (values (cons 'id _%e189430%_)
                                              _%vars189431%_)
                                      (if (let ((__tmp190743
                                                 (lambda (_%var189440%_)
                                                   (let ((__tmp190744
                                                          (car _%var189440%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e189430%_
                                                      __tmp190744)))))
                                            (declare (not safe))
                                            (__find __tmp190743
                                                    _%vars189431%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx189344%_
                                             _%e189430%_))
                                          (values (cons 'var _%e189430%_)
                                                  (cons (cons _%e189430%_
                                                              _%depth189432%_)
                                                        _%vars189431%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e189430%_))
                              (let* ((_%e189444189451%_ _%e189430%_)
                                     (_%E189446189455%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e189444189451%_))))
                                     (_%E189445189516%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e189444189451%_))
                                            (let ((_%e189447189459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e189444189451%_))))
                                              (let ((_%hd189448189462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e189447189459%_)))
                                                    (_%tl189449189464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e189447189459%_))))
                                                (let* ((_%hd189467%_
                                                        _%hd189448189462%_)
                                                       (_%rest189469%_
                                                        _%tl189449189464%_)
                                                       (_%make-pair189484%_
                                                        (lambda (_%tag189471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd189472%_
                         _%tl189473%_)
                  (let* ((_%hd-depth189475%_
                          (if (eq? _%tag189471%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth189432%_ '1))
                              _%depth189432%_))
                         (_g190745_
                          (_%recur189428%_
                           _%hd189472%_
                           _%vars189431%_
                           _%hd-depth189475%_)))
                    (begin
                      (let ((_g190746_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g190745_)
                                   (##values-length _g190745_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g190746_ 2)))
                            (error "Context expects 2 values" _g190746_)))
                      (let ((_%hd189477%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190745_ 0)))
                            (_%vars189478%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190745_ 1))))
                        (let ((_g190747_
                               (_%recur189428%_
                                _%tl189473%_
                                _%vars189478%_
                                _%depth189432%_)))
                          (begin
                            (let ((_g190748_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190747_)
                                         (##values-length _g190747_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190748_ 2)))
                                  (error "Context expects 2 values"
                                         _g190748_)))
                            (let ((_%tl189480%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190747_ 0)))
                                  (_%vars189481%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190747_ 1))))
                              (values (cons _%tag189471%_
                                            (cons _%hd189477%_ _%tl189480%_))
                                      _%vars189481%_)))))))))
               (_%e189485189492%_ _%rest189469%_)
               (_%E189487189496%_
                (lambda ()
                  (_%make-pair189484%_ 'cons _%hd189467%_ _%rest189469%_)))
               (_%E189486189512%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e189485189492%_))
                      (let ((_%e189488189500%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189485189492%_))))
                        (let ((_%hd189489189503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189488189500%_)))
                              (_%tl189490189505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189488189500%_))))
                          (let* ((_%rest-hd189508%_ _%hd189489189503%_)
                                 (_%rest-tl189510%_ _%tl189490189505%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd189508%_))
                                (_%make-pair189484%_
                                 'splice
                                 _%hd189467%_
                                 _%rest-tl189510%_)
                                (_%make-pair189484%_
                                 'cons
                                 _%hd189467%_
                                 _%rest189469%_)))))
                      (_%E189487189496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189486189512%_))))
                                            (_%E189446189455%_)))))
                                (_%E189445189516%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e189430%_))
                                  (values '(null) _%vars189431%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e189430%_))
                                      (let ((_g190749_
                                             (_%recur189428%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e189430%_)))
                                              _%vars189431%_
                                              _%depth189432%_)))
                                        (begin
                                          (let ((_g190750_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190749_)
                                                       (##values-length
                                                        _g190749_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190750_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190750_)))
                                          (let ((_%e189522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190749_ 0)))
                                                (_%vars189523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190749_
                                                    1))))
                                            (values (cons 'vector _%e189522%_)
                                                    _%vars189523%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e189430%_))
                                          (let ((_g190751_
                                                 (_%recur189428%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e189430%_)))
                                                  _%vars189431%_
                                                  _%depth189432%_)))
                                            (begin
                                              (let ((_g190752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g190751_)
                                                           (##values-length
                                                            _g190751_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g190752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g190752_)))
                                              (let ((_%e189526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190751_
                                                        0)))
                                                    (_%vars189527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190751_
                                                        1))))
                                                (values (cons 'box _%e189526%_)
                                                        _%vars189527%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e189430%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e189430%_)))
                                                      _%vars189431%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx189344%_
                                                 _%e189430%_))))))))))))
          (let* ((_%e189354189367%_ _%stx189344%_)
                 (_%E189356189371%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e189354189367%_))))
                 (_%E189355189421%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189354189367%_))
                        (let ((_%e189357189375%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189354189367%_))))
                          (let ((_%hd189358189378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189357189375%_)))
                                (_%tl189359189380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189357189375%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189359189380%_))
                                (let ((_%e189360189383%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189359189380%_))))
                                  (let ((_%hd189361189386%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189360189383%_)))
                                        (_%tl189362189388%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189360189383%_))))
                                    (let ((_%expr189391%_ _%hd189361189386%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189362189388%_))
                                          (let ((_%e189363189393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl189362189388%_))))
                                            (let ((_%hd189364189396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189363189393%_)))
                                                  (_%tl189365189398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189363189393%_))))
                                              (let* ((_%ids189401%_
                                                      _%hd189364189396%_)
                                                     (_%clauses189403%_
                                                      _%tl189365189398%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids189401%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses189403%_))
                                                        (let* ((_%ids189408%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids189401%_)))
                       (_%clauses189410%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses189403%_)))
                       (_%clause-ids189412%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses189410%_)))
                       (_%E189414%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target189416%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first189418%_
                        (if (null? _%clauses189410%_)
                            _%E189414%_
                            (car _%clause-ids189412%_))))
                  (let ((__tmp190754
                         (let ((__tmp190755
                                (let ((__tmp190757
                                       (let ((__tmp190759
                                              (cons (cons (cons _%E189414%_
                                                                '())
                                                          (cons (let ((__tmp190761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target189416%_ '()))
                              (__tmp190760
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target189416%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp190761 __tmp190760))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp190758
                                              (_%generate-body189350%_
                                               (_%generate-bindings189349%_
                                                _%target189416%_
                                                _%ids189408%_
                                                _%clauses189410%_
                                                _%clause-ids189412%_
                                                _%E189414%_)
                                               (cons _%first189418%_
                                                     (cons _%expr189391%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp190759
                                          __tmp190758)))
                                      (__tmp190756
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx189344%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp190757
                                   __tmp190756))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp190755)))
                        (__tmp190753
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx189344%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp190754 __tmp190753)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx189344%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx189344%_
                                                       _%ids189401%_))))))
                                          (_%E189356189371%_)))))
                                (_%E189356189371%_))))
                        (_%E189356189371%_)))))
            (_%E189355189421%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx190069%_)
        (let* ((_%identifier=?190071%_ 'free-identifier=?)
               (_%unwrap-e190073%_ 'syntax-e)
               (_%wrap-e190075%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190069%_
           _%identifier=?190071%_
           _%unwrap-e190073%_
           _%wrap-e190075%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx190077%_ _%identifier=?190078%_)
        (let* ((_%unwrap-e190080%_ 'syntax-e) (_%wrap-e190082%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190077%_
           _%identifier=?190078%_
           _%unwrap-e190080%_
           _%wrap-e190082%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx190084%_ _%identifier=?190085%_ _%unwrap-e190086%_)
        (let ((_%wrap-e190088%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190084%_
           _%identifier=?190085%_
           _%unwrap-e190086%_
           _%wrap-e190088%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g190762_
        (let ((_g190763_ (let () (declare (not safe)) (##length _g190762_))))
          (cond ((let () (declare (not safe)) (##fx= _g190763_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g190762_))
                ((let () (declare (not safe)) (##fx= _g190763_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g190762_))
                ((let () (declare (not safe)) (##fx= _g190763_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g190762_))
                ((let () (declare (not safe)) (##fx= _g190763_ 4))
                 (apply gx#macro-expand-syntax-case__% _g190762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g190762_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx189341%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx189341%_))
            (let ((__tmp190764
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx189341%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp190764 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd189299%_ . _%rest189300%_)
        (let ((_%len189302%_ (length _%hd189299%_)))
          (let _%lp189304%_ ((_%rest189306%_ _%rest189300%_))
            (let* ((_%rest189307189315%_ _%rest189306%_)
                   (_%else189309189323%_ (lambda () '#!void))
                   (_%K189311189329%_
                    (lambda (_%rest189326%_ _%hd189327%_)
                      (if (let ((__tmp190765 (length _%hd189327%_)))
                            (declare (not safe))
                            (##fx= _%len189302%_ __tmp190765))
                          (_%lp189304%_ _%rest189326%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd189327%_))))))
              (if (pair? _%rest189307189315%_)
                  (let ((_%hd189312189332%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest189307189315%_)))
                        (_%tl189313189334%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest189307189315%_))))
                    (let* ((_%hd189337%_ _%hd189312189332%_)
                           (_%rest189339%_ _%tl189313189334%_))
                      (_%K189311189329%_ _%rest189339%_ _%hd189337%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx189249%_ _%n189250%_)
        (let _%lp189252%_ ((_%rest189255%_ _%stx189249%_) (_%r189257%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189255%_))
              (let* ((_%g189259189266%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189255%_)))
                     (_%E189261189270%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189259189266%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189262189277%_
                      (lambda (_%rest189273%_ _%hd189274%_)
                        (_%lp189252%_
                         _%rest189273%_
                         (cons _%hd189274%_ _%r189257%_)))))
                (if (pair? _%g189259189266%_)
                    (let ((_%hd189263189280%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189259189266%_)))
                          (_%tl189264189282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189259189266%_))))
                      (let* ((_%hd189285%_ _%hd189263189280%_)
                             (_%rest189287%_ _%tl189264189282%_))
                        (_%K189262189277%_ _%rest189287%_ _%hd189285%_)))
                    (_%E189261189270%_)))
              (let _%lp189289%_ ((_%n189291%_ _%n189250%_)
                                 (_%l189292%_ _%r189257%_)
                                 (_%r189294%_ _%rest189255%_))
                (if (null? _%l189292%_)
                    (values _%l189292%_ _%r189294%_)
                    (if (fxpositive? _%n189291%_)
                        (_%lp189289%_
                         (let () (declare (not safe)) (##fx- _%n189291%_ '1))
                         (cdr _%l189292%_)
                         (cons (car _%l189292%_) _%r189294%_))
                        (values (reverse! _%l189292%_) _%r189294%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx189199%_ _%n189200%_)
        (let _%lp189202%_ ((_%rest189205%_ _%stx189199%_) (_%r189207%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189205%_))
              (let* ((_%g189209189216%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189205%_)))
                     (_%E189211189220%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189209189216%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189212189227%_
                      (lambda (_%rest189223%_ _%hd189224%_)
                        (_%lp189202%_
                         _%rest189223%_
                         (cons _%hd189224%_ _%r189207%_)))))
                (if (pair? _%g189209189216%_)
                    (let ((_%hd189213189230%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189209189216%_)))
                          (_%tl189214189232%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189209189216%_))))
                      (let* ((_%hd189235%_ _%hd189213189230%_)
                             (_%rest189237%_ _%tl189214189232%_))
                        (_%K189212189227%_ _%rest189237%_ _%hd189235%_)))
                    (_%E189211189220%_)))
              (let _%lp189239%_ ((_%n189241%_ _%n189200%_)
                                 (_%l189242%_ _%r189207%_)
                                 (_%r189244%_ _%rest189205%_))
                (if (null? _%l189242%_)
                    (vector _%l189242%_ _%r189244%_)
                    (if (fxpositive? _%n189241%_)
                        (_%lp189239%_
                         (let () (declare (not safe)) (##fx- _%n189241%_ '1))
                         (cdr _%l189242%_)
                         (cons (car _%l189242%_) _%r189244%_))
                        (vector (reverse! _%l189242%_) _%r189244%_))))))))))
