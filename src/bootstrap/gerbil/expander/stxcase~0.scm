(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1713001408)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp131304 (list gx#expander::t))
            (__tmp131303 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp131304
         '(id depth)
         __tmp131303
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args131300%_
        (apply make-instance gx#syntax-pattern::t _%$args131300%_)))
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
      (lambda (_%self129907131284%_ _%stx131286%_)
        (let* ((_%self131288%_ _%self129907131284%_)
               (_%self131290%_ _%self131288%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx131286%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx130750%_)
        (letrec ((_%generate130752%_
                  (lambda (_%e130992%_)
                    (letrec ((_%BUG130994%_
                              (lambda (_%q131159%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx130750%_
                                         _%e130992%_
                                         _%q131159%_))))
                             (_%local-pattern-e130995%_
                              (lambda (_%pat131157%_)
                                (let ((__tmp131305
                                       (##structure-ref
                                        _%pat131157%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp131305))))
                             (_%getvar130996%_
                              (lambda (_%q131154%_ _%vars131155%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q131154%_
                                   _%vars131155%_
                                   _%BUG130994%_))))
                             (_%getarg130997%_
                              (lambda (_%arg131120%_ _%vars131121%_)
                                (let* ((_%arg131122131129%_ _%arg131120%_)
                                       (_%E131124131133%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg131122131129%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K131125131142%_
                                        (lambda (_%e131136%_ _%tag131137%_)
                                          (let ((_%$e131139%_ _%tag131137%_))
                                            (if (eq? 'ref _%$e131139%_)
                                                (_%getvar130996%_
                                                 _%e131136%_
                                                 _%vars131121%_)
                                                (if (eq? 'pattern _%$e131139%_)
                                                    (_%local-pattern-e130995%_
                                                     _%e131136%_)
                                                    (_%BUG130994%_
                                                     _%arg131120%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%arg131122131129%_))
                                      (let ((_%hd131126131145%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg131122131129%_)))
                                            (_%tl131127131147%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg131122131129%_))))
                                        (let* ((_%tag131150%_
                                                _%hd131126131145%_)
                                               (_%e131152%_
                                                _%tl131127131147%_))
                                          (_%K131125131142%_
                                           _%e131152%_
                                           _%tag131150%_)))
                                      (_%E131124131133%_))))))
                      (let _%recur130999%_ ((_%e131001%_ _%e130992%_)
                                            (_%vars131002%_ '()))
                        (let* ((_%e131003131010%_ _%e131001%_)
                               (_%E131005131014%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e131003131010%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K131006131108%_
                                (lambda (_%body131017%_ _%tag131018%_)
                                  (let ((_%$e131020%_ _%tag131018%_))
                                    (if (eq? 'datum _%$e131020%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body131017%_))
                                        (if (eq? 'term _%$e131020%_)
                                            (let ((_%id131023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body131017%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id131023%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks131026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id131023%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks131026%_)
                                                        (let ((__tmp131306
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body131017%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp131306))
                (let ((__tmp131308
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body131017%_)))
                      (__tmp131307
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body131017%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp131308
                   __tmp131307
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id131023%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body131017%_))
                                                      (_%BUG130994%_
                                                       _%e131001%_))))
                                            (if (eq? 'pattern _%$e131020%_)
                                                (_%local-pattern-e130995%_
                                                 _%body131017%_)
                                                (if (eq? 'ref _%$e131020%_)
                                                    (_%getvar130996%_
                                                     _%body131017%_
                                                     _%vars131002%_)
                                                    (if (eq? 'cons
                                                             _%$e131020%_)
                                                        (let ((__tmp131310
                                                               (_%recur130999%_
                                                                (car _%body131017%_)
                                                                _%vars131002%_))
                                                              (__tmp131309
                                                               (_%recur130999%_
                                                                (cdr _%body131017%_)
                                                                _%vars131002%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp131310
                                                           __tmp131309))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e131020%_)
                    (let ((__tmp131311
                           (_%recur130999%_ _%body131017%_ _%vars131002%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp131311))
                    (if (eq? 'box _%$e131020%_)
                        (let ((__tmp131312
                               (_%recur130999%_
                                _%body131017%_
                                _%vars131002%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp131312))
                        (if (eq? 'splice _%$e131020%_)
                            (let* ((_%body131029131040%_ _%body131017%_)
                                   (_%E131031131044%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body131029131040%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K131032131082%_
                                    (lambda (_%args131047%_
                                             _%iv131048%_
                                             _%hd131049%_
                                             _%depth131050%_)
                                      (let* ((_%targets131056%_
                                              (map (lambda (_%g131051131053%_)
                                                     (_%getarg130997%_
                                                      _%g131051131053%_
                                                      _%vars131002%_))
                                                   _%args131047%_))
                                             (_%fold-in131058%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args131047%_)))
                                             (_%fold-out131060%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args131062%_
                                              (let ((__tmp131313
                                                     (cons _%fold-out131060%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp131313
                                                 _%fold-in131058%_)))
                                             (_%lambda-body131079%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth131050%_ '1))
                                                  (let ((_%r-args131070%_
                                                         (map (lambda (_%arg131064%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg131064%_)))
                      _%args131047%_))
                (_%r-vars131071%_
                 (let ((__tmp131314
                        (lambda (_%arg131066%_ _%var131067%_ _%r131068%_)
                          (cons (cons (cdr _%arg131066%_) _%var131067%_)
                                _%r131068%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp131314
                    _%vars131002%_
                    _%args131047%_
                    _%fold-in131058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur130999%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth131050%_ '1))
                         (cons _%hd131049%_
                               (cons (cons 'var _%fold-out131060%_)
                                     _%r-args131070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars131071%_))
                                                  (let* ((_%hd-vars131077%_
                                                          (let ((__tmp131315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg131073%_ _%var131074%_ _%r131075%_)
                           (cons (cons (cdr _%arg131073%_) _%var131074%_)
                                 _%r131075%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp131315
                     _%vars131002%_
                     _%args131047%_
                     _%fold-in131058%_)))
                 (__tmp131316
                  (_%recur130999%_ _%hd131049%_ _%hd-vars131077%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp131316
                                                     _%fold-out131060%_)))))
                                        (let ((__tmp131320
                                               (if (let ((__tmp131321
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets131056%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp131321 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets131056%_))
                                                   '#!void))
                                              (__tmp131317
                                               (let ((__tmp131319
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args131062%_
                                                         _%lambda-body131079%_)))
                                                     (__tmp131318
                                                      (_%recur130999%_
                                                       _%iv131048%_
                                                       _%vars131002%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp131319
                                                  __tmp131318
                                                  _%targets131056%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp131320
                                           __tmp131317))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%body131029131040%_))
                                  (let ((_%hd131033131085%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body131029131040%_)))
                                        (_%tl131034131087%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body131029131040%_))))
                                    (let ((_%depth131090%_ _%hd131033131085%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl131034131087%_))
                                          (let ((_%hd131035131092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl131034131087%_)))
                                                (_%tl131036131094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl131034131087%_))))
                                            (let ((_%hd131097%_
                                                   _%hd131035131092%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl131036131094%_))
                                                  (let ((_%hd131037131099%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl131036131094%_)))
                                                        (_%tl131038131101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl131036131094%_))))
                                                    (let* ((_%iv131104%_
                                                            _%hd131037131099%_)
                                                           (_%args131106%_
                                                            _%tl131038131101%_))
                                                      (_%K131032131082%_
                                                       _%args131106%_
                                                       _%iv131104%_
                                                       _%hd131097%_
                                                       _%depth131090%_)))
                                                  (_%E131031131044%_))))
                                          (_%E131031131044%_))))
                                  (_%E131031131044%_)))
                            (if (eq? 'var _%$e131020%_)
                                _%body131017%_
                                (_%BUG130994%_ _%e131001%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%e131003131010%_))
                              (let ((_%hd131007131111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e131003131010%_)))
                                    (_%tl131008131113%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e131003131010%_))))
                                (let* ((_%tag131116%_ _%hd131007131111%_)
                                       (_%body131118%_ _%tl131008131113%_))
                                  (_%K131006131108%_
                                   _%body131118%_
                                   _%tag131116%_)))
                              (_%E131005131014%_)))))))
                 (_%parse130753%_
                  (lambda (_%e130794%_)
                    (letrec ((_%make-cons130796%_
                              (lambda (_%hd130984%_ _%tl130985%_)
                                (let ((_g131322_ _%hd130984%_)
                                      (_g131324_ _%tl130985%_))
                                  (begin
                                    (let ((_g131323_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131322_)
                                                 (##vector-length _g131322_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131323_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131323_)))
                                    (let ((_g131325_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131324_)
                                                 (##vector-length _g131324_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131325_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131325_)))
                                    (let ((_%hd-e130987%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131322_ 0)))
                                          (_%hd-vars130988%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131322_ 1))))
                                      (let ((_%tl-e130989%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131324_ 0)))
                                            (_%tl-vars130990%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131324_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e130987%_
                                                            _%tl-e130989%_))
                                                (append _%hd-vars130988%_
                                                        _%tl-vars130990%_))))))))
                             (_%make-splice130797%_
                              (lambda (_%where130920%_
                                       _%depth130921%_
                                       _%hd130922%_
                                       _%tl130923%_)
                                (let ((_g131326_ _%hd130922%_)
                                      (_g131328_ _%tl130923%_))
                                  (begin
                                    (let ((_g131327_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131326_)
                                                 (##vector-length _g131326_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131327_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131327_)))
                                    (let ((_g131329_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131328_)
                                                 (##vector-length _g131328_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131329_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131329_)))
                                    (let ((_%hd-e130925%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131326_ 0)))
                                          (_%hd-vars130926%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131326_ 1))))
                                      (let ((_%tl-e130927%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131328_ 0)))
                                            (_%tl-vars130928%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g131328_ 1))))
                                        (let _%lp130930%_ ((_%rest130932%_
                                                            _%hd-vars130926%_)
                                                           (_%targets130933%_
                                                            '())
                                                           (_%vars130934%_
                                                            _%tl-vars130928%_))
                                          (let* ((_%rest130935130945%_
                                                  _%rest130932%_)
                                                 (_%else130937130953%_
                                                  (lambda ()
                                                    (if (null? _%targets130933%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx130750%_
                                                           _%where130920%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth130921%_
                                    (cons _%hd-e130925%_
                                          (cons _%tl-e130927%_
                                                _%targets130933%_))))
                        _%vars130934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K130939130965%_
                                                  (lambda (_%rest130956%_
                                                           _%hd-pat130957%_
                                                           _%hd-depth*130958%_)
                                                    (let ((_%hd-depth130960%_
                                                           (fx- _%hd-depth*130958%_
                                                                _%depth130921%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth130960%_))
                                                          (_%lp130930%_
                                                           _%rest130956%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat130957%_)
                         _%targets130933%_)
                   (cons (cons _%hd-depth130960%_ _%hd-pat130957%_)
                         _%vars130934%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth130960%_))
                      (_%lp130930%_
                       _%rest130956%_
                       (cons (cons 'pattern _%hd-pat130957%_)
                             _%targets130933%_)
                       _%vars130934%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx130750%_
                         _%where130920%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%rest130935130945%_))
                                                (let ((_%hd130940130968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest130935130945%_)))
                                                      (_%tl130941130970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest130935130945%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd130940130968%_))
                                                      (let ((_%hd130942130973%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd130940130968%_)))
                    (_%tl130943130975%_
                     (let () (declare (not safe)) (##cdr _%hd130940130968%_))))
                (let* ((_%hd-depth*130978%_ _%hd130942130973%_)
                       (_%hd-pat130980%_ _%tl130943130975%_)
                       (_%rest130982%_ _%tl130941130970%_))
                  (_%K130939130965%_
                   _%rest130982%_
                   _%hd-pat130980%_
                   _%hd-depth*130978%_)))
              (_%else130937130953%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else130937130953%_))))))))))
                             (_%recur130798%_
                              (lambda (_%e130803%_ _%is-e?130804%_)
                                (if (_%is-e?130804%_ _%e130803%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx130750%_))
                                    (if (gx#syntax-local-pattern? _%e130803%_)
                                        (let* ((_%pat130808%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e130803%_)))
                                               (_%depth130810%_
                                                (##structure-ref
                                                 _%pat130808%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth130810%_)
                                              (values (cons 'ref _%pat130808%_)
                                                      (cons (cons _%depth130810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat130808%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat130808%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e130803%_))
                                            (values (cons 'term _%e130803%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e130803%_))
                                                (let* ((_%e130814130821%_
                                                        _%e130803%_)
                                                       (_%E130816130825%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e130814130821%_))))
                                                       (_%E130815130907%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e130814130821%_))
                      (let ((_%e130817130829%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130814130821%_))))
                        (let ((_%hd130818130832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130817130829%_)))
                              (_%tl130819130834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130817130829%_))))
                          (let* ((_%hd130837%_ _%hd130818130832%_)
                                 (_%rest130839%_ _%tl130819130834%_))
                            (if (_%is-e?130804%_ _%hd130837%_)
                                (let* ((_%e130840130847%_ _%rest130839%_)
                                       (_%E130842130851%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx130750%_
                                             _%e130803%_))))
                                       (_%E130841130865%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e130840130847%_))
                                              (let ((_%e130843130855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e130840130847%_))))
                                                (let ((_%hd130844130858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130843130855%_)))
                                                      (_%tl130845130860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130843130855%_))))
                                                  (let ((_%rest130863%_
                                                         _%hd130844130858%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130845130860%_))
                                                        (_%recur130798%_
                                                         _%rest130863%_
                                                         false)
                                                        (_%E130842130851%_)))))
                                              (_%E130842130851%_)))))
                                  (_%E130841130865%_))
                                (let _%lp130869%_ ((_%rest130871%_
                                                    _%rest130839%_)
                                                   (_%depth130872%_ '0))
                                  (let* ((_%e130873130880%_ _%rest130871%_)
                                         (_%E130875130884%_
                                          (lambda ()
                                            (if (fxpositive? _%depth130872%_)
                                                (_%make-splice130797%_
                                                 _%e130803%_
                                                 _%depth130872%_
                                                 (_%recur130798%_
                                                  _%hd130837%_
                                                  _%is-e?130804%_)
                                                 (_%recur130798%_
                                                  _%rest130871%_
                                                  _%is-e?130804%_))
                                                (_%make-cons130796%_
                                                 (_%recur130798%_
                                                  _%hd130837%_
                                                  _%is-e?130804%_)
                                                 (_%recur130798%_
                                                  _%rest130871%_
                                                  _%is-e?130804%_)))))
                                         (_%E130874130903%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e130873130880%_))
                                                (let ((_%e130876130888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e130873130880%_))))
                                                  (let ((_%hd130877130891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e130876130888%_)))
                                                        (_%tl130878130893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e130876130888%_))))
                                                    (let* ((_%rest-hd130896%_
                                                            _%hd130877130891%_)
                                                           (_%rest-tl130898%_
                                                            _%tl130878130893%_))
                                                      (if (_%is-e?130804%_
                                                           _%rest-hd130896%_)
                                                          (_%lp130869%_
                                                           _%rest-tl130898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth130872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth130872%_)
                      (_%make-splice130797%_
                       _%e130803%_
                       _%depth130872%_
                       (_%recur130798%_ _%hd130837%_ _%is-e?130804%_)
                       (_%recur130798%_ _%rest130871%_ _%is-e?130804%_))
                      (_%make-cons130796%_
                       (_%recur130798%_ _%hd130837%_ _%is-e?130804%_)
                       (_%recur130798%_ _%rest130871%_ _%is-e?130804%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130875130884%_)))))
                                    (_%E130874130903%_)))))))
                      (_%E130816130825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130815130907%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e130803%_))
                                                    (let ((_g131330_
                                                           (_%recur130798%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e130803%_)))
                    _%is-e?130804%_)))
              (begin
                (let ((_g131331_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g131330_)
                             (##vector-length _g131330_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g131331_ 2)))
                      (error "Context expects 2 values" _g131331_)))
                (let ((_%e130912%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131330_ 0)))
                      (_%vars130913%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g131330_ 1))))
                  (values (cons 'vector _%e130912%_) _%vars130913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e130803%_))
                                                        (let ((_g131332_
                                                               (_%recur130798%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e130803%_)))
                        _%is-e?130804%_)))
                  (begin
                    (let ((_g131333_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g131332_)
                                 (##vector-length _g131332_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g131333_ 2)))
                          (error "Context expects 2 values" _g131333_)))
                    (let ((_%e130916%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131332_ 0)))
                          (_%vars130917%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g131332_ 1))))
                      (values (cons 'box _%e130916%_) _%vars130917%_))))
                (values (cons 'datum _%e130803%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g131334_
                             (_%recur130798%_ _%e130794%_ gx#ellipsis?)))
                        (begin
                          (let ((_g131335_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g131334_)
                                       (##vector-length _g131334_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g131335_ 2)))
                                (error "Context expects 2 values" _g131335_)))
                          (let ((_%tree130800%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131334_ 0)))
                                (_%vars130801%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g131334_ 1))))
                            (if (null? _%vars130801%_)
                                _%tree130800%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx130750%_
                                   _%vars130801%_))))))))))
          (let* ((_%e130754130764%_ _%stx130750%_)
                 (_%E130756130768%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx130750%_))))
                 (_%E130755130790%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130754130764%_))
                        (let ((_%e130757130772%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130754130764%_))))
                          (let ((_%hd130758130775%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130757130772%_)))
                                (_%tl130759130777%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130757130772%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130759130777%_))
                                (let ((_%e130760130780%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130759130777%_))))
                                  (let ((_%hd130761130783%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130760130780%_)))
                                        (_%tl130762130785%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130760130780%_))))
                                    (let ((_%form130788%_ _%hd130761130783%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl130762130785%_))
                                          (let ((__tmp131337
                                                 (_%generate130752%_
                                                  (_%parse130753%_
                                                   _%form130788%_)))
                                                (__tmp131336
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx130750%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp131337
                                             __tmp131336))
                                          (_%E130756130768%_)))))
                                (_%E130756130768%_))))
                        (_%E130756130768%_)))))
            (_%E130755130790%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx129999%_
               _%identifier=?130000%_
               _%unwrap-e130001%_
               _%wrap-e130002%_)
        (letrec ((_%generate-bindings130004%_
                  (lambda (_%target130614%_
                           _%ids130615%_
                           _%clauses130616%_
                           _%clause-ids130617%_
                           _%E130618%_)
                    (letrec ((_%generate1130620%_
                              (lambda (_%clause130717%_
                                       _%clause-id130718%_
                                       _%E130719%_)
                                (cons (cons _%clause-id130718%_ '())
                                      (cons (let ((__tmp131339
                                                   (cons _%target130614%_ '()))
                                                  (__tmp131338
                                                   (_%generate-clause130006%_
                                                    _%target130614%_
                                                    _%ids130615%_
                                                    _%clause130717%_
                                                    _%E130719%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp131339
                                               __tmp131338))
                                            '())))))
                      (let _%lp130622%_ ((_%rest130624%_ _%clauses130616%_)
                                         (_%rest-ids130625%_
                                          _%clause-ids130617%_)
                                         (_%bindings130626%_ '()))
                        (let* ((_%rest130627130635%_ _%rest130624%_)
                               (_%else130629130643%_
                                (lambda () _%bindings130626%_))
                               (_%K130631130705%_
                                (lambda (_%rest130646%_ _%clause130647%_)
                                  (let* ((_%rest-ids130648130655%_
                                          _%rest-ids130625%_)
                                         (_%E130650130659%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids130648130655%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K130651130693%_
                                          (lambda (_%rest-ids130662%_
                                                   _%clause-id130663%_)
                                            (let* ((_%rest-ids130664130672%_
                                                    _%rest-ids130662%_)
                                                   (_%else130666130680%_
                                                    (lambda ()
                                                      (cons (_%generate1130620%_
                                                             _%clause130647%_
                                                             _%clause-id130663%_
                                                             _%E130618%_)
                                                            _%bindings130626%_)))
                                                   (_%K130668130685%_
                                                    (lambda (_%next-clause-id130683%_)
                                                      (_%lp130622%_
                                                       _%rest130646%_
                                                       _%rest-ids130662%_
                                                       (cons (_%generate1130620%_
                                                              _%clause130647%_
                                                              _%clause-id130663%_
                                                              _%next-clause-id130683%_)
                                                             _%bindings130626%_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%rest-ids130664130672%_))
                                                  (let* ((_%hd130669130688%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids130664130672%_)))
                                                         (_%next-clause-id130691%_
                                                          _%hd130669130688%_))
                                                    (_%K130668130685%_
                                                     _%next-clause-id130691%_))
                                                  (_%else130666130680%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%rest-ids130648130655%_))
                                        (let ((_%hd130652130696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids130648130655%_)))
                                              (_%tl130653130698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids130648130655%_))))
                                          (let* ((_%clause-id130701%_
                                                  _%hd130652130696%_)
                                                 (_%rest-ids130703%_
                                                  _%tl130653130698%_))
                                            (_%K130651130693%_
                                             _%rest-ids130703%_
                                             _%clause-id130701%_)))
                                        (_%E130650130659%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest130627130635%_))
                              (let ((_%hd130632130708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130627130635%_)))
                                    (_%tl130633130710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130627130635%_))))
                                (let* ((_%clause130713%_ _%hd130632130708%_)
                                       (_%rest130715%_ _%tl130633130710%_))
                                  (_%K130631130705%_
                                   _%rest130715%_
                                   _%clause130713%_)))
                              (_%else130629130643%_)))))))
                 (_%generate-body130005%_
                  (lambda (_%bindings130574%_ _%body130575%_)
                    (let _%recur130577%_ ((_%rest130579%_ _%bindings130574%_))
                      (let* ((_%rest130580130588%_ _%rest130579%_)
                             (_%else130582130596%_ (lambda () _%body130575%_))
                             (_%K130584130602%_
                              (lambda (_%rest130599%_ _%hd130600%_)
                                (let ((__tmp131341 (cons _%hd130600%_ '()))
                                      (__tmp131340
                                       (_%recur130577%_ _%rest130599%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp131341
                                   __tmp131340)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest130580130588%_))
                            (let ((_%hd130585130605%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest130580130588%_)))
                                  (_%tl130586130607%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest130580130588%_))))
                              (let* ((_%hd130610%_ _%hd130585130605%_)
                                     (_%rest130612%_ _%tl130586130607%_))
                                (_%K130584130602%_
                                 _%rest130612%_
                                 _%hd130610%_)))
                            (_%else130582130596%_))))))
                 (_%generate-clause130006%_
                  (lambda (_%target130437%_
                           _%ids130438%_
                           _%clause130439%_
                           _%E130440%_)
                    (letrec ((_%generate1130442%_
                              (lambda (_%hd130529%_
                                       _%fender130530%_
                                       _%body130531%_)
                                (let ((_g131342_
                                       (_%parse-clause130008%_
                                        _%hd130529%_
                                        _%ids130438%_)))
                                  (begin
                                    (let ((_g131343_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g131342_)
                                                 (##vector-length _g131342_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g131343_ 2)))
                                          (error "Context expects 2 values"
                                                 _g131343_)))
                                    (let ((_%e130533%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131342_ 0)))
                                          (_%mvars130534%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g131342_ 1))))
                                      (let* ((_%pvars130536%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars130534%_))))
                                             (_%E130538%_
                                              (cons _%E130440%_
                                                    (cons _%target130437%_
                                                          '())))
                                             (_%K130571%_
                                              (let ((__tmp131344
                                                     (let ((__tmp131346
                                                            (map (lambda (_%mvar130540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar130541%_)
                           (let* ((_%mvar130542130549%_ _%mvar130540%_)
                                  (_%E130544130553%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar130542130549%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K130545130559%_
                                   (lambda (_%depth130556%_ _%id130557%_)
                                     (cons _%id130557%_
                                           (cons (let ((__tmp131348
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id130557%_)))
                                                       (__tmp131347
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar130541%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp131348
                                                    __tmp131347
                                                    _%depth130556%_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%mvar130542130549%_))
                                 (let ((_%hd130546130562%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar130542130549%_)))
                                       (_%tl130547130564%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar130542130549%_))))
                                   (let* ((_%id130567%_ _%hd130546130562%_)
                                          (_%depth130569%_ _%tl130547130564%_))
                                     (_%K130545130559%_
                                      _%depth130569%_
                                      _%id130567%_)))
                                 (_%E130544130553%_))))
                         _%mvars130534%_
                         _%pvars130536%_))
                   (__tmp131345
                    (if (eq? _%fender130530%_ '#t)
                        _%body130531%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender130530%_
                           _%body130531%_
                           _%E130538%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp131346 __tmp131345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars130536%_
                                                 __tmp131344))))
                                        (_%generate-match130007%_
                                         _%hd130529%_
                                         _%target130437%_
                                         _%e130533%_
                                         _%mvars130534%_
                                         _%K130571%_
                                         _%E130538%_))))))))
                      (let* ((_%e130443130463%_ _%clause130439%_)
                             (_%E130452130467%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e130443130463%_))))
                             (_%E130445130501%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130443130463%_))
                                    (let ((_%e130453130471%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130443130463%_))))
                                      (let ((_%hd130454130474%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130453130471%_)))
                                            (_%tl130455130476%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130453130471%_))))
                                        (let ((_%hd130479%_
                                               _%hd130454130474%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130455130476%_))
                                              (let ((_%e130456130481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130455130476%_))))
                                                (let ((_%hd130457130484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130456130481%_)))
                                                      (_%tl130458130486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130456130481%_))))
                                                  (let ((_%fender130489%_
                                                         _%hd130457130484%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl130458130486%_))
                                                        (let ((_%e130459130491%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl130458130486%_))))
                  (let ((_%hd130460130494%_
                         (let ()
                           (declare (not safe))
                           (##car _%e130459130491%_)))
                        (_%tl130461130496%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e130459130491%_))))
                    (let ((_%body130499%_ _%hd130460130494%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl130461130496%_))
                          (_%generate1130442%_
                           _%hd130479%_
                           _%fender130489%_
                           _%body130499%_)
                          (_%E130452130467%_)))))
                (_%E130452130467%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130452130467%_)))))
                                    (_%E130452130467%_))))
                             (_%E130444130525%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e130443130463%_))
                                    (let ((_%e130446130505%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e130443130463%_))))
                                      (let ((_%hd130447130508%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130446130505%_)))
                                            (_%tl130448130510%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130446130505%_))))
                                        (let ((_%hd130513%_
                                               _%hd130447130508%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl130448130510%_))
                                              (let ((_%e130449130515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl130448130510%_))))
                                                (let ((_%hd130450130518%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e130449130515%_)))
                                                      (_%tl130451130520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e130449130515%_))))
                                                  (let ((_%body130523%_
                                                         _%hd130450130518%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl130451130520%_))
                                                        (_%generate1130442%_
                                                         _%hd130513%_
                                                         '#t
                                                         _%body130523%_)
                                                        (_%E130445130501%_)))))
                                              (_%E130445130501%_)))))
                                    (_%E130445130501%_)))))
                        (_%E130444130525%_)))))
                 (_%generate-match130007%_
                  (lambda (_%where130186%_
                           _%target130187%_
                           _%hd130188%_
                           _%mvars130189%_
                           _%K130190%_
                           _%E130191%_)
                    (letrec ((_%BUG130193%_
                              (lambda (_%q130435%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx129999%_
                                         _%hd130188%_
                                         _%q130435%_))))
                             (_%recur130194%_
                              (lambda (_%e130285%_
                                       _%vars130286%_
                                       _%target130287%_
                                       _%E130288%_
                                       _%k130289%_)
                                (let* ((_%e130290130297%_ _%e130285%_)
                                       (_%E130292130301%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e130290130297%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K130293130423%_
                                        (lambda (_%body130304%_ _%tag130305%_)
                                          (let ((_%$e130307%_ _%tag130305%_))
                                            (if (eq? 'any _%$e130307%_)
                                                (_%k130289%_ _%vars130286%_)
                                                (if (eq? 'id _%$e130307%_)
                                                    (let ((__tmp131353
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target130287%_)))
                                                          (__tmp131349
                                                           (let ((__tmp131351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131352
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e130002%_
                                    _%body130304%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?130000%_
                             __tmp131352
                             _%target130287%_)))
                         (__tmp131350 (_%k130289%_ _%vars130286%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp131351 __tmp131350 _%E130288%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp131353 __tmp131349 _%E130288%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e130307%_)
                                                        (_%k130289%_
                                                         (cons (cons _%body130304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target130287%_)
                       _%vars130286%_))
                (if (eq? 'cons _%$e130307%_)
                    (let ((_%$e130310%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd130311%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl130312%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp131359
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target130287%_)))
                            (__tmp131354
                             (let ((__tmp131358
                                    (cons (cons (cons _%$e130310%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e130001%_
                                                         _%target130287%_))
                                                      '()))
                                          '()))
                                   (__tmp131355
                                    (let ((__tmp131357
                                           (cons (cons (cons _%$hd130311%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e130310%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl130312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e130310%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp131356
                                           (let* ((_%body130313130320%_
                                                   _%body130304%_)
                                                  (_%E130315130324%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body130313130320%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K130316130332%_
                                                   (lambda (_%tl130327%_
                                                            _%hd130328%_)
                                                     (_%recur130194%_
                                                      _%hd130328%_
                                                      _%vars130286%_
                                                      _%$hd130311%_
                                                      _%E130288%_
                                                      (lambda (_%vars130330%_)
                                                        (_%recur130194%_
                                                         _%tl130327%_
                                                         _%vars130330%_
                                                         _%$tl130312%_
                                                         _%E130288%_
                                                         _%k130289%_))))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _%body130313130320%_))
                                                 (let ((_%hd130317130335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body130313130320%_)))
                                                       (_%tl130318130337%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body130313130320%_))))
                                                   (let* ((_%hd130340%_
                                                           _%hd130317130335%_)
                                                          (_%tl130342%_
                                                           _%tl130318130337%_))
                                                     (_%K130316130332%_
                                                      _%tl130342%_
                                                      _%hd130340%_)))
                                                 (_%E130315130324%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp131357
                                       __tmp131356))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp131358
                                __tmp131355))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp131359
                         __tmp131354
                         _%E130288%_)))
                    (if (eq? 'splice _%$e130307%_)
                        (let* ((_%body130343130350%_ _%body130304%_)
                               (_%E130345130354%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body130343130350%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K130346130405%_
                                (lambda (_%tl130357%_ _%hd130358%_)
                                  (let* ((_%rlen130360%_
                                          (_%splice-rlen130195%_ _%tl130357%_))
                                         (_%$target130362%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd130364%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl130366%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp130368%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e130370%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd130372%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl130374%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars130376%_
                                          (_%splice-vars130196%_ _%hd130358%_))
                                         (_%lvars130378%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130376%_)))
                                         (_%tlvars130380%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars130376%_)))
                                         (_%linit130384%_
                                          (map (lambda (_%var130382%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars130378%_)))
                                    (letrec ((_%make-loop130387%_
                                              (lambda (_%vars130391%_)
                                                (let ((__tmp131361
                                                       (cons (cons (cons _%$lp130368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp131374
                                        (cons _%$hd130364%_ _%lvars130378%_))
                                       (__tmp131362
                                        (let ((__tmp131373
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd130364%_)))
                                              (__tmp131367
                                               (let ((__tmp131372
                                                      (cons (cons (cons _%$lp-e130370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e130001%_
                                   _%$hd130364%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131368
                                                      (let ((__tmp131371
                                                             (cons (cons (cons _%$lp-hd130372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e130370%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl130374%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e130370%_))
                                             '()))
                                 '())))
                    (__tmp131369
                     (_%recur130194%_
                      _%hd130358%_
                      '()
                      _%$lp-hd130372%_
                      _%E130288%_
                      (lambda (_%hdvars130393%_)
                        (cons _%$lp130368%_
                              (cons _%$lp-tl130374%_
                                    (map (lambda (_%svar130395%_
                                                  _%lvar130396%_)
                                           (let ((__tmp131370
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar130395%_
                                                     _%hdvars130393%_
                                                     _%BUG130193%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp131370
                                              _%lvar130396%_)))
                                         _%svars130376%_
                                         _%lvars130378%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp131371 __tmp131369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131372
                                                  __tmp131368)))
                                              (__tmp131363
                                               (let ((__tmp131366
                                                      (map (lambda (_%lvar130398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar130399%_)
                     (cons (cons _%tlvar130399%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar130398%_))
                                 '())))
                   _%lvars130378%_
                   _%tlvars130380%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131364
                                                      (_%k130289%_
                                                       (let ((__tmp131365
                                                              (lambda (_%svar130401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar130402%_
                               _%r130403%_)
                        (cons (cons _%svar130401%_ _%tlvar130402%_)
                              _%r130403%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp131365
                  _%vars130391%_
                  _%svars130376%_
                  _%tlvars130380%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp131366
                                                  __tmp131364))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131373
                                           __tmp131367
                                           __tmp131363))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp131374
                                    __tmp131362))
                                 '()))
                     '()))
              (__tmp131360
               (cons _%$lp130368%_ (cons _%$target130362%_ _%linit130384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp131361
                                                   __tmp131360)))))
                                      (let ((_%body130389%_
                                             (let ((__tmp131376
                                                    (cons (cons (cons _%$target130362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl130366%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target130287%_
                                 _%rlen130360%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131375
                                                    (_%recur130194%_
                                                     _%tl130357%_
                                                     _%vars130286%_
                                                     _%$tl130366%_
                                                     _%E130288%_
                                                     _%make-loop130387%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131376
                                                __tmp131375))))
                                        (let ((__tmp131380
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target130287%_)))
                                              (__tmp131377
                                               (if (zero? _%rlen130360%_)
                                                   _%body130389%_
                                                   (let ((__tmp131378
                                                          (let ((__tmp131379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target130287%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp131379 _%rlen130360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp131378
                                                      _%body130389%_
                                                      _%E130288%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp131380
                                           __tmp131377
                                           _%E130288%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%body130343130350%_))
                              (let ((_%hd130347130408%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body130343130350%_)))
                                    (_%tl130348130410%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body130343130350%_))))
                                (let* ((_%hd130413%_ _%hd130347130408%_)
                                       (_%tl130415%_ _%tl130348130410%_))
                                  (_%K130346130405%_
                                   _%tl130415%_
                                   _%hd130413%_)))
                              (_%E130345130354%_)))
                        (if (eq? 'null _%$e130307%_)
                            (let ((__tmp131382
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target130287%_)))
                                  (__tmp131381 (_%k130289%_ _%vars130286%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp131382
                               __tmp131381
                               _%E130288%_))
                            (if (eq? 'vector _%$e130307%_)
                                (let ((_%$e130417%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp131387
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target130287%_)))
                                        (__tmp131383
                                         (let ((__tmp131385
                                                (cons (cons (cons _%$e130417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp131386
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e130001%_
                                    _%target130287%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp131386))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp131384
                                                (_%recur130194%_
                                                 _%body130304%_
                                                 _%vars130286%_
                                                 _%$e130417%_
                                                 _%E130288%_
                                                 _%k130289%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp131385
                                            __tmp131384))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp131387
                                     __tmp131383
                                     _%E130288%_)))
                                (if (eq? 'box _%$e130307%_)
                                    (let ((_%$e130419%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp131392
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target130287%_)))
                                            (__tmp131388
                                             (let ((__tmp131390
                                                    (cons (cons (cons _%$e130419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp131391
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e130001%_
                                        _%target130287%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp131391))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131389
                                                    (_%recur130194%_
                                                     _%body130304%_
                                                     _%vars130286%_
                                                     _%$e130419%_
                                                     _%E130288%_
                                                     _%k130289%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp131390
                                                __tmp131389))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp131392
                                         __tmp131388
                                         _%E130288%_)))
                                    (if (eq? 'datum _%$e130307%_)
                                        (let ((_%$e130421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp131398
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target130287%_)))
                                                (__tmp131393
                                                 (let ((__tmp131397
                                                        (cons (cons (cons _%$e130421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target130287%_))
                                  '()))
                      '()))
               (__tmp131394
                (let ((__tmp131396
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e130421%_ _%body130304%_)))
                      (__tmp131395 (_%k130289%_ _%vars130286%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp131396 __tmp131395 _%E130288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp131397
                                                    __tmp131394))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp131398
                                             __tmp131393
                                             _%E130288%_)))
                                        (_%BUG130193%_
                                         _%e130285%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%e130290130297%_))
                                      (let ((_%hd130294130426%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e130290130297%_)))
                                            (_%tl130295130428%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e130290130297%_))))
                                        (let* ((_%tag130431%_
                                                _%hd130294130426%_)
                                               (_%body130433%_
                                                _%tl130295130428%_))
                                          (_%K130293130423%_
                                           _%body130433%_
                                           _%tag130431%_)))
                                      (_%E130292130301%_)))))
                             (_%splice-rlen130195%_
                              (lambda (_%e130247%_)
                                (let _%lp130249%_ ((_%e130251%_ _%e130247%_)
                                                   (_%n130252%_ '0))
                                  (let* ((_%e130253130260%_ _%e130251%_)
                                         (_%E130255130264%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130253130260%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130256130273%_
                                          (lambda (_%body130267%_
                                                   _%tag130268%_)
                                            (let ((_%$e130270%_ _%tag130268%_))
                                              (if (eq? 'splice _%$e130270%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx129999%_
                                                     _%where130186%_))
                                                  (if (eq? 'cons _%$e130270%_)
                                                      (_%lp130249%_
                                                       (cdr _%body130267%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n130252%_
                                                                '1)))
                                                      _%n130252%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130253130260%_))
                                        (let ((_%hd130257130276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130253130260%_)))
                                              (_%tl130258130278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130253130260%_))))
                                          (let* ((_%tag130281%_
                                                  _%hd130257130276%_)
                                                 (_%body130283%_
                                                  _%tl130258130278%_))
                                            (_%K130256130273%_
                                             _%body130283%_
                                             _%tag130281%_)))
                                        (_%E130255130264%_))))))
                             (_%splice-vars130196%_
                              (lambda (_%e130203%_)
                                (let _%recur130205%_ ((_%e130207%_ _%e130203%_)
                                                      (_%vars130208%_ '()))
                                  (let* ((_%e130209130216%_ _%e130207%_)
                                         (_%E130211130220%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e130209130216%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K130212130235%_
                                          (lambda (_%body130223%_
                                                   _%tag130224%_)
                                            (let ((_%$e130226%_ _%tag130224%_))
                                              (if (eq? 'var _%$e130226%_)
                                                  (cons _%body130223%_
                                                        _%vars130208%_)
                                                  (if (or (eq? 'cons
                                                               _%$e130226%_)
                                                          (eq? 'splice
                                                               _%$e130226%_))
                                                      (_%recur130205%_
                                                       (cdr _%body130223%_)
                                                       (_%recur130205%_
                                                        (car _%body130223%_)
                                                        _%vars130208%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e130226%_)
                      (eq? 'box _%$e130226%_))
                  (_%recur130205%_ _%body130223%_ _%vars130208%_)
                  _%vars130208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%e130209130216%_))
                                        (let ((_%hd130213130238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e130209130216%_)))
                                              (_%tl130214130240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e130209130216%_))))
                                          (let* ((_%tag130243%_
                                                  _%hd130213130238%_)
                                                 (_%body130245%_
                                                  _%tl130214130240%_))
                                            (_%K130212130235%_
                                             _%body130245%_
                                             _%tag130243%_)))
                                        (_%E130211130220%_))))))
                             (_%make-body130197%_
                              (lambda (_%vars130199%_)
                                (cons _%K130190%_
                                      (map (lambda (_%mvar130201%_)
                                             (let ((__tmp131399
                                                    (car _%mvar130201%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp131399
                                                _%vars130199%_
                                                _%BUG130193%_)))
                                           _%mvars130189%_)))))
                      (_%recur130194%_
                       _%hd130188%_
                       '()
                       _%target130187%_
                       _%E130191%_
                       _%make-body130197%_))))
                 (_%parse-clause130008%_
                  (lambda (_%hd130080%_ _%ids130081%_)
                    (let _%recur130083%_ ((_%e130085%_ _%hd130080%_)
                                          (_%vars130086%_ '())
                                          (_%depth130087%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e130085%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e130085%_))
                              (values '(any) _%vars130086%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e130085%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx129999%_
                                     _%hd130080%_))
                                  (if (let ((__tmp131400
                                             (lambda (_%id130092%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e130085%_
                                                  _%id130092%_)))))
                                        (declare (not safe))
                                        (__find __tmp131400 _%ids130081%_))
                                      (values (cons 'id _%e130085%_)
                                              _%vars130086%_)
                                      (if (let ((__tmp131401
                                                 (lambda (_%var130095%_)
                                                   (let ((__tmp131402
                                                          (car _%var130095%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e130085%_
                                                      __tmp131402)))))
                                            (declare (not safe))
                                            (__find __tmp131401
                                                    _%vars130086%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx129999%_
                                             _%e130085%_))
                                          (values (cons 'var _%e130085%_)
                                                  (cons (cons _%e130085%_
                                                              _%depth130087%_)
                                                        _%vars130086%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e130085%_))
                              (let* ((_%e130099130106%_ _%e130085%_)
                                     (_%E130101130110%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e130099130106%_))))
                                     (_%E130100130171%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e130099130106%_))
                                            (let ((_%e130102130114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e130099130106%_))))
                                              (let ((_%hd130103130117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e130102130114%_)))
                                                    (_%tl130104130119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e130102130114%_))))
                                                (let* ((_%hd130122%_
                                                        _%hd130103130117%_)
                                                       (_%rest130124%_
                                                        _%tl130104130119%_)
                                                       (_%make-pair130139%_
                                                        (lambda (_%tag130126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd130127%_
                         _%tl130128%_)
                  (let* ((_%hd-depth130130%_
                          (if (eq? _%tag130126%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth130087%_ '1))
                              _%depth130087%_))
                         (_g131403_
                          (_%recur130083%_
                           _%hd130127%_
                           _%vars130086%_
                           _%hd-depth130130%_)))
                    (begin
                      (let ((_g131404_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g131403_)
                                   (##vector-length _g131403_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g131404_ 2)))
                            (error "Context expects 2 values" _g131404_)))
                      (let ((_%hd130132%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131403_ 0)))
                            (_%vars130133%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g131403_ 1))))
                        (let ((_g131405_
                               (_%recur130083%_
                                _%tl130128%_
                                _%vars130133%_
                                _%depth130087%_)))
                          (begin
                            (let ((_g131406_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g131405_)
                                         (##vector-length _g131405_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g131406_ 2)))
                                  (error "Context expects 2 values"
                                         _g131406_)))
                            (let ((_%tl130135%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131405_ 0)))
                                  (_%vars130136%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g131405_ 1))))
                              (values (cons _%tag130126%_
                                            (cons _%hd130132%_ _%tl130135%_))
                                      _%vars130136%_)))))))))
               (_%e130140130147%_ _%rest130124%_)
               (_%E130142130151%_
                (lambda ()
                  (_%make-pair130139%_ 'cons _%hd130122%_ _%rest130124%_)))
               (_%E130141130167%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e130140130147%_))
                      (let ((_%e130143130155%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e130140130147%_))))
                        (let ((_%hd130144130158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130143130155%_)))
                              (_%tl130145130160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130143130155%_))))
                          (let* ((_%rest-hd130163%_ _%hd130144130158%_)
                                 (_%rest-tl130165%_ _%tl130145130160%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd130163%_))
                                (_%make-pair130139%_
                                 'splice
                                 _%hd130122%_
                                 _%rest-tl130165%_)
                                (_%make-pair130139%_
                                 'cons
                                 _%hd130122%_
                                 _%rest130124%_)))))
                      (_%E130142130151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130141130167%_))))
                                            (_%E130101130110%_)))))
                                (_%E130100130171%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e130085%_))
                                  (values '(null) _%vars130086%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e130085%_))
                                      (let ((_g131407_
                                             (_%recur130083%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e130085%_)))
                                              _%vars130086%_
                                              _%depth130087%_)))
                                        (begin
                                          (let ((_g131408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131407_)
                                                       (##vector-length
                                                        _g131407_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131408_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131408_)))
                                          (let ((_%e130177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131407_ 0)))
                                                (_%vars130178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131407_
                                                    1))))
                                            (values (cons 'vector _%e130177%_)
                                                    _%vars130178%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e130085%_))
                                          (let ((_g131409_
                                                 (_%recur130083%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e130085%_)))
                                                  _%vars130086%_
                                                  _%depth130087%_)))
                                            (begin
                                              (let ((_g131410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g131409_)
                                                           (##vector-length
                                                            _g131409_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g131410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g131410_)))
                                              (let ((_%e130181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131409_
                                                        0)))
                                                    (_%vars130182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g131409_
                                                        1))))
                                                (values (cons 'box _%e130181%_)
                                                        _%vars130182%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e130085%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e130085%_)))
                                                      _%vars130086%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx129999%_
                                                 _%e130085%_))))))))))))
          (let* ((_%e130009130022%_ _%stx129999%_)
                 (_%E130011130026%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e130009130022%_))))
                 (_%E130010130076%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e130009130022%_))
                        (let ((_%e130012130030%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e130009130022%_))))
                          (let ((_%hd130013130033%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130012130030%_)))
                                (_%tl130014130035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130012130030%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl130014130035%_))
                                (let ((_%e130015130038%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl130014130035%_))))
                                  (let ((_%hd130016130041%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e130015130038%_)))
                                        (_%tl130017130043%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e130015130038%_))))
                                    (let ((_%expr130046%_ _%hd130016130041%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl130017130043%_))
                                          (let ((_%e130018130048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl130017130043%_))))
                                            (let ((_%hd130019130051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e130018130048%_)))
                                                  (_%tl130020130053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e130018130048%_))))
                                              (let* ((_%ids130056%_
                                                      _%hd130019130051%_)
                                                     (_%clauses130058%_
                                                      _%tl130020130053%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids130056%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses130058%_))
                                                        (let* ((_%ids130063%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids130056%_)))
                       (_%clauses130065%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses130058%_)))
                       (_%clause-ids130067%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses130065%_)))
                       (_%E130069%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target130071%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first130073%_
                        (if (null? _%clauses130065%_)
                            _%E130069%_
                            (car _%clause-ids130067%_))))
                  (let ((__tmp131412
                         (let ((__tmp131413
                                (let ((__tmp131415
                                       (let ((__tmp131417
                                              (cons (cons (cons _%E130069%_
                                                                '())
                                                          (cons (let ((__tmp131419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target130071%_ '()))
                              (__tmp131418
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target130071%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp131419 __tmp131418))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp131416
                                              (_%generate-body130005%_
                                               (_%generate-bindings130004%_
                                                _%target130071%_
                                                _%ids130063%_
                                                _%clauses130065%_
                                                _%clause-ids130067%_
                                                _%E130069%_)
                                               (cons _%first130073%_
                                                     (cons _%expr130046%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp131417
                                          __tmp131416)))
                                      (__tmp131414
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx129999%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp131415
                                   __tmp131414))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp131413)))
                        (__tmp131411
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx129999%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp131412 __tmp131411)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx129999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx129999%_
                                                       _%ids130056%_))))))
                                          (_%E130011130026%_)))))
                                (_%E130011130026%_))))
                        (_%E130011130026%_)))))
            (_%E130010130076%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx130724%_)
        (let* ((_%identifier=?130726%_ 'free-identifier=?)
               (_%unwrap-e130728%_ 'syntax-e)
               (_%wrap-e130730%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130724%_
           _%identifier=?130726%_
           _%unwrap-e130728%_
           _%wrap-e130730%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx130732%_ _%identifier=?130733%_)
        (let* ((_%unwrap-e130735%_ 'syntax-e) (_%wrap-e130737%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130732%_
           _%identifier=?130733%_
           _%unwrap-e130735%_
           _%wrap-e130737%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx130739%_ _%identifier=?130740%_ _%unwrap-e130741%_)
        (let ((_%wrap-e130743%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx130739%_
           _%identifier=?130740%_
           _%unwrap-e130741%_
           _%wrap-e130743%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g131421_
        (let ((_g131420_ (let () (declare (not safe)) (##length _g131421_))))
          (cond ((let () (declare (not safe)) (##fx= _g131420_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g131421_))
                ((let () (declare (not safe)) (##fx= _g131420_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g131421_))
                ((let () (declare (not safe)) (##fx= _g131420_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g131421_))
                ((let () (declare (not safe)) (##fx= _g131420_ 4))
                 (apply gx#macro-expand-syntax-case__% _g131421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g131421_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx129996%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx129996%_))
            (let ((__tmp131422
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx129996%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp131422 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd129954%_ . _%rest129955%_)
        (let ((_%len129957%_ (length _%hd129954%_)))
          (let _%lp129959%_ ((_%rest129961%_ _%rest129955%_))
            (let* ((_%rest129962129970%_ _%rest129961%_)
                   (_%else129964129978%_ (lambda () '#!void))
                   (_%K129966129984%_
                    (lambda (_%rest129981%_ _%hd129982%_)
                      (if (let ((__tmp131423 (length _%hd129982%_)))
                            (declare (not safe))
                            (##fx= _%len129957%_ __tmp131423))
                          (_%lp129959%_ _%rest129981%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd129982%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest129962129970%_))
                  (let ((_%hd129967129987%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest129962129970%_)))
                        (_%tl129968129989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest129962129970%_))))
                    (let* ((_%hd129992%_ _%hd129967129987%_)
                           (_%rest129994%_ _%tl129968129989%_))
                      (_%K129966129984%_ _%rest129994%_ _%hd129992%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx129909%_ _%n129910%_)
        (let _%lp129912%_ ((_%rest129914%_ _%stx129909%_) (_%r129915%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest129914%_))
              (let* ((_%g129916129923%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest129914%_)))
                     (_%E129918129927%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g129916129923%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K129919129933%_
                      (lambda (_%rest129930%_ _%hd129931%_)
                        (_%lp129912%_
                         _%rest129930%_
                         (cons _%hd129931%_ _%r129915%_)))))
                (if (let () (declare (not safe)) (##pair? _%g129916129923%_))
                    (let ((_%hd129920129936%_
                           (let ()
                             (declare (not safe))
                             (##car _%g129916129923%_)))
                          (_%tl129921129938%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g129916129923%_))))
                      (let* ((_%hd129941%_ _%hd129920129936%_)
                             (_%rest129943%_ _%tl129921129938%_))
                        (_%K129919129933%_ _%rest129943%_ _%hd129941%_)))
                    (_%E129918129927%_)))
              (let _%lp129945%_ ((_%n129947%_ _%n129910%_)
                                 (_%l129948%_ _%r129915%_)
                                 (_%r129949%_ _%rest129914%_))
                (if (null? _%l129948%_)
                    (values _%l129948%_ _%r129949%_)
                    (if (fxpositive? _%n129947%_)
                        (_%lp129945%_
                         (let () (declare (not safe)) (##fx- _%n129947%_ '1))
                         (cdr _%l129948%_)
                         (cons (car _%l129948%_) _%r129949%_))
                        (values (reverse _%l129948%_) _%r129949%_))))))))))
