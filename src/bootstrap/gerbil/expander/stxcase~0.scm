(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1773009269)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp190636 (list gx#expander::t))
            (__tmp190635 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp190636
         '(id depth)
         __tmp190635
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args190632%_
        (apply make-instance gx#syntax-pattern::t _%$args190632%_)))
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
      (lambda (_%self190618%_ _%stx190619%_)
        (let ((_%self190622%_ _%self190618%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx190619%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx190085%_)
        (letrec ((_%generate190087%_
                  (lambda (_%e190327%_)
                    (letrec ((_%BUG190329%_
                              (lambda (_%q190494%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx190085%_
                                         _%e190327%_
                                         _%q190494%_))))
                             (_%local-pattern-e190330%_
                              (lambda (_%pat190492%_)
                                (let ((__tmp190637
                                       (##structure-ref
                                        _%pat190492%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp190637))))
                             (_%getvar190331%_
                              (lambda (_%q190489%_ _%vars190490%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q190489%_
                                   _%vars190490%_
                                   _%BUG190329%_))))
                             (_%getarg190332%_
                              (lambda (_%arg190455%_ _%vars190456%_)
                                (let* ((_%arg190457190464%_ _%arg190455%_)
                                       (_%E190459190468%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg190457190464%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K190460190477%_
                                        (lambda (_%e190471%_ _%tag190472%_)
                                          (let ((_%$e190474%_ _%tag190472%_))
                                            (if (eq? 'ref _%$e190474%_)
                                                (_%getvar190331%_
                                                 _%e190471%_
                                                 _%vars190456%_)
                                                (if (eq? 'pattern _%$e190474%_)
                                                    (_%local-pattern-e190330%_
                                                     _%e190471%_)
                                                    (_%BUG190329%_
                                                     _%arg190455%_)))))))
                                  (if (pair? _%arg190457190464%_)
                                      (let ((_%hd190461190480%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg190457190464%_)))
                                            (_%tl190462190482%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg190457190464%_))))
                                        (let* ((_%tag190485%_
                                                _%hd190461190480%_)
                                               (_%e190487%_
                                                _%tl190462190482%_))
                                          (_%K190460190477%_
                                           _%e190487%_
                                           _%tag190485%_)))
                                      (_%E190459190468%_))))))
                      (let _%recur190334%_ ((_%e190336%_ _%e190327%_)
                                            (_%vars190337%_ '()))
                        (let* ((_%e190338190345%_ _%e190336%_)
                               (_%E190340190349%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e190338190345%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K190341190443%_
                                (lambda (_%body190352%_ _%tag190353%_)
                                  (let ((_%$e190355%_ _%tag190353%_))
                                    (if (eq? 'datum _%$e190355%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body190352%_))
                                        (if (eq? 'term _%$e190355%_)
                                            (let ((_%id190358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body190352%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id190358%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks190361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id190358%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks190361%_)
                                                        (let ((__tmp190638
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body190352%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp190638))
                (let ((__tmp190640
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body190352%_)))
                      (__tmp190639
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body190352%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp190640
                   __tmp190639
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id190358%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body190352%_))
                                                      (_%BUG190329%_
                                                       _%e190336%_))))
                                            (if (eq? 'pattern _%$e190355%_)
                                                (_%local-pattern-e190330%_
                                                 _%body190352%_)
                                                (if (eq? 'ref _%$e190355%_)
                                                    (_%getvar190331%_
                                                     _%body190352%_
                                                     _%vars190337%_)
                                                    (if (eq? 'cons
                                                             _%$e190355%_)
                                                        (let ((__tmp190642
                                                               (_%recur190334%_
                                                                (car _%body190352%_)
                                                                _%vars190337%_))
                                                              (__tmp190641
                                                               (_%recur190334%_
                                                                (cdr _%body190352%_)
                                                                _%vars190337%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp190642
                                                           __tmp190641))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e190355%_)
                    (let ((__tmp190643
                           (_%recur190334%_ _%body190352%_ _%vars190337%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp190643))
                    (if (eq? 'box _%$e190355%_)
                        (let ((__tmp190644
                               (_%recur190334%_
                                _%body190352%_
                                _%vars190337%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp190644))
                        (if (eq? 'splice _%$e190355%_)
                            (let* ((_%body190364190375%_ _%body190352%_)
                                   (_%E190366190379%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body190364190375%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K190367190417%_
                                    (lambda (_%args190382%_
                                             _%iv190383%_
                                             _%hd190384%_
                                             _%depth190385%_)
                                      (let* ((_%targets190391%_
                                              (map (lambda (_%g190386190388%_)
                                                     (_%getarg190332%_
                                                      _%g190386190388%_
                                                      _%vars190337%_))
                                                   _%args190382%_))
                                             (_%fold-in190393%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args190382%_)))
                                             (_%fold-out190395%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args190397%_
                                              (let ((__tmp190645
                                                     (cons _%fold-out190395%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp190645
                                                 _%fold-in190393%_)))
                                             (_%lambda-body190414%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth190385%_ '1))
                                                  (let ((_%r-args190405%_
                                                         (map (lambda (_%arg190399%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg190399%_)))
                      _%args190382%_))
                (_%r-vars190406%_
                 (let ((__tmp190646
                        (lambda (_%arg190401%_ _%var190402%_ _%r190403%_)
                          (cons (cons (cdr _%arg190401%_) _%var190402%_)
                                _%r190403%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp190646
                    _%vars190337%_
                    _%args190382%_
                    _%fold-in190393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur190334%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth190385%_ '1))
                         (cons _%hd190384%_
                               (cons (cons 'var _%fold-out190395%_)
                                     _%r-args190405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars190406%_))
                                                  (let* ((_%hd-vars190412%_
                                                          (let ((__tmp190647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg190408%_ _%var190409%_ _%r190410%_)
                           (cons (cons (cdr _%arg190408%_) _%var190409%_)
                                 _%r190410%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp190647
                     _%vars190337%_
                     _%args190382%_
                     _%fold-in190393%_)))
                 (__tmp190648
                  (_%recur190334%_ _%hd190384%_ _%hd-vars190412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp190648
                                                     _%fold-out190395%_)))))
                                        (let ((__tmp190652
                                               (if (let ((__tmp190653
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets190391%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp190653 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets190391%_))
                                                   '#!void))
                                              (__tmp190649
                                               (let ((__tmp190651
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args190397%_
                                                         _%lambda-body190414%_)))
                                                     (__tmp190650
                                                      (_%recur190334%_
                                                       _%iv190383%_
                                                       _%vars190337%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp190651
                                                  __tmp190650
                                                  _%targets190391%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp190652
                                           __tmp190649))))))
                              (if (pair? _%body190364190375%_)
                                  (let ((_%hd190368190420%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body190364190375%_)))
                                        (_%tl190369190422%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body190364190375%_))))
                                    (let ((_%depth190425%_ _%hd190368190420%_))
                                      (if (pair? _%tl190369190422%_)
                                          (let ((_%hd190370190427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl190369190422%_)))
                                                (_%tl190371190429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl190369190422%_))))
                                            (let ((_%hd190432%_
                                                   _%hd190370190427%_))
                                              (if (pair? _%tl190371190429%_)
                                                  (let ((_%hd190372190434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl190371190429%_)))
                                                        (_%tl190373190436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl190371190429%_))))
                                                    (let* ((_%iv190439%_
                                                            _%hd190372190434%_)
                                                           (_%args190441%_
                                                            _%tl190373190436%_))
                                                      (_%K190367190417%_
                                                       _%args190441%_
                                                       _%iv190439%_
                                                       _%hd190432%_
                                                       _%depth190425%_)))
                                                  (_%E190366190379%_))))
                                          (_%E190366190379%_))))
                                  (_%E190366190379%_)))
                            (if (eq? 'var _%$e190355%_)
                                _%body190352%_
                                (_%BUG190329%_ _%e190336%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e190338190345%_)
                              (let ((_%hd190342190446%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e190338190345%_)))
                                    (_%tl190343190448%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e190338190345%_))))
                                (let* ((_%tag190451%_ _%hd190342190446%_)
                                       (_%body190453%_ _%tl190343190448%_))
                                  (_%K190341190443%_
                                   _%body190453%_
                                   _%tag190451%_)))
                              (_%E190340190349%_)))))))
                 (_%parse190088%_
                  (lambda (_%e190129%_)
                    (letrec ((_%make-cons190131%_
                              (lambda (_%hd190319%_ _%tl190320%_)
                                (let ((_g190654_ _%hd190319%_)
                                      (_g190656_ _%tl190320%_))
                                  (begin
                                    (let ((_g190655_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190654_)
                                                 (##values-length _g190654_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190655_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190655_)))
                                    (let ((_g190657_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190656_)
                                                 (##values-length _g190656_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190657_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190657_)))
                                    (let ((_%hd-e190322%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190654_ 0)))
                                          (_%hd-vars190323%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190654_ 1))))
                                      (let ((_%tl-e190324%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190656_ 0)))
                                            (_%tl-vars190325%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190656_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e190322%_
                                                            _%tl-e190324%_))
                                                (append _%hd-vars190323%_
                                                        _%tl-vars190325%_))))))))
                             (_%make-splice190132%_
                              (lambda (_%where190255%_
                                       _%depth190256%_
                                       _%hd190257%_
                                       _%tl190258%_)
                                (let ((_g190658_ _%hd190257%_)
                                      (_g190660_ _%tl190258%_))
                                  (begin
                                    (let ((_g190659_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190658_)
                                                 (##values-length _g190658_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190659_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190659_)))
                                    (let ((_g190661_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g190660_)
                                                 (##values-length _g190660_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g190661_ 2)))
                                          (error "Context expects 2 values"
                                                 _g190661_)))
                                    (let ((_%hd-e190260%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190658_ 0)))
                                          (_%hd-vars190261%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190658_ 1))))
                                      (let ((_%tl-e190262%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190660_ 0)))
                                            (_%tl-vars190263%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g190660_ 1))))
                                        (let _%lp190265%_ ((_%rest190267%_
                                                            _%hd-vars190261%_)
                                                           (_%targets190268%_
                                                            '())
                                                           (_%vars190269%_
                                                            _%tl-vars190263%_))
                                          (let* ((_%rest190270190280%_
                                                  _%rest190267%_)
                                                 (_%else190272190288%_
                                                  (lambda ()
                                                    (if (null? _%targets190268%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx190085%_
                                                           _%where190255%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth190256%_
                                    (cons _%hd-e190260%_
                                          (cons _%tl-e190262%_
                                                _%targets190268%_))))
                        _%vars190269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K190274190300%_
                                                  (lambda (_%rest190291%_
                                                           _%hd-pat190292%_
                                                           _%hd-depth*190293%_)
                                                    (let ((_%hd-depth190295%_
                                                           (fx- _%hd-depth*190293%_
                                                                _%depth190256%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth190295%_))
                                                          (_%lp190265%_
                                                           _%rest190291%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat190292%_)
                         _%targets190268%_)
                   (cons (cons _%hd-depth190295%_ _%hd-pat190292%_)
                         _%vars190269%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth190295%_))
                      (_%lp190265%_
                       _%rest190291%_
                       (cons (cons 'pattern _%hd-pat190292%_)
                             _%targets190268%_)
                       _%vars190269%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx190085%_
                         _%where190255%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest190270190280%_)
                                                (let ((_%hd190275190303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest190270190280%_)))
                                                      (_%tl190276190305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest190270190280%_))))
                                                  (if (pair? _%hd190275190303%_)
                                                      (let ((_%hd190277190308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd190275190303%_)))
                    (_%tl190278190310%_
                     (let () (declare (not safe)) (##cdr _%hd190275190303%_))))
                (let* ((_%hd-depth*190313%_ _%hd190277190308%_)
                       (_%hd-pat190315%_ _%tl190278190310%_)
                       (_%rest190317%_ _%tl190276190305%_))
                  (_%K190274190300%_
                   _%rest190317%_
                   _%hd-pat190315%_
                   _%hd-depth*190313%_)))
              (_%else190272190288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else190272190288%_))))))))))
                             (_%recur190133%_
                              (lambda (_%e190138%_ _%is-e?190139%_)
                                (if (_%is-e?190139%_ _%e190138%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx190085%_))
                                    (if (gx#syntax-local-pattern? _%e190138%_)
                                        (let* ((_%pat190143%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e190138%_)))
                                               (_%depth190145%_
                                                (##structure-ref
                                                 _%pat190143%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth190145%_)
                                              (values (cons 'ref _%pat190143%_)
                                                      (cons (cons _%depth190145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat190143%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat190143%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e190138%_))
                                            (values (cons 'term _%e190138%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e190138%_))
                                                (let* ((_%e190149190156%_
                                                        _%e190138%_)
                                                       (_%E190151190160%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e190149190156%_))))
                                                       (_%E190150190242%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e190149190156%_))
                      (let ((_%e190152190164%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e190149190156%_))))
                        (let ((_%hd190153190167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190152190164%_)))
                              (_%tl190154190169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190152190164%_))))
                          (let* ((_%hd190172%_ _%hd190153190167%_)
                                 (_%rest190174%_ _%tl190154190169%_))
                            (if (_%is-e?190139%_ _%hd190172%_)
                                (let* ((_%e190175190182%_ _%rest190174%_)
                                       (_%E190177190186%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx190085%_
                                             _%e190138%_))))
                                       (_%E190176190200%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e190175190182%_))
                                              (let ((_%e190178190190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e190175190182%_))))
                                                (let ((_%hd190179190193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190178190190%_)))
                                                      (_%tl190180190195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190178190190%_))))
                                                  (let ((_%rest190198%_
                                                         _%hd190179190193%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190180190195%_))
                                                        (_%recur190133%_
                                                         _%rest190198%_
                                                         false)
                                                        (_%E190177190186%_)))))
                                              (_%E190177190186%_)))))
                                  (_%E190176190200%_))
                                (let _%lp190204%_ ((_%rest190206%_
                                                    _%rest190174%_)
                                                   (_%depth190207%_ '0))
                                  (let* ((_%e190208190215%_ _%rest190206%_)
                                         (_%E190210190219%_
                                          (lambda ()
                                            (if (fxpositive? _%depth190207%_)
                                                (_%make-splice190132%_
                                                 _%e190138%_
                                                 _%depth190207%_
                                                 (_%recur190133%_
                                                  _%hd190172%_
                                                  _%is-e?190139%_)
                                                 (_%recur190133%_
                                                  _%rest190206%_
                                                  _%is-e?190139%_))
                                                (_%make-cons190131%_
                                                 (_%recur190133%_
                                                  _%hd190172%_
                                                  _%is-e?190139%_)
                                                 (_%recur190133%_
                                                  _%rest190206%_
                                                  _%is-e?190139%_)))))
                                         (_%E190209190238%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e190208190215%_))
                                                (let ((_%e190211190223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e190208190215%_))))
                                                  (let ((_%hd190212190226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e190211190223%_)))
                                                        (_%tl190213190228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e190211190223%_))))
                                                    (let* ((_%rest-hd190231%_
                                                            _%hd190212190226%_)
                                                           (_%rest-tl190233%_
                                                            _%tl190213190228%_))
                                                      (if (_%is-e?190139%_
                                                           _%rest-hd190231%_)
                                                          (_%lp190204%_
                                                           _%rest-tl190233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth190207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth190207%_)
                      (_%make-splice190132%_
                       _%e190138%_
                       _%depth190207%_
                       (_%recur190133%_ _%hd190172%_ _%is-e?190139%_)
                       (_%recur190133%_ _%rest190206%_ _%is-e?190139%_))
                      (_%make-cons190131%_
                       (_%recur190133%_ _%hd190172%_ _%is-e?190139%_)
                       (_%recur190133%_ _%rest190206%_ _%is-e?190139%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E190210190219%_)))))
                                    (_%E190209190238%_)))))))
                      (_%E190151190160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E190150190242%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e190138%_))
                                                    (let ((_g190662_
                                                           (_%recur190133%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e190138%_)))
                    _%is-e?190139%_)))
              (begin
                (let ((_g190663_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g190662_)
                             (##values-length _g190662_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g190663_ 2)))
                      (error "Context expects 2 values" _g190663_)))
                (let ((_%e190247%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190662_ 0)))
                      (_%vars190248%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g190662_ 1))))
                  (values (cons 'vector _%e190247%_) _%vars190248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e190138%_))
                                                        (let ((_g190664_
                                                               (_%recur190133%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e190138%_)))
                        _%is-e?190139%_)))
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
                          (error "Context expects 2 values" _g190665_)))
                    (let ((_%e190251%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190664_ 0)))
                          (_%vars190252%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g190664_ 1))))
                      (values (cons 'box _%e190251%_) _%vars190252%_))))
                (values (cons 'datum _%e190138%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g190666_
                             (_%recur190133%_ _%e190129%_ gx#ellipsis?)))
                        (begin
                          (let ((_g190667_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g190666_)
                                       (##values-length _g190666_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g190667_ 2)))
                                (error "Context expects 2 values" _g190667_)))
                          (let ((_%tree190135%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190666_ 0)))
                                (_%vars190136%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g190666_ 1))))
                            (if (null? _%vars190136%_)
                                _%tree190135%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx190085%_
                                   _%vars190136%_))))))))))
          (let* ((_%e190089190099%_ _%stx190085%_)
                 (_%E190091190103%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx190085%_))))
                 (_%E190090190125%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e190089190099%_))
                        (let ((_%e190092190107%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e190089190099%_))))
                          (let ((_%hd190093190110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190092190107%_)))
                                (_%tl190094190112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190092190107%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190094190112%_))
                                (let ((_%e190095190115%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl190094190112%_))))
                                  (let ((_%hd190096190118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190095190115%_)))
                                        (_%tl190097190120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190095190115%_))))
                                    (let ((_%form190123%_ _%hd190096190118%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190097190120%_))
                                          (let ((__tmp190669
                                                 (_%generate190087%_
                                                  (_%parse190088%_
                                                   _%form190123%_)))
                                                (__tmp190668
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx190085%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp190669
                                             __tmp190668))
                                          (_%E190091190103%_)))))
                                (_%E190091190103%_))))
                        (_%E190091190103%_)))))
            (_%E190090190125%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx189334%_
               _%identifier=?189335%_
               _%unwrap-e189336%_
               _%wrap-e189337%_)
        (letrec ((_%generate-bindings189339%_
                  (lambda (_%target189949%_
                           _%ids189950%_
                           _%clauses189951%_
                           _%clause-ids189952%_
                           _%E189953%_)
                    (letrec ((_%generate1189955%_
                              (lambda (_%clause190052%_
                                       _%clause-id190053%_
                                       _%E190054%_)
                                (cons (cons _%clause-id190053%_ '())
                                      (cons (let ((__tmp190671
                                                   (cons _%target189949%_ '()))
                                                  (__tmp190670
                                                   (_%generate-clause189341%_
                                                    _%target189949%_
                                                    _%ids189950%_
                                                    _%clause190052%_
                                                    _%E190054%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp190671
                                               __tmp190670))
                                            '())))))
                      (let _%lp189957%_ ((_%rest189959%_ _%clauses189951%_)
                                         (_%rest-ids189960%_
                                          _%clause-ids189952%_)
                                         (_%bindings189961%_ '()))
                        (let* ((_%rest189962189970%_ _%rest189959%_)
                               (_%else189964189978%_
                                (lambda () _%bindings189961%_))
                               (_%K189966190040%_
                                (lambda (_%rest189981%_ _%clause189982%_)
                                  (let* ((_%rest-ids189983189990%_
                                          _%rest-ids189960%_)
                                         (_%E189985189994%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids189983189990%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K189986190028%_
                                          (lambda (_%rest-ids189997%_
                                                   _%clause-id189998%_)
                                            (let* ((_%rest-ids189999190007%_
                                                    _%rest-ids189997%_)
                                                   (_%else190001190015%_
                                                    (lambda ()
                                                      (cons (_%generate1189955%_
                                                             _%clause189982%_
                                                             _%clause-id189998%_
                                                             _%E189953%_)
                                                            _%bindings189961%_)))
                                                   (_%K190003190020%_
                                                    (lambda (_%next-clause-id190018%_)
                                                      (_%lp189957%_
                                                       _%rest189981%_
                                                       _%rest-ids189997%_
                                                       (cons (_%generate1189955%_
                                                              _%clause189982%_
                                                              _%clause-id189998%_
                                                              _%next-clause-id190018%_)
                                                             _%bindings189961%_)))))
                                              (if (pair? _%rest-ids189999190007%_)
                                                  (let* ((_%hd190004190023%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids189999190007%_)))
                                                         (_%next-clause-id190026%_
                                                          _%hd190004190023%_))
                                                    (_%K190003190020%_
                                                     _%next-clause-id190026%_))
                                                  (_%else190001190015%_))))))
                                    (if (pair? _%rest-ids189983189990%_)
                                        (let ((_%hd189987190031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids189983189990%_)))
                                              (_%tl189988190033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids189983189990%_))))
                                          (let* ((_%clause-id190036%_
                                                  _%hd189987190031%_)
                                                 (_%rest-ids190038%_
                                                  _%tl189988190033%_))
                                            (_%K189986190028%_
                                             _%rest-ids190038%_
                                             _%clause-id190036%_)))
                                        (_%E189985189994%_))))))
                          (if (pair? _%rest189962189970%_)
                              (let ((_%hd189967190043%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest189962189970%_)))
                                    (_%tl189968190045%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest189962189970%_))))
                                (let* ((_%clause190048%_ _%hd189967190043%_)
                                       (_%rest190050%_ _%tl189968190045%_))
                                  (_%K189966190040%_
                                   _%rest190050%_
                                   _%clause190048%_)))
                              (_%else189964189978%_)))))))
                 (_%generate-body189340%_
                  (lambda (_%bindings189909%_ _%body189910%_)
                    (let _%recur189912%_ ((_%rest189914%_ _%bindings189909%_))
                      (let* ((_%rest189915189923%_ _%rest189914%_)
                             (_%else189917189931%_ (lambda () _%body189910%_))
                             (_%K189919189937%_
                              (lambda (_%rest189934%_ _%hd189935%_)
                                (let ((__tmp190673 (cons _%hd189935%_ '()))
                                      (__tmp190672
                                       (_%recur189912%_ _%rest189934%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp190673
                                   __tmp190672)))))
                        (if (pair? _%rest189915189923%_)
                            (let ((_%hd189920189940%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest189915189923%_)))
                                  (_%tl189921189942%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest189915189923%_))))
                              (let* ((_%hd189945%_ _%hd189920189940%_)
                                     (_%rest189947%_ _%tl189921189942%_))
                                (_%K189919189937%_
                                 _%rest189947%_
                                 _%hd189945%_)))
                            (_%else189917189931%_))))))
                 (_%generate-clause189341%_
                  (lambda (_%target189772%_
                           _%ids189773%_
                           _%clause189774%_
                           _%E189775%_)
                    (letrec ((_%generate1189777%_
                              (lambda (_%hd189864%_
                                       _%fender189865%_
                                       _%body189866%_)
                                (let ((_g190674_
                                       (_%parse-clause189343%_
                                        _%hd189864%_
                                        _%ids189773%_)))
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
                                          (error "Context expects 2 values"
                                                 _g190675_)))
                                    (let ((_%e189868%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190674_ 0)))
                                          (_%mvars189869%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g190674_ 1))))
                                      (let* ((_%pvars189871%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars189869%_))))
                                             (_%E189873%_
                                              (cons _%E189775%_
                                                    (cons _%target189772%_
                                                          '())))
                                             (_%K189906%_
                                              (let ((__tmp190676
                                                     (let ((__tmp190678
                                                            (map (lambda (_%mvar189875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar189876%_)
                           (let* ((_%mvar189877189884%_ _%mvar189875%_)
                                  (_%E189879189888%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar189877189884%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K189880189894%_
                                   (lambda (_%depth189891%_ _%id189892%_)
                                     (cons _%id189892%_
                                           (cons (let ((__tmp190680
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id189892%_)))
                                                       (__tmp190679
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar189876%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp190680
                                                    __tmp190679
                                                    _%depth189891%_))
                                                 '())))))
                             (if (pair? _%mvar189877189884%_)
                                 (let ((_%hd189881189897%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar189877189884%_)))
                                       (_%tl189882189899%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar189877189884%_))))
                                   (let* ((_%id189902%_ _%hd189881189897%_)
                                          (_%depth189904%_ _%tl189882189899%_))
                                     (_%K189880189894%_
                                      _%depth189904%_
                                      _%id189902%_)))
                                 (_%E189879189888%_))))
                         _%mvars189869%_
                         _%pvars189871%_))
                   (__tmp190677
                    (if (eq? _%fender189865%_ '#t)
                        _%body189866%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender189865%_
                           _%body189866%_
                           _%E189873%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp190678 __tmp190677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars189871%_
                                                 __tmp190676))))
                                        (_%generate-match189342%_
                                         _%hd189864%_
                                         _%target189772%_
                                         _%e189868%_
                                         _%mvars189869%_
                                         _%K189906%_
                                         _%E189873%_))))))))
                      (let* ((_%e189778189798%_ _%clause189774%_)
                             (_%E189787189802%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e189778189798%_))))
                             (_%E189780189836%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189778189798%_))
                                    (let ((_%e189788189806%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189778189798%_))))
                                      (let ((_%hd189789189809%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189788189806%_)))
                                            (_%tl189790189811%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189788189806%_))))
                                        (let ((_%hd189814%_
                                               _%hd189789189809%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189790189811%_))
                                              (let ((_%e189791189816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189790189811%_))))
                                                (let ((_%hd189792189819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189791189816%_)))
                                                      (_%tl189793189821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189791189816%_))))
                                                  (let ((_%fender189824%_
                                                         _%hd189792189819%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl189793189821%_))
                                                        (let ((_%e189794189826%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl189793189821%_))))
                  (let ((_%hd189795189829%_
                         (let ()
                           (declare (not safe))
                           (##car _%e189794189826%_)))
                        (_%tl189796189831%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e189794189826%_))))
                    (let ((_%body189834%_ _%hd189795189829%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189796189831%_))
                          (_%generate1189777%_
                           _%hd189814%_
                           _%fender189824%_
                           _%body189834%_)
                          (_%E189787189802%_)))))
                (_%E189787189802%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E189787189802%_)))))
                                    (_%E189787189802%_))))
                             (_%E189779189860%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e189778189798%_))
                                    (let ((_%e189781189840%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e189778189798%_))))
                                      (let ((_%hd189782189843%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189781189840%_)))
                                            (_%tl189783189845%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189781189840%_))))
                                        (let ((_%hd189848%_
                                               _%hd189782189843%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189783189845%_))
                                              (let ((_%e189784189850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl189783189845%_))))
                                                (let ((_%hd189785189853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189784189850%_)))
                                                      (_%tl189786189855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189784189850%_))))
                                                  (let ((_%body189858%_
                                                         _%hd189785189853%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189786189855%_))
                                                        (_%generate1189777%_
                                                         _%hd189848%_
                                                         '#t
                                                         _%body189858%_)
                                                        (_%E189780189836%_)))))
                                              (_%E189780189836%_)))))
                                    (_%E189780189836%_)))))
                        (_%E189779189860%_)))))
                 (_%generate-match189342%_
                  (lambda (_%where189521%_
                           _%target189522%_
                           _%hd189523%_
                           _%mvars189524%_
                           _%K189525%_
                           _%E189526%_)
                    (letrec ((_%BUG189528%_
                              (lambda (_%q189770%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx189334%_
                                         _%hd189523%_
                                         _%q189770%_))))
                             (_%recur189529%_
                              (lambda (_%e189620%_
                                       _%vars189621%_
                                       _%target189622%_
                                       _%E189623%_
                                       _%k189624%_)
                                (let* ((_%e189625189632%_ _%e189620%_)
                                       (_%E189627189636%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e189625189632%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K189628189758%_
                                        (lambda (_%body189639%_ _%tag189640%_)
                                          (let ((_%$e189642%_ _%tag189640%_))
                                            (if (eq? 'any _%$e189642%_)
                                                (_%k189624%_ _%vars189621%_)
                                                (if (eq? 'id _%$e189642%_)
                                                    (let ((__tmp190685
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target189622%_)))
                                                          (__tmp190681
                                                           (let ((__tmp190683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190684
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e189337%_
                                    _%body189639%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?189335%_
                             __tmp190684
                             _%target189622%_)))
                         (__tmp190682 (_%k189624%_ _%vars189621%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp190683 __tmp190682 _%E189623%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp190685 __tmp190681 _%E189623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e189642%_)
                                                        (_%k189624%_
                                                         (cons (cons _%body189639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target189622%_)
                       _%vars189621%_))
                (if (eq? 'cons _%$e189642%_)
                    (let ((_%$e189645%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd189646%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl189647%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp190691
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target189622%_)))
                            (__tmp190686
                             (let ((__tmp190690
                                    (cons (cons (cons _%$e189645%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e189336%_
                                                         _%target189622%_))
                                                      '()))
                                          '()))
                                   (__tmp190687
                                    (let ((__tmp190689
                                           (cons (cons (cons _%$hd189646%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e189645%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl189647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e189645%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp190688
                                           (let* ((_%body189648189655%_
                                                   _%body189639%_)
                                                  (_%E189650189659%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body189648189655%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K189651189667%_
                                                   (lambda (_%tl189662%_
                                                            _%hd189663%_)
                                                     (_%recur189529%_
                                                      _%hd189663%_
                                                      _%vars189621%_
                                                      _%$hd189646%_
                                                      _%E189623%_
                                                      (lambda (_%vars189665%_)
                                                        (_%recur189529%_
                                                         _%tl189662%_
                                                         _%vars189665%_
                                                         _%$tl189647%_
                                                         _%E189623%_
                                                         _%k189624%_))))))
                                             (if (pair? _%body189648189655%_)
                                                 (let ((_%hd189652189670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body189648189655%_)))
                                                       (_%tl189653189672%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body189648189655%_))))
                                                   (let* ((_%hd189675%_
                                                           _%hd189652189670%_)
                                                          (_%tl189677%_
                                                           _%tl189653189672%_))
                                                     (_%K189651189667%_
                                                      _%tl189677%_
                                                      _%hd189675%_)))
                                                 (_%E189650189659%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp190689
                                       __tmp190688))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp190690
                                __tmp190687))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp190691
                         __tmp190686
                         _%E189623%_)))
                    (if (eq? 'splice _%$e189642%_)
                        (let* ((_%body189678189685%_ _%body189639%_)
                               (_%E189680189689%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body189678189685%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K189681189740%_
                                (lambda (_%tl189692%_ _%hd189693%_)
                                  (let* ((_%rlen189695%_
                                          (_%splice-rlen189530%_ _%tl189692%_))
                                         (_%$target189697%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd189699%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl189701%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp189703%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e189705%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd189707%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl189709%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars189711%_
                                          (_%splice-vars189531%_ _%hd189693%_))
                                         (_%lvars189713%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189711%_)))
                                         (_%tlvars189715%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars189711%_)))
                                         (_%linit189719%_
                                          (map (lambda (_%var189717%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars189713%_)))
                                    (letrec ((_%make-loop189722%_
                                              (lambda (_%vars189726%_)
                                                (let ((__tmp190693
                                                       (cons (cons (cons _%$lp189703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp190706
                                        (cons _%$hd189699%_ _%lvars189713%_))
                                       (__tmp190694
                                        (let ((__tmp190705
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd189699%_)))
                                              (__tmp190699
                                               (let ((__tmp190704
                                                      (cons (cons (cons _%$lp-e189705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e189336%_
                                   _%$hd189699%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190700
                                                      (let ((__tmp190703
                                                             (cons (cons (cons _%$lp-hd189707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e189705%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl189709%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e189705%_))
                                             '()))
                                 '())))
                    (__tmp190701
                     (_%recur189529%_
                      _%hd189693%_
                      '()
                      _%$lp-hd189707%_
                      _%E189623%_
                      (lambda (_%hdvars189728%_)
                        (cons _%$lp189703%_
                              (cons _%$lp-tl189709%_
                                    (map (lambda (_%svar189730%_
                                                  _%lvar189731%_)
                                           (let ((__tmp190702
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar189730%_
                                                     _%hdvars189728%_
                                                     _%BUG189528%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp190702
                                              _%lvar189731%_)))
                                         _%svars189711%_
                                         _%lvars189713%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp190703 __tmp190701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190704
                                                  __tmp190700)))
                                              (__tmp190695
                                               (let ((__tmp190698
                                                      (map (lambda (_%lvar189733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar189734%_)
                     (cons (cons _%tlvar189734%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar189733%_))
                                 '())))
                   _%lvars189713%_
                   _%tlvars189715%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190696
                                                      (_%k189624%_
                                                       (let ((__tmp190697
                                                              (lambda (_%svar189736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar189737%_
                               _%r189738%_)
                        (cons (cons _%svar189736%_ _%tlvar189737%_)
                              _%r189738%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp190697
                  _%vars189726%_
                  _%svars189711%_
                  _%tlvars189715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp190698
                                                  __tmp190696))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190705
                                           __tmp190699
                                           __tmp190695))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp190706
                                    __tmp190694))
                                 '()))
                     '()))
              (__tmp190692
               (cons _%$lp189703%_ (cons _%$target189697%_ _%linit189719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp190693
                                                   __tmp190692)))))
                                      (let ((_%body189724%_
                                             (let ((__tmp190708
                                                    (cons (cons (cons _%$target189697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl189701%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target189622%_
                                 _%rlen189695%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190707
                                                    (_%recur189529%_
                                                     _%tl189692%_
                                                     _%vars189621%_
                                                     _%$tl189701%_
                                                     _%E189623%_
                                                     _%make-loop189722%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190708
                                                __tmp190707))))
                                        (let ((__tmp190712
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target189622%_)))
                                              (__tmp190709
                                               (if (zero? _%rlen189695%_)
                                                   _%body189724%_
                                                   (let ((__tmp190710
                                                          (let ((__tmp190711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target189622%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp190711 _%rlen189695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp190710
                                                      _%body189724%_
                                                      _%E189623%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp190712
                                           __tmp190709
                                           _%E189623%_))))))))
                          (if (pair? _%body189678189685%_)
                              (let ((_%hd189682189743%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body189678189685%_)))
                                    (_%tl189683189745%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body189678189685%_))))
                                (let* ((_%hd189748%_ _%hd189682189743%_)
                                       (_%tl189750%_ _%tl189683189745%_))
                                  (_%K189681189740%_
                                   _%tl189750%_
                                   _%hd189748%_)))
                              (_%E189680189689%_)))
                        (if (eq? 'null _%$e189642%_)
                            (let ((__tmp190714
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target189622%_)))
                                  (__tmp190713 (_%k189624%_ _%vars189621%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp190714
                               __tmp190713
                               _%E189623%_))
                            (if (eq? 'vector _%$e189642%_)
                                (let ((_%$e189752%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp190719
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target189622%_)))
                                        (__tmp190715
                                         (let ((__tmp190717
                                                (cons (cons (cons _%$e189752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp190718
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e189336%_
                                    _%target189622%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp190718))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp190716
                                                (_%recur189529%_
                                                 _%body189639%_
                                                 _%vars189621%_
                                                 _%$e189752%_
                                                 _%E189623%_
                                                 _%k189624%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp190717
                                            __tmp190716))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp190719
                                     __tmp190715
                                     _%E189623%_)))
                                (if (eq? 'box _%$e189642%_)
                                    (let ((_%$e189754%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp190724
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target189622%_)))
                                            (__tmp190720
                                             (let ((__tmp190722
                                                    (cons (cons (cons _%$e189754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp190723
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e189336%_
                                        _%target189622%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp190723))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp190721
                                                    (_%recur189529%_
                                                     _%body189639%_
                                                     _%vars189621%_
                                                     _%$e189754%_
                                                     _%E189623%_
                                                     _%k189624%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp190722
                                                __tmp190721))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp190724
                                         __tmp190720
                                         _%E189623%_)))
                                    (if (eq? 'datum _%$e189642%_)
                                        (let ((_%$e189756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp190730
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target189622%_)))
                                                (__tmp190725
                                                 (let ((__tmp190729
                                                        (cons (cons (cons _%$e189756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target189622%_))
                                  '()))
                      '()))
               (__tmp190726
                (let ((__tmp190728
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e189756%_ _%body189639%_)))
                      (__tmp190727 (_%k189624%_ _%vars189621%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp190728 __tmp190727 _%E189623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp190729
                                                    __tmp190726))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp190730
                                             __tmp190725
                                             _%E189623%_)))
                                        (_%BUG189528%_
                                         _%e189620%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e189625189632%_)
                                      (let ((_%hd189629189761%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189625189632%_)))
                                            (_%tl189630189763%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189625189632%_))))
                                        (let* ((_%tag189766%_
                                                _%hd189629189761%_)
                                               (_%body189768%_
                                                _%tl189630189763%_))
                                          (_%K189628189758%_
                                           _%body189768%_
                                           _%tag189766%_)))
                                      (_%E189627189636%_)))))
                             (_%splice-rlen189530%_
                              (lambda (_%e189582%_)
                                (let _%lp189584%_ ((_%e189586%_ _%e189582%_)
                                                   (_%n189587%_ '0))
                                  (let* ((_%e189588189595%_ _%e189586%_)
                                         (_%E189590189599%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189588189595%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189591189608%_
                                          (lambda (_%body189602%_
                                                   _%tag189603%_)
                                            (let ((_%$e189605%_ _%tag189603%_))
                                              (if (eq? 'splice _%$e189605%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx189334%_
                                                     _%where189521%_))
                                                  (if (eq? 'cons _%$e189605%_)
                                                      (_%lp189584%_
                                                       (cdr _%body189602%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n189587%_
                                                                '1)))
                                                      _%n189587%_))))))
                                    (if (pair? _%e189588189595%_)
                                        (let ((_%hd189592189611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189588189595%_)))
                                              (_%tl189593189613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189588189595%_))))
                                          (let* ((_%tag189616%_
                                                  _%hd189592189611%_)
                                                 (_%body189618%_
                                                  _%tl189593189613%_))
                                            (_%K189591189608%_
                                             _%body189618%_
                                             _%tag189616%_)))
                                        (_%E189590189599%_))))))
                             (_%splice-vars189531%_
                              (lambda (_%e189538%_)
                                (let _%recur189540%_ ((_%e189542%_ _%e189538%_)
                                                      (_%vars189543%_ '()))
                                  (let* ((_%e189544189551%_ _%e189542%_)
                                         (_%E189546189555%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e189544189551%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K189547189570%_
                                          (lambda (_%body189558%_
                                                   _%tag189559%_)
                                            (let ((_%$e189561%_ _%tag189559%_))
                                              (if (eq? 'var _%$e189561%_)
                                                  (cons _%body189558%_
                                                        _%vars189543%_)
                                                  (if (or (eq? 'cons
                                                               _%$e189561%_)
                                                          (eq? 'splice
                                                               _%$e189561%_))
                                                      (_%recur189540%_
                                                       (cdr _%body189558%_)
                                                       (_%recur189540%_
                                                        (car _%body189558%_)
                                                        _%vars189543%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e189561%_)
                      (eq? 'box _%$e189561%_))
                  (_%recur189540%_ _%body189558%_ _%vars189543%_)
                  _%vars189543%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e189544189551%_)
                                        (let ((_%hd189548189573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189544189551%_)))
                                              (_%tl189549189575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189544189551%_))))
                                          (let* ((_%tag189578%_
                                                  _%hd189548189573%_)
                                                 (_%body189580%_
                                                  _%tl189549189575%_))
                                            (_%K189547189570%_
                                             _%body189580%_
                                             _%tag189578%_)))
                                        (_%E189546189555%_))))))
                             (_%make-body189532%_
                              (lambda (_%vars189534%_)
                                (cons _%K189525%_
                                      (map (lambda (_%mvar189536%_)
                                             (let ((__tmp190731
                                                    (car _%mvar189536%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp190731
                                                _%vars189534%_
                                                _%BUG189528%_)))
                                           _%mvars189524%_)))))
                      (_%recur189529%_
                       _%hd189523%_
                       '()
                       _%target189522%_
                       _%E189526%_
                       _%make-body189532%_))))
                 (_%parse-clause189343%_
                  (lambda (_%hd189415%_ _%ids189416%_)
                    (let _%recur189418%_ ((_%e189420%_ _%hd189415%_)
                                          (_%vars189421%_ '())
                                          (_%depth189422%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e189420%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e189420%_))
                              (values '(any) _%vars189421%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e189420%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx189334%_
                                     _%hd189415%_))
                                  (if (let ((__tmp190732
                                             (lambda (_%id189427%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e189420%_
                                                  _%id189427%_)))))
                                        (declare (not safe))
                                        (__find __tmp190732 _%ids189416%_))
                                      (values (cons 'id _%e189420%_)
                                              _%vars189421%_)
                                      (if (let ((__tmp190733
                                                 (lambda (_%var189430%_)
                                                   (let ((__tmp190734
                                                          (car _%var189430%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e189420%_
                                                      __tmp190734)))))
                                            (declare (not safe))
                                            (__find __tmp190733
                                                    _%vars189421%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx189334%_
                                             _%e189420%_))
                                          (values (cons 'var _%e189420%_)
                                                  (cons (cons _%e189420%_
                                                              _%depth189422%_)
                                                        _%vars189421%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e189420%_))
                              (let* ((_%e189434189441%_ _%e189420%_)
                                     (_%E189436189445%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e189434189441%_))))
                                     (_%E189435189506%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e189434189441%_))
                                            (let ((_%e189437189449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e189434189441%_))))
                                              (let ((_%hd189438189452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e189437189449%_)))
                                                    (_%tl189439189454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e189437189449%_))))
                                                (let* ((_%hd189457%_
                                                        _%hd189438189452%_)
                                                       (_%rest189459%_
                                                        _%tl189439189454%_)
                                                       (_%make-pair189474%_
                                                        (lambda (_%tag189461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd189462%_
                         _%tl189463%_)
                  (let* ((_%hd-depth189465%_
                          (if (eq? _%tag189461%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth189422%_ '1))
                              _%depth189422%_))
                         (_g190735_
                          (_%recur189418%_
                           _%hd189462%_
                           _%vars189421%_
                           _%hd-depth189465%_)))
                    (begin
                      (let ((_g190736_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g190735_)
                                   (##values-length _g190735_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g190736_ 2)))
                            (error "Context expects 2 values" _g190736_)))
                      (let ((_%hd189467%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190735_ 0)))
                            (_%vars189468%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g190735_ 1))))
                        (let ((_g190737_
                               (_%recur189418%_
                                _%tl189463%_
                                _%vars189468%_
                                _%depth189422%_)))
                          (begin
                            (let ((_g190738_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190737_)
                                         (##values-length _g190737_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190738_ 2)))
                                  (error "Context expects 2 values"
                                         _g190738_)))
                            (let ((_%tl189470%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190737_ 0)))
                                  (_%vars189471%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190737_ 1))))
                              (values (cons _%tag189461%_
                                            (cons _%hd189467%_ _%tl189470%_))
                                      _%vars189471%_)))))))))
               (_%e189475189482%_ _%rest189459%_)
               (_%E189477189486%_
                (lambda ()
                  (_%make-pair189474%_ 'cons _%hd189457%_ _%rest189459%_)))
               (_%E189476189502%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e189475189482%_))
                      (let ((_%e189478189490%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189475189482%_))))
                        (let ((_%hd189479189493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189478189490%_)))
                              (_%tl189480189495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189478189490%_))))
                          (let* ((_%rest-hd189498%_ _%hd189479189493%_)
                                 (_%rest-tl189500%_ _%tl189480189495%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd189498%_))
                                (_%make-pair189474%_
                                 'splice
                                 _%hd189457%_
                                 _%rest-tl189500%_)
                                (_%make-pair189474%_
                                 'cons
                                 _%hd189457%_
                                 _%rest189459%_)))))
                      (_%E189477189486%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189476189502%_))))
                                            (_%E189436189445%_)))))
                                (_%E189435189506%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e189420%_))
                                  (values '(null) _%vars189421%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e189420%_))
                                      (let ((_g190739_
                                             (_%recur189418%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e189420%_)))
                                              _%vars189421%_
                                              _%depth189422%_)))
                                        (begin
                                          (let ((_g190740_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190739_)
                                                       (##values-length
                                                        _g190739_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190740_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190740_)))
                                          (let ((_%e189512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190739_ 0)))
                                                (_%vars189513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190739_
                                                    1))))
                                            (values (cons 'vector _%e189512%_)
                                                    _%vars189513%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e189420%_))
                                          (let ((_g190741_
                                                 (_%recur189418%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e189420%_)))
                                                  _%vars189421%_
                                                  _%depth189422%_)))
                                            (begin
                                              (let ((_g190742_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g190741_)
                                                           (##values-length
                                                            _g190741_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g190742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g190742_)))
                                              (let ((_%e189516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190741_
                                                        0)))
                                                    (_%vars189517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g190741_
                                                        1))))
                                                (values (cons 'box _%e189516%_)
                                                        _%vars189517%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e189420%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e189420%_)))
                                                      _%vars189421%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx189334%_
                                                 _%e189420%_))))))))))))
          (let* ((_%e189344189357%_ _%stx189334%_)
                 (_%E189346189361%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e189344189357%_))))
                 (_%E189345189411%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189344189357%_))
                        (let ((_%e189347189365%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189344189357%_))))
                          (let ((_%hd189348189368%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189347189365%_)))
                                (_%tl189349189370%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189347189365%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189349189370%_))
                                (let ((_%e189350189373%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189349189370%_))))
                                  (let ((_%hd189351189376%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189350189373%_)))
                                        (_%tl189352189378%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189350189373%_))))
                                    (let ((_%expr189381%_ _%hd189351189376%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189352189378%_))
                                          (let ((_%e189353189383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl189352189378%_))))
                                            (let ((_%hd189354189386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189353189383%_)))
                                                  (_%tl189355189388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189353189383%_))))
                                              (let* ((_%ids189391%_
                                                      _%hd189354189386%_)
                                                     (_%clauses189393%_
                                                      _%tl189355189388%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids189391%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses189393%_))
                                                        (let* ((_%ids189398%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids189391%_)))
                       (_%clauses189400%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses189393%_)))
                       (_%clause-ids189402%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses189400%_)))
                       (_%E189404%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target189406%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first189408%_
                        (if (null? _%clauses189400%_)
                            _%E189404%_
                            (car _%clause-ids189402%_))))
                  (let ((__tmp190744
                         (let ((__tmp190745
                                (let ((__tmp190747
                                       (let ((__tmp190749
                                              (cons (cons (cons _%E189404%_
                                                                '())
                                                          (cons (let ((__tmp190751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target189406%_ '()))
                              (__tmp190750
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target189406%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp190751 __tmp190750))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp190748
                                              (_%generate-body189340%_
                                               (_%generate-bindings189339%_
                                                _%target189406%_
                                                _%ids189398%_
                                                _%clauses189400%_
                                                _%clause-ids189402%_
                                                _%E189404%_)
                                               (cons _%first189408%_
                                                     (cons _%expr189381%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp190749
                                          __tmp190748)))
                                      (__tmp190746
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx189334%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp190747
                                   __tmp190746))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp190745)))
                        (__tmp190743
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx189334%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp190744 __tmp190743)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx189334%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx189334%_
                                                       _%ids189391%_))))))
                                          (_%E189346189361%_)))))
                                (_%E189346189361%_))))
                        (_%E189346189361%_)))))
            (_%E189345189411%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx190059%_)
        (let* ((_%identifier=?190061%_ 'free-identifier=?)
               (_%unwrap-e190063%_ 'syntax-e)
               (_%wrap-e190065%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190059%_
           _%identifier=?190061%_
           _%unwrap-e190063%_
           _%wrap-e190065%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx190067%_ _%identifier=?190068%_)
        (let* ((_%unwrap-e190070%_ 'syntax-e) (_%wrap-e190072%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190067%_
           _%identifier=?190068%_
           _%unwrap-e190070%_
           _%wrap-e190072%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx190074%_ _%identifier=?190075%_ _%unwrap-e190076%_)
        (let ((_%wrap-e190078%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx190074%_
           _%identifier=?190075%_
           _%unwrap-e190076%_
           _%wrap-e190078%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g190752_
        (let ((_g190753_ (let () (declare (not safe)) (##length _g190752_))))
          (cond ((let () (declare (not safe)) (##fx= _g190753_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g190752_))
                ((let () (declare (not safe)) (##fx= _g190753_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g190752_))
                ((let () (declare (not safe)) (##fx= _g190753_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g190752_))
                ((let () (declare (not safe)) (##fx= _g190753_ 4))
                 (apply gx#macro-expand-syntax-case__% _g190752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g190752_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx189331%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx189331%_))
            (let ((__tmp190754
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx189331%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp190754 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd189289%_ . _%rest189290%_)
        (let ((_%len189292%_ (length _%hd189289%_)))
          (let _%lp189294%_ ((_%rest189296%_ _%rest189290%_))
            (let* ((_%rest189297189305%_ _%rest189296%_)
                   (_%else189299189313%_ (lambda () '#!void))
                   (_%K189301189319%_
                    (lambda (_%rest189316%_ _%hd189317%_)
                      (if (let ((__tmp190755 (length _%hd189317%_)))
                            (declare (not safe))
                            (##fx= _%len189292%_ __tmp190755))
                          (_%lp189294%_ _%rest189316%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd189317%_))))))
              (if (pair? _%rest189297189305%_)
                  (let ((_%hd189302189322%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest189297189305%_)))
                        (_%tl189303189324%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest189297189305%_))))
                    (let* ((_%hd189327%_ _%hd189302189322%_)
                           (_%rest189329%_ _%tl189303189324%_))
                      (_%K189301189319%_ _%rest189329%_ _%hd189327%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx189239%_ _%n189240%_)
        (let _%lp189242%_ ((_%rest189245%_ _%stx189239%_) (_%r189247%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189245%_))
              (let* ((_%g189249189256%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189245%_)))
                     (_%E189251189260%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189249189256%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189252189267%_
                      (lambda (_%rest189263%_ _%hd189264%_)
                        (_%lp189242%_
                         _%rest189263%_
                         (cons _%hd189264%_ _%r189247%_)))))
                (if (pair? _%g189249189256%_)
                    (let ((_%hd189253189270%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189249189256%_)))
                          (_%tl189254189272%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189249189256%_))))
                      (let* ((_%hd189275%_ _%hd189253189270%_)
                             (_%rest189277%_ _%tl189254189272%_))
                        (_%K189252189267%_ _%rest189277%_ _%hd189275%_)))
                    (_%E189251189260%_)))
              (let _%lp189279%_ ((_%n189281%_ _%n189240%_)
                                 (_%l189282%_ _%r189247%_)
                                 (_%r189284%_ _%rest189245%_))
                (if (null? _%l189282%_)
                    (values _%l189282%_ _%r189284%_)
                    (if (fxpositive? _%n189281%_)
                        (_%lp189279%_
                         (let () (declare (not safe)) (##fx- _%n189281%_ '1))
                         (cdr _%l189282%_)
                         (cons (car _%l189282%_) _%r189284%_))
                        (values (reverse! _%l189282%_) _%r189284%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx189189%_ _%n189190%_)
        (let _%lp189192%_ ((_%rest189195%_ _%stx189189%_) (_%r189197%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest189195%_))
              (let* ((_%g189199189206%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest189195%_)))
                     (_%E189201189210%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g189199189206%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K189202189217%_
                      (lambda (_%rest189213%_ _%hd189214%_)
                        (_%lp189192%_
                         _%rest189213%_
                         (cons _%hd189214%_ _%r189197%_)))))
                (if (pair? _%g189199189206%_)
                    (let ((_%hd189203189220%_
                           (let ()
                             (declare (not safe))
                             (##car _%g189199189206%_)))
                          (_%tl189204189222%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g189199189206%_))))
                      (let* ((_%hd189225%_ _%hd189203189220%_)
                             (_%rest189227%_ _%tl189204189222%_))
                        (_%K189202189217%_ _%rest189227%_ _%hd189225%_)))
                    (_%E189201189210%_)))
              (let _%lp189229%_ ((_%n189231%_ _%n189190%_)
                                 (_%l189232%_ _%r189197%_)
                                 (_%r189234%_ _%rest189195%_))
                (if (null? _%l189232%_)
                    (vector _%l189232%_ _%r189234%_)
                    (if (fxpositive? _%n189231%_)
                        (_%lp189229%_
                         (let () (declare (not safe)) (##fx- _%n189231%_ '1))
                         (cdr _%l189232%_)
                         (cons (car _%l189232%_) _%r189234%_))
                        (vector (reverse! _%l189232%_) _%r189234%_))))))))))
