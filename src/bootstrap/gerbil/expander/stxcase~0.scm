(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1733687560)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp132928 (list gx#expander::t))
            (__tmp132927 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp132928
         '(id depth)
         __tmp132927
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args132924%_
        (apply make-instance gx#syntax-pattern::t _%$args132924%_)))
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
      (lambda (_%self131531132908%_ _%stx132910%_)
        (let* ((_%self132912%_ _%self131531132908%_)
               (_%self132914%_ _%self132912%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx132910%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx132374%_)
        (letrec ((_%generate132376%_
                  (lambda (_%e132616%_)
                    (letrec ((_%BUG132618%_
                              (lambda (_%q132783%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx132374%_
                                         _%e132616%_
                                         _%q132783%_))))
                             (_%local-pattern-e132619%_
                              (lambda (_%pat132781%_)
                                (let ((__tmp132929
                                       (##structure-ref
                                        _%pat132781%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp132929))))
                             (_%getvar132620%_
                              (lambda (_%q132778%_ _%vars132779%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q132778%_
                                   _%vars132779%_
                                   _%BUG132618%_))))
                             (_%getarg132621%_
                              (lambda (_%arg132744%_ _%vars132745%_)
                                (let* ((_%arg132746132753%_ _%arg132744%_)
                                       (_%E132748132757%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg132746132753%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K132749132766%_
                                        (lambda (_%e132760%_ _%tag132761%_)
                                          (let ((_%$e132763%_ _%tag132761%_))
                                            (if (eq? 'ref _%$e132763%_)
                                                (_%getvar132620%_
                                                 _%e132760%_
                                                 _%vars132745%_)
                                                (if (eq? 'pattern _%$e132763%_)
                                                    (_%local-pattern-e132619%_
                                                     _%e132760%_)
                                                    (_%BUG132618%_
                                                     _%arg132744%_)))))))
                                  (if (pair? _%arg132746132753%_)
                                      (let ((_%hd132750132769%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg132746132753%_)))
                                            (_%tl132751132771%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg132746132753%_))))
                                        (let* ((_%tag132774%_
                                                _%hd132750132769%_)
                                               (_%e132776%_
                                                _%tl132751132771%_))
                                          (_%K132749132766%_
                                           _%e132776%_
                                           _%tag132774%_)))
                                      (_%E132748132757%_))))))
                      (let _%recur132623%_ ((_%e132625%_ _%e132616%_)
                                            (_%vars132626%_ '()))
                        (let* ((_%e132627132634%_ _%e132625%_)
                               (_%E132629132638%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e132627132634%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K132630132732%_
                                (lambda (_%body132641%_ _%tag132642%_)
                                  (let ((_%$e132644%_ _%tag132642%_))
                                    (if (eq? 'datum _%$e132644%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body132641%_))
                                        (if (eq? 'term _%$e132644%_)
                                            (let ((_%id132647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body132641%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id132647%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks132650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id132647%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks132650%_)
                                                        (let ((__tmp132930
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body132641%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp132930))
                (let ((__tmp132932
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body132641%_)))
                      (__tmp132931
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body132641%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp132932
                   __tmp132931
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id132647%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body132641%_))
                                                      (_%BUG132618%_
                                                       _%e132625%_))))
                                            (if (eq? 'pattern _%$e132644%_)
                                                (_%local-pattern-e132619%_
                                                 _%body132641%_)
                                                (if (eq? 'ref _%$e132644%_)
                                                    (_%getvar132620%_
                                                     _%body132641%_
                                                     _%vars132626%_)
                                                    (if (eq? 'cons
                                                             _%$e132644%_)
                                                        (let ((__tmp132934
                                                               (_%recur132623%_
                                                                (car _%body132641%_)
                                                                _%vars132626%_))
                                                              (__tmp132933
                                                               (_%recur132623%_
                                                                (cdr _%body132641%_)
                                                                _%vars132626%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp132934
                                                           __tmp132933))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e132644%_)
                    (let ((__tmp132935
                           (_%recur132623%_ _%body132641%_ _%vars132626%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp132935))
                    (if (eq? 'box _%$e132644%_)
                        (let ((__tmp132936
                               (_%recur132623%_
                                _%body132641%_
                                _%vars132626%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp132936))
                        (if (eq? 'splice _%$e132644%_)
                            (let* ((_%body132653132664%_ _%body132641%_)
                                   (_%E132655132668%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body132653132664%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K132656132706%_
                                    (lambda (_%args132671%_
                                             _%iv132672%_
                                             _%hd132673%_
                                             _%depth132674%_)
                                      (let* ((_%targets132680%_
                                              (map (lambda (_%g132675132677%_)
                                                     (_%getarg132621%_
                                                      _%g132675132677%_
                                                      _%vars132626%_))
                                                   _%args132671%_))
                                             (_%fold-in132682%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args132671%_)))
                                             (_%fold-out132684%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args132686%_
                                              (let ((__tmp132937
                                                     (cons _%fold-out132684%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp132937
                                                 _%fold-in132682%_)))
                                             (_%lambda-body132703%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth132674%_ '1))
                                                  (let ((_%r-args132694%_
                                                         (map (lambda (_%arg132688%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg132688%_)))
                      _%args132671%_))
                (_%r-vars132695%_
                 (let ((__tmp132938
                        (lambda (_%arg132690%_ _%var132691%_ _%r132692%_)
                          (cons (cons (cdr _%arg132690%_) _%var132691%_)
                                _%r132692%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp132938
                    _%vars132626%_
                    _%args132671%_
                    _%fold-in132682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur132623%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth132674%_ '1))
                         (cons _%hd132673%_
                               (cons (cons 'var _%fold-out132684%_)
                                     _%r-args132694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars132695%_))
                                                  (let* ((_%hd-vars132701%_
                                                          (let ((__tmp132939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg132697%_ _%var132698%_ _%r132699%_)
                           (cons (cons (cdr _%arg132697%_) _%var132698%_)
                                 _%r132699%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp132939
                     _%vars132626%_
                     _%args132671%_
                     _%fold-in132682%_)))
                 (__tmp132940
                  (_%recur132623%_ _%hd132673%_ _%hd-vars132701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp132940
                                                     _%fold-out132684%_)))))
                                        (let ((__tmp132944
                                               (if (let ((__tmp132945
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets132680%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp132945 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets132680%_))
                                                   '#!void))
                                              (__tmp132941
                                               (let ((__tmp132943
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args132686%_
                                                         _%lambda-body132703%_)))
                                                     (__tmp132942
                                                      (_%recur132623%_
                                                       _%iv132672%_
                                                       _%vars132626%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp132943
                                                  __tmp132942
                                                  _%targets132680%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp132944
                                           __tmp132941))))))
                              (if (pair? _%body132653132664%_)
                                  (let ((_%hd132657132709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body132653132664%_)))
                                        (_%tl132658132711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body132653132664%_))))
                                    (let ((_%depth132714%_ _%hd132657132709%_))
                                      (if (pair? _%tl132658132711%_)
                                          (let ((_%hd132659132716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl132658132711%_)))
                                                (_%tl132660132718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl132658132711%_))))
                                            (let ((_%hd132721%_
                                                   _%hd132659132716%_))
                                              (if (pair? _%tl132660132718%_)
                                                  (let ((_%hd132661132723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl132660132718%_)))
                                                        (_%tl132662132725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl132660132718%_))))
                                                    (let* ((_%iv132728%_
                                                            _%hd132661132723%_)
                                                           (_%args132730%_
                                                            _%tl132662132725%_))
                                                      (_%K132656132706%_
                                                       _%args132730%_
                                                       _%iv132728%_
                                                       _%hd132721%_
                                                       _%depth132714%_)))
                                                  (_%E132655132668%_))))
                                          (_%E132655132668%_))))
                                  (_%E132655132668%_)))
                            (if (eq? 'var _%$e132644%_)
                                _%body132641%_
                                (_%BUG132618%_ _%e132625%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e132627132634%_)
                              (let ((_%hd132631132735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e132627132634%_)))
                                    (_%tl132632132737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e132627132634%_))))
                                (let* ((_%tag132740%_ _%hd132631132735%_)
                                       (_%body132742%_ _%tl132632132737%_))
                                  (_%K132630132732%_
                                   _%body132742%_
                                   _%tag132740%_)))
                              (_%E132629132638%_)))))))
                 (_%parse132377%_
                  (lambda (_%e132418%_)
                    (letrec ((_%make-cons132420%_
                              (lambda (_%hd132608%_ _%tl132609%_)
                                (let ((_g132946_ _%hd132608%_)
                                      (_g132948_ _%tl132609%_))
                                  (begin
                                    (let ((_g132947_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132946_)
                                                 (##vector-length _g132946_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132947_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132947_)))
                                    (let ((_g132949_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132948_)
                                                 (##vector-length _g132948_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132949_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132949_)))
                                    (let ((_%hd-e132611%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132946_ 0)))
                                          (_%hd-vars132612%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132946_ 1))))
                                      (let ((_%tl-e132613%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132948_ 0)))
                                            (_%tl-vars132614%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132948_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e132611%_
                                                            _%tl-e132613%_))
                                                (append _%hd-vars132612%_
                                                        _%tl-vars132614%_))))))))
                             (_%make-splice132421%_
                              (lambda (_%where132544%_
                                       _%depth132545%_
                                       _%hd132546%_
                                       _%tl132547%_)
                                (let ((_g132950_ _%hd132546%_)
                                      (_g132952_ _%tl132547%_))
                                  (begin
                                    (let ((_g132951_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132950_)
                                                 (##vector-length _g132950_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132951_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132951_)))
                                    (let ((_g132953_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132952_)
                                                 (##vector-length _g132952_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132953_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132953_)))
                                    (let ((_%hd-e132549%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132950_ 0)))
                                          (_%hd-vars132550%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132950_ 1))))
                                      (let ((_%tl-e132551%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132952_ 0)))
                                            (_%tl-vars132552%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g132952_ 1))))
                                        (let _%lp132554%_ ((_%rest132556%_
                                                            _%hd-vars132550%_)
                                                           (_%targets132557%_
                                                            '())
                                                           (_%vars132558%_
                                                            _%tl-vars132552%_))
                                          (let* ((_%rest132559132569%_
                                                  _%rest132556%_)
                                                 (_%else132561132577%_
                                                  (lambda ()
                                                    (if (null? _%targets132557%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx132374%_
                                                           _%where132544%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth132545%_
                                    (cons _%hd-e132549%_
                                          (cons _%tl-e132551%_
                                                _%targets132557%_))))
                        _%vars132558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K132563132589%_
                                                  (lambda (_%rest132580%_
                                                           _%hd-pat132581%_
                                                           _%hd-depth*132582%_)
                                                    (let ((_%hd-depth132584%_
                                                           (fx- _%hd-depth*132582%_
                                                                _%depth132545%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth132584%_))
                                                          (_%lp132554%_
                                                           _%rest132580%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat132581%_)
                         _%targets132557%_)
                   (cons (cons _%hd-depth132584%_ _%hd-pat132581%_)
                         _%vars132558%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth132584%_))
                      (_%lp132554%_
                       _%rest132580%_
                       (cons (cons 'pattern _%hd-pat132581%_)
                             _%targets132557%_)
                       _%vars132558%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx132374%_
                         _%where132544%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest132559132569%_)
                                                (let ((_%hd132564132592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest132559132569%_)))
                                                      (_%tl132565132594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest132559132569%_))))
                                                  (if (pair? _%hd132564132592%_)
                                                      (let ((_%hd132566132597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd132564132592%_)))
                    (_%tl132567132599%_
                     (let () (declare (not safe)) (##cdr _%hd132564132592%_))))
                (let* ((_%hd-depth*132602%_ _%hd132566132597%_)
                       (_%hd-pat132604%_ _%tl132567132599%_)
                       (_%rest132606%_ _%tl132565132594%_))
                  (_%K132563132589%_
                   _%rest132606%_
                   _%hd-pat132604%_
                   _%hd-depth*132602%_)))
              (_%else132561132577%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else132561132577%_))))))))))
                             (_%recur132422%_
                              (lambda (_%e132427%_ _%is-e?132428%_)
                                (if (_%is-e?132428%_ _%e132427%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx132374%_))
                                    (if (gx#syntax-local-pattern? _%e132427%_)
                                        (let* ((_%pat132432%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e132427%_)))
                                               (_%depth132434%_
                                                (##structure-ref
                                                 _%pat132432%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth132434%_)
                                              (values (cons 'ref _%pat132432%_)
                                                      (cons (cons _%depth132434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat132432%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat132432%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e132427%_))
                                            (values (cons 'term _%e132427%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e132427%_))
                                                (let* ((_%e132438132445%_
                                                        _%e132427%_)
                                                       (_%E132440132449%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e132438132445%_))))
                                                       (_%E132439132531%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e132438132445%_))
                      (let ((_%e132441132453%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132438132445%_))))
                        (let ((_%hd132442132456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132441132453%_)))
                              (_%tl132443132458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132441132453%_))))
                          (let* ((_%hd132461%_ _%hd132442132456%_)
                                 (_%rest132463%_ _%tl132443132458%_))
                            (if (_%is-e?132428%_ _%hd132461%_)
                                (let* ((_%e132464132471%_ _%rest132463%_)
                                       (_%E132466132475%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx132374%_
                                             _%e132427%_))))
                                       (_%E132465132489%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e132464132471%_))
                                              (let ((_%e132467132479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e132464132471%_))))
                                                (let ((_%hd132468132482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132467132479%_)))
                                                      (_%tl132469132484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132467132479%_))))
                                                  (let ((_%rest132487%_
                                                         _%hd132468132482%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132469132484%_))
                                                        (_%recur132422%_
                                                         _%rest132487%_
                                                         false)
                                                        (_%E132466132475%_)))))
                                              (_%E132466132475%_)))))
                                  (_%E132465132489%_))
                                (let _%lp132493%_ ((_%rest132495%_
                                                    _%rest132463%_)
                                                   (_%depth132496%_ '0))
                                  (let* ((_%e132497132504%_ _%rest132495%_)
                                         (_%E132499132508%_
                                          (lambda ()
                                            (if (fxpositive? _%depth132496%_)
                                                (_%make-splice132421%_
                                                 _%e132427%_
                                                 _%depth132496%_
                                                 (_%recur132422%_
                                                  _%hd132461%_
                                                  _%is-e?132428%_)
                                                 (_%recur132422%_
                                                  _%rest132495%_
                                                  _%is-e?132428%_))
                                                (_%make-cons132420%_
                                                 (_%recur132422%_
                                                  _%hd132461%_
                                                  _%is-e?132428%_)
                                                 (_%recur132422%_
                                                  _%rest132495%_
                                                  _%is-e?132428%_)))))
                                         (_%E132498132527%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e132497132504%_))
                                                (let ((_%e132500132512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e132497132504%_))))
                                                  (let ((_%hd132501132515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e132500132512%_)))
                                                        (_%tl132502132517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e132500132512%_))))
                                                    (let* ((_%rest-hd132520%_
                                                            _%hd132501132515%_)
                                                           (_%rest-tl132522%_
                                                            _%tl132502132517%_))
                                                      (if (_%is-e?132428%_
                                                           _%rest-hd132520%_)
                                                          (_%lp132493%_
                                                           _%rest-tl132522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth132496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth132496%_)
                      (_%make-splice132421%_
                       _%e132427%_
                       _%depth132496%_
                       (_%recur132422%_ _%hd132461%_ _%is-e?132428%_)
                       (_%recur132422%_ _%rest132495%_ _%is-e?132428%_))
                      (_%make-cons132420%_
                       (_%recur132422%_ _%hd132461%_ _%is-e?132428%_)
                       (_%recur132422%_ _%rest132495%_ _%is-e?132428%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E132499132508%_)))))
                                    (_%E132498132527%_)))))))
                      (_%E132440132449%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132439132531%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e132427%_))
                                                    (let ((_g132954_
                                                           (_%recur132422%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e132427%_)))
                    _%is-e?132428%_)))
              (begin
                (let ((_g132955_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g132954_)
                             (##vector-length _g132954_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g132955_ 2)))
                      (error "Context expects 2 values" _g132955_)))
                (let ((_%e132536%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132954_ 0)))
                      (_%vars132537%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g132954_ 1))))
                  (values (cons 'vector _%e132536%_) _%vars132537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e132427%_))
                                                        (let ((_g132956_
                                                               (_%recur132422%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e132427%_)))
                        _%is-e?132428%_)))
                  (begin
                    (let ((_g132957_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g132956_)
                                 (##vector-length _g132956_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g132957_ 2)))
                          (error "Context expects 2 values" _g132957_)))
                    (let ((_%e132540%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132956_ 0)))
                          (_%vars132541%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g132956_ 1))))
                      (values (cons 'box _%e132540%_) _%vars132541%_))))
                (values (cons 'datum _%e132427%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g132958_
                             (_%recur132422%_ _%e132418%_ gx#ellipsis?)))
                        (begin
                          (let ((_g132959_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g132958_)
                                       (##vector-length _g132958_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g132959_ 2)))
                                (error "Context expects 2 values" _g132959_)))
                          (let ((_%tree132424%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132958_ 0)))
                                (_%vars132425%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g132958_ 1))))
                            (if (null? _%vars132425%_)
                                _%tree132424%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx132374%_
                                   _%vars132425%_))))))))))
          (let* ((_%e132378132388%_ _%stx132374%_)
                 (_%E132380132392%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx132374%_))))
                 (_%E132379132414%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132378132388%_))
                        (let ((_%e132381132396%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132378132388%_))))
                          (let ((_%hd132382132399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132381132396%_)))
                                (_%tl132383132401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132381132396%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132383132401%_))
                                (let ((_%e132384132404%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132383132401%_))))
                                  (let ((_%hd132385132407%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132384132404%_)))
                                        (_%tl132386132409%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132384132404%_))))
                                    (let ((_%form132412%_ _%hd132385132407%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl132386132409%_))
                                          (let ((__tmp132961
                                                 (_%generate132376%_
                                                  (_%parse132377%_
                                                   _%form132412%_)))
                                                (__tmp132960
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx132374%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp132961
                                             __tmp132960))
                                          (_%E132380132392%_)))))
                                (_%E132380132392%_))))
                        (_%E132380132392%_)))))
            (_%E132379132414%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx131623%_
               _%identifier=?131624%_
               _%unwrap-e131625%_
               _%wrap-e131626%_)
        (letrec ((_%generate-bindings131628%_
                  (lambda (_%target132238%_
                           _%ids132239%_
                           _%clauses132240%_
                           _%clause-ids132241%_
                           _%E132242%_)
                    (letrec ((_%generate1132244%_
                              (lambda (_%clause132341%_
                                       _%clause-id132342%_
                                       _%E132343%_)
                                (cons (cons _%clause-id132342%_ '())
                                      (cons (let ((__tmp132963
                                                   (cons _%target132238%_ '()))
                                                  (__tmp132962
                                                   (_%generate-clause131630%_
                                                    _%target132238%_
                                                    _%ids132239%_
                                                    _%clause132341%_
                                                    _%E132343%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp132963
                                               __tmp132962))
                                            '())))))
                      (let _%lp132246%_ ((_%rest132248%_ _%clauses132240%_)
                                         (_%rest-ids132249%_
                                          _%clause-ids132241%_)
                                         (_%bindings132250%_ '()))
                        (let* ((_%rest132251132259%_ _%rest132248%_)
                               (_%else132253132267%_
                                (lambda () _%bindings132250%_))
                               (_%K132255132329%_
                                (lambda (_%rest132270%_ _%clause132271%_)
                                  (let* ((_%rest-ids132272132279%_
                                          _%rest-ids132249%_)
                                         (_%E132274132283%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids132272132279%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K132275132317%_
                                          (lambda (_%rest-ids132286%_
                                                   _%clause-id132287%_)
                                            (let* ((_%rest-ids132288132296%_
                                                    _%rest-ids132286%_)
                                                   (_%else132290132304%_
                                                    (lambda ()
                                                      (cons (_%generate1132244%_
                                                             _%clause132271%_
                                                             _%clause-id132287%_
                                                             _%E132242%_)
                                                            _%bindings132250%_)))
                                                   (_%K132292132309%_
                                                    (lambda (_%next-clause-id132307%_)
                                                      (_%lp132246%_
                                                       _%rest132270%_
                                                       _%rest-ids132286%_
                                                       (cons (_%generate1132244%_
                                                              _%clause132271%_
                                                              _%clause-id132287%_
                                                              _%next-clause-id132307%_)
                                                             _%bindings132250%_)))))
                                              (if (pair? _%rest-ids132288132296%_)
                                                  (let* ((_%hd132293132312%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids132288132296%_)))
                                                         (_%next-clause-id132315%_
                                                          _%hd132293132312%_))
                                                    (_%K132292132309%_
                                                     _%next-clause-id132315%_))
                                                  (_%else132290132304%_))))))
                                    (if (pair? _%rest-ids132272132279%_)
                                        (let ((_%hd132276132320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids132272132279%_)))
                                              (_%tl132277132322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids132272132279%_))))
                                          (let* ((_%clause-id132325%_
                                                  _%hd132276132320%_)
                                                 (_%rest-ids132327%_
                                                  _%tl132277132322%_))
                                            (_%K132275132317%_
                                             _%rest-ids132327%_
                                             _%clause-id132325%_)))
                                        (_%E132274132283%_))))))
                          (if (pair? _%rest132251132259%_)
                              (let ((_%hd132256132332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132251132259%_)))
                                    (_%tl132257132334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132251132259%_))))
                                (let* ((_%clause132337%_ _%hd132256132332%_)
                                       (_%rest132339%_ _%tl132257132334%_))
                                  (_%K132255132329%_
                                   _%rest132339%_
                                   _%clause132337%_)))
                              (_%else132253132267%_)))))))
                 (_%generate-body131629%_
                  (lambda (_%bindings132198%_ _%body132199%_)
                    (let _%recur132201%_ ((_%rest132203%_ _%bindings132198%_))
                      (let* ((_%rest132204132212%_ _%rest132203%_)
                             (_%else132206132220%_ (lambda () _%body132199%_))
                             (_%K132208132226%_
                              (lambda (_%rest132223%_ _%hd132224%_)
                                (let ((__tmp132965 (cons _%hd132224%_ '()))
                                      (__tmp132964
                                       (_%recur132201%_ _%rest132223%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp132965
                                   __tmp132964)))))
                        (if (pair? _%rest132204132212%_)
                            (let ((_%hd132209132229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest132204132212%_)))
                                  (_%tl132210132231%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest132204132212%_))))
                              (let* ((_%hd132234%_ _%hd132209132229%_)
                                     (_%rest132236%_ _%tl132210132231%_))
                                (_%K132208132226%_
                                 _%rest132236%_
                                 _%hd132234%_)))
                            (_%else132206132220%_))))))
                 (_%generate-clause131630%_
                  (lambda (_%target132061%_
                           _%ids132062%_
                           _%clause132063%_
                           _%E132064%_)
                    (letrec ((_%generate1132066%_
                              (lambda (_%hd132153%_
                                       _%fender132154%_
                                       _%body132155%_)
                                (let ((_g132966_
                                       (_%parse-clause131632%_
                                        _%hd132153%_
                                        _%ids132062%_)))
                                  (begin
                                    (let ((_g132967_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g132966_)
                                                 (##vector-length _g132966_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g132967_ 2)))
                                          (error "Context expects 2 values"
                                                 _g132967_)))
                                    (let ((_%e132157%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132966_ 0)))
                                          (_%mvars132158%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g132966_ 1))))
                                      (let* ((_%pvars132160%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars132158%_))))
                                             (_%E132162%_
                                              (cons _%E132064%_
                                                    (cons _%target132061%_
                                                          '())))
                                             (_%K132195%_
                                              (let ((__tmp132968
                                                     (let ((__tmp132970
                                                            (map (lambda (_%mvar132164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar132165%_)
                           (let* ((_%mvar132166132173%_ _%mvar132164%_)
                                  (_%E132168132177%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar132166132173%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K132169132183%_
                                   (lambda (_%depth132180%_ _%id132181%_)
                                     (cons _%id132181%_
                                           (cons (let ((__tmp132972
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id132181%_)))
                                                       (__tmp132971
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar132165%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp132972
                                                    __tmp132971
                                                    _%depth132180%_))
                                                 '())))))
                             (if (pair? _%mvar132166132173%_)
                                 (let ((_%hd132170132186%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar132166132173%_)))
                                       (_%tl132171132188%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar132166132173%_))))
                                   (let* ((_%id132191%_ _%hd132170132186%_)
                                          (_%depth132193%_ _%tl132171132188%_))
                                     (_%K132169132183%_
                                      _%depth132193%_
                                      _%id132191%_)))
                                 (_%E132168132177%_))))
                         _%mvars132158%_
                         _%pvars132160%_))
                   (__tmp132969
                    (if (eq? _%fender132154%_ '#t)
                        _%body132155%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender132154%_
                           _%body132155%_
                           _%E132162%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp132970 __tmp132969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars132160%_
                                                 __tmp132968))))
                                        (_%generate-match131631%_
                                         _%hd132153%_
                                         _%target132061%_
                                         _%e132157%_
                                         _%mvars132158%_
                                         _%K132195%_
                                         _%E132162%_))))))))
                      (let* ((_%e132067132087%_ _%clause132063%_)
                             (_%E132076132091%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e132067132087%_))))
                             (_%E132069132125%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132067132087%_))
                                    (let ((_%e132077132095%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132067132087%_))))
                                      (let ((_%hd132078132098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132077132095%_)))
                                            (_%tl132079132100%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132077132095%_))))
                                        (let ((_%hd132103%_
                                               _%hd132078132098%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132079132100%_))
                                              (let ((_%e132080132105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132079132100%_))))
                                                (let ((_%hd132081132108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132080132105%_)))
                                                      (_%tl132082132110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132080132105%_))))
                                                  (let ((_%fender132113%_
                                                         _%hd132081132108%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl132082132110%_))
                                                        (let ((_%e132083132115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl132082132110%_))))
                  (let ((_%hd132084132118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132083132115%_)))
                        (_%tl132085132120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132083132115%_))))
                    (let ((_%body132123%_ _%hd132084132118%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl132085132120%_))
                          (_%generate1132066%_
                           _%hd132103%_
                           _%fender132113%_
                           _%body132123%_)
                          (_%E132076132091%_)))))
                (_%E132076132091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132076132091%_)))))
                                    (_%E132076132091%_))))
                             (_%E132068132149%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132067132087%_))
                                    (let ((_%e132070132129%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132067132087%_))))
                                      (let ((_%hd132071132132%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132070132129%_)))
                                            (_%tl132072132134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132070132129%_))))
                                        (let ((_%hd132137%_
                                               _%hd132071132132%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132072132134%_))
                                              (let ((_%e132073132139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132072132134%_))))
                                                (let ((_%hd132074132142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132073132139%_)))
                                                      (_%tl132075132144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132073132139%_))))
                                                  (let ((_%body132147%_
                                                         _%hd132074132142%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132075132144%_))
                                                        (_%generate1132066%_
                                                         _%hd132137%_
                                                         '#t
                                                         _%body132147%_)
                                                        (_%E132069132125%_)))))
                                              (_%E132069132125%_)))))
                                    (_%E132069132125%_)))))
                        (_%E132068132149%_)))))
                 (_%generate-match131631%_
                  (lambda (_%where131810%_
                           _%target131811%_
                           _%hd131812%_
                           _%mvars131813%_
                           _%K131814%_
                           _%E131815%_)
                    (letrec ((_%BUG131817%_
                              (lambda (_%q132059%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx131623%_
                                         _%hd131812%_
                                         _%q132059%_))))
                             (_%recur131818%_
                              (lambda (_%e131909%_
                                       _%vars131910%_
                                       _%target131911%_
                                       _%E131912%_
                                       _%k131913%_)
                                (let* ((_%e131914131921%_ _%e131909%_)
                                       (_%E131916131925%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e131914131921%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K131917132047%_
                                        (lambda (_%body131928%_ _%tag131929%_)
                                          (let ((_%$e131931%_ _%tag131929%_))
                                            (if (eq? 'any _%$e131931%_)
                                                (_%k131913%_ _%vars131910%_)
                                                (if (eq? 'id _%$e131931%_)
                                                    (let ((__tmp132977
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target131911%_)))
                                                          (__tmp132973
                                                           (let ((__tmp132975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132976
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e131626%_
                                    _%body131928%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?131624%_
                             __tmp132976
                             _%target131911%_)))
                         (__tmp132974 (_%k131913%_ _%vars131910%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp132975 __tmp132974 _%E131912%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp132977 __tmp132973 _%E131912%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e131931%_)
                                                        (_%k131913%_
                                                         (cons (cons _%body131928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target131911%_)
                       _%vars131910%_))
                (if (eq? 'cons _%$e131931%_)
                    (let ((_%$e131934%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd131935%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl131936%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp132983
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target131911%_)))
                            (__tmp132978
                             (let ((__tmp132982
                                    (cons (cons (cons _%$e131934%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e131625%_
                                                         _%target131911%_))
                                                      '()))
                                          '()))
                                   (__tmp132979
                                    (let ((__tmp132981
                                           (cons (cons (cons _%$hd131935%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e131934%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl131936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e131934%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp132980
                                           (let* ((_%body131937131944%_
                                                   _%body131928%_)
                                                  (_%E131939131948%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body131937131944%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K131940131956%_
                                                   (lambda (_%tl131951%_
                                                            _%hd131952%_)
                                                     (_%recur131818%_
                                                      _%hd131952%_
                                                      _%vars131910%_
                                                      _%$hd131935%_
                                                      _%E131912%_
                                                      (lambda (_%vars131954%_)
                                                        (_%recur131818%_
                                                         _%tl131951%_
                                                         _%vars131954%_
                                                         _%$tl131936%_
                                                         _%E131912%_
                                                         _%k131913%_))))))
                                             (if (pair? _%body131937131944%_)
                                                 (let ((_%hd131941131959%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body131937131944%_)))
                                                       (_%tl131942131961%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body131937131944%_))))
                                                   (let* ((_%hd131964%_
                                                           _%hd131941131959%_)
                                                          (_%tl131966%_
                                                           _%tl131942131961%_))
                                                     (_%K131940131956%_
                                                      _%tl131966%_
                                                      _%hd131964%_)))
                                                 (_%E131939131948%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp132981
                                       __tmp132980))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp132982
                                __tmp132979))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp132983
                         __tmp132978
                         _%E131912%_)))
                    (if (eq? 'splice _%$e131931%_)
                        (let* ((_%body131967131974%_ _%body131928%_)
                               (_%E131969131978%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body131967131974%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K131970132029%_
                                (lambda (_%tl131981%_ _%hd131982%_)
                                  (let* ((_%rlen131984%_
                                          (_%splice-rlen131819%_ _%tl131981%_))
                                         (_%$target131986%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd131988%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl131990%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp131992%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e131994%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd131996%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl131998%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars132000%_
                                          (_%splice-vars131820%_ _%hd131982%_))
                                         (_%lvars132002%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132000%_)))
                                         (_%tlvars132004%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132000%_)))
                                         (_%linit132008%_
                                          (map (lambda (_%var132006%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars132002%_)))
                                    (letrec ((_%make-loop132011%_
                                              (lambda (_%vars132015%_)
                                                (let ((__tmp132985
                                                       (cons (cons (cons _%$lp131992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp132998
                                        (cons _%$hd131988%_ _%lvars132002%_))
                                       (__tmp132986
                                        (let ((__tmp132997
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd131988%_)))
                                              (__tmp132991
                                               (let ((__tmp132996
                                                      (cons (cons (cons _%$lp-e131994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e131625%_
                                   _%$hd131988%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp132992
                                                      (let ((__tmp132995
                                                             (cons (cons (cons _%$lp-hd131996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e131994%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl131998%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e131994%_))
                                             '()))
                                 '())))
                    (__tmp132993
                     (_%recur131818%_
                      _%hd131982%_
                      '()
                      _%$lp-hd131996%_
                      _%E131912%_
                      (lambda (_%hdvars132017%_)
                        (cons _%$lp131992%_
                              (cons _%$lp-tl131998%_
                                    (map (lambda (_%svar132019%_
                                                  _%lvar132020%_)
                                           (let ((__tmp132994
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar132019%_
                                                     _%hdvars132017%_
                                                     _%BUG131817%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp132994
                                              _%lvar132020%_)))
                                         _%svars132000%_
                                         _%lvars132002%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp132995 __tmp132993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp132996
                                                  __tmp132992)))
                                              (__tmp132987
                                               (let ((__tmp132990
                                                      (map (lambda (_%lvar132022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar132023%_)
                     (cons (cons _%tlvar132023%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar132022%_))
                                 '())))
                   _%lvars132002%_
                   _%tlvars132004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp132988
                                                      (_%k131913%_
                                                       (let ((__tmp132989
                                                              (lambda (_%svar132025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar132026%_
                               _%r132027%_)
                        (cons (cons _%svar132025%_ _%tlvar132026%_)
                              _%r132027%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp132989
                  _%vars132015%_
                  _%svars132000%_
                  _%tlvars132004%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp132990
                                                  __tmp132988))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp132997
                                           __tmp132991
                                           __tmp132987))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp132998
                                    __tmp132986))
                                 '()))
                     '()))
              (__tmp132984
               (cons _%$lp131992%_ (cons _%$target131986%_ _%linit132008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp132985
                                                   __tmp132984)))))
                                      (let ((_%body132013%_
                                             (let ((__tmp133000
                                                    (cons (cons (cons _%$target131986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl131990%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target131911%_
                                 _%rlen131984%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp132999
                                                    (_%recur131818%_
                                                     _%tl131981%_
                                                     _%vars131910%_
                                                     _%$tl131990%_
                                                     _%E131912%_
                                                     _%make-loop132011%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133000
                                                __tmp132999))))
                                        (let ((__tmp133004
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target131911%_)))
                                              (__tmp133001
                                               (if (zero? _%rlen131984%_)
                                                   _%body132013%_
                                                   (let ((__tmp133002
                                                          (let ((__tmp133003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target131911%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp133003 _%rlen131984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp133002
                                                      _%body132013%_
                                                      _%E131912%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp133004
                                           __tmp133001
                                           _%E131912%_))))))))
                          (if (pair? _%body131967131974%_)
                              (let ((_%hd131971132032%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body131967131974%_)))
                                    (_%tl131972132034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body131967131974%_))))
                                (let* ((_%hd132037%_ _%hd131971132032%_)
                                       (_%tl132039%_ _%tl131972132034%_))
                                  (_%K131970132029%_
                                   _%tl132039%_
                                   _%hd132037%_)))
                              (_%E131969131978%_)))
                        (if (eq? 'null _%$e131931%_)
                            (let ((__tmp133006
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target131911%_)))
                                  (__tmp133005 (_%k131913%_ _%vars131910%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp133006
                               __tmp133005
                               _%E131912%_))
                            (if (eq? 'vector _%$e131931%_)
                                (let ((_%$e132041%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp133011
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target131911%_)))
                                        (__tmp133007
                                         (let ((__tmp133009
                                                (cons (cons (cons _%$e132041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp133010
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e131625%_
                                    _%target131911%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp133010))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp133008
                                                (_%recur131818%_
                                                 _%body131928%_
                                                 _%vars131910%_
                                                 _%$e132041%_
                                                 _%E131912%_
                                                 _%k131913%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp133009
                                            __tmp133008))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp133011
                                     __tmp133007
                                     _%E131912%_)))
                                (if (eq? 'box _%$e131931%_)
                                    (let ((_%$e132043%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp133016
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target131911%_)))
                                            (__tmp133012
                                             (let ((__tmp133014
                                                    (cons (cons (cons _%$e132043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp133015
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e131625%_
                                        _%target131911%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp133015))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp133013
                                                    (_%recur131818%_
                                                     _%body131928%_
                                                     _%vars131910%_
                                                     _%$e132043%_
                                                     _%E131912%_
                                                     _%k131913%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133014
                                                __tmp133013))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp133016
                                         __tmp133012
                                         _%E131912%_)))
                                    (if (eq? 'datum _%$e131931%_)
                                        (let ((_%$e132045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp133022
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target131911%_)))
                                                (__tmp133017
                                                 (let ((__tmp133021
                                                        (cons (cons (cons _%$e132045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target131911%_))
                                  '()))
                      '()))
               (__tmp133018
                (let ((__tmp133020
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e132045%_ _%body131928%_)))
                      (__tmp133019 (_%k131913%_ _%vars131910%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp133020 __tmp133019 _%E131912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp133021
                                                    __tmp133018))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp133022
                                             __tmp133017
                                             _%E131912%_)))
                                        (_%BUG131817%_
                                         _%e131909%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e131914131921%_)
                                      (let ((_%hd131918132050%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e131914131921%_)))
                                            (_%tl131919132052%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e131914131921%_))))
                                        (let* ((_%tag132055%_
                                                _%hd131918132050%_)
                                               (_%body132057%_
                                                _%tl131919132052%_))
                                          (_%K131917132047%_
                                           _%body132057%_
                                           _%tag132055%_)))
                                      (_%E131916131925%_)))))
                             (_%splice-rlen131819%_
                              (lambda (_%e131871%_)
                                (let _%lp131873%_ ((_%e131875%_ _%e131871%_)
                                                   (_%n131876%_ '0))
                                  (let* ((_%e131877131884%_ _%e131875%_)
                                         (_%E131879131888%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131877131884%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131880131897%_
                                          (lambda (_%body131891%_
                                                   _%tag131892%_)
                                            (let ((_%$e131894%_ _%tag131892%_))
                                              (if (eq? 'splice _%$e131894%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx131623%_
                                                     _%where131810%_))
                                                  (if (eq? 'cons _%$e131894%_)
                                                      (_%lp131873%_
                                                       (cdr _%body131891%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n131876%_
                                                                '1)))
                                                      _%n131876%_))))))
                                    (if (pair? _%e131877131884%_)
                                        (let ((_%hd131881131900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131877131884%_)))
                                              (_%tl131882131902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131877131884%_))))
                                          (let* ((_%tag131905%_
                                                  _%hd131881131900%_)
                                                 (_%body131907%_
                                                  _%tl131882131902%_))
                                            (_%K131880131897%_
                                             _%body131907%_
                                             _%tag131905%_)))
                                        (_%E131879131888%_))))))
                             (_%splice-vars131820%_
                              (lambda (_%e131827%_)
                                (let _%recur131829%_ ((_%e131831%_ _%e131827%_)
                                                      (_%vars131832%_ '()))
                                  (let* ((_%e131833131840%_ _%e131831%_)
                                         (_%E131835131844%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131833131840%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131836131859%_
                                          (lambda (_%body131847%_
                                                   _%tag131848%_)
                                            (let ((_%$e131850%_ _%tag131848%_))
                                              (if (eq? 'var _%$e131850%_)
                                                  (cons _%body131847%_
                                                        _%vars131832%_)
                                                  (if (or (eq? 'cons
                                                               _%$e131850%_)
                                                          (eq? 'splice
                                                               _%$e131850%_))
                                                      (_%recur131829%_
                                                       (cdr _%body131847%_)
                                                       (_%recur131829%_
                                                        (car _%body131847%_)
                                                        _%vars131832%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e131850%_)
                      (eq? 'box _%$e131850%_))
                  (_%recur131829%_ _%body131847%_ _%vars131832%_)
                  _%vars131832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e131833131840%_)
                                        (let ((_%hd131837131862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131833131840%_)))
                                              (_%tl131838131864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131833131840%_))))
                                          (let* ((_%tag131867%_
                                                  _%hd131837131862%_)
                                                 (_%body131869%_
                                                  _%tl131838131864%_))
                                            (_%K131836131859%_
                                             _%body131869%_
                                             _%tag131867%_)))
                                        (_%E131835131844%_))))))
                             (_%make-body131821%_
                              (lambda (_%vars131823%_)
                                (cons _%K131814%_
                                      (map (lambda (_%mvar131825%_)
                                             (let ((__tmp133023
                                                    (car _%mvar131825%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp133023
                                                _%vars131823%_
                                                _%BUG131817%_)))
                                           _%mvars131813%_)))))
                      (_%recur131818%_
                       _%hd131812%_
                       '()
                       _%target131811%_
                       _%E131815%_
                       _%make-body131821%_))))
                 (_%parse-clause131632%_
                  (lambda (_%hd131704%_ _%ids131705%_)
                    (let _%recur131707%_ ((_%e131709%_ _%hd131704%_)
                                          (_%vars131710%_ '())
                                          (_%depth131711%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e131709%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e131709%_))
                              (values '(any) _%vars131710%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e131709%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx131623%_
                                     _%hd131704%_))
                                  (if (let ((__tmp133024
                                             (lambda (_%id131716%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e131709%_
                                                  _%id131716%_)))))
                                        (declare (not safe))
                                        (__find __tmp133024 _%ids131705%_))
                                      (values (cons 'id _%e131709%_)
                                              _%vars131710%_)
                                      (if (let ((__tmp133025
                                                 (lambda (_%var131719%_)
                                                   (let ((__tmp133026
                                                          (car _%var131719%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e131709%_
                                                      __tmp133026)))))
                                            (declare (not safe))
                                            (__find __tmp133025
                                                    _%vars131710%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx131623%_
                                             _%e131709%_))
                                          (values (cons 'var _%e131709%_)
                                                  (cons (cons _%e131709%_
                                                              _%depth131711%_)
                                                        _%vars131710%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e131709%_))
                              (let* ((_%e131723131730%_ _%e131709%_)
                                     (_%E131725131734%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e131723131730%_))))
                                     (_%E131724131795%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e131723131730%_))
                                            (let ((_%e131726131738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e131723131730%_))))
                                              (let ((_%hd131727131741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e131726131738%_)))
                                                    (_%tl131728131743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e131726131738%_))))
                                                (let* ((_%hd131746%_
                                                        _%hd131727131741%_)
                                                       (_%rest131748%_
                                                        _%tl131728131743%_)
                                                       (_%make-pair131763%_
                                                        (lambda (_%tag131750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd131751%_
                         _%tl131752%_)
                  (let* ((_%hd-depth131754%_
                          (if (eq? _%tag131750%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth131711%_ '1))
                              _%depth131711%_))
                         (_g133027_
                          (_%recur131707%_
                           _%hd131751%_
                           _%vars131710%_
                           _%hd-depth131754%_)))
                    (begin
                      (let ((_g133028_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g133027_)
                                   (##vector-length _g133027_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g133028_ 2)))
                            (error "Context expects 2 values" _g133028_)))
                      (let ((_%hd131756%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g133027_ 0)))
                            (_%vars131757%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g133027_ 1))))
                        (let ((_g133029_
                               (_%recur131707%_
                                _%tl131752%_
                                _%vars131757%_
                                _%depth131711%_)))
                          (begin
                            (let ((_g133030_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g133029_)
                                         (##vector-length _g133029_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g133030_ 2)))
                                  (error "Context expects 2 values"
                                         _g133030_)))
                            (let ((_%tl131759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g133029_ 0)))
                                  (_%vars131760%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g133029_ 1))))
                              (values (cons _%tag131750%_
                                            (cons _%hd131756%_ _%tl131759%_))
                                      _%vars131760%_)))))))))
               (_%e131764131771%_ _%rest131748%_)
               (_%E131766131775%_
                (lambda ()
                  (_%make-pair131763%_ 'cons _%hd131746%_ _%rest131748%_)))
               (_%E131765131791%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e131764131771%_))
                      (let ((_%e131767131779%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e131764131771%_))))
                        (let ((_%hd131768131782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131767131779%_)))
                              (_%tl131769131784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131767131779%_))))
                          (let* ((_%rest-hd131787%_ _%hd131768131782%_)
                                 (_%rest-tl131789%_ _%tl131769131784%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd131787%_))
                                (_%make-pair131763%_
                                 'splice
                                 _%hd131746%_
                                 _%rest-tl131789%_)
                                (_%make-pair131763%_
                                 'cons
                                 _%hd131746%_
                                 _%rest131748%_)))))
                      (_%E131766131775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131765131791%_))))
                                            (_%E131725131734%_)))))
                                (_%E131724131795%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e131709%_))
                                  (values '(null) _%vars131710%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e131709%_))
                                      (let ((_g133031_
                                             (_%recur131707%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e131709%_)))
                                              _%vars131710%_
                                              _%depth131711%_)))
                                        (begin
                                          (let ((_g133032_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133031_)
                                                       (##vector-length
                                                        _g133031_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133032_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133032_)))
                                          (let ((_%e131801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133031_ 0)))
                                                (_%vars131802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133031_
                                                    1))))
                                            (values (cons 'vector _%e131801%_)
                                                    _%vars131802%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e131709%_))
                                          (let ((_g133033_
                                                 (_%recur131707%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e131709%_)))
                                                  _%vars131710%_
                                                  _%depth131711%_)))
                                            (begin
                                              (let ((_g133034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g133033_)
                                                           (##vector-length
                                                            _g133033_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g133034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g133034_)))
                                              (let ((_%e131805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g133033_
                                                        0)))
                                                    (_%vars131806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g133033_
                                                        1))))
                                                (values (cons 'box _%e131805%_)
                                                        _%vars131806%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e131709%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e131709%_)))
                                                      _%vars131710%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx131623%_
                                                 _%e131709%_))))))))))))
          (let* ((_%e131633131646%_ _%stx131623%_)
                 (_%E131635131650%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e131633131646%_))))
                 (_%E131634131700%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131633131646%_))
                        (let ((_%e131636131654%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131633131646%_))))
                          (let ((_%hd131637131657%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131636131654%_)))
                                (_%tl131638131659%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131636131654%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131638131659%_))
                                (let ((_%e131639131662%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131638131659%_))))
                                  (let ((_%hd131640131665%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131639131662%_)))
                                        (_%tl131641131667%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131639131662%_))))
                                    (let ((_%expr131670%_ _%hd131640131665%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl131641131667%_))
                                          (let ((_%e131642131672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl131641131667%_))))
                                            (let ((_%hd131643131675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e131642131672%_)))
                                                  (_%tl131644131677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e131642131672%_))))
                                              (let* ((_%ids131680%_
                                                      _%hd131643131675%_)
                                                     (_%clauses131682%_
                                                      _%tl131644131677%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids131680%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses131682%_))
                                                        (let* ((_%ids131687%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids131680%_)))
                       (_%clauses131689%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses131682%_)))
                       (_%clause-ids131691%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses131689%_)))
                       (_%E131693%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target131695%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first131697%_
                        (if (null? _%clauses131689%_)
                            _%E131693%_
                            (car _%clause-ids131691%_))))
                  (let ((__tmp133036
                         (let ((__tmp133037
                                (let ((__tmp133039
                                       (let ((__tmp133041
                                              (cons (cons (cons _%E131693%_
                                                                '())
                                                          (cons (let ((__tmp133043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target131695%_ '()))
                              (__tmp133042
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target131695%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp133043 __tmp133042))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp133040
                                              (_%generate-body131629%_
                                               (_%generate-bindings131628%_
                                                _%target131695%_
                                                _%ids131687%_
                                                _%clauses131689%_
                                                _%clause-ids131691%_
                                                _%E131693%_)
                                               (cons _%first131697%_
                                                     (cons _%expr131670%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp133041
                                          __tmp133040)))
                                      (__tmp133038
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx131623%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp133039
                                   __tmp133038))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp133037)))
                        (__tmp133035
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx131623%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp133036 __tmp133035)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx131623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx131623%_
                                                       _%ids131680%_))))))
                                          (_%E131635131650%_)))))
                                (_%E131635131650%_))))
                        (_%E131635131650%_)))))
            (_%E131634131700%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx132348%_)
        (let* ((_%identifier=?132350%_ 'free-identifier=?)
               (_%unwrap-e132352%_ 'syntax-e)
               (_%wrap-e132354%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132348%_
           _%identifier=?132350%_
           _%unwrap-e132352%_
           _%wrap-e132354%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx132356%_ _%identifier=?132357%_)
        (let* ((_%unwrap-e132359%_ 'syntax-e) (_%wrap-e132361%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132356%_
           _%identifier=?132357%_
           _%unwrap-e132359%_
           _%wrap-e132361%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx132363%_ _%identifier=?132364%_ _%unwrap-e132365%_)
        (let ((_%wrap-e132367%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132363%_
           _%identifier=?132364%_
           _%unwrap-e132365%_
           _%wrap-e132367%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g133045_
        (let ((_g133044_ (let () (declare (not safe)) (##length _g133045_))))
          (cond ((let () (declare (not safe)) (##fx= _g133044_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g133045_))
                ((let () (declare (not safe)) (##fx= _g133044_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g133045_))
                ((let () (declare (not safe)) (##fx= _g133044_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g133045_))
                ((let () (declare (not safe)) (##fx= _g133044_ 4))
                 (apply gx#macro-expand-syntax-case__% _g133045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g133045_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx131620%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx131620%_))
            (let ((__tmp133046
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx131620%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp133046 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd131578%_ . _%rest131579%_)
        (let ((_%len131581%_ (length _%hd131578%_)))
          (let _%lp131583%_ ((_%rest131585%_ _%rest131579%_))
            (let* ((_%rest131586131594%_ _%rest131585%_)
                   (_%else131588131602%_ (lambda () '#!void))
                   (_%K131590131608%_
                    (lambda (_%rest131605%_ _%hd131606%_)
                      (if (let ((__tmp133047 (length _%hd131606%_)))
                            (declare (not safe))
                            (##fx= _%len131581%_ __tmp133047))
                          (_%lp131583%_ _%rest131605%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd131606%_))))))
              (if (pair? _%rest131586131594%_)
                  (let ((_%hd131591131611%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest131586131594%_)))
                        (_%tl131592131613%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest131586131594%_))))
                    (let* ((_%hd131616%_ _%hd131591131611%_)
                           (_%rest131618%_ _%tl131592131613%_))
                      (_%K131590131608%_ _%rest131618%_ _%hd131616%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx131533%_ _%n131534%_)
        (let _%lp131536%_ ((_%rest131538%_ _%stx131533%_) (_%r131539%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest131538%_))
              (let* ((_%g131540131547%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest131538%_)))
                     (_%E131542131551%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g131540131547%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K131543131557%_
                      (lambda (_%rest131554%_ _%hd131555%_)
                        (_%lp131536%_
                         _%rest131554%_
                         (cons _%hd131555%_ _%r131539%_)))))
                (if (pair? _%g131540131547%_)
                    (let ((_%hd131544131560%_
                           (let ()
                             (declare (not safe))
                             (##car _%g131540131547%_)))
                          (_%tl131545131562%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g131540131547%_))))
                      (let* ((_%hd131565%_ _%hd131544131560%_)
                             (_%rest131567%_ _%tl131545131562%_))
                        (_%K131543131557%_ _%rest131567%_ _%hd131565%_)))
                    (_%E131542131551%_)))
              (let _%lp131569%_ ((_%n131571%_ _%n131534%_)
                                 (_%l131572%_ _%r131539%_)
                                 (_%r131573%_ _%rest131538%_))
                (if (null? _%l131572%_)
                    (values _%l131572%_ _%r131573%_)
                    (if (fxpositive? _%n131571%_)
                        (_%lp131569%_
                         (let () (declare (not safe)) (##fx- _%n131571%_ '1))
                         (cdr _%l131572%_)
                         (cons (car _%l131572%_) _%r131573%_))
                        (values (reverse _%l131572%_) _%r131573%_))))))))))
