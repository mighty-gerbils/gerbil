(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1783878478)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp196069 (list gx#expander::t))
            (__tmp196068 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp196069
         '(id depth)
         __tmp196068
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args196065%_
        (apply make-instance gx#syntax-pattern::t _%$args196065%_)))
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
      (lambda (_%self196051%_ _%stx196052%_)
        (let ((_%self196055%_ _%self196051%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx196052%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx195518%_)
        (letrec ((_%generate195520%_
                  (lambda (_%e195760%_)
                    (letrec ((_%BUG195762%_
                              (lambda (_%q195927%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx195518%_
                                         _%e195760%_
                                         _%q195927%_))))
                             (_%local-pattern-e195763%_
                              (lambda (_%pat195925%_)
                                (let ((__tmp196070
                                       (##structure-ref
                                        _%pat195925%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp196070))))
                             (_%getvar195764%_
                              (lambda (_%q195922%_ _%vars195923%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q195922%_
                                   _%vars195923%_
                                   _%BUG195762%_))))
                             (_%getarg195765%_
                              (lambda (_%arg195888%_ _%vars195889%_)
                                (let* ((_%$%arg195890195897%_ _%arg195888%_)
                                       (_%$%E195892195901%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg195890195897%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K195893195910%_
                                        (lambda (_%e195904%_ _%tag195905%_)
                                          (let ((_%$e195907%_ _%tag195905%_))
                                            (if (eq? 'ref _%$e195907%_)
                                                (_%getvar195764%_
                                                 _%e195904%_
                                                 _%vars195889%_)
                                                (if (eq? 'pattern _%$e195907%_)
                                                    (_%local-pattern-e195763%_
                                                     _%e195904%_)
                                                    (_%BUG195762%_
                                                     _%arg195888%_)))))))
                                  (if (pair? _%$%arg195890195897%_)
                                      (let ((_%$%hd195894195913%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg195890195897%_)))
                                            (_%$%tl195895195915%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg195890195897%_))))
                                        (let* ((_%tag195918%_
                                                _%$%hd195894195913%_)
                                               (_%e195920%_
                                                _%$%tl195895195915%_))
                                          (_%$%K195893195910%_
                                           _%e195920%_
                                           _%tag195918%_)))
                                      (_%$%E195892195901%_))))))
                      (let _%recur195767%_ ((_%e195769%_ _%e195760%_)
                                            (_%vars195770%_ '()))
                        (let* ((_%$%e195771195778%_ _%e195769%_)
                               (_%$%E195773195782%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e195771195778%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K195774195876%_
                                (lambda (_%body195785%_ _%tag195786%_)
                                  (let ((_%$e195788%_ _%tag195786%_))
                                    (if (eq? 'datum _%$e195788%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body195785%_))
                                        (if (eq? 'term _%$e195788%_)
                                            (let ((_%id195791%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body195785%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id195791%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks195794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id195791%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks195794%_)
                                                        (let ((__tmp196071
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body195785%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp196071))
                (let ((__tmp196073
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body195785%_)))
                      (__tmp196072
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body195785%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp196073
                   __tmp196072
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id195791%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body195785%_))
                                                      (_%BUG195762%_
                                                       _%e195769%_))))
                                            (if (eq? 'pattern _%$e195788%_)
                                                (_%local-pattern-e195763%_
                                                 _%body195785%_)
                                                (if (eq? 'ref _%$e195788%_)
                                                    (_%getvar195764%_
                                                     _%body195785%_
                                                     _%vars195770%_)
                                                    (if (eq? 'cons
                                                             _%$e195788%_)
                                                        (let ((__tmp196075
                                                               (_%recur195767%_
                                                                (car _%body195785%_)
                                                                _%vars195770%_))
                                                              (__tmp196074
                                                               (_%recur195767%_
                                                                (cdr _%body195785%_)
                                                                _%vars195770%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp196075
                                                           __tmp196074))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e195788%_)
                    (let ((__tmp196076
                           (_%recur195767%_ _%body195785%_ _%vars195770%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp196076))
                    (if (eq? 'box _%$e195788%_)
                        (let ((__tmp196077
                               (_%recur195767%_
                                _%body195785%_
                                _%vars195770%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp196077))
                        (if (eq? 'splice _%$e195788%_)
                            (let* ((_%$%body195797195808%_ _%body195785%_)
                                   (_%$%E195799195812%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body195797195808%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K195800195850%_
                                    (lambda (_%args195815%_
                                             _%iv195816%_
                                             _%hd195817%_
                                             _%depth195818%_)
                                      (let* ((_%targets195824%_
                                              (map (lambda (_%$%g195819195821%_)
                                                     (_%getarg195765%_
                                                      _%$%g195819195821%_
                                                      _%vars195770%_))
                                                   _%args195815%_))
                                             (_%fold-in195826%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args195815%_)))
                                             (_%fold-out195828%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args195830%_
                                              (let ((__tmp196078
                                                     (cons _%fold-out195828%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp196078
                                                 _%fold-in195826%_)))
                                             (_%lambda-body195847%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth195818%_ '1))
                                                  (let ((_%r-args195838%_
                                                         (map (lambda (_%arg195832%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg195832%_)))
                      _%args195815%_))
                (_%r-vars195839%_
                 (let ((__tmp196079
                        (lambda (_%arg195834%_ _%var195835%_ _%r195836%_)
                          (cons (cons (cdr _%arg195834%_) _%var195835%_)
                                _%r195836%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp196079
                    _%vars195770%_
                    _%args195815%_
                    _%fold-in195826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur195767%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth195818%_ '1))
                         (cons _%hd195817%_
                               (cons (cons 'var _%fold-out195828%_)
                                     _%r-args195838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars195839%_))
                                                  (let* ((_%hd-vars195845%_
                                                          (let ((__tmp196080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg195841%_ _%var195842%_ _%r195843%_)
                           (cons (cons (cdr _%arg195841%_) _%var195842%_)
                                 _%r195843%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp196080
                     _%vars195770%_
                     _%args195815%_
                     _%fold-in195826%_)))
                 (__tmp196081
                  (_%recur195767%_ _%hd195817%_ _%hd-vars195845%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp196081
                                                     _%fold-out195828%_)))))
                                        (let ((__tmp196085
                                               (if (let ((__tmp196086
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets195824%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp196086 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets195824%_))
                                                   '#!void))
                                              (__tmp196082
                                               (let ((__tmp196084
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args195830%_
                                                         _%lambda-body195847%_)))
                                                     (__tmp196083
                                                      (_%recur195767%_
                                                       _%iv195816%_
                                                       _%vars195770%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp196084
                                                  __tmp196083
                                                  _%targets195824%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp196085
                                           __tmp196082))))))
                              (if (pair? _%$%body195797195808%_)
                                  (let ((_%$%hd195801195853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body195797195808%_)))
                                        (_%$%tl195802195855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body195797195808%_))))
                                    (let ((_%depth195858%_
                                           _%$%hd195801195853%_))
                                      (if (pair? _%$%tl195802195855%_)
                                          (let ((_%$%hd195803195860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl195802195855%_)))
                                                (_%$%tl195804195862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl195802195855%_))))
                                            (let ((_%hd195865%_
                                                   _%$%hd195803195860%_))
                                              (if (pair? _%$%tl195804195862%_)
                                                  (let ((_%$%hd195805195867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl195804195862%_)))
                                                        (_%$%tl195806195869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl195804195862%_))))
                                                    (let* ((_%iv195872%_
                                                            _%$%hd195805195867%_)
                                                           (_%args195874%_
                                                            _%$%tl195806195869%_))
                                                      (_%$%K195800195850%_
                                                       _%args195874%_
                                                       _%iv195872%_
                                                       _%hd195865%_
                                                       _%depth195858%_)))
                                                  (_%$%E195799195812%_))))
                                          (_%$%E195799195812%_))))
                                  (_%$%E195799195812%_)))
                            (if (eq? 'var _%$e195788%_)
                                _%body195785%_
                                (_%BUG195762%_ _%e195769%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e195771195778%_)
                              (let ((_%$%hd195775195879%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e195771195778%_)))
                                    (_%$%tl195776195881%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e195771195778%_))))
                                (let* ((_%tag195884%_ _%$%hd195775195879%_)
                                       (_%body195886%_ _%$%tl195776195881%_))
                                  (_%$%K195774195876%_
                                   _%body195886%_
                                   _%tag195884%_)))
                              (_%$%E195773195782%_)))))))
                 (_%parse195521%_
                  (lambda (_%e195562%_)
                    (letrec ((_%make-cons195564%_
                              (lambda (_%hd195752%_ _%tl195753%_)
                                (let ((_g196087_ _%hd195752%_)
                                      (_g196089_ _%tl195753%_))
                                  (begin
                                    (let ((_g196088_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196087_)
                                                 (##values-length _g196087_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196088_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196088_)))
                                    (let ((_g196090_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196089_)
                                                 (##values-length _g196089_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196090_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196090_)))
                                    (let ((_%hd-e195755%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196087_ 0)))
                                          (_%hd-vars195756%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196087_ 1))))
                                      (let ((_%tl-e195757%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196089_ 0)))
                                            (_%tl-vars195758%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196089_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e195755%_
                                                            _%tl-e195757%_))
                                                (append _%hd-vars195756%_
                                                        _%tl-vars195758%_))))))))
                             (_%make-splice195565%_
                              (lambda (_%where195688%_
                                       _%depth195689%_
                                       _%hd195690%_
                                       _%tl195691%_)
                                (let ((_g196091_ _%hd195690%_)
                                      (_g196093_ _%tl195691%_))
                                  (begin
                                    (let ((_g196092_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196091_)
                                                 (##values-length _g196091_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196092_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196092_)))
                                    (let ((_g196094_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196093_)
                                                 (##values-length _g196093_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196094_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196094_)))
                                    (let ((_%hd-e195693%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196091_ 0)))
                                          (_%hd-vars195694%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196091_ 1))))
                                      (let ((_%tl-e195695%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196093_ 0)))
                                            (_%tl-vars195696%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g196093_ 1))))
                                        (let _%lp195698%_ ((_%rest195700%_
                                                            _%hd-vars195694%_)
                                                           (_%targets195701%_
                                                            '())
                                                           (_%vars195702%_
                                                            _%tl-vars195696%_))
                                          (let* ((_%$%rest195703195713%_
                                                  _%rest195700%_)
                                                 (_%$%else195705195721%_
                                                  (lambda ()
                                                    (if (null? _%targets195701%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx195518%_
                                                           _%where195688%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth195689%_
                                    (cons _%hd-e195693%_
                                          (cons _%tl-e195695%_
                                                _%targets195701%_))))
                        _%vars195702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K195707195733%_
                                                  (lambda (_%rest195724%_
                                                           _%hd-pat195725%_
                                                           _%hd-depth*195726%_)
                                                    (let ((_%hd-depth195728%_
                                                           (fx- _%hd-depth*195726%_
                                                                _%depth195689%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth195728%_))
                                                          (_%lp195698%_
                                                           _%rest195724%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat195725%_)
                         _%targets195701%_)
                   (cons (cons _%hd-depth195728%_ _%hd-pat195725%_)
                         _%vars195702%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth195728%_))
                      (_%lp195698%_
                       _%rest195724%_
                       (cons (cons 'pattern _%hd-pat195725%_)
                             _%targets195701%_)
                       _%vars195702%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx195518%_
                         _%where195688%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest195703195713%_)
                                                (let ((_%$%hd195708195736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest195703195713%_)))
                                                      (_%$%tl195709195738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest195703195713%_))))
                                                  (if (pair? _%$%hd195708195736%_)
                                                      (let ((_%$%hd195710195741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd195708195736%_)))
                    (_%$%tl195711195743%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd195708195736%_))))
                (let* ((_%hd-depth*195746%_ _%$%hd195710195741%_)
                       (_%hd-pat195748%_ _%$%tl195711195743%_)
                       (_%rest195750%_ _%$%tl195709195738%_))
                  (_%$%K195707195733%_
                   _%rest195750%_
                   _%hd-pat195748%_
                   _%hd-depth*195746%_)))
              (_%$%else195705195721%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else195705195721%_))))))))))
                             (_%recur195566%_
                              (lambda (_%e195571%_ _%is-e?195572%_)
                                (if (_%is-e?195572%_ _%e195571%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx195518%_))
                                    (if (gx#syntax-local-pattern? _%e195571%_)
                                        (let* ((_%pat195576%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e195571%_)))
                                               (_%depth195578%_
                                                (##structure-ref
                                                 _%pat195576%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth195578%_)
                                              (values (cons 'ref _%pat195576%_)
                                                      (cons (cons _%depth195578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat195576%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat195576%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e195571%_))
                                            (values (cons 'term _%e195571%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e195571%_))
                                                (let* ((_%$%e195582195589%_
                                                        _%e195571%_)
                                                       (_%$%E195584195593%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e195582195589%_))))
                                                       (_%$%E195583195675%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e195582195589%_))
                      (let ((_%$%e195585195597%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e195582195589%_))))
                        (let ((_%$%hd195586195600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e195585195597%_)))
                              (_%$%tl195587195602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e195585195597%_))))
                          (let* ((_%hd195605%_ _%$%hd195586195600%_)
                                 (_%rest195607%_ _%$%tl195587195602%_))
                            (if (_%is-e?195572%_ _%hd195605%_)
                                (let* ((_%$%e195608195615%_ _%rest195607%_)
                                       (_%$%E195610195619%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx195518%_
                                             _%e195571%_))))
                                       (_%$%E195609195633%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e195608195615%_))
                                              (let ((_%$%e195611195623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e195608195615%_))))
                                                (let ((_%$%hd195612195626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e195611195623%_)))
                                                      (_%$%tl195613195628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e195611195623%_))))
                                                  (let ((_%rest195631%_
                                                         _%$%hd195612195626%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl195613195628%_))
                                                        (_%recur195566%_
                                                         _%rest195631%_
                                                         false)
                                                        (_%$%E195610195619%_)))))
                                              (_%$%E195610195619%_)))))
                                  (_%$%E195609195633%_))
                                (let _%lp195637%_ ((_%rest195639%_
                                                    _%rest195607%_)
                                                   (_%depth195640%_ '0))
                                  (let* ((_%$%e195641195648%_ _%rest195639%_)
                                         (_%$%E195643195652%_
                                          (lambda ()
                                            (if (fxpositive? _%depth195640%_)
                                                (_%make-splice195565%_
                                                 _%e195571%_
                                                 _%depth195640%_
                                                 (_%recur195566%_
                                                  _%hd195605%_
                                                  _%is-e?195572%_)
                                                 (_%recur195566%_
                                                  _%rest195639%_
                                                  _%is-e?195572%_))
                                                (_%make-cons195564%_
                                                 (_%recur195566%_
                                                  _%hd195605%_
                                                  _%is-e?195572%_)
                                                 (_%recur195566%_
                                                  _%rest195639%_
                                                  _%is-e?195572%_)))))
                                         (_%$%E195642195671%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e195641195648%_))
                                                (let ((_%$%e195644195656%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e195641195648%_))))
                                                  (let ((_%$%hd195645195659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e195644195656%_)))
                                                        (_%$%tl195646195661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e195644195656%_))))
                                                    (let* ((_%rest-hd195664%_
                                                            _%$%hd195645195659%_)
                                                           (_%rest-tl195666%_
                                                            _%$%tl195646195661%_))
                                                      (if (_%is-e?195572%_
                                                           _%rest-hd195664%_)
                                                          (_%lp195637%_
                                                           _%rest-tl195666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth195640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth195640%_)
                      (_%make-splice195565%_
                       _%e195571%_
                       _%depth195640%_
                       (_%recur195566%_ _%hd195605%_ _%is-e?195572%_)
                       (_%recur195566%_ _%rest195639%_ _%is-e?195572%_))
                      (_%make-cons195564%_
                       (_%recur195566%_ _%hd195605%_ _%is-e?195572%_)
                       (_%recur195566%_ _%rest195639%_ _%is-e?195572%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E195643195652%_)))))
                                    (_%$%E195642195671%_)))))))
                      (_%$%E195584195593%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195583195675%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e195571%_))
                                                    (let ((_g196095_
                                                           (_%recur195566%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e195571%_)))
                    _%is-e?195572%_)))
              (begin
                (let ((_g196096_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g196095_)
                             (##values-length _g196095_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g196096_ 2)))
                      (error "Context expects 2 values" _g196096_)))
                (let ((_%e195680%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g196095_ 0)))
                      (_%vars195681%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g196095_ 1))))
                  (values (cons 'vector _%e195680%_) _%vars195681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e195571%_))
                                                        (let ((_g196097_
                                                               (_%recur195566%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e195571%_)))
                        _%is-e?195572%_)))
                  (begin
                    (let ((_g196098_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g196097_)
                                 (##values-length _g196097_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g196098_ 2)))
                          (error "Context expects 2 values" _g196098_)))
                    (let ((_%e195684%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g196097_ 0)))
                          (_%vars195685%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g196097_ 1))))
                      (values (cons 'box _%e195684%_) _%vars195685%_))))
                (values (cons 'datum _%e195571%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g196099_
                             (_%recur195566%_ _%e195562%_ gx#ellipsis?)))
                        (begin
                          (let ((_g196100_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g196099_)
                                       (##values-length _g196099_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g196100_ 2)))
                                (error "Context expects 2 values" _g196100_)))
                          (let ((_%tree195568%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g196099_ 0)))
                                (_%vars195569%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g196099_ 1))))
                            (if (null? _%vars195569%_)
                                _%tree195568%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx195518%_
                                   _%vars195569%_))))))))))
          (let* ((_%$%e195522195532%_ _%stx195518%_)
                 (_%$%E195524195536%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx195518%_))))
                 (_%$%E195523195558%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e195522195532%_))
                        (let ((_%$%e195525195540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e195522195532%_))))
                          (let ((_%$%hd195526195543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e195525195540%_)))
                                (_%$%tl195527195545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e195525195540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl195527195545%_))
                                (let ((_%$%e195528195548%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl195527195545%_))))
                                  (let ((_%$%hd195529195551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e195528195548%_)))
                                        (_%$%tl195530195553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e195528195548%_))))
                                    (let ((_%form195556%_
                                           _%$%hd195529195551%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl195530195553%_))
                                          (let ((__tmp196102
                                                 (_%generate195520%_
                                                  (_%parse195521%_
                                                   _%form195556%_)))
                                                (__tmp196101
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx195518%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp196102
                                             __tmp196101))
                                          (_%$%E195524195536%_)))))
                                (_%$%E195524195536%_))))
                        (_%$%E195524195536%_)))))
            (_%$%E195523195558%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx194767%_
               _%identifier=?194768%_
               _%unwrap-e194769%_
               _%wrap-e194770%_)
        (letrec ((_%generate-bindings194772%_
                  (lambda (_%target195382%_
                           _%ids195383%_
                           _%clauses195384%_
                           _%clause-ids195385%_
                           _%E195386%_)
                    (letrec ((_%generate1195388%_
                              (lambda (_%clause195485%_
                                       _%clause-id195486%_
                                       _%E195487%_)
                                (cons (cons _%clause-id195486%_ '())
                                      (cons (let ((__tmp196104
                                                   (cons _%target195382%_ '()))
                                                  (__tmp196103
                                                   (_%generate-clause194774%_
                                                    _%target195382%_
                                                    _%ids195383%_
                                                    _%clause195485%_
                                                    _%E195487%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp196104
                                               __tmp196103))
                                            '())))))
                      (let _%lp195390%_ ((_%rest195392%_ _%clauses195384%_)
                                         (_%rest-ids195393%_
                                          _%clause-ids195385%_)
                                         (_%bindings195394%_ '()))
                        (let* ((_%$%rest195395195403%_ _%rest195392%_)
                               (_%$%else195397195411%_
                                (lambda () _%bindings195394%_))
                               (_%$%K195399195473%_
                                (lambda (_%rest195414%_ _%clause195415%_)
                                  (let* ((_%$%rest-ids195416195423%_
                                          _%rest-ids195393%_)
                                         (_%$%E195418195427%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids195416195423%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K195419195461%_
                                          (lambda (_%rest-ids195430%_
                                                   _%clause-id195431%_)
                                            (let* ((_%$%rest-ids195432195440%_
                                                    _%rest-ids195430%_)
                                                   (_%$%else195434195448%_
                                                    (lambda ()
                                                      (cons (_%generate1195388%_
                                                             _%clause195415%_
                                                             _%clause-id195431%_
                                                             _%E195386%_)
                                                            _%bindings195394%_)))
                                                   (_%$%K195436195453%_
                                                    (lambda (_%next-clause-id195451%_)
                                                      (_%lp195390%_
                                                       _%rest195414%_
                                                       _%rest-ids195430%_
                                                       (cons (_%generate1195388%_
                                                              _%clause195415%_
                                                              _%clause-id195431%_
                                                              _%next-clause-id195451%_)
                                                             _%bindings195394%_)))))
                                              (if (pair? _%$%rest-ids195432195440%_)
                                                  (let* ((_%$%hd195437195456%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids195432195440%_)))
                                                         (_%next-clause-id195459%_
                                                          _%$%hd195437195456%_))
                                                    (_%$%K195436195453%_
                                                     _%next-clause-id195459%_))
                                                  (_%$%else195434195448%_))))))
                                    (if (pair? _%$%rest-ids195416195423%_)
                                        (let ((_%$%hd195420195464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids195416195423%_)))
                                              (_%$%tl195421195466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids195416195423%_))))
                                          (let* ((_%clause-id195469%_
                                                  _%$%hd195420195464%_)
                                                 (_%rest-ids195471%_
                                                  _%$%tl195421195466%_))
                                            (_%$%K195419195461%_
                                             _%rest-ids195471%_
                                             _%clause-id195469%_)))
                                        (_%$%E195418195427%_))))))
                          (if (pair? _%$%rest195395195403%_)
                              (let ((_%$%hd195400195476%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest195395195403%_)))
                                    (_%$%tl195401195478%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest195395195403%_))))
                                (let* ((_%clause195481%_ _%$%hd195400195476%_)
                                       (_%rest195483%_ _%$%tl195401195478%_))
                                  (_%$%K195399195473%_
                                   _%rest195483%_
                                   _%clause195481%_)))
                              (_%$%else195397195411%_)))))))
                 (_%generate-body194773%_
                  (lambda (_%bindings195342%_ _%body195343%_)
                    (let _%recur195345%_ ((_%rest195347%_ _%bindings195342%_))
                      (let* ((_%$%rest195348195356%_ _%rest195347%_)
                             (_%$%else195350195364%_
                              (lambda () _%body195343%_))
                             (_%$%K195352195370%_
                              (lambda (_%rest195367%_ _%hd195368%_)
                                (let ((__tmp196106 (cons _%hd195368%_ '()))
                                      (__tmp196105
                                       (_%recur195345%_ _%rest195367%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp196106
                                   __tmp196105)))))
                        (if (pair? _%$%rest195348195356%_)
                            (let ((_%$%hd195353195373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest195348195356%_)))
                                  (_%$%tl195354195375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest195348195356%_))))
                              (let* ((_%hd195378%_ _%$%hd195353195373%_)
                                     (_%rest195380%_ _%$%tl195354195375%_))
                                (_%$%K195352195370%_
                                 _%rest195380%_
                                 _%hd195378%_)))
                            (_%$%else195350195364%_))))))
                 (_%generate-clause194774%_
                  (lambda (_%target195205%_
                           _%ids195206%_
                           _%clause195207%_
                           _%E195208%_)
                    (letrec ((_%generate1195210%_
                              (lambda (_%hd195297%_
                                       _%fender195298%_
                                       _%body195299%_)
                                (let ((_g196107_
                                       (_%parse-clause194776%_
                                        _%hd195297%_
                                        _%ids195206%_)))
                                  (begin
                                    (let ((_g196108_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196107_)
                                                 (##values-length _g196107_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196108_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196108_)))
                                    (let ((_%e195301%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196107_ 0)))
                                          (_%mvars195302%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g196107_ 1))))
                                      (let* ((_%pvars195304%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars195302%_))))
                                             (_%E195306%_
                                              (cons _%E195208%_
                                                    (cons _%target195205%_
                                                          '())))
                                             (_%K195339%_
                                              (let ((__tmp196109
                                                     (let ((__tmp196111
                                                            (map (lambda (_%mvar195308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar195309%_)
                           (let* ((_%$%mvar195310195317%_ _%mvar195308%_)
                                  (_%$%E195312195321%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar195310195317%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K195313195327%_
                                   (lambda (_%depth195324%_ _%id195325%_)
                                     (cons _%id195325%_
                                           (cons (let ((__tmp196113
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id195325%_)))
                                                       (__tmp196112
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar195309%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp196113
                                                    __tmp196112
                                                    _%depth195324%_))
                                                 '())))))
                             (if (pair? _%$%mvar195310195317%_)
                                 (let ((_%$%hd195314195330%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar195310195317%_)))
                                       (_%$%tl195315195332%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar195310195317%_))))
                                   (let* ((_%id195335%_ _%$%hd195314195330%_)
                                          (_%depth195337%_
                                           _%$%tl195315195332%_))
                                     (_%$%K195313195327%_
                                      _%depth195337%_
                                      _%id195335%_)))
                                 (_%$%E195312195321%_))))
                         _%mvars195302%_
                         _%pvars195304%_))
                   (__tmp196110
                    (if (eq? _%fender195298%_ '#t)
                        _%body195299%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender195298%_
                           _%body195299%_
                           _%E195306%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp196111 __tmp196110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars195304%_
                                                 __tmp196109))))
                                        (_%generate-match194775%_
                                         _%hd195297%_
                                         _%target195205%_
                                         _%e195301%_
                                         _%mvars195302%_
                                         _%K195339%_
                                         _%E195306%_))))))))
                      (let* ((_%$%e195211195231%_ _%clause195207%_)
                             (_%$%E195220195235%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e195211195231%_))))
                             (_%$%E195213195269%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e195211195231%_))
                                    (let ((_%$%e195221195239%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e195211195231%_))))
                                      (let ((_%$%hd195222195242%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e195221195239%_)))
                                            (_%$%tl195223195244%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e195221195239%_))))
                                        (let ((_%hd195247%_
                                               _%$%hd195222195242%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl195223195244%_))
                                              (let ((_%$%e195224195249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl195223195244%_))))
                                                (let ((_%$%hd195225195252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e195224195249%_)))
                                                      (_%$%tl195226195254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e195224195249%_))))
                                                  (let ((_%fender195257%_
                                                         _%$%hd195225195252%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl195226195254%_))
                                                        (let ((_%$%e195227195259%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl195226195254%_))))
                  (let ((_%$%hd195228195262%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e195227195259%_)))
                        (_%$%tl195229195264%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e195227195259%_))))
                    (let ((_%body195267%_ _%$%hd195228195262%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl195229195264%_))
                          (_%generate1195210%_
                           _%hd195247%_
                           _%fender195257%_
                           _%body195267%_)
                          (_%$%E195220195235%_)))))
                (_%$%E195220195235%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195220195235%_)))))
                                    (_%$%E195220195235%_))))
                             (_%$%E195212195293%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e195211195231%_))
                                    (let ((_%$%e195214195273%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e195211195231%_))))
                                      (let ((_%$%hd195215195276%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e195214195273%_)))
                                            (_%$%tl195216195278%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e195214195273%_))))
                                        (let ((_%hd195281%_
                                               _%$%hd195215195276%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl195216195278%_))
                                              (let ((_%$%e195217195283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl195216195278%_))))
                                                (let ((_%$%hd195218195286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e195217195283%_)))
                                                      (_%$%tl195219195288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e195217195283%_))))
                                                  (let ((_%body195291%_
                                                         _%$%hd195218195286%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl195219195288%_))
                                                        (_%generate1195210%_
                                                         _%hd195281%_
                                                         '#t
                                                         _%body195291%_)
                                                        (_%$%E195213195269%_)))))
                                              (_%$%E195213195269%_)))))
                                    (_%$%E195213195269%_)))))
                        (_%$%E195212195293%_)))))
                 (_%generate-match194775%_
                  (lambda (_%where194954%_
                           _%target194955%_
                           _%hd194956%_
                           _%mvars194957%_
                           _%K194958%_
                           _%E194959%_)
                    (letrec ((_%BUG194961%_
                              (lambda (_%q195203%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx194767%_
                                         _%hd194956%_
                                         _%q195203%_))))
                             (_%recur194962%_
                              (lambda (_%e195053%_
                                       _%vars195054%_
                                       _%target195055%_
                                       _%E195056%_
                                       _%k195057%_)
                                (let* ((_%$%e195058195065%_ _%e195053%_)
                                       (_%$%E195060195069%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e195058195065%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K195061195191%_
                                        (lambda (_%body195072%_ _%tag195073%_)
                                          (let ((_%$e195075%_ _%tag195073%_))
                                            (if (eq? 'any _%$e195075%_)
                                                (_%k195057%_ _%vars195054%_)
                                                (if (eq? 'id _%$e195075%_)
                                                    (let ((__tmp196118
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target195055%_)))
                                                          (__tmp196114
                                                           (let ((__tmp196116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp196117
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e194770%_
                                    _%body195072%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?194768%_
                             __tmp196117
                             _%target195055%_)))
                         (__tmp196115 (_%k195057%_ _%vars195054%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp196116 __tmp196115 _%E195056%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp196118 __tmp196114 _%E195056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e195075%_)
                                                        (_%k195057%_
                                                         (cons (cons _%body195072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target195055%_)
                       _%vars195054%_))
                (if (eq? 'cons _%$e195075%_)
                    (let ((_%$e195078%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd195079%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl195080%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp196124
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target195055%_)))
                            (__tmp196119
                             (let ((__tmp196123
                                    (cons (cons (cons _%$e195078%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e194769%_
                                                         _%target195055%_))
                                                      '()))
                                          '()))
                                   (__tmp196120
                                    (let ((__tmp196122
                                           (cons (cons (cons _%$hd195079%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e195078%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl195080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e195078%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp196121
                                           (let* ((_%$%body195081195088%_
                                                   _%body195072%_)
                                                  (_%$%E195083195092%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body195081195088%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K195084195100%_
                                                   (lambda (_%tl195095%_
                                                            _%hd195096%_)
                                                     (_%recur194962%_
                                                      _%hd195096%_
                                                      _%vars195054%_
                                                      _%$hd195079%_
                                                      _%E195056%_
                                                      (lambda (_%vars195098%_)
                                                        (_%recur194962%_
                                                         _%tl195095%_
                                                         _%vars195098%_
                                                         _%$tl195080%_
                                                         _%E195056%_
                                                         _%k195057%_))))))
                                             (if (pair? _%$%body195081195088%_)
                                                 (let ((_%$%hd195085195103%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body195081195088%_)))
                                                       (_%$%tl195086195105%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body195081195088%_))))
                                                   (let* ((_%hd195108%_
                                                           _%$%hd195085195103%_)
                                                          (_%tl195110%_
                                                           _%$%tl195086195105%_))
                                                     (_%$%K195084195100%_
                                                      _%tl195110%_
                                                      _%hd195108%_)))
                                                 (_%$%E195083195092%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp196122
                                       __tmp196121))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp196123
                                __tmp196120))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp196124
                         __tmp196119
                         _%E195056%_)))
                    (if (eq? 'splice _%$e195075%_)
                        (let* ((_%$%body195111195118%_ _%body195072%_)
                               (_%$%E195113195122%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body195111195118%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K195114195173%_
                                (lambda (_%tl195125%_ _%hd195126%_)
                                  (let* ((_%rlen195128%_
                                          (_%splice-rlen194963%_ _%tl195125%_))
                                         (_%$target195130%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd195132%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl195134%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp195136%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e195138%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd195140%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl195142%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars195144%_
                                          (_%splice-vars194964%_ _%hd195126%_))
                                         (_%lvars195146%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars195144%_)))
                                         (_%tlvars195148%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars195144%_)))
                                         (_%linit195152%_
                                          (map (lambda (_%var195150%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars195146%_)))
                                    (letrec ((_%make-loop195155%_
                                              (lambda (_%vars195159%_)
                                                (let ((__tmp196126
                                                       (cons (cons (cons _%$lp195136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp196139
                                        (cons _%$hd195132%_ _%lvars195146%_))
                                       (__tmp196127
                                        (let ((__tmp196138
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd195132%_)))
                                              (__tmp196132
                                               (let ((__tmp196137
                                                      (cons (cons (cons _%$lp-e195138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e194769%_
                                   _%$hd195132%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196133
                                                      (let ((__tmp196136
                                                             (cons (cons (cons _%$lp-hd195140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e195138%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl195142%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e195138%_))
                                             '()))
                                 '())))
                    (__tmp196134
                     (_%recur194962%_
                      _%hd195126%_
                      '()
                      _%$lp-hd195140%_
                      _%E195056%_
                      (lambda (_%hdvars195161%_)
                        (cons _%$lp195136%_
                              (cons _%$lp-tl195142%_
                                    (map (lambda (_%svar195163%_
                                                  _%lvar195164%_)
                                           (let ((__tmp196135
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar195163%_
                                                     _%hdvars195161%_
                                                     _%BUG194961%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp196135
                                              _%lvar195164%_)))
                                         _%svars195144%_
                                         _%lvars195146%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp196136 __tmp196134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp196137
                                                  __tmp196133)))
                                              (__tmp196128
                                               (let ((__tmp196131
                                                      (map (lambda (_%lvar195166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar195167%_)
                     (cons (cons _%tlvar195167%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar195166%_))
                                 '())))
                   _%lvars195146%_
                   _%tlvars195148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196129
                                                      (_%k195057%_
                                                       (let ((__tmp196130
                                                              (lambda (_%svar195169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar195170%_
                               _%r195171%_)
                        (cons (cons _%svar195169%_ _%tlvar195170%_)
                              _%r195171%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp196130
                  _%vars195159%_
                  _%svars195144%_
                  _%tlvars195148%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp196131
                                                  __tmp196129))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp196138
                                           __tmp196132
                                           __tmp196128))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp196139
                                    __tmp196127))
                                 '()))
                     '()))
              (__tmp196125
               (cons _%$lp195136%_ (cons _%$target195130%_ _%linit195152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp196126
                                                   __tmp196125)))))
                                      (let ((_%body195157%_
                                             (let ((__tmp196141
                                                    (cons (cons (cons _%$target195130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl195134%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target195055%_
                                 _%rlen195128%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp196140
                                                    (_%recur194962%_
                                                     _%tl195125%_
                                                     _%vars195054%_
                                                     _%$tl195134%_
                                                     _%E195056%_
                                                     _%make-loop195155%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp196141
                                                __tmp196140))))
                                        (let ((__tmp196145
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target195055%_)))
                                              (__tmp196142
                                               (if (zero? _%rlen195128%_)
                                                   _%body195157%_
                                                   (let ((__tmp196143
                                                          (let ((__tmp196144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target195055%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp196144 _%rlen195128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp196143
                                                      _%body195157%_
                                                      _%E195056%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp196145
                                           __tmp196142
                                           _%E195056%_))))))))
                          (if (pair? _%$%body195111195118%_)
                              (let ((_%$%hd195115195176%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body195111195118%_)))
                                    (_%$%tl195116195178%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body195111195118%_))))
                                (let* ((_%hd195181%_ _%$%hd195115195176%_)
                                       (_%tl195183%_ _%$%tl195116195178%_))
                                  (_%$%K195114195173%_
                                   _%tl195183%_
                                   _%hd195181%_)))
                              (_%$%E195113195122%_)))
                        (if (eq? 'null _%$e195075%_)
                            (let ((__tmp196147
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target195055%_)))
                                  (__tmp196146 (_%k195057%_ _%vars195054%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp196147
                               __tmp196146
                               _%E195056%_))
                            (if (eq? 'vector _%$e195075%_)
                                (let ((_%$e195185%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp196152
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target195055%_)))
                                        (__tmp196148
                                         (let ((__tmp196150
                                                (cons (cons (cons _%$e195185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp196151
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e194769%_
                                    _%target195055%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp196151))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp196149
                                                (_%recur194962%_
                                                 _%body195072%_
                                                 _%vars195054%_
                                                 _%$e195185%_
                                                 _%E195056%_
                                                 _%k195057%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp196150
                                            __tmp196149))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp196152
                                     __tmp196148
                                     _%E195056%_)))
                                (if (eq? 'box _%$e195075%_)
                                    (let ((_%$e195187%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp196157
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target195055%_)))
                                            (__tmp196153
                                             (let ((__tmp196155
                                                    (cons (cons (cons _%$e195187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp196156
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e194769%_
                                        _%target195055%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp196156))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp196154
                                                    (_%recur194962%_
                                                     _%body195072%_
                                                     _%vars195054%_
                                                     _%$e195187%_
                                                     _%E195056%_
                                                     _%k195057%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp196155
                                                __tmp196154))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp196157
                                         __tmp196153
                                         _%E195056%_)))
                                    (if (eq? 'datum _%$e195075%_)
                                        (let ((_%$e195189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp196163
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target195055%_)))
                                                (__tmp196158
                                                 (let ((__tmp196162
                                                        (cons (cons (cons _%$e195189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target195055%_))
                                  '()))
                      '()))
               (__tmp196159
                (let ((__tmp196161
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e195189%_ _%body195072%_)))
                      (__tmp196160 (_%k195057%_ _%vars195054%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp196161 __tmp196160 _%E195056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp196162
                                                    __tmp196159))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp196163
                                             __tmp196158
                                             _%E195056%_)))
                                        (_%BUG194961%_
                                         _%e195053%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e195058195065%_)
                                      (let ((_%$%hd195062195194%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e195058195065%_)))
                                            (_%$%tl195063195196%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e195058195065%_))))
                                        (let* ((_%tag195199%_
                                                _%$%hd195062195194%_)
                                               (_%body195201%_
                                                _%$%tl195063195196%_))
                                          (_%$%K195061195191%_
                                           _%body195201%_
                                           _%tag195199%_)))
                                      (_%$%E195060195069%_)))))
                             (_%splice-rlen194963%_
                              (lambda (_%e195015%_)
                                (let _%lp195017%_ ((_%e195019%_ _%e195015%_)
                                                   (_%n195020%_ '0))
                                  (let* ((_%$%e195021195028%_ _%e195019%_)
                                         (_%$%E195023195032%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e195021195028%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K195024195041%_
                                          (lambda (_%body195035%_
                                                   _%tag195036%_)
                                            (let ((_%$e195038%_ _%tag195036%_))
                                              (if (eq? 'splice _%$e195038%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx194767%_
                                                     _%where194954%_))
                                                  (if (eq? 'cons _%$e195038%_)
                                                      (_%lp195017%_
                                                       (cdr _%body195035%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n195020%_
                                                                '1)))
                                                      _%n195020%_))))))
                                    (if (pair? _%$%e195021195028%_)
                                        (let ((_%$%hd195025195044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e195021195028%_)))
                                              (_%$%tl195026195046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e195021195028%_))))
                                          (let* ((_%tag195049%_
                                                  _%$%hd195025195044%_)
                                                 (_%body195051%_
                                                  _%$%tl195026195046%_))
                                            (_%$%K195024195041%_
                                             _%body195051%_
                                             _%tag195049%_)))
                                        (_%$%E195023195032%_))))))
                             (_%splice-vars194964%_
                              (lambda (_%e194971%_)
                                (let _%recur194973%_ ((_%e194975%_ _%e194971%_)
                                                      (_%vars194976%_ '()))
                                  (let* ((_%$%e194977194984%_ _%e194975%_)
                                         (_%$%E194979194988%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e194977194984%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K194980195003%_
                                          (lambda (_%body194991%_
                                                   _%tag194992%_)
                                            (let ((_%$e194994%_ _%tag194992%_))
                                              (if (eq? 'var _%$e194994%_)
                                                  (cons _%body194991%_
                                                        _%vars194976%_)
                                                  (if (or (eq? 'cons
                                                               _%$e194994%_)
                                                          (eq? 'splice
                                                               _%$e194994%_))
                                                      (_%recur194973%_
                                                       (cdr _%body194991%_)
                                                       (_%recur194973%_
                                                        (car _%body194991%_)
                                                        _%vars194976%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e194994%_)
                      (eq? 'box _%$e194994%_))
                  (_%recur194973%_ _%body194991%_ _%vars194976%_)
                  _%vars194976%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e194977194984%_)
                                        (let ((_%$%hd194981195006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e194977194984%_)))
                                              (_%$%tl194982195008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e194977194984%_))))
                                          (let* ((_%tag195011%_
                                                  _%$%hd194981195006%_)
                                                 (_%body195013%_
                                                  _%$%tl194982195008%_))
                                            (_%$%K194980195003%_
                                             _%body195013%_
                                             _%tag195011%_)))
                                        (_%$%E194979194988%_))))))
                             (_%make-body194965%_
                              (lambda (_%vars194967%_)
                                (cons _%K194958%_
                                      (map (lambda (_%mvar194969%_)
                                             (let ((__tmp196164
                                                    (car _%mvar194969%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp196164
                                                _%vars194967%_
                                                _%BUG194961%_)))
                                           _%mvars194957%_)))))
                      (_%recur194962%_
                       _%hd194956%_
                       '()
                       _%target194955%_
                       _%E194959%_
                       _%make-body194965%_))))
                 (_%parse-clause194776%_
                  (lambda (_%hd194848%_ _%ids194849%_)
                    (let _%recur194851%_ ((_%e194853%_ _%hd194848%_)
                                          (_%vars194854%_ '())
                                          (_%depth194855%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e194853%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e194853%_))
                              (values '(any) _%vars194854%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e194853%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx194767%_
                                     _%hd194848%_))
                                  (if (let ((__tmp196165
                                             (lambda (_%id194860%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e194853%_
                                                  _%id194860%_)))))
                                        (declare (not safe))
                                        (__find __tmp196165 _%ids194849%_))
                                      (values (cons 'id _%e194853%_)
                                              _%vars194854%_)
                                      (if (let ((__tmp196166
                                                 (lambda (_%var194863%_)
                                                   (let ((__tmp196167
                                                          (car _%var194863%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e194853%_
                                                      __tmp196167)))))
                                            (declare (not safe))
                                            (__find __tmp196166
                                                    _%vars194854%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx194767%_
                                             _%e194853%_))
                                          (values (cons 'var _%e194853%_)
                                                  (cons (cons _%e194853%_
                                                              _%depth194855%_)
                                                        _%vars194854%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e194853%_))
                              (let* ((_%$%e194867194874%_ _%e194853%_)
                                     (_%$%E194869194878%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e194867194874%_))))
                                     (_%$%E194868194939%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e194867194874%_))
                                            (let ((_%$%e194870194882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e194867194874%_))))
                                              (let ((_%$%hd194871194885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e194870194882%_)))
                                                    (_%$%tl194872194887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e194870194882%_))))
                                                (let* ((_%hd194890%_
                                                        _%$%hd194871194885%_)
                                                       (_%rest194892%_
                                                        _%$%tl194872194887%_)
                                                       (_%make-pair194907%_
                                                        (lambda (_%tag194894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd194895%_
                         _%tl194896%_)
                  (let* ((_%hd-depth194898%_
                          (if (eq? _%tag194894%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth194855%_ '1))
                              _%depth194855%_))
                         (_g196168_
                          (_%recur194851%_
                           _%hd194895%_
                           _%vars194854%_
                           _%hd-depth194898%_)))
                    (begin
                      (let ((_g196169_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g196168_)
                                   (##values-length _g196168_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g196169_ 2)))
                            (error "Context expects 2 values" _g196169_)))
                      (let ((_%hd194900%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g196168_ 0)))
                            (_%vars194901%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g196168_ 1))))
                        (let ((_g196170_
                               (_%recur194851%_
                                _%tl194896%_
                                _%vars194901%_
                                _%depth194855%_)))
                          (begin
                            (let ((_g196171_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g196170_)
                                         (##values-length _g196170_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g196171_ 2)))
                                  (error "Context expects 2 values"
                                         _g196171_)))
                            (let ((_%tl194903%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g196170_ 0)))
                                  (_%vars194904%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g196170_ 1))))
                              (values (cons _%tag194894%_
                                            (cons _%hd194900%_ _%tl194903%_))
                                      _%vars194904%_)))))))))
               (_%$%e194908194915%_ _%rest194892%_)
               (_%$%E194910194919%_
                (lambda ()
                  (_%make-pair194907%_ 'cons _%hd194890%_ _%rest194892%_)))
               (_%$%E194909194935%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e194908194915%_))
                      (let ((_%$%e194911194923%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e194908194915%_))))
                        (let ((_%$%hd194912194926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194911194923%_)))
                              (_%$%tl194913194928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194911194923%_))))
                          (let* ((_%rest-hd194931%_ _%$%hd194912194926%_)
                                 (_%rest-tl194933%_ _%$%tl194913194928%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd194931%_))
                                (_%make-pair194907%_
                                 'splice
                                 _%hd194890%_
                                 _%rest-tl194933%_)
                                (_%make-pair194907%_
                                 'cons
                                 _%hd194890%_
                                 _%rest194892%_)))))
                      (_%$%E194910194919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E194909194935%_))))
                                            (_%$%E194869194878%_)))))
                                (_%$%E194868194939%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e194853%_))
                                  (values '(null) _%vars194854%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e194853%_))
                                      (let ((_g196172_
                                             (_%recur194851%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e194853%_)))
                                              _%vars194854%_
                                              _%depth194855%_)))
                                        (begin
                                          (let ((_g196173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196172_)
                                                       (##values-length
                                                        _g196172_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196173_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196173_)))
                                          (let ((_%e194945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196172_ 0)))
                                                (_%vars194946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196172_
                                                    1))))
                                            (values (cons 'vector _%e194945%_)
                                                    _%vars194946%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e194853%_))
                                          (let ((_g196174_
                                                 (_%recur194851%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e194853%_)))
                                                  _%vars194854%_
                                                  _%depth194855%_)))
                                            (begin
                                              (let ((_g196175_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g196174_)
                                                           (##values-length
                                                            _g196174_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g196175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g196175_)))
                                              (let ((_%e194949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g196174_
                                                        0)))
                                                    (_%vars194950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g196174_
                                                        1))))
                                                (values (cons 'box _%e194949%_)
                                                        _%vars194950%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e194853%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e194853%_)))
                                                      _%vars194854%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx194767%_
                                                 _%e194853%_))))))))))))
          (let* ((_%$%e194777194790%_ _%stx194767%_)
                 (_%$%E194779194794%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e194777194790%_))))
                 (_%$%E194778194844%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e194777194790%_))
                        (let ((_%$%e194780194798%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e194777194790%_))))
                          (let ((_%$%hd194781194801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e194780194798%_)))
                                (_%$%tl194782194803%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e194780194798%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl194782194803%_))
                                (let ((_%$%e194783194806%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl194782194803%_))))
                                  (let ((_%$%hd194784194809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e194783194806%_)))
                                        (_%$%tl194785194811%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e194783194806%_))))
                                    (let ((_%expr194814%_
                                           _%$%hd194784194809%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl194785194811%_))
                                          (let ((_%$%e194786194816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl194785194811%_))))
                                            (let ((_%$%hd194787194819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e194786194816%_)))
                                                  (_%$%tl194788194821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e194786194816%_))))
                                              (let* ((_%ids194824%_
                                                      _%$%hd194787194819%_)
                                                     (_%clauses194826%_
                                                      _%$%tl194788194821%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids194824%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses194826%_))
                                                        (let* ((_%ids194831%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids194824%_)))
                       (_%clauses194833%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses194826%_)))
                       (_%clause-ids194835%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses194833%_)))
                       (_%E194837%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target194839%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first194841%_
                        (if (null? _%clauses194833%_)
                            _%E194837%_
                            (car _%clause-ids194835%_))))
                  (let ((__tmp196177
                         (let ((__tmp196178
                                (let ((__tmp196180
                                       (let ((__tmp196182
                                              (cons (cons (cons _%E194837%_
                                                                '())
                                                          (cons (let ((__tmp196184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target194839%_ '()))
                              (__tmp196183
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target194839%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp196184 __tmp196183))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp196181
                                              (_%generate-body194773%_
                                               (_%generate-bindings194772%_
                                                _%target194839%_
                                                _%ids194831%_
                                                _%clauses194833%_
                                                _%clause-ids194835%_
                                                _%E194837%_)
                                               (cons _%first194841%_
                                                     (cons _%expr194814%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp196182
                                          __tmp196181)))
                                      (__tmp196179
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx194767%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp196180
                                   __tmp196179))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp196178)))
                        (__tmp196176
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx194767%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp196177 __tmp196176)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx194767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx194767%_
                                                       _%ids194824%_))))))
                                          (_%$%E194779194794%_)))))
                                (_%$%E194779194794%_))))
                        (_%$%E194779194794%_)))))
            (_%$%E194778194844%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx195492%_)
        (let* ((_%identifier=?195494%_ 'free-identifier=?)
               (_%unwrap-e195496%_ 'syntax-e)
               (_%wrap-e195498%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx195492%_
           _%identifier=?195494%_
           _%unwrap-e195496%_
           _%wrap-e195498%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx195500%_ _%identifier=?195501%_)
        (let* ((_%unwrap-e195503%_ 'syntax-e) (_%wrap-e195505%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx195500%_
           _%identifier=?195501%_
           _%unwrap-e195503%_
           _%wrap-e195505%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx195507%_ _%identifier=?195508%_ _%unwrap-e195509%_)
        (let ((_%wrap-e195511%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx195507%_
           _%identifier=?195508%_
           _%unwrap-e195509%_
           _%wrap-e195511%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g196185_
        (let ((_g196186_ (let () (declare (not safe)) (##length _g196185_))))
          (cond ((let () (declare (not safe)) (##fx= _g196186_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g196185_))
                ((let () (declare (not safe)) (##fx= _g196186_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g196185_))
                ((let () (declare (not safe)) (##fx= _g196186_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g196185_))
                ((let () (declare (not safe)) (##fx= _g196186_ 4))
                 (apply gx#macro-expand-syntax-case__% _g196185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g196185_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx194764%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx194764%_))
            (let ((__tmp196187
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx194764%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp196187 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd194722%_ . _%rest194723%_)
        (let ((_%len194725%_ (length _%hd194722%_)))
          (let _%lp194727%_ ((_%rest194729%_ _%rest194723%_))
            (let* ((_%$%rest194730194738%_ _%rest194729%_)
                   (_%$%else194732194746%_ (lambda () '#!void))
                   (_%$%K194734194752%_
                    (lambda (_%rest194749%_ _%hd194750%_)
                      (if (let ((__tmp196188 (length _%hd194750%_)))
                            (declare (not safe))
                            (##fx= _%len194725%_ __tmp196188))
                          (_%lp194727%_ _%rest194749%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd194750%_))))))
              (if (pair? _%$%rest194730194738%_)
                  (let ((_%$%hd194735194755%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest194730194738%_)))
                        (_%$%tl194736194757%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest194730194738%_))))
                    (let* ((_%hd194760%_ _%$%hd194735194755%_)
                           (_%rest194762%_ _%$%tl194736194757%_))
                      (_%$%K194734194752%_ _%rest194762%_ _%hd194760%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx194672%_ _%n194673%_)
        (let _%lp194675%_ ((_%rest194678%_ _%stx194672%_) (_%r194680%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest194678%_))
              (let* ((_%$%g194682194689%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest194678%_)))
                     (_%$%E194684194693%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g194682194689%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K194685194700%_
                      (lambda (_%rest194696%_ _%hd194697%_)
                        (_%lp194675%_
                         _%rest194696%_
                         (cons _%hd194697%_ _%r194680%_)))))
                (if (pair? _%$%g194682194689%_)
                    (let ((_%$%hd194686194703%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g194682194689%_)))
                          (_%$%tl194687194705%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g194682194689%_))))
                      (let* ((_%hd194708%_ _%$%hd194686194703%_)
                             (_%rest194710%_ _%$%tl194687194705%_))
                        (_%$%K194685194700%_ _%rest194710%_ _%hd194708%_)))
                    (_%$%E194684194693%_)))
              (let _%lp194712%_ ((_%n194714%_ _%n194673%_)
                                 (_%l194715%_ _%r194680%_)
                                 (_%r194717%_ _%rest194678%_))
                (if (null? _%l194715%_)
                    (values _%l194715%_ _%r194717%_)
                    (if (fxpositive? _%n194714%_)
                        (_%lp194712%_
                         (let () (declare (not safe)) (##fx- _%n194714%_ '1))
                         (cdr _%l194715%_)
                         (cons (car _%l194715%_) _%r194717%_))
                        (values (reverse! _%l194715%_) _%r194717%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx194622%_ _%n194623%_)
        (let _%lp194625%_ ((_%rest194628%_ _%stx194622%_) (_%r194630%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest194628%_))
              (let* ((_%$%g194632194639%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest194628%_)))
                     (_%$%E194634194643%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g194632194639%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K194635194650%_
                      (lambda (_%rest194646%_ _%hd194647%_)
                        (_%lp194625%_
                         _%rest194646%_
                         (cons _%hd194647%_ _%r194630%_)))))
                (if (pair? _%$%g194632194639%_)
                    (let ((_%$%hd194636194653%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g194632194639%_)))
                          (_%$%tl194637194655%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g194632194639%_))))
                      (let* ((_%hd194658%_ _%$%hd194636194653%_)
                             (_%rest194660%_ _%$%tl194637194655%_))
                        (_%$%K194635194650%_ _%rest194660%_ _%hd194658%_)))
                    (_%$%E194634194643%_)))
              (let _%lp194662%_ ((_%n194664%_ _%n194623%_)
                                 (_%l194665%_ _%r194630%_)
                                 (_%r194667%_ _%rest194628%_))
                (if (null? _%l194665%_)
                    (vector _%l194665%_ _%r194667%_)
                    (if (fxpositive? _%n194664%_)
                        (_%lp194662%_
                         (let () (declare (not safe)) (##fx- _%n194664%_ '1))
                         (cdr _%l194665%_)
                         (cons (car _%l194665%_) _%r194667%_))
                        (vector (reverse! _%l194665%_) _%r194667%_))))))))))
