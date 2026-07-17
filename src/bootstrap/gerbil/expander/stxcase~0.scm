(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1784471384)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp198994 (list gx#expander::t))
            (__tmp198993 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp198994
         '(id depth)
         __tmp198993
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args198990%_
        (apply make-instance gx#syntax-pattern::t _%$args198990%_)))
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
      (lambda (_%self198976%_ _%stx198977%_)
        (let ((_%self198980%_ _%self198976%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx198977%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx198443%_)
        (letrec ((_%generate198445%_
                  (lambda (_%e198685%_)
                    (letrec ((_%BUG198687%_
                              (lambda (_%q198852%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx198443%_
                                         _%e198685%_
                                         _%q198852%_))))
                             (_%local-pattern-e198688%_
                              (lambda (_%pat198850%_)
                                (let ((__tmp198995
                                       (##structure-ref
                                        _%pat198850%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp198995))))
                             (_%getvar198689%_
                              (lambda (_%q198847%_ _%vars198848%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q198847%_
                                   _%vars198848%_
                                   _%BUG198687%_))))
                             (_%getarg198690%_
                              (lambda (_%arg198813%_ _%vars198814%_)
                                (let* ((_%$%arg198815198822%_ _%arg198813%_)
                                       (_%$%E198817198826%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg198815198822%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K198818198835%_
                                        (lambda (_%e198829%_ _%tag198830%_)
                                          (let ((_%$e198832%_ _%tag198830%_))
                                            (if (eq? 'ref _%$e198832%_)
                                                (_%getvar198689%_
                                                 _%e198829%_
                                                 _%vars198814%_)
                                                (if (eq? 'pattern _%$e198832%_)
                                                    (_%local-pattern-e198688%_
                                                     _%e198829%_)
                                                    (_%BUG198687%_
                                                     _%arg198813%_)))))))
                                  (if (pair? _%$%arg198815198822%_)
                                      (let ((_%$%hd198819198838%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg198815198822%_)))
                                            (_%$%tl198820198840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg198815198822%_))))
                                        (let* ((_%tag198843%_
                                                _%$%hd198819198838%_)
                                               (_%e198845%_
                                                _%$%tl198820198840%_))
                                          (_%$%K198818198835%_
                                           _%e198845%_
                                           _%tag198843%_)))
                                      (_%$%E198817198826%_))))))
                      (let _%recur198692%_ ((_%e198694%_ _%e198685%_)
                                            (_%vars198695%_ '()))
                        (let* ((_%$%e198696198703%_ _%e198694%_)
                               (_%$%E198698198707%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e198696198703%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K198699198801%_
                                (lambda (_%body198710%_ _%tag198711%_)
                                  (let ((_%$e198713%_ _%tag198711%_))
                                    (if (eq? 'datum _%$e198713%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body198710%_))
                                        (if (eq? 'term _%$e198713%_)
                                            (let ((_%id198716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body198710%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id198716%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks198719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id198716%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks198719%_)
                                                        (let ((__tmp198996
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body198710%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp198996))
                (let ((__tmp198998
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body198710%_)))
                      (__tmp198997
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body198710%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp198998
                   __tmp198997
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id198716%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body198710%_))
                                                      (_%BUG198687%_
                                                       _%e198694%_))))
                                            (if (eq? 'pattern _%$e198713%_)
                                                (_%local-pattern-e198688%_
                                                 _%body198710%_)
                                                (if (eq? 'ref _%$e198713%_)
                                                    (_%getvar198689%_
                                                     _%body198710%_
                                                     _%vars198695%_)
                                                    (if (eq? 'cons
                                                             _%$e198713%_)
                                                        (let ((__tmp199000
                                                               (_%recur198692%_
                                                                (car _%body198710%_)
                                                                _%vars198695%_))
                                                              (__tmp198999
                                                               (_%recur198692%_
                                                                (cdr _%body198710%_)
                                                                _%vars198695%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp199000
                                                           __tmp198999))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e198713%_)
                    (let ((__tmp199001
                           (_%recur198692%_ _%body198710%_ _%vars198695%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp199001))
                    (if (eq? 'box _%$e198713%_)
                        (let ((__tmp199002
                               (_%recur198692%_
                                _%body198710%_
                                _%vars198695%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp199002))
                        (if (eq? 'splice _%$e198713%_)
                            (let* ((_%$%body198722198733%_ _%body198710%_)
                                   (_%$%E198724198737%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body198722198733%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K198725198775%_
                                    (lambda (_%args198740%_
                                             _%iv198741%_
                                             _%hd198742%_
                                             _%depth198743%_)
                                      (let* ((_%targets198749%_
                                              (map (lambda (_%$%g198744198746%_)
                                                     (_%getarg198690%_
                                                      _%$%g198744198746%_
                                                      _%vars198695%_))
                                                   _%args198740%_))
                                             (_%fold-in198751%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args198740%_)))
                                             (_%fold-out198753%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args198755%_
                                              (let ((__tmp199003
                                                     (cons _%fold-out198753%_
                                                           '())))
                                                (declare (not safe))
                                                (##append
                                                 _%fold-in198751%_
                                                 __tmp199003)))
                                             (_%lambda-body198772%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth198743%_ '1))
                                                  (let ((_%r-args198763%_
                                                         (map (lambda (_%arg198757%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg198757%_)))
                      _%args198740%_))
                (_%r-vars198764%_
                 (let ((__tmp199004
                        (lambda (_%arg198759%_ _%var198760%_ _%r198761%_)
                          (cons (cons (cdr _%arg198759%_) _%var198760%_)
                                _%r198761%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp199004
                    _%vars198695%_
                    _%args198740%_
                    _%fold-in198751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur198692%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth198743%_ '1))
                         (cons _%hd198742%_
                               (cons (cons 'var _%fold-out198753%_)
                                     _%r-args198763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars198764%_))
                                                  (let* ((_%hd-vars198770%_
                                                          (let ((__tmp199005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg198766%_ _%var198767%_ _%r198768%_)
                           (cons (cons (cdr _%arg198766%_) _%var198767%_)
                                 _%r198768%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp199005
                     _%vars198695%_
                     _%args198740%_
                     _%fold-in198751%_)))
                 (__tmp199006
                  (_%recur198692%_ _%hd198742%_ _%hd-vars198770%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp199006
                                                     _%fold-out198753%_)))))
                                        (let ((__tmp199010
                                               (if (let ((__tmp199011
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets198749%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp199011 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets198749%_))
                                                   '#!void))
                                              (__tmp199007
                                               (let ((__tmp199009
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args198755%_
                                                         _%lambda-body198772%_)))
                                                     (__tmp199008
                                                      (_%recur198692%_
                                                       _%iv198741%_
                                                       _%vars198695%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp199009
                                                  __tmp199008
                                                  _%targets198749%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp199010
                                           __tmp199007))))))
                              (if (pair? _%$%body198722198733%_)
                                  (let ((_%$%hd198726198778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body198722198733%_)))
                                        (_%$%tl198727198780%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body198722198733%_))))
                                    (let ((_%depth198783%_
                                           _%$%hd198726198778%_))
                                      (if (pair? _%$%tl198727198780%_)
                                          (let ((_%$%hd198728198785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl198727198780%_)))
                                                (_%$%tl198729198787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl198727198780%_))))
                                            (let ((_%hd198790%_
                                                   _%$%hd198728198785%_))
                                              (if (pair? _%$%tl198729198787%_)
                                                  (let ((_%$%hd198730198792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl198729198787%_)))
                                                        (_%$%tl198731198794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl198729198787%_))))
                                                    (let* ((_%iv198797%_
                                                            _%$%hd198730198792%_)
                                                           (_%args198799%_
                                                            _%$%tl198731198794%_))
                                                      (_%$%K198725198775%_
                                                       _%args198799%_
                                                       _%iv198797%_
                                                       _%hd198790%_
                                                       _%depth198783%_)))
                                                  (_%$%E198724198737%_))))
                                          (_%$%E198724198737%_))))
                                  (_%$%E198724198737%_)))
                            (if (eq? 'var _%$e198713%_)
                                _%body198710%_
                                (_%BUG198687%_ _%e198694%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e198696198703%_)
                              (let ((_%$%hd198700198804%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e198696198703%_)))
                                    (_%$%tl198701198806%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e198696198703%_))))
                                (let* ((_%tag198809%_ _%$%hd198700198804%_)
                                       (_%body198811%_ _%$%tl198701198806%_))
                                  (_%$%K198699198801%_
                                   _%body198811%_
                                   _%tag198809%_)))
                              (_%$%E198698198707%_)))))))
                 (_%parse198446%_
                  (lambda (_%e198487%_)
                    (letrec ((_%make-cons198489%_
                              (lambda (_%hd198677%_ _%tl198678%_)
                                (let ((_g199012_ _%hd198677%_)
                                      (_g199014_ _%tl198678%_))
                                  (begin
                                    (let ((_g199013_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199012_)
                                                 (##values-length _g199012_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199013_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199013_)))
                                    (let ((_g199015_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199014_)
                                                 (##values-length _g199014_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199015_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199015_)))
                                    (let ((_%hd-e198680%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199012_ 0)))
                                          (_%hd-vars198681%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199012_ 1))))
                                      (let ((_%tl-e198682%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199014_ 0)))
                                            (_%tl-vars198683%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199014_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e198680%_
                                                            _%tl-e198682%_))
                                                (append _%hd-vars198681%_
                                                        _%tl-vars198683%_))))))))
                             (_%make-splice198490%_
                              (lambda (_%where198613%_
                                       _%depth198614%_
                                       _%hd198615%_
                                       _%tl198616%_)
                                (let ((_g199016_ _%hd198615%_)
                                      (_g199018_ _%tl198616%_))
                                  (begin
                                    (let ((_g199017_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199016_)
                                                 (##values-length _g199016_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199017_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199017_)))
                                    (let ((_g199019_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199018_)
                                                 (##values-length _g199018_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199019_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199019_)))
                                    (let ((_%hd-e198618%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199016_ 0)))
                                          (_%hd-vars198619%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199016_ 1))))
                                      (let ((_%tl-e198620%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199018_ 0)))
                                            (_%tl-vars198621%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199018_ 1))))
                                        (let _%lp198623%_ ((_%rest198625%_
                                                            _%hd-vars198619%_)
                                                           (_%targets198626%_
                                                            '())
                                                           (_%vars198627%_
                                                            _%tl-vars198621%_))
                                          (let* ((_%$%rest198628198638%_
                                                  _%rest198625%_)
                                                 (_%$%else198630198646%_
                                                  (lambda ()
                                                    (if (null? _%targets198626%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx198443%_
                                                           _%where198613%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth198614%_
                                    (cons _%hd-e198618%_
                                          (cons _%tl-e198620%_
                                                _%targets198626%_))))
                        _%vars198627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K198632198658%_
                                                  (lambda (_%rest198649%_
                                                           _%hd-pat198650%_
                                                           _%hd-depth*198651%_)
                                                    (let ((_%hd-depth198653%_
                                                           (fx- _%hd-depth*198651%_
                                                                _%depth198614%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth198653%_))
                                                          (_%lp198623%_
                                                           _%rest198649%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat198650%_)
                         _%targets198626%_)
                   (cons (cons _%hd-depth198653%_ _%hd-pat198650%_)
                         _%vars198627%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth198653%_))
                      (_%lp198623%_
                       _%rest198649%_
                       (cons (cons 'pattern _%hd-pat198650%_)
                             _%targets198626%_)
                       _%vars198627%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx198443%_
                         _%where198613%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest198628198638%_)
                                                (let ((_%$%hd198633198661%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest198628198638%_)))
                                                      (_%$%tl198634198663%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest198628198638%_))))
                                                  (if (pair? _%$%hd198633198661%_)
                                                      (let ((_%$%hd198635198666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd198633198661%_)))
                    (_%$%tl198636198668%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd198633198661%_))))
                (let* ((_%hd-depth*198671%_ _%$%hd198635198666%_)
                       (_%hd-pat198673%_ _%$%tl198636198668%_)
                       (_%rest198675%_ _%$%tl198634198663%_))
                  (_%$%K198632198658%_
                   _%rest198675%_
                   _%hd-pat198673%_
                   _%hd-depth*198671%_)))
              (_%$%else198630198646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else198630198646%_))))))))))
                             (_%recur198491%_
                              (lambda (_%e198496%_ _%is-e?198497%_)
                                (if (_%is-e?198497%_ _%e198496%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx198443%_))
                                    (if (gx#syntax-local-pattern? _%e198496%_)
                                        (let* ((_%pat198501%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e198496%_)))
                                               (_%depth198503%_
                                                (##structure-ref
                                                 _%pat198501%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth198503%_)
                                              (values (cons 'ref _%pat198501%_)
                                                      (cons (cons _%depth198503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat198501%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat198501%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e198496%_))
                                            (values (cons 'term _%e198496%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e198496%_))
                                                (let* ((_%$%e198507198514%_
                                                        _%e198496%_)
                                                       (_%$%E198509198518%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e198507198514%_))))
                                                       (_%$%E198508198600%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e198507198514%_))
                      (let ((_%$%e198510198522%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e198507198514%_))))
                        (let ((_%$%hd198511198525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198510198522%_)))
                              (_%$%tl198512198527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198510198522%_))))
                          (let* ((_%hd198530%_ _%$%hd198511198525%_)
                                 (_%rest198532%_ _%$%tl198512198527%_))
                            (if (_%is-e?198497%_ _%hd198530%_)
                                (let* ((_%$%e198533198540%_ _%rest198532%_)
                                       (_%$%E198535198544%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx198443%_
                                             _%e198496%_))))
                                       (_%$%E198534198558%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e198533198540%_))
                                              (let ((_%$%e198536198548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e198533198540%_))))
                                                (let ((_%$%hd198537198551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198536198548%_)))
                                                      (_%$%tl198538198553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198536198548%_))))
                                                  (let ((_%rest198556%_
                                                         _%$%hd198537198551%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl198538198553%_))
                                                        (_%recur198491%_
                                                         _%rest198556%_
                                                         false)
                                                        (_%$%E198535198544%_)))))
                                              (_%$%E198535198544%_)))))
                                  (_%$%E198534198558%_))
                                (let _%lp198562%_ ((_%rest198564%_
                                                    _%rest198532%_)
                                                   (_%depth198565%_ '0))
                                  (let* ((_%$%e198566198573%_ _%rest198564%_)
                                         (_%$%E198568198577%_
                                          (lambda ()
                                            (if (fxpositive? _%depth198565%_)
                                                (_%make-splice198490%_
                                                 _%e198496%_
                                                 _%depth198565%_
                                                 (_%recur198491%_
                                                  _%hd198530%_
                                                  _%is-e?198497%_)
                                                 (_%recur198491%_
                                                  _%rest198564%_
                                                  _%is-e?198497%_))
                                                (_%make-cons198489%_
                                                 (_%recur198491%_
                                                  _%hd198530%_
                                                  _%is-e?198497%_)
                                                 (_%recur198491%_
                                                  _%rest198564%_
                                                  _%is-e?198497%_)))))
                                         (_%$%E198567198596%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e198566198573%_))
                                                (let ((_%$%e198569198581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e198566198573%_))))
                                                  (let ((_%$%hd198570198584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e198569198581%_)))
                                                        (_%$%tl198571198586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e198569198581%_))))
                                                    (let* ((_%rest-hd198589%_
                                                            _%$%hd198570198584%_)
                                                           (_%rest-tl198591%_
                                                            _%$%tl198571198586%_))
                                                      (if (_%is-e?198497%_
                                                           _%rest-hd198589%_)
                                                          (_%lp198562%_
                                                           _%rest-tl198591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth198565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth198565%_)
                      (_%make-splice198490%_
                       _%e198496%_
                       _%depth198565%_
                       (_%recur198491%_ _%hd198530%_ _%is-e?198497%_)
                       (_%recur198491%_ _%rest198564%_ _%is-e?198497%_))
                      (_%make-cons198489%_
                       (_%recur198491%_ _%hd198530%_ _%is-e?198497%_)
                       (_%recur198491%_ _%rest198564%_ _%is-e?198497%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E198568198577%_)))))
                                    (_%$%E198567198596%_)))))))
                      (_%$%E198509198518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198508198600%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e198496%_))
                                                    (let ((_g199020_
                                                           (_%recur198491%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e198496%_)))
                    _%is-e?198497%_)))
              (begin
                (let ((_g199021_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g199020_)
                             (##values-length _g199020_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g199021_ 2)))
                      (error "Context expects 2 values" _g199021_)))
                (let ((_%e198605%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199020_ 0)))
                      (_%vars198606%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199020_ 1))))
                  (values (cons 'vector _%e198605%_) _%vars198606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e198496%_))
                                                        (let ((_g199022_
                                                               (_%recur198491%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e198496%_)))
                        _%is-e?198497%_)))
                  (begin
                    (let ((_g199023_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g199022_)
                                 (##values-length _g199022_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g199023_ 2)))
                          (error "Context expects 2 values" _g199023_)))
                    (let ((_%e198609%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199022_ 0)))
                          (_%vars198610%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199022_ 1))))
                      (values (cons 'box _%e198609%_) _%vars198610%_))))
                (values (cons 'datum _%e198496%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g199024_
                             (_%recur198491%_ _%e198487%_ gx#ellipsis?)))
                        (begin
                          (let ((_g199025_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g199024_)
                                       (##values-length _g199024_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g199025_ 2)))
                                (error "Context expects 2 values" _g199025_)))
                          (let ((_%tree198493%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199024_ 0)))
                                (_%vars198494%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199024_ 1))))
                            (if (null? _%vars198494%_)
                                _%tree198493%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx198443%_
                                   _%vars198494%_))))))))))
          (let* ((_%$%e198447198457%_ _%stx198443%_)
                 (_%$%E198449198461%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx198443%_))))
                 (_%$%E198448198483%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e198447198457%_))
                        (let ((_%$%e198450198465%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e198447198457%_))))
                          (let ((_%$%hd198451198468%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198450198465%_)))
                                (_%$%tl198452198470%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198450198465%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl198452198470%_))
                                (let ((_%$%e198453198473%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl198452198470%_))))
                                  (let ((_%$%hd198454198476%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198453198473%_)))
                                        (_%$%tl198455198478%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198453198473%_))))
                                    (let ((_%form198481%_
                                           _%$%hd198454198476%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl198455198478%_))
                                          (let ((__tmp199027
                                                 (_%generate198445%_
                                                  (_%parse198446%_
                                                   _%form198481%_)))
                                                (__tmp199026
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx198443%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp199027
                                             __tmp199026))
                                          (_%$%E198449198461%_)))))
                                (_%$%E198449198461%_))))
                        (_%$%E198449198461%_)))))
            (_%$%E198448198483%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx197692%_
               _%identifier=?197693%_
               _%unwrap-e197694%_
               _%wrap-e197695%_)
        (letrec ((_%generate-bindings197697%_
                  (lambda (_%target198307%_
                           _%ids198308%_
                           _%clauses198309%_
                           _%clause-ids198310%_
                           _%E198311%_)
                    (letrec ((_%generate1198313%_
                              (lambda (_%clause198410%_
                                       _%clause-id198411%_
                                       _%E198412%_)
                                (cons (cons _%clause-id198411%_ '())
                                      (cons (let ((__tmp199029
                                                   (cons _%target198307%_ '()))
                                                  (__tmp199028
                                                   (_%generate-clause197699%_
                                                    _%target198307%_
                                                    _%ids198308%_
                                                    _%clause198410%_
                                                    _%E198412%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp199029
                                               __tmp199028))
                                            '())))))
                      (let _%lp198315%_ ((_%rest198317%_ _%clauses198309%_)
                                         (_%rest-ids198318%_
                                          _%clause-ids198310%_)
                                         (_%bindings198319%_ '()))
                        (let* ((_%$%rest198320198328%_ _%rest198317%_)
                               (_%$%else198322198336%_
                                (lambda () _%bindings198319%_))
                               (_%$%K198324198398%_
                                (lambda (_%rest198339%_ _%clause198340%_)
                                  (let* ((_%$%rest-ids198341198348%_
                                          _%rest-ids198318%_)
                                         (_%$%E198343198352%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids198341198348%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K198344198386%_
                                          (lambda (_%rest-ids198355%_
                                                   _%clause-id198356%_)
                                            (let* ((_%$%rest-ids198357198365%_
                                                    _%rest-ids198355%_)
                                                   (_%$%else198359198373%_
                                                    (lambda ()
                                                      (cons (_%generate1198313%_
                                                             _%clause198340%_
                                                             _%clause-id198356%_
                                                             _%E198311%_)
                                                            _%bindings198319%_)))
                                                   (_%$%K198361198378%_
                                                    (lambda (_%next-clause-id198376%_)
                                                      (_%lp198315%_
                                                       _%rest198339%_
                                                       _%rest-ids198355%_
                                                       (cons (_%generate1198313%_
                                                              _%clause198340%_
                                                              _%clause-id198356%_
                                                              _%next-clause-id198376%_)
                                                             _%bindings198319%_)))))
                                              (if (pair? _%$%rest-ids198357198365%_)
                                                  (let* ((_%$%hd198362198381%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids198357198365%_)))
                                                         (_%next-clause-id198384%_
                                                          _%$%hd198362198381%_))
                                                    (_%$%K198361198378%_
                                                     _%next-clause-id198384%_))
                                                  (_%$%else198359198373%_))))))
                                    (if (pair? _%$%rest-ids198341198348%_)
                                        (let ((_%$%hd198345198389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids198341198348%_)))
                                              (_%$%tl198346198391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids198341198348%_))))
                                          (let* ((_%clause-id198394%_
                                                  _%$%hd198345198389%_)
                                                 (_%rest-ids198396%_
                                                  _%$%tl198346198391%_))
                                            (_%$%K198344198386%_
                                             _%rest-ids198396%_
                                             _%clause-id198394%_)))
                                        (_%$%E198343198352%_))))))
                          (if (pair? _%$%rest198320198328%_)
                              (let ((_%$%hd198325198401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest198320198328%_)))
                                    (_%$%tl198326198403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest198320198328%_))))
                                (let* ((_%clause198406%_ _%$%hd198325198401%_)
                                       (_%rest198408%_ _%$%tl198326198403%_))
                                  (_%$%K198324198398%_
                                   _%rest198408%_
                                   _%clause198406%_)))
                              (_%$%else198322198336%_)))))))
                 (_%generate-body197698%_
                  (lambda (_%bindings198267%_ _%body198268%_)
                    (let _%recur198270%_ ((_%rest198272%_ _%bindings198267%_))
                      (let* ((_%$%rest198273198281%_ _%rest198272%_)
                             (_%$%else198275198289%_
                              (lambda () _%body198268%_))
                             (_%$%K198277198295%_
                              (lambda (_%rest198292%_ _%hd198293%_)
                                (let ((__tmp199031 (cons _%hd198293%_ '()))
                                      (__tmp199030
                                       (_%recur198270%_ _%rest198292%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp199031
                                   __tmp199030)))))
                        (if (pair? _%$%rest198273198281%_)
                            (let ((_%$%hd198278198298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest198273198281%_)))
                                  (_%$%tl198279198300%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest198273198281%_))))
                              (let* ((_%hd198303%_ _%$%hd198278198298%_)
                                     (_%rest198305%_ _%$%tl198279198300%_))
                                (_%$%K198277198295%_
                                 _%rest198305%_
                                 _%hd198303%_)))
                            (_%$%else198275198289%_))))))
                 (_%generate-clause197699%_
                  (lambda (_%target198130%_
                           _%ids198131%_
                           _%clause198132%_
                           _%E198133%_)
                    (letrec ((_%generate1198135%_
                              (lambda (_%hd198222%_
                                       _%fender198223%_
                                       _%body198224%_)
                                (let ((_g199032_
                                       (_%parse-clause197701%_
                                        _%hd198222%_
                                        _%ids198131%_)))
                                  (begin
                                    (let ((_g199033_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199032_)
                                                 (##values-length _g199032_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199033_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199033_)))
                                    (let ((_%e198226%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199032_ 0)))
                                          (_%mvars198227%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199032_ 1))))
                                      (let* ((_%pvars198229%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars198227%_))))
                                             (_%E198231%_
                                              (cons _%E198133%_
                                                    (cons _%target198130%_
                                                          '())))
                                             (_%K198264%_
                                              (let ((__tmp199034
                                                     (let ((__tmp199036
                                                            (map (lambda (_%mvar198233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar198234%_)
                           (let* ((_%$%mvar198235198242%_ _%mvar198233%_)
                                  (_%$%E198237198246%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar198235198242%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K198238198252%_
                                   (lambda (_%depth198249%_ _%id198250%_)
                                     (cons _%id198250%_
                                           (cons (let ((__tmp199038
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id198250%_)))
                                                       (__tmp199037
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar198234%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp199038
                                                    __tmp199037
                                                    _%depth198249%_))
                                                 '())))))
                             (if (pair? _%$%mvar198235198242%_)
                                 (let ((_%$%hd198239198255%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar198235198242%_)))
                                       (_%$%tl198240198257%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar198235198242%_))))
                                   (let* ((_%id198260%_ _%$%hd198239198255%_)
                                          (_%depth198262%_
                                           _%$%tl198240198257%_))
                                     (_%$%K198238198252%_
                                      _%depth198262%_
                                      _%id198260%_)))
                                 (_%$%E198237198246%_))))
                         _%mvars198227%_
                         _%pvars198229%_))
                   (__tmp199035
                    (if (eq? _%fender198223%_ '#t)
                        _%body198224%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender198223%_
                           _%body198224%_
                           _%E198231%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp199036 __tmp199035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars198229%_
                                                 __tmp199034))))
                                        (_%generate-match197700%_
                                         _%hd198222%_
                                         _%target198130%_
                                         _%e198226%_
                                         _%mvars198227%_
                                         _%K198264%_
                                         _%E198231%_))))))))
                      (let* ((_%$%e198136198156%_ _%clause198132%_)
                             (_%$%E198145198160%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e198136198156%_))))
                             (_%$%E198138198194%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198136198156%_))
                                    (let ((_%$%e198146198164%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198136198156%_))))
                                      (let ((_%$%hd198147198167%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198146198164%_)))
                                            (_%$%tl198148198169%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198146198164%_))))
                                        (let ((_%hd198172%_
                                               _%$%hd198147198167%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198148198169%_))
                                              (let ((_%$%e198149198174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198148198169%_))))
                                                (let ((_%$%hd198150198177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198149198174%_)))
                                                      (_%$%tl198151198179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198149198174%_))))
                                                  (let ((_%fender198182%_
                                                         _%$%hd198150198177%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl198151198179%_))
                                                        (let ((_%$%e198152198184%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl198151198179%_))))
                  (let ((_%$%hd198153198187%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e198152198184%_)))
                        (_%$%tl198154198189%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e198152198184%_))))
                    (let ((_%body198192%_ _%$%hd198153198187%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl198154198189%_))
                          (_%generate1198135%_
                           _%hd198172%_
                           _%fender198182%_
                           _%body198192%_)
                          (_%$%E198145198160%_)))))
                (_%$%E198145198160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E198145198160%_)))))
                                    (_%$%E198145198160%_))))
                             (_%$%E198137198218%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198136198156%_))
                                    (let ((_%$%e198139198198%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198136198156%_))))
                                      (let ((_%$%hd198140198201%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198139198198%_)))
                                            (_%$%tl198141198203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198139198198%_))))
                                        (let ((_%hd198206%_
                                               _%$%hd198140198201%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198141198203%_))
                                              (let ((_%$%e198142198208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198141198203%_))))
                                                (let ((_%$%hd198143198211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198142198208%_)))
                                                      (_%$%tl198144198213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198142198208%_))))
                                                  (let ((_%body198216%_
                                                         _%$%hd198143198211%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl198144198213%_))
                                                        (_%generate1198135%_
                                                         _%hd198206%_
                                                         '#t
                                                         _%body198216%_)
                                                        (_%$%E198138198194%_)))))
                                              (_%$%E198138198194%_)))))
                                    (_%$%E198138198194%_)))))
                        (_%$%E198137198218%_)))))
                 (_%generate-match197700%_
                  (lambda (_%where197879%_
                           _%target197880%_
                           _%hd197881%_
                           _%mvars197882%_
                           _%K197883%_
                           _%E197884%_)
                    (letrec ((_%BUG197886%_
                              (lambda (_%q198128%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx197692%_
                                         _%hd197881%_
                                         _%q198128%_))))
                             (_%recur197887%_
                              (lambda (_%e197978%_
                                       _%vars197979%_
                                       _%target197980%_
                                       _%E197981%_
                                       _%k197982%_)
                                (let* ((_%$%e197983197990%_ _%e197978%_)
                                       (_%$%E197985197994%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e197983197990%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K197986198116%_
                                        (lambda (_%body197997%_ _%tag197998%_)
                                          (let ((_%$e198000%_ _%tag197998%_))
                                            (if (eq? 'any _%$e198000%_)
                                                (_%k197982%_ _%vars197979%_)
                                                (if (eq? 'id _%$e198000%_)
                                                    (let ((__tmp199043
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target197980%_)))
                                                          (__tmp199039
                                                           (let ((__tmp199041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp199042
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e197695%_
                                    _%body197997%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?197693%_
                             __tmp199042
                             _%target197980%_)))
                         (__tmp199040 (_%k197982%_ _%vars197979%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp199041 __tmp199040 _%E197981%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp199043 __tmp199039 _%E197981%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e198000%_)
                                                        (_%k197982%_
                                                         (cons (cons _%body197997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target197980%_)
                       _%vars197979%_))
                (if (eq? 'cons _%$e198000%_)
                    (let ((_%$e198003%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd198004%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl198005%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp199049
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target197980%_)))
                            (__tmp199044
                             (let ((__tmp199048
                                    (cons (cons (cons _%$e198003%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e197694%_
                                                         _%target197980%_))
                                                      '()))
                                          '()))
                                   (__tmp199045
                                    (let ((__tmp199047
                                           (cons (cons (cons _%$hd198004%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e198003%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl198005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e198003%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp199046
                                           (let* ((_%$%body198006198013%_
                                                   _%body197997%_)
                                                  (_%$%E198008198017%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body198006198013%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K198009198025%_
                                                   (lambda (_%tl198020%_
                                                            _%hd198021%_)
                                                     (_%recur197887%_
                                                      _%hd198021%_
                                                      _%vars197979%_
                                                      _%$hd198004%_
                                                      _%E197981%_
                                                      (lambda (_%vars198023%_)
                                                        (_%recur197887%_
                                                         _%tl198020%_
                                                         _%vars198023%_
                                                         _%$tl198005%_
                                                         _%E197981%_
                                                         _%k197982%_))))))
                                             (if (pair? _%$%body198006198013%_)
                                                 (let ((_%$%hd198010198028%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body198006198013%_)))
                                                       (_%$%tl198011198030%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body198006198013%_))))
                                                   (let* ((_%hd198033%_
                                                           _%$%hd198010198028%_)
                                                          (_%tl198035%_
                                                           _%$%tl198011198030%_))
                                                     (_%$%K198009198025%_
                                                      _%tl198035%_
                                                      _%hd198033%_)))
                                                 (_%$%E198008198017%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp199047
                                       __tmp199046))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp199048
                                __tmp199045))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp199049
                         __tmp199044
                         _%E197981%_)))
                    (if (eq? 'splice _%$e198000%_)
                        (let* ((_%$%body198036198043%_ _%body197997%_)
                               (_%$%E198038198047%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body198036198043%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K198039198098%_
                                (lambda (_%tl198050%_ _%hd198051%_)
                                  (let* ((_%rlen198053%_
                                          (_%splice-rlen197888%_ _%tl198050%_))
                                         (_%$target198055%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd198057%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl198059%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp198061%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e198063%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd198065%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl198067%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars198069%_
                                          (_%splice-vars197889%_ _%hd198051%_))
                                         (_%lvars198071%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198069%_)))
                                         (_%tlvars198073%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198069%_)))
                                         (_%linit198077%_
                                          (map (lambda (_%var198075%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars198071%_)))
                                    (letrec ((_%make-loop198080%_
                                              (lambda (_%vars198084%_)
                                                (let ((__tmp199051
                                                       (cons (cons (cons _%$lp198061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp199064
                                        (cons _%$hd198057%_ _%lvars198071%_))
                                       (__tmp199052
                                        (let ((__tmp199063
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd198057%_)))
                                              (__tmp199057
                                               (let ((__tmp199062
                                                      (cons (cons (cons _%$lp-e198063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e197694%_
                                   _%$hd198057%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199058
                                                      (let ((__tmp199061
                                                             (cons (cons (cons _%$lp-hd198065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e198063%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl198067%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e198063%_))
                                             '()))
                                 '())))
                    (__tmp199059
                     (_%recur197887%_
                      _%hd198051%_
                      '()
                      _%$lp-hd198065%_
                      _%E197981%_
                      (lambda (_%hdvars198086%_)
                        (cons _%$lp198061%_
                              (cons _%$lp-tl198067%_
                                    (map (lambda (_%svar198088%_
                                                  _%lvar198089%_)
                                           (let ((__tmp199060
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar198088%_
                                                     _%hdvars198086%_
                                                     _%BUG197886%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp199060
                                              _%lvar198089%_)))
                                         _%svars198069%_
                                         _%lvars198071%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp199061 __tmp199059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199062
                                                  __tmp199058)))
                                              (__tmp199053
                                               (let ((__tmp199056
                                                      (map (lambda (_%lvar198091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar198092%_)
                     (cons (cons _%tlvar198092%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar198091%_))
                                 '())))
                   _%lvars198071%_
                   _%tlvars198073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199054
                                                      (_%k197982%_
                                                       (let ((__tmp199055
                                                              (lambda (_%svar198094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar198095%_
                               _%r198096%_)
                        (cons (cons _%svar198094%_ _%tlvar198095%_)
                              _%r198096%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp199055
                  _%vars198084%_
                  _%svars198069%_
                  _%tlvars198073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199056
                                                  __tmp199054))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199063
                                           __tmp199057
                                           __tmp199053))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp199064
                                    __tmp199052))
                                 '()))
                     '()))
              (__tmp199050
               (cons _%$lp198061%_ (cons _%$target198055%_ _%linit198077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp199051
                                                   __tmp199050)))))
                                      (let ((_%body198082%_
                                             (let ((__tmp199066
                                                    (cons (cons (cons _%$target198055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl198059%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target197980%_
                                 _%rlen198053%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199065
                                                    (_%recur197887%_
                                                     _%tl198050%_
                                                     _%vars197979%_
                                                     _%$tl198059%_
                                                     _%E197981%_
                                                     _%make-loop198080%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199066
                                                __tmp199065))))
                                        (let ((__tmp199070
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target197980%_)))
                                              (__tmp199067
                                               (if (zero? _%rlen198053%_)
                                                   _%body198082%_
                                                   (let ((__tmp199068
                                                          (let ((__tmp199069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target197980%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp199069 _%rlen198053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp199068
                                                      _%body198082%_
                                                      _%E197981%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199070
                                           __tmp199067
                                           _%E197981%_))))))))
                          (if (pair? _%$%body198036198043%_)
                              (let ((_%$%hd198040198101%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body198036198043%_)))
                                    (_%$%tl198041198103%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body198036198043%_))))
                                (let* ((_%hd198106%_ _%$%hd198040198101%_)
                                       (_%tl198108%_ _%$%tl198041198103%_))
                                  (_%$%K198039198098%_
                                   _%tl198108%_
                                   _%hd198106%_)))
                              (_%$%E198038198047%_)))
                        (if (eq? 'null _%$e198000%_)
                            (let ((__tmp199072
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target197980%_)))
                                  (__tmp199071 (_%k197982%_ _%vars197979%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp199072
                               __tmp199071
                               _%E197981%_))
                            (if (eq? 'vector _%$e198000%_)
                                (let ((_%$e198110%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp199077
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target197980%_)))
                                        (__tmp199073
                                         (let ((__tmp199075
                                                (cons (cons (cons _%$e198110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp199076
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e197694%_
                                    _%target197980%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp199076))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp199074
                                                (_%recur197887%_
                                                 _%body197997%_
                                                 _%vars197979%_
                                                 _%$e198110%_
                                                 _%E197981%_
                                                 _%k197982%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp199075
                                            __tmp199074))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp199077
                                     __tmp199073
                                     _%E197981%_)))
                                (if (eq? 'box _%$e198000%_)
                                    (let ((_%$e198112%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp199082
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target197980%_)))
                                            (__tmp199078
                                             (let ((__tmp199080
                                                    (cons (cons (cons _%$e198112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp199081
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e197694%_
                                        _%target197980%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp199081))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199079
                                                    (_%recur197887%_
                                                     _%body197997%_
                                                     _%vars197979%_
                                                     _%$e198112%_
                                                     _%E197981%_
                                                     _%k197982%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199080
                                                __tmp199079))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp199082
                                         __tmp199078
                                         _%E197981%_)))
                                    (if (eq? 'datum _%$e198000%_)
                                        (let ((_%$e198114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp199088
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target197980%_)))
                                                (__tmp199083
                                                 (let ((__tmp199087
                                                        (cons (cons (cons _%$e198114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target197980%_))
                                  '()))
                      '()))
               (__tmp199084
                (let ((__tmp199086
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e198114%_ _%body197997%_)))
                      (__tmp199085 (_%k197982%_ _%vars197979%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp199086 __tmp199085 _%E197981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp199087
                                                    __tmp199084))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp199088
                                             __tmp199083
                                             _%E197981%_)))
                                        (_%BUG197886%_
                                         _%e197978%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e197983197990%_)
                                      (let ((_%$%hd197987198119%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e197983197990%_)))
                                            (_%$%tl197988198121%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e197983197990%_))))
                                        (let* ((_%tag198124%_
                                                _%$%hd197987198119%_)
                                               (_%body198126%_
                                                _%$%tl197988198121%_))
                                          (_%$%K197986198116%_
                                           _%body198126%_
                                           _%tag198124%_)))
                                      (_%$%E197985197994%_)))))
                             (_%splice-rlen197888%_
                              (lambda (_%e197940%_)
                                (let _%lp197942%_ ((_%e197944%_ _%e197940%_)
                                                   (_%n197945%_ '0))
                                  (let* ((_%$%e197946197953%_ _%e197944%_)
                                         (_%$%E197948197957%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e197946197953%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K197949197966%_
                                          (lambda (_%body197960%_
                                                   _%tag197961%_)
                                            (let ((_%$e197963%_ _%tag197961%_))
                                              (if (eq? 'splice _%$e197963%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx197692%_
                                                     _%where197879%_))
                                                  (if (eq? 'cons _%$e197963%_)
                                                      (_%lp197942%_
                                                       (cdr _%body197960%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n197945%_
                                                                '1)))
                                                      _%n197945%_))))))
                                    (if (pair? _%$%e197946197953%_)
                                        (let ((_%$%hd197950197969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197946197953%_)))
                                              (_%$%tl197951197971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197946197953%_))))
                                          (let* ((_%tag197974%_
                                                  _%$%hd197950197969%_)
                                                 (_%body197976%_
                                                  _%$%tl197951197971%_))
                                            (_%$%K197949197966%_
                                             _%body197976%_
                                             _%tag197974%_)))
                                        (_%$%E197948197957%_))))))
                             (_%splice-vars197889%_
                              (lambda (_%e197896%_)
                                (let _%recur197898%_ ((_%e197900%_ _%e197896%_)
                                                      (_%vars197901%_ '()))
                                  (let* ((_%$%e197902197909%_ _%e197900%_)
                                         (_%$%E197904197913%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e197902197909%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K197905197928%_
                                          (lambda (_%body197916%_
                                                   _%tag197917%_)
                                            (let ((_%$e197919%_ _%tag197917%_))
                                              (if (eq? 'var _%$e197919%_)
                                                  (cons _%body197916%_
                                                        _%vars197901%_)
                                                  (if (or (eq? 'cons
                                                               _%$e197919%_)
                                                          (eq? 'splice
                                                               _%$e197919%_))
                                                      (_%recur197898%_
                                                       (cdr _%body197916%_)
                                                       (_%recur197898%_
                                                        (car _%body197916%_)
                                                        _%vars197901%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e197919%_)
                      (eq? 'box _%$e197919%_))
                  (_%recur197898%_ _%body197916%_ _%vars197901%_)
                  _%vars197901%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e197902197909%_)
                                        (let ((_%$%hd197906197931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197902197909%_)))
                                              (_%$%tl197907197933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197902197909%_))))
                                          (let* ((_%tag197936%_
                                                  _%$%hd197906197931%_)
                                                 (_%body197938%_
                                                  _%$%tl197907197933%_))
                                            (_%$%K197905197928%_
                                             _%body197938%_
                                             _%tag197936%_)))
                                        (_%$%E197904197913%_))))))
                             (_%make-body197890%_
                              (lambda (_%vars197892%_)
                                (cons _%K197883%_
                                      (map (lambda (_%mvar197894%_)
                                             (let ((__tmp199089
                                                    (car _%mvar197894%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp199089
                                                _%vars197892%_
                                                _%BUG197886%_)))
                                           _%mvars197882%_)))))
                      (_%recur197887%_
                       _%hd197881%_
                       '()
                       _%target197880%_
                       _%E197884%_
                       _%make-body197890%_))))
                 (_%parse-clause197701%_
                  (lambda (_%hd197773%_ _%ids197774%_)
                    (let _%recur197776%_ ((_%e197778%_ _%hd197773%_)
                                          (_%vars197779%_ '())
                                          (_%depth197780%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e197778%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e197778%_))
                              (values '(any) _%vars197779%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e197778%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx197692%_
                                     _%hd197773%_))
                                  (if (let ((__tmp199090
                                             (lambda (_%id197785%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e197778%_
                                                  _%id197785%_)))))
                                        (declare (not safe))
                                        (__find __tmp199090 _%ids197774%_))
                                      (values (cons 'id _%e197778%_)
                                              _%vars197779%_)
                                      (if (let ((__tmp199091
                                                 (lambda (_%var197788%_)
                                                   (let ((__tmp199092
                                                          (car _%var197788%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e197778%_
                                                      __tmp199092)))))
                                            (declare (not safe))
                                            (__find __tmp199091
                                                    _%vars197779%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx197692%_
                                             _%e197778%_))
                                          (values (cons 'var _%e197778%_)
                                                  (cons (cons _%e197778%_
                                                              _%depth197780%_)
                                                        _%vars197779%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e197778%_))
                              (let* ((_%$%e197792197799%_ _%e197778%_)
                                     (_%$%E197794197803%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e197792197799%_))))
                                     (_%$%E197793197864%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e197792197799%_))
                                            (let ((_%$%e197795197807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e197792197799%_))))
                                              (let ((_%$%hd197796197810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e197795197807%_)))
                                                    (_%$%tl197797197812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e197795197807%_))))
                                                (let* ((_%hd197815%_
                                                        _%$%hd197796197810%_)
                                                       (_%rest197817%_
                                                        _%$%tl197797197812%_)
                                                       (_%make-pair197832%_
                                                        (lambda (_%tag197819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd197820%_
                         _%tl197821%_)
                  (let* ((_%hd-depth197823%_
                          (if (eq? _%tag197819%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth197780%_ '1))
                              _%depth197780%_))
                         (_g199093_
                          (_%recur197776%_
                           _%hd197820%_
                           _%vars197779%_
                           _%hd-depth197823%_)))
                    (begin
                      (let ((_g199094_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g199093_)
                                   (##values-length _g199093_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g199094_ 2)))
                            (error "Context expects 2 values" _g199094_)))
                      (let ((_%hd197825%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199093_ 0)))
                            (_%vars197826%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199093_ 1))))
                        (let ((_g199095_
                               (_%recur197776%_
                                _%tl197821%_
                                _%vars197826%_
                                _%depth197780%_)))
                          (begin
                            (let ((_g199096_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g199095_)
                                         (##values-length _g199095_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g199096_ 2)))
                                  (error "Context expects 2 values"
                                         _g199096_)))
                            (let ((_%tl197828%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199095_ 0)))
                                  (_%vars197829%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199095_ 1))))
                              (values (cons _%tag197819%_
                                            (cons _%hd197825%_ _%tl197828%_))
                                      _%vars197829%_)))))))))
               (_%$%e197833197840%_ _%rest197817%_)
               (_%$%E197835197844%_
                (lambda ()
                  (_%make-pair197832%_ 'cons _%hd197815%_ _%rest197817%_)))
               (_%$%E197834197860%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e197833197840%_))
                      (let ((_%$%e197836197848%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e197833197840%_))))
                        (let ((_%$%hd197837197851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197836197848%_)))
                              (_%$%tl197838197853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197836197848%_))))
                          (let* ((_%rest-hd197856%_ _%$%hd197837197851%_)
                                 (_%rest-tl197858%_ _%$%tl197838197853%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd197856%_))
                                (_%make-pair197832%_
                                 'splice
                                 _%hd197815%_
                                 _%rest-tl197858%_)
                                (_%make-pair197832%_
                                 'cons
                                 _%hd197815%_
                                 _%rest197817%_)))))
                      (_%$%E197835197844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E197834197860%_))))
                                            (_%$%E197794197803%_)))))
                                (_%$%E197793197864%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e197778%_))
                                  (values '(null) _%vars197779%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e197778%_))
                                      (let ((_g199097_
                                             (_%recur197776%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e197778%_)))
                                              _%vars197779%_
                                              _%depth197780%_)))
                                        (begin
                                          (let ((_g199098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199097_)
                                                       (##values-length
                                                        _g199097_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199098_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199098_)))
                                          (let ((_%e197870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199097_ 0)))
                                                (_%vars197871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199097_
                                                    1))))
                                            (values (cons 'vector _%e197870%_)
                                                    _%vars197871%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e197778%_))
                                          (let ((_g199099_
                                                 (_%recur197776%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e197778%_)))
                                                  _%vars197779%_
                                                  _%depth197780%_)))
                                            (begin
                                              (let ((_g199100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g199099_)
                                                           (##values-length
                                                            _g199099_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g199100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g199100_)))
                                              (let ((_%e197874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199099_
                                                        0)))
                                                    (_%vars197875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199099_
                                                        1))))
                                                (values (cons 'box _%e197874%_)
                                                        _%vars197875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e197778%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e197778%_)))
                                                      _%vars197779%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx197692%_
                                                 _%e197778%_))))))))))))
          (let* ((_%$%e197702197715%_ _%stx197692%_)
                 (_%$%E197704197719%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e197702197715%_))))
                 (_%$%E197703197769%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e197702197715%_))
                        (let ((_%$%e197705197723%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e197702197715%_))))
                          (let ((_%$%hd197706197726%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197705197723%_)))
                                (_%$%tl197707197728%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197705197723%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl197707197728%_))
                                (let ((_%$%e197708197731%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl197707197728%_))))
                                  (let ((_%$%hd197709197734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197708197731%_)))
                                        (_%$%tl197710197736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197708197731%_))))
                                    (let ((_%expr197739%_
                                           _%$%hd197709197734%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl197710197736%_))
                                          (let ((_%$%e197711197741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl197710197736%_))))
                                            (let ((_%$%hd197712197744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e197711197741%_)))
                                                  (_%$%tl197713197746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e197711197741%_))))
                                              (let* ((_%ids197749%_
                                                      _%$%hd197712197744%_)
                                                     (_%clauses197751%_
                                                      _%$%tl197713197746%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids197749%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses197751%_))
                                                        (let* ((_%ids197756%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids197749%_)))
                       (_%clauses197758%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses197751%_)))
                       (_%clause-ids197760%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses197758%_)))
                       (_%E197762%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target197764%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first197766%_
                        (if (null? _%clauses197758%_)
                            _%E197762%_
                            (car _%clause-ids197760%_))))
                  (let ((__tmp199102
                         (let ((__tmp199103
                                (let ((__tmp199105
                                       (let ((__tmp199107
                                              (cons (cons (cons _%E197762%_
                                                                '())
                                                          (cons (let ((__tmp199109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target197764%_ '()))
                              (__tmp199108
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target197764%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp199109 __tmp199108))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp199106
                                              (_%generate-body197698%_
                                               (_%generate-bindings197697%_
                                                _%target197764%_
                                                _%ids197756%_
                                                _%clauses197758%_
                                                _%clause-ids197760%_
                                                _%E197762%_)
                                               (cons _%first197766%_
                                                     (cons _%expr197739%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp199107
                                          __tmp199106)))
                                      (__tmp199104
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx197692%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp199105
                                   __tmp199104))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp199103)))
                        (__tmp199101
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx197692%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp199102 __tmp199101)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx197692%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx197692%_
                                                       _%ids197749%_))))))
                                          (_%$%E197704197719%_)))))
                                (_%$%E197704197719%_))))
                        (_%$%E197704197719%_)))))
            (_%$%E197703197769%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx198417%_)
        (let* ((_%identifier=?198419%_ 'free-identifier=?)
               (_%unwrap-e198421%_ 'syntax-e)
               (_%wrap-e198423%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198417%_
           _%identifier=?198419%_
           _%unwrap-e198421%_
           _%wrap-e198423%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx198425%_ _%identifier=?198426%_)
        (let* ((_%unwrap-e198428%_ 'syntax-e) (_%wrap-e198430%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198425%_
           _%identifier=?198426%_
           _%unwrap-e198428%_
           _%wrap-e198430%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx198432%_ _%identifier=?198433%_ _%unwrap-e198434%_)
        (let ((_%wrap-e198436%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198432%_
           _%identifier=?198433%_
           _%unwrap-e198434%_
           _%wrap-e198436%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g199110_
        (let ((_g199111_ (let () (declare (not safe)) (##length _g199110_))))
          (cond ((let () (declare (not safe)) (##fx= _g199111_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g199110_))
                ((let () (declare (not safe)) (##fx= _g199111_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g199110_))
                ((let () (declare (not safe)) (##fx= _g199111_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g199110_))
                ((let () (declare (not safe)) (##fx= _g199111_ 4))
                 (apply gx#macro-expand-syntax-case__% _g199110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g199110_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx197689%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx197689%_))
            (let ((__tmp199112
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx197689%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp199112 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd197647%_ . _%rest197648%_)
        (let ((_%len197650%_ (length _%hd197647%_)))
          (let _%lp197652%_ ((_%rest197654%_ _%rest197648%_))
            (let* ((_%$%rest197655197663%_ _%rest197654%_)
                   (_%$%else197657197671%_ (lambda () '#!void))
                   (_%$%K197659197677%_
                    (lambda (_%rest197674%_ _%hd197675%_)
                      (if (let ((__tmp199113 (length _%hd197675%_)))
                            (declare (not safe))
                            (##fx= _%len197650%_ __tmp199113))
                          (_%lp197652%_ _%rest197674%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd197675%_))))))
              (if (pair? _%$%rest197655197663%_)
                  (let ((_%$%hd197660197680%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest197655197663%_)))
                        (_%$%tl197661197682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest197655197663%_))))
                    (let* ((_%hd197685%_ _%$%hd197660197680%_)
                           (_%rest197687%_ _%$%tl197661197682%_))
                      (_%$%K197659197677%_ _%rest197687%_ _%hd197685%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx197597%_ _%n197598%_)
        (let _%lp197600%_ ((_%rest197603%_ _%stx197597%_) (_%r197605%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest197603%_))
              (let* ((_%$%g197607197614%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest197603%_)))
                     (_%$%E197609197618%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g197607197614%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K197610197625%_
                      (lambda (_%rest197621%_ _%hd197622%_)
                        (_%lp197600%_
                         _%rest197621%_
                         (cons _%hd197622%_ _%r197605%_)))))
                (if (pair? _%$%g197607197614%_)
                    (let ((_%$%hd197611197628%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g197607197614%_)))
                          (_%$%tl197612197630%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g197607197614%_))))
                      (let* ((_%hd197633%_ _%$%hd197611197628%_)
                             (_%rest197635%_ _%$%tl197612197630%_))
                        (_%$%K197610197625%_ _%rest197635%_ _%hd197633%_)))
                    (_%$%E197609197618%_)))
              (let _%lp197637%_ ((_%n197639%_ _%n197598%_)
                                 (_%l197640%_ _%r197605%_)
                                 (_%r197642%_ _%rest197603%_))
                (if (null? _%l197640%_)
                    (values _%l197640%_ _%r197642%_)
                    (if (fxpositive? _%n197639%_)
                        (_%lp197637%_
                         (let () (declare (not safe)) (##fx- _%n197639%_ '1))
                         (cdr _%l197640%_)
                         (cons (car _%l197640%_) _%r197642%_))
                        (values (reverse! _%l197640%_) _%r197642%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx197547%_ _%n197548%_)
        (let _%lp197550%_ ((_%rest197553%_ _%stx197547%_) (_%r197555%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest197553%_))
              (let* ((_%$%g197557197564%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest197553%_)))
                     (_%$%E197559197568%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g197557197564%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K197560197575%_
                      (lambda (_%rest197571%_ _%hd197572%_)
                        (_%lp197550%_
                         _%rest197571%_
                         (cons _%hd197572%_ _%r197555%_)))))
                (if (pair? _%$%g197557197564%_)
                    (let ((_%$%hd197561197578%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g197557197564%_)))
                          (_%$%tl197562197580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g197557197564%_))))
                      (let* ((_%hd197583%_ _%$%hd197561197578%_)
                             (_%rest197585%_ _%$%tl197562197580%_))
                        (_%$%K197560197575%_ _%rest197585%_ _%hd197583%_)))
                    (_%$%E197559197568%_)))
              (let _%lp197587%_ ((_%n197589%_ _%n197548%_)
                                 (_%l197590%_ _%r197555%_)
                                 (_%r197592%_ _%rest197553%_))
                (if (null? _%l197590%_)
                    (vector _%l197590%_ _%r197592%_)
                    (if (fxpositive? _%n197589%_)
                        (_%lp197587%_
                         (let () (declare (not safe)) (##fx- _%n197589%_ '1))
                         (cdr _%l197590%_)
                         (cons (car _%l197590%_) _%r197592%_))
                        (vector (reverse! _%l197590%_) _%r197592%_))))))))))
