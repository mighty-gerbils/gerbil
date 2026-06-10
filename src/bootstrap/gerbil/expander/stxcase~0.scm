(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1781119050)
  (begin
    (define gx#syntax-pattern::t
      (make-class-type
       'gx#syntax-pattern::t
       'syntax-pattern
       (list gx#expander::t)
       '(id depth)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#syntax-pattern? (make-class-predicate gx#syntax-pattern::t))
    (define gx#make-syntax-pattern
      (lambda _%$args169221%_
        (apply make-instance gx#syntax-pattern::t _%$args169221%_)))
    (define gx#syntax-pattern-id
      (make-class-slot-accessor gx#syntax-pattern::t 'id))
    (define gx#syntax-pattern-depth
      (make-class-slot-accessor gx#syntax-pattern::t 'depth))
    (define gx#syntax-pattern-e
      (make-class-slot-accessor gx#syntax-pattern::t 'e))
    (define gx#syntax-pattern-id-set!
      (make-class-slot-mutator gx#syntax-pattern::t 'id))
    (define gx#syntax-pattern-depth-set!
      (make-class-slot-mutator gx#syntax-pattern::t 'depth))
    (define gx#syntax-pattern-e-set!
      (make-class-slot-mutator gx#syntax-pattern::t 'e))
    (define gx#&syntax-pattern-id
      (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id))
    (define gx#&syntax-pattern-depth
      (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth))
    (define gx#&syntax-pattern-e
      (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e))
    (define gx#&syntax-pattern-id-set!
      (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id))
    (define gx#&syntax-pattern-depth-set!
      (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth))
    (define gx#&syntax-pattern-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_%self169207%_ _%stx169208%_)
        (let ((_%self169211%_ _%self169207%_))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx169208%_))))
    (bind-method!
     gx#syntax-pattern::t
     'apply-macro-expander
     gx#syntax-pattern::apply-macro-expander
     '#f)
    (define gx#macro-expand-syntax
      (lambda (_%stx168674%_)
        (letrec ((_%generate168676%_
                  (lambda (_%e168916%_)
                    (letrec ((_%BUG168918%_
                              (lambda (_%q169083%_)
                                (error '"BUG: syntax; generate"
                                       _%stx168674%_
                                       _%e168916%_
                                       _%q169083%_)))
                             (_%local-pattern-e168919%_
                              (lambda (_%pat169081%_)
                                (gx#syntax-local-rewrap
                                 (gx#syntax-pattern-id _%pat169081%_))))
                             (_%getvar168920%_
                              (lambda (_%q169078%_ _%vars169079%_)
                                (agetq _%q169078%_
                                       _%vars169079%_
                                       _%BUG168918%_)))
                             (_%getarg168921%_
                              (lambda (_%arg169044%_ _%vars169045%_)
                                (let* ((_%$%arg169046169053%_ _%arg169044%_)
                                       (_%$%E169048169057%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%$%arg169046169053%_
                                                 '([tag . e]))
                                          (void)))
                                       (_%$%K169049169066%_
                                        (lambda (_%e169060%_ _%tag169061%_)
                                          (let ((_%$e169063%_ _%tag169061%_))
                                            (if (eq? 'ref _%$e169063%_)
                                                (_%getvar168920%_
                                                 _%e169060%_
                                                 _%vars169045%_)
                                                (if (eq? 'pattern _%$e169063%_)
                                                    (_%local-pattern-e168919%_
                                                     _%e169060%_)
                                                    (_%BUG168918%_
                                                     _%arg169044%_)))))))
                                  (if (pair? _%$%arg169046169053%_)
                                      (let ((_%$%hd169050169069%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg169046169053%_)))
                                            (_%$%tl169051169071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg169046169053%_))))
                                        (let* ((_%tag169074%_
                                                _%$%hd169050169069%_)
                                               (_%e169076%_
                                                _%$%tl169051169071%_))
                                          (_%$%K169049169066%_
                                           _%e169076%_
                                           _%tag169074%_)))
                                      (_%$%E169048169057%_))))))
                      (let _%recur168923%_ ((_%e168925%_ _%e168916%_)
                                            (_%vars168926%_ '()))
                        (let* ((_%$%e168927168934%_ _%e168925%_)
                               (_%$%E168929168938%_
                                (lambda ()
                                  (error '"No clause matching"
                                         _%$%e168927168934%_
                                         '([tag . body]))
                                  (void)))
                               (_%$%K168930169032%_
                                (lambda (_%body168941%_ _%tag168942%_)
                                  (let ((_%$e168944%_ _%tag168942%_))
                                    (if (eq? 'datum _%$e168944%_)
                                        (gx#core-list 'quote _%body168941%_)
                                        (if (eq? 'term _%$e168944%_)
                                            (let ((_%id168947%_
                                                   (gx#syntax-local-unwrap
                                                    _%body168941%_)))
                                              (if (gx#identifier-wrap?
                                                   _%id168947%_)
                                                  (let ((_%marks168950%_
                                                         (gx#&identifier-wrap-marks
                                                          _%id168947%_)))
                                                    (if (null? _%marks168950%_)
                                                        (gx#core-list
                                                         'datum->syntax
                                                         '#f
                                                         (gx#core-list
                                                          'quote
                                                          _%body168941%_))
                                                        (gx#core-list
                                                         'datum->syntax
                                                         (gx#core-list
                                                          'quote-syntax
                                                          _%body168941%_)
                                                         (gx#core-list
                                                          'quote
                                                          _%body168941%_)
                                                         '#f
                                                         '#f)))
                                                  (if (gx#syntax-quote?
                                                       _%id168947%_)
                                                      (gx#core-list
                                                       'quote-syntax
                                                       _%body168941%_)
                                                      (_%BUG168918%_
                                                       _%e168925%_))))
                                            (if (eq? 'pattern _%$e168944%_)
                                                (_%local-pattern-e168919%_
                                                 _%body168941%_)
                                                (if (eq? 'ref _%$e168944%_)
                                                    (_%getvar168920%_
                                                     _%body168941%_
                                                     _%vars168926%_)
                                                    (if (eq? 'cons
                                                             _%$e168944%_)
                                                        (gx#core-list
                                                         'cons
                                                         (_%recur168923%_
                                                          (car _%body168941%_)
                                                          _%vars168926%_)
                                                         (_%recur168923%_
                                                          (cdr _%body168941%_)
                                                          _%vars168926%_))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e168944%_)
                    (gx#core-list
                     'list->vector
                     (_%recur168923%_ _%body168941%_ _%vars168926%_))
                    (if (eq? 'box _%$e168944%_)
                        (gx#core-list
                         'box
                         (_%recur168923%_ _%body168941%_ _%vars168926%_))
                        (if (eq? 'splice _%$e168944%_)
                            (let* ((_%$%body168953168964%_ _%body168941%_)
                                   (_%$%E168955168968%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%$%body168953168964%_
                                             '([depth hd iv . args]))
                                      (void)))
                                   (_%$%K168956169006%_
                                    (lambda (_%args168971%_
                                             _%iv168972%_
                                             _%hd168973%_
                                             _%depth168974%_)
                                      (let* ((_%targets168980%_
                                              (map (lambda (_%$%g168975168977%_)
                                                     (_%getarg168921%_
                                                      _%$%g168975168977%_
                                                      _%vars168926%_))
                                                   _%args168971%_))
                                             (_%fold-in168982%_
                                              (gx#gentemps _%args168971%_))
                                             (_%fold-out168984%_ (gx#genident))
                                             (_%lambda-args168986%_
                                              (foldr cons
                                                     (cons _%fold-out168984%_
                                                           '())
                                                     _%fold-in168982%_))
                                             (_%lambda-body169003%_
                                              (if (fx> _%depth168974%_ '1)
                                                  (let ((_%r-args168994%_
                                                         (map (lambda (_%arg168988%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg168988%_)))
                      _%args168971%_))
                (_%r-vars168995%_
                 (foldr (lambda (_%arg168990%_ _%var168991%_ _%r168992%_)
                          (cons (cons (cdr _%arg168990%_) _%var168991%_)
                                _%r168992%_))
                        _%vars168926%_
                        _%args168971%_
                        _%fold-in168982%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur168923%_
                                                     (cons* 'splice
                                                            (fx1- _%depth168974%_)
                                                            _%hd168973%_
                                                            (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%fold-out168984%_)
                    _%r-args168994%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars168995%_))
                                                  (let ((_%hd-vars169001%_
                                                         (foldr (lambda (_%arg168997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%var168998%_
                                 _%r168999%_)
                          (cons (cons (cdr _%arg168997%_) _%var168998%_)
                                _%r168999%_))
                        _%vars168926%_
                        _%args168971%_
                        _%fold-in168982%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#core-list
                                                     'cons
                                                     (_%recur168923%_
                                                      _%hd168973%_
                                                      _%hd-vars169001%_)
                                                     _%fold-out168984%_)))))
                                        (gx#core-list
                                         'begin
                                         (if (fx> (length _%targets168980%_)
                                                  '1)
                                             (gx#core-cons*
                                              'syntax-check-splice-targets
                                              _%targets168980%_)
                                             '#!void)
                                         (gx#core-cons*
                                          'foldr
                                          (gx#core-list
                                           'lambda%
                                           _%lambda-args168986%_
                                           _%lambda-body169003%_)
                                          (_%recur168923%_
                                           _%iv168972%_
                                           _%vars168926%_)
                                          _%targets168980%_))))))
                              (if (pair? _%$%body168953168964%_)
                                  (let ((_%$%hd168957169009%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body168953168964%_)))
                                        (_%$%tl168958169011%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body168953168964%_))))
                                    (let ((_%depth169014%_
                                           _%$%hd168957169009%_))
                                      (if (pair? _%$%tl168958169011%_)
                                          (let ((_%$%hd168959169016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl168958169011%_)))
                                                (_%$%tl168960169018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl168958169011%_))))
                                            (let ((_%hd169021%_
                                                   _%$%hd168959169016%_))
                                              (if (pair? _%$%tl168960169018%_)
                                                  (let ((_%$%hd168961169023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl168960169018%_)))
                                                        (_%$%tl168962169025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl168960169018%_))))
                                                    (let* ((_%iv169028%_
                                                            _%$%hd168961169023%_)
                                                           (_%args169030%_
                                                            _%$%tl168962169025%_))
                                                      (_%$%K168956169006%_
                                                       _%args169030%_
                                                       _%iv169028%_
                                                       _%hd169021%_
                                                       _%depth169014%_)))
                                                  (_%$%E168955168968%_))))
                                          (_%$%E168955168968%_))))
                                  (_%$%E168955168968%_)))
                            (if (eq? 'var _%$e168944%_)
                                _%body168941%_
                                (_%BUG168918%_ _%e168925%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e168927168934%_)
                              (let ((_%$%hd168931169035%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e168927168934%_)))
                                    (_%$%tl168932169037%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e168927168934%_))))
                                (let* ((_%tag169040%_ _%$%hd168931169035%_)
                                       (_%body169042%_ _%$%tl168932169037%_))
                                  (_%$%K168930169032%_
                                   _%body169042%_
                                   _%tag169040%_)))
                              (_%$%E168929168938%_)))))))
                 (_%parse168677%_
                  (lambda (_%e168718%_)
                    (letrec ((_%make-cons168720%_
                              (lambda (_%hd168908%_ _%tl168909%_)
                                (let ((_g169223_ _%hd168908%_)
                                      (_g169225_ _%tl168909%_))
                                  (begin
                                    (let ((_g169224_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g169223_)
                                                 (##values-length _g169223_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g169224_ 2)))
                                          (error "Context expects 2 values"
                                                 _g169224_)))
                                    (let ((_g169226_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g169225_)
                                                 (##values-length _g169225_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g169226_ 2)))
                                          (error "Context expects 2 values"
                                                 _g169226_)))
                                    (let ((_%hd-e168911%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g169223_ 0)))
                                          (_%hd-vars168912%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g169223_ 1))))
                                      (let ((_%tl-e168913%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g169225_ 0)))
                                            (_%tl-vars168914%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g169225_ 1))))
                                        (values (cons* 'cons
                                                       _%hd-e168911%_
                                                       _%tl-e168913%_)
                                                (append _%hd-vars168912%_
                                                        _%tl-vars168914%_))))))))
                             (_%make-splice168721%_
                              (lambda (_%where168844%_
                                       _%depth168845%_
                                       _%hd168846%_
                                       _%tl168847%_)
                                (let ((_g169227_ _%hd168846%_)
                                      (_g169229_ _%tl168847%_))
                                  (begin
                                    (let ((_g169228_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g169227_)
                                                 (##values-length _g169227_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g169228_ 2)))
                                          (error "Context expects 2 values"
                                                 _g169228_)))
                                    (let ((_g169230_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g169229_)
                                                 (##values-length _g169229_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g169230_ 2)))
                                          (error "Context expects 2 values"
                                                 _g169230_)))
                                    (let ((_%hd-e168849%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g169227_ 0)))
                                          (_%hd-vars168850%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g169227_ 1))))
                                      (let ((_%tl-e168851%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g169229_ 0)))
                                            (_%tl-vars168852%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g169229_ 1))))
                                        (let _%lp168854%_ ((_%rest168856%_
                                                            _%hd-vars168850%_)
                                                           (_%targets168857%_
                                                            '())
                                                           (_%vars168858%_
                                                            _%tl-vars168852%_))
                                          (let* ((_%$%rest168859168869%_
                                                  _%rest168856%_)
                                                 (_%$%E168862168873%_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _%$%rest168859168869%_
                                                           '([[hd-depth*
                                                               .
                                                               hd-pat]
                                                              .
                                                              rest])
                                                           'else)
                                                    (void)))
                                                 (_%$%else168861168877%_
                                                  (lambda ()
                                                    (if (null? _%targets168857%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Misplaced ellipsis"
                                                         _%stx168674%_
                                                         _%where168844%_)
                                                        (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%depth168845%_
                               _%hd-e168849%_
                               _%tl-e168851%_
                               _%targets168857%_)
                        _%vars168858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K168863168889%_
                                                  (lambda (_%rest168880%_
                                                           _%hd-pat168881%_
                                                           _%hd-depth*168882%_)
                                                    (let ((_%hd-depth168884%_
                                                           (fx- _%hd-depth*168882%_
                                                                _%depth168845%_)))
                                                      (if (fxpositive?
                                                           _%hd-depth168884%_)
                                                          (_%lp168854%_
                                                           _%rest168880%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat168881%_)
                         _%targets168857%_)
                   (cons (cons _%hd-depth168884%_ _%hd-pat168881%_)
                         _%vars168858%_))
                  (if (fxzero? _%hd-depth168884%_)
                      (_%lp168854%_
                       _%rest168880%_
                       (cons (cons 'pattern _%hd-pat168881%_)
                             _%targets168857%_)
                       _%vars168858%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Too many ellipses"
                       _%stx168674%_
                       _%where168844%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest168859168869%_)
                                                (let ((_%$%hd168864168892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest168859168869%_)))
                                                      (_%$%tl168865168894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest168859168869%_))))
                                                  (if (pair? _%$%hd168864168892%_)
                                                      (let ((_%$%hd168866168897%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd168864168892%_)))
                    (_%$%tl168867168899%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd168864168892%_))))
                (let* ((_%hd-depth*168902%_ _%$%hd168866168897%_)
                       (_%hd-pat168904%_ _%$%tl168867168899%_)
                       (_%rest168906%_ _%$%tl168865168894%_))
                  (_%$%K168863168889%_
                   _%rest168906%_
                   _%hd-pat168904%_
                   _%hd-depth*168902%_)))
              (_%$%else168861168877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else168861168877%_))))))))))
                             (_%recur168722%_
                              (lambda (_%e168727%_ _%is-e?168728%_)
                                (if (_%is-e?168728%_ _%e168727%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Mislpaced ellipsis"
                                     _%stx168674%_)
                                    (if (gx#syntax-local-pattern? _%e168727%_)
                                        (let* ((_%pat168732%_
                                                (gx#syntax-local-e
                                                 _%e168727%_))
                                               (_%depth168734%_
                                                (gx#syntax-pattern-depth
                                                 _%pat168732%_)))
                                          (if (fxpositive? _%depth168734%_)
                                              (values (cons 'ref _%pat168732%_)
                                                      (cons (cons _%depth168734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat168732%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat168732%_)
                                                      '())))
                                        (if (gx#identifier? _%e168727%_)
                                            (values (cons 'term _%e168727%_)
                                                    '())
                                            (if (gx#stx-pair? _%e168727%_)
                                                (let* ((_%$%e168738168745%_
                                                        _%e168727%_)
                                                       (_%$%E168740168749%_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid syntax-case clause"
                                                           _%$%e168738168745%_)))
                                                       (_%$%E168739168831%_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _%$%e168738168745%_)
                                                              (let ((_%$%e168741168753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%e168738168745%_)))
                        (let ((_%$%hd168742168756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e168741168753%_)))
                              (_%$%tl168743168758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e168741168753%_))))
                          (let* ((_%hd168761%_ _%$%hd168742168756%_)
                                 (_%rest168763%_ _%$%tl168743168758%_))
                            (if '#t
                                (if (_%is-e?168728%_ _%hd168761%_)
                                    (let* ((_%$%e168764168771%_ _%rest168763%_)
                                           (_%$%E168766168775%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad ellipsis syntax"
                                               _%stx168674%_
                                               _%e168727%_)))
                                           (_%$%E168765168789%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%$%e168764168771%_)
                                                  (let ((_%$%e168767168779%_
                                                         (gx#syntax-e
                                                          _%$%e168764168771%_)))
                                                    (let ((_%$%hd168768168782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e168767168779%_)))
                                                          (_%$%tl168769168784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e168767168779%_))))
                                                      (let ((_%rest168787%_
                                                             _%$%hd168768168782%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl168769168784%_)
                                                            (if '#t
                                                                (_%recur168722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rest168787%_
                         false)
                        (_%$%E168766168775%_))
                    (_%$%E168766168775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E168766168775%_)))))
                                      (_%$%E168765168789%_))
                                    (let _%lp168793%_ ((_%rest168795%_
                                                        _%rest168763%_)
                                                       (_%depth168796%_ '0))
                                      (let* ((_%$%e168797168804%_
                                              _%rest168795%_)
                                             (_%$%E168799168808%_
                                              (lambda ()
                                                (if (fxpositive?
                                                     _%depth168796%_)
                                                    (_%make-splice168721%_
                                                     _%e168727%_
                                                     _%depth168796%_
                                                     (_%recur168722%_
                                                      _%hd168761%_
                                                      _%is-e?168728%_)
                                                     (_%recur168722%_
                                                      _%rest168795%_
                                                      _%is-e?168728%_))
                                                    (_%make-cons168720%_
                                                     (_%recur168722%_
                                                      _%hd168761%_
                                                      _%is-e?168728%_)
                                                     (_%recur168722%_
                                                      _%rest168795%_
                                                      _%is-e?168728%_)))))
                                             (_%$%E168798168827%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e168797168804%_)
                                                    (let ((_%$%e168800168812%_
                                                           (gx#syntax-e
                                                            _%$%e168797168804%_)))
                                                      (let ((_%$%hd168801168815%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e168800168812%_)))
                    (_%$%tl168802168817%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e168800168812%_))))
                (let* ((_%rest-hd168820%_ _%$%hd168801168815%_)
                       (_%rest-tl168822%_ _%$%tl168802168817%_))
                  (if '#t
                      (if (_%is-e?168728%_ _%rest-hd168820%_)
                          (_%lp168793%_
                           _%rest-tl168822%_
                           (fx1+ _%depth168796%_))
                          (if (fxpositive? _%depth168796%_)
                              (_%make-splice168721%_
                               _%e168727%_
                               _%depth168796%_
                               (_%recur168722%_ _%hd168761%_ _%is-e?168728%_)
                               (_%recur168722%_
                                _%rest168795%_
                                _%is-e?168728%_))
                              (_%make-cons168720%_
                               (_%recur168722%_ _%hd168761%_ _%is-e?168728%_)
                               (_%recur168722%_
                                _%rest168795%_
                                _%is-e?168728%_))))
                      (_%$%E168799168808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E168799168808%_)))))
                                        (_%$%E168798168827%_))))
                                (_%$%E168740168749%_)))))
                      (_%$%E168740168749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E168739168831%_))
                                                (if (gx#stx-vector?
                                                     _%e168727%_)
                                                    (let ((_g169231_
                                                           (_%recur168722%_
                                                            (vector->list
                                                             (gx#stx-unwrap
                                                              _%e168727%_))
                                                            _%is-e?168728%_)))
                                                      (begin
                                                        (let ((_g169232_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g169231_)
                             (##values-length _g169231_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g169232_ 2)))
                      (error "Context expects 2 values" _g169232_)))
                (let ((_%e168836%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g169231_ 0)))
                      (_%vars168837%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g169231_ 1))))
                  (values (cons 'vector _%e168836%_) _%vars168837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-box?
                                                         _%e168727%_)
                                                        (let ((_g169233_
                                                               (_%recur168722%_
                                                                (unbox (gx#stx-unwrap
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%e168727%_))
                        _%is-e?168728%_)))
                  (begin
                    (let ((_g169234_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g169233_)
                                 (##values-length _g169233_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g169234_ 2)))
                          (error "Context expects 2 values" _g169234_)))
                    (let ((_%e168840%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g169233_ 0)))
                          (_%vars168841%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g169233_ 1))))
                      (values (cons 'box _%e168840%_) _%vars168841%_))))
                (values (cons 'datum _%e168727%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g169235_
                             (_%recur168722%_ _%e168718%_ gx#ellipsis?)))
                        (begin
                          (let ((_g169236_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g169235_)
                                       (##values-length _g169235_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g169236_ 2)))
                                (error "Context expects 2 values" _g169236_)))
                          (let ((_%tree168724%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g169235_ 0)))
                                (_%vars168725%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g169235_ 1))))
                            (if (null? _%vars168725%_)
                                _%tree168724%_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Missing ellipsis"
                                 _%stx168674%_
                                 _%vars168725%_)))))))))
          (let* ((_%$%e168678168688%_ _%stx168674%_)
                 (_%$%E168680168692%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; expand-syntax expects a single argument"
                     _%stx168674%_)))
                 (_%$%E168679168714%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e168678168688%_)
                        (let ((_%$%e168681168696%_
                               (gx#syntax-e _%$%e168678168688%_)))
                          (let ((_%$%hd168682168699%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e168681168696%_)))
                                (_%$%tl168683168701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e168681168696%_))))
                            (if (gx#stx-pair? _%$%tl168683168701%_)
                                (let ((_%$%e168684168704%_
                                       (gx#syntax-e _%$%tl168683168701%_)))
                                  (let ((_%$%hd168685168707%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e168684168704%_)))
                                        (_%$%tl168686168709%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e168684168704%_))))
                                    (let ((_%form168712%_
                                           _%$%hd168685168707%_))
                                      (if (gx#stx-null? _%$%tl168686168709%_)
                                          (if '#t
                                              (gx#stx-wrap-source
                                               (_%generate168676%_
                                                (_%parse168677%_
                                                 _%form168712%_))
                                               (gx#stx-source _%stx168674%_))
                                              (_%$%E168680168692%_))
                                          (_%$%E168680168692%_)))))
                                (_%$%E168680168692%_))))
                        (_%$%E168680168692%_)))))
            (_%$%E168679168714%_)))))
    (define gx#macro-expand-syntax-case
      (let ((_%$%opt-lambda167921168645%_
             (lambda (_%stx167923%_
                      _%identifier=?167924%_
                      _%unwrap-e167925%_
                      _%wrap-e167926%_)
               (letrec ((_%generate-bindings167928%_
                         (lambda (_%target168538%_
                                  _%ids168539%_
                                  _%clauses168540%_
                                  _%clause-ids168541%_
                                  _%E168542%_)
                           (letrec ((_%generate1168544%_
                                     (lambda (_%clause168641%_
                                              _%clause-id168642%_
                                              _%E168643%_)
                                       (cons (cons _%clause-id168642%_ '())
                                             (cons (gx#core-list
                                                    'lambda%
                                                    (cons _%target168538%_ '())
                                                    (_%generate-clause167930%_
                                                     _%target168538%_
                                                     _%ids168539%_
                                                     _%clause168641%_
                                                     _%E168643%_))
                                                   '())))))
                             (let _%lp168546%_ ((_%rest168548%_
                                                 _%clauses168540%_)
                                                (_%rest-ids168549%_
                                                 _%clause-ids168541%_)
                                                (_%bindings168550%_ '()))
                               (let* ((_%$%rest168551168559%_ _%rest168548%_)
                                      (_%$%E168554168563%_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _%$%rest168551168559%_
                                                '([clause . rest])
                                                'else)
                                         (void)))
                                      (_%$%else168553168567%_
                                       (lambda () _%bindings168550%_))
                                      (_%$%K168555168629%_
                                       (lambda (_%rest168570%_
                                                _%clause168571%_)
                                         (let* ((_%$%rest-ids168572168579%_
                                                 _%rest-ids168549%_)
                                                (_%$%E168574168583%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%rest-ids168572168579%_
                                                          '([clause-id
                                                             .
                                                             rest-ids]))
                                                   (void)))
                                                (_%$%K168575168617%_
                                                 (lambda (_%rest-ids168586%_
                                                          _%clause-id168587%_)
                                                   (let* ((_%$%rest-ids168588168596%_
                                                           _%rest-ids168586%_)
                                                          (_%$%E168591168600%_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%rest-ids168588168596%_
                            '([next-clause-id . _])
                            'else)
                     (void)))
                  (_%$%else168590168604%_
                   (lambda ()
                     (cons (_%generate1168544%_
                            _%clause168571%_
                            _%clause-id168587%_
                            _%E168542%_)
                           _%bindings168550%_)))
                  (_%$%K168592168609%_
                   (lambda (_%next-clause-id168607%_)
                     (_%lp168546%_
                      _%rest168570%_
                      _%rest-ids168586%_
                      (cons (_%generate1168544%_
                             _%clause168571%_
                             _%clause-id168587%_
                             _%next-clause-id168607%_)
                            _%bindings168550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest-ids168588168596%_)
                                                         (let* ((_%$%hd168593168612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest-ids168588168596%_)))
                        (_%next-clause-id168615%_ _%$%hd168593168612%_))
                   (_%$%K168592168609%_ _%next-clause-id168615%_))
                 (_%$%else168590168604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%rest-ids168572168579%_)
                                               (let ((_%$%hd168576168620%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%rest-ids168572168579%_)))
                                                     (_%$%tl168577168622%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%rest-ids168572168579%_))))
                                                 (let* ((_%clause-id168625%_
                                                         _%$%hd168576168620%_)
                                                        (_%rest-ids168627%_
                                                         _%$%tl168577168622%_))
                                                   (_%$%K168575168617%_
                                                    _%rest-ids168627%_
                                                    _%clause-id168625%_)))
                                               (_%$%E168574168583%_))))))
                                 (if (pair? _%$%rest168551168559%_)
                                     (let ((_%$%hd168556168632%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest168551168559%_)))
                                           (_%$%tl168557168634%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest168551168559%_))))
                                       (let* ((_%clause168637%_
                                               _%$%hd168556168632%_)
                                              (_%rest168639%_
                                               _%$%tl168557168634%_))
                                         (_%$%K168555168629%_
                                          _%rest168639%_
                                          _%clause168637%_)))
                                     (_%$%else168553168567%_)))))))
                        (_%generate-body167929%_
                         (lambda (_%bindings168498%_ _%body168499%_)
                           (let _%recur168501%_ ((_%rest168503%_
                                                  _%bindings168498%_))
                             (let* ((_%$%rest168504168512%_ _%rest168503%_)
                                    (_%$%E168507168516%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%$%rest168504168512%_
                                              '([hd . rest])
                                              'else)
                                       (void)))
                                    (_%$%else168506168520%_
                                     (lambda () _%body168499%_))
                                    (_%$%K168508168526%_
                                     (lambda (_%rest168523%_ _%hd168524%_)
                                       (gx#core-list
                                        'let-values
                                        (cons _%hd168524%_ '())
                                        (_%recur168501%_ _%rest168523%_)))))
                               (if (pair? _%$%rest168504168512%_)
                                   (let ((_%$%hd168509168529%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%rest168504168512%_)))
                                         (_%$%tl168510168531%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%rest168504168512%_))))
                                     (let* ((_%hd168534%_ _%$%hd168509168529%_)
                                            (_%rest168536%_
                                             _%$%tl168510168531%_))
                                       (_%$%K168508168526%_
                                        _%rest168536%_
                                        _%hd168534%_)))
                                   (_%$%else168506168520%_))))))
                        (_%generate-clause167930%_
                         (lambda (_%target168361%_
                                  _%ids168362%_
                                  _%clause168363%_
                                  _%E168364%_)
                           (letrec ((_%generate1168366%_
                                     (lambda (_%hd168453%_
                                              _%fender168454%_
                                              _%body168455%_)
                                       (let ((_g169237_
                                              (_%parse-clause167932%_
                                               _%hd168453%_
                                               _%ids168362%_)))
                                         (begin
                                           (let ((_g169238_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g169237_)
                                                        (##values-length
                                                         _g169237_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g169238_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g169238_)))
                                           (let ((_%e168457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g169237_
                                                     0)))
                                                 (_%mvars168458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g169237_
                                                     1))))
                                             (let* ((_%pvars168460%_
                                                     (map gx#syntax-local-rewrap
                                                          (gx#gentemps
                                                           _%mvars168458%_)))
                                                    (_%E168462%_
                                                     (cons _%E168364%_
                                                           (cons _%target168361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%K168495%_
                                                     (gx#core-list
                                                      'lambda%
                                                      _%pvars168460%_
                                                      (gx#core-list
                                                       'let-syntax
                                                       (map (lambda (_%mvar168464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pvar168465%_)
                      (let* ((_%$%mvar168466168473%_ _%mvar168464%_)
                             (_%$%E168468168477%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%mvar168466168473%_
                                       '([id . depth]))
                                (void)))
                             (_%$%K168469168483%_
                              (lambda (_%depth168480%_ _%id168481%_)
                                (cons _%id168481%_
                                      (cons (gx#core-list
                                             'make-syntax-pattern
                                             (gx#core-list 'quote _%id168481%_)
                                             (gx#core-list
                                              'quote
                                              _%pvar168465%_)
                                             _%depth168480%_)
                                            '())))))
                        (if (pair? _%$%mvar168466168473%_)
                            (let ((_%$%hd168470168486%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%mvar168466168473%_)))
                                  (_%$%tl168471168488%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%mvar168466168473%_))))
                              (let* ((_%id168491%_ _%$%hd168470168486%_)
                                     (_%depth168493%_ _%$%tl168471168488%_))
                                (_%$%K168469168483%_
                                 _%depth168493%_
                                 _%id168491%_)))
                            (_%$%E168468168477%_))))
                    _%mvars168458%_
                    _%pvars168460%_)
               (if (true? _%fender168454%_)
                   _%body168455%_
                   (gx#core-list
                    'if
                    _%fender168454%_
                    _%body168455%_
                    _%E168462%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%generate-match167931%_
                                                _%hd168453%_
                                                _%target168361%_
                                                _%e168457%_
                                                _%mvars168458%_
                                                _%K168495%_
                                                _%E168462%_))))))))
                             (let* ((_%$%e168367168387%_ _%clause168363%_)
                                    (_%$%E168376168391%_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid syntax-case clause"
                                        _%$%e168367168387%_)))
                                    (_%$%E168369168425%_
                                     (lambda ()
                                       (if (gx#stx-pair? _%$%e168367168387%_)
                                           (let ((_%$%e168377168395%_
                                                  (gx#syntax-e
                                                   _%$%e168367168387%_)))
                                             (let ((_%$%hd168378168398%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e168377168395%_)))
                                                   (_%$%tl168379168400%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e168377168395%_))))
                                               (let ((_%hd168403%_
                                                      _%$%hd168378168398%_))
                                                 (if (gx#stx-pair?
                                                      _%$%tl168379168400%_)
                                                     (let ((_%$%e168380168405%_
                                                            (gx#syntax-e
                                                             _%$%tl168379168400%_)))
                                                       (let ((_%$%hd168381168408%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e168380168405%_)))
                     (_%$%tl168382168410%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e168380168405%_))))
                 (let ((_%fender168413%_ _%$%hd168381168408%_))
                   (if (gx#stx-pair? _%$%tl168382168410%_)
                       (let ((_%$%e168383168415%_
                              (gx#syntax-e _%$%tl168382168410%_)))
                         (let ((_%$%hd168384168418%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e168383168415%_)))
                               (_%$%tl168385168420%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e168383168415%_))))
                           (let ((_%body168423%_ _%$%hd168384168418%_))
                             (if (gx#stx-null? _%$%tl168385168420%_)
                                 (if '#t
                                     (_%generate1168366%_
                                      _%hd168403%_
                                      _%fender168413%_
                                      _%body168423%_)
                                     (_%$%E168376168391%_))
                                 (_%$%E168376168391%_)))))
                       (_%$%E168376168391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E168376168391%_)))))
                                           (_%$%E168376168391%_))))
                                    (_%$%E168368168449%_
                                     (lambda ()
                                       (if (gx#stx-pair? _%$%e168367168387%_)
                                           (let ((_%$%e168370168429%_
                                                  (gx#syntax-e
                                                   _%$%e168367168387%_)))
                                             (let ((_%$%hd168371168432%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e168370168429%_)))
                                                   (_%$%tl168372168434%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e168370168429%_))))
                                               (let ((_%hd168437%_
                                                      _%$%hd168371168432%_))
                                                 (if (gx#stx-pair?
                                                      _%$%tl168372168434%_)
                                                     (let ((_%$%e168373168439%_
                                                            (gx#syntax-e
                                                             _%$%tl168372168434%_)))
                                                       (let ((_%$%hd168374168442%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e168373168439%_)))
                     (_%$%tl168375168444%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e168373168439%_))))
                 (let ((_%body168447%_ _%$%hd168374168442%_))
                   (if (gx#stx-null? _%$%tl168375168444%_)
                       (if '#t
                           (_%generate1168366%_
                            _%hd168437%_
                            '#t
                            _%body168447%_)
                           (_%$%E168369168425%_))
                       (_%$%E168369168425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E168369168425%_)))))
                                           (_%$%E168369168425%_)))))
                               (_%$%E168368168449%_)))))
                        (_%generate-match167931%_
                         (lambda (_%where168110%_
                                  _%target168111%_
                                  _%hd168112%_
                                  _%mvars168113%_
                                  _%K168114%_
                                  _%E168115%_)
                           (letrec ((_%BUG168117%_
                                     (lambda (_%q168359%_)
                                       (error '"BUG: syntax-case; generate"
                                              _%stx167923%_
                                              _%hd168112%_
                                              _%q168359%_)))
                                    (_%recur168118%_
                                     (lambda (_%e168209%_
                                              _%vars168210%_
                                              _%target168211%_
                                              _%E168212%_
                                              _%k168213%_)
                                       (let* ((_%$%e168214168221%_ _%e168209%_)
                                              (_%$%E168216168225%_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _%$%e168214168221%_
                                                        '([tag . body]))
                                                 (void)))
                                              (_%$%K168217168347%_
                                               (lambda (_%body168228%_
                                                        _%tag168229%_)
                                                 (let ((_%$e168231%_
                                                        _%tag168229%_))
                                                   (if (eq? 'any _%$e168231%_)
                                                       (_%k168213%_
                                                        _%vars168210%_)
                                                       (if (eq? 'id
                                                                _%$e168231%_)
                                                           (gx#core-list
                                                            'if
                                                            (gx#core-list
                                                             'identifier?
                                                             _%target168211%_)
                                                            (gx#core-list
                                                             'if
                                                             (gx#core-list
                                                              _%identifier=?167924%_
                                                              (gx#core-list
                                                               _%wrap-e167926%_
                                                               _%body168228%_)
                                                              _%target168211%_)
                                                             (_%k168213%_
                                                              _%vars168210%_)
                                                             _%E168212%_)
                                                            _%E168212%_)
                                                           (if (eq? 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$e168231%_)
                       (_%k168213%_
                        (cons (cons _%body168228%_ _%target168211%_)
                              _%vars168210%_))
                       (if (eq? 'cons _%$e168231%_)
                           (let ((_%$e168234%_ (gx#genident 'e))
                                 (_%$hd168235%_ (gx#genident 'hd))
                                 (_%$tl168236%_ (gx#genident 'tl)))
                             (gx#core-list
                              'if
                              (gx#core-list 'stx-pair? _%target168211%_)
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _%$e168234%_ '())
                                           (cons (gx#core-list
                                                  _%unwrap-e167925%_
                                                  _%target168211%_)
                                                 '()))
                                     '())
                               (gx#core-list
                                'let-values
                                (cons (cons (cons _%$hd168235%_ '())
                                            (cons (gx#core-list
                                                   '##car
                                                   _%$e168234%_)
                                                  '()))
                                      (cons (cons (cons _%$tl168236%_ '())
                                                  (cons (gx#core-list
                                                         '##cdr
                                                         _%$e168234%_)
                                                        '()))
                                            '()))
                                (let* ((_%$%body168237168244%_ _%body168228%_)
                                       (_%$%E168239168248%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%$%body168237168244%_
                                                 '([hd . tl]))
                                          (void)))
                                       (_%$%K168240168256%_
                                        (lambda (_%tl168251%_ _%hd168252%_)
                                          (_%recur168118%_
                                           _%hd168252%_
                                           _%vars168210%_
                                           _%$hd168235%_
                                           _%E168212%_
                                           (lambda (_%vars168254%_)
                                             (_%recur168118%_
                                              _%tl168251%_
                                              _%vars168254%_
                                              _%$tl168236%_
                                              _%E168212%_
                                              _%k168213%_))))))
                                  (if (pair? _%$%body168237168244%_)
                                      (let ((_%$%hd168241168259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%body168237168244%_)))
                                            (_%$%tl168242168261%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%body168237168244%_))))
                                        (let* ((_%hd168264%_
                                                _%$%hd168241168259%_)
                                               (_%tl168266%_
                                                _%$%tl168242168261%_))
                                          (_%$%K168240168256%_
                                           _%tl168266%_
                                           _%hd168264%_)))
                                      (_%$%E168239168248%_)))))
                              _%E168212%_))
                           (if (eq? 'splice _%$e168231%_)
                               (let* ((_%$%body168267168274%_ _%body168228%_)
                                      (_%$%E168269168278%_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _%$%body168267168274%_
                                                '([hd . tl]))
                                         (void)))
                                      (_%$%K168270168329%_
                                       (lambda (_%tl168281%_ _%hd168282%_)
                                         (let* ((_%rlen168284%_
                                                 (_%splice-rlen168119%_
                                                  _%tl168281%_))
                                                (_%$target168286%_
                                                 (gx#genident 'target))
                                                (_%$hd168288%_
                                                 (gx#genident 'hd))
                                                (_%$tl168290%_
                                                 (gx#genident 'tl))
                                                (_%$lp168292%_
                                                 (gx#genident 'loop))
                                                (_%$lp-e168294%_
                                                 (gx#genident 'e))
                                                (_%$lp-hd168296%_
                                                 (gx#genident 'lp-hd))
                                                (_%$lp-tl168298%_
                                                 (gx#genident 'lp-tl))
                                                (_%svars168300%_
                                                 (_%splice-vars168120%_
                                                  _%hd168282%_))
                                                (_%lvars168302%_
                                                 (gx#gentemps _%svars168300%_))
                                                (_%tlvars168304%_
                                                 (gx#gentemps _%svars168300%_))
                                                (_%linit168308%_
                                                 (map (lambda (_%var168306%_)
                                                        (gx#core-list
                                                         'quote
                                                         '()))
                                                      _%lvars168302%_)))
                                           (letrec ((_%make-loop168311%_
                                                     (lambda (_%vars168315%_)
                                                       (gx#core-list
                                                        'letrec-values
                                                        (cons (cons (cons _%$lp168292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (gx#core-list
                                   'lambda%
                                   (cons _%$hd168288%_ _%lvars168302%_)
                                   (gx#core-list
                                    'if
                                    (gx#core-list 'stx-pair? _%$hd168288%_)
                                    (gx#core-list
                                     'let-values
                                     (cons (cons (cons _%$lp-e168294%_ '())
                                                 (cons (gx#core-list
                                                        _%unwrap-e167925%_
                                                        _%$hd168288%_)
                                                       '()))
                                           '())
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _%$lp-hd168296%_ '())
                                                  (cons (gx#core-list
                                                         '##car
                                                         _%$lp-e168294%_)
                                                        '()))
                                            (cons (cons (cons _%$lp-tl168298%_
                                                              '())
                                                        (cons (gx#core-list
                                                               '##cdr
                                                               _%$lp-e168294%_)
                                                              '()))
                                                  '()))
                                      (_%recur168118%_
                                       _%hd168282%_
                                       '()
                                       _%$lp-hd168296%_
                                       _%E168212%_
                                       (lambda (_%hdvars168317%_)
                                         (cons* _%$lp168292%_
                                                _%$lp-tl168298%_
                                                (map (lambda (_%svar168319%_
                                                              _%lvar168320%_)
                                                       (gx#core-list
                                                        'cons
                                                        (agetq _%svar168319%_
                                                               _%hdvars168317%_
                                                               _%BUG168117%_)
                                                        _%lvar168320%_))
                                                     _%svars168300%_
                                                     _%lvars168302%_))))))
                                    (gx#core-list
                                     'let-values
                                     (map (lambda (_%lvar168322%_
                                                   _%tlvar168323%_)
                                            (cons (cons _%tlvar168323%_ '())
                                                  (cons (gx#core-list
                                                         'reverse
                                                         _%lvar168322%_)
                                                        '())))
                                          _%lvars168302%_
                                          _%tlvars168304%_)
                                     (_%k168213%_
                                      (foldl (lambda (_%svar168325%_
                                                      _%tlvar168326%_
                                                      _%r168327%_)
                                               (cons (cons _%svar168325%_
                                                           _%tlvar168326%_)
                                                     _%r168327%_))
                                             _%vars168315%_
                                             _%svars168300%_
                                             _%tlvars168304%_)))))
                                  '()))
                      '())
                (cons* _%$lp168292%_ _%$target168286%_ _%linit168308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_%body168313%_
                                                    (gx#core-list
                                                     'let-values
                                                     (cons (cons (cons _%$target168286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$tl168290%_ '()))
                         (cons (gx#core-list
                                'syntax-split-splice
                                _%target168211%_
                                _%rlen168284%_)
                               '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%recur168118%_
                                                      _%tl168281%_
                                                      _%vars168210%_
                                                      _%$tl168290%_
                                                      _%E168212%_
                                                      _%make-loop168311%_))))
                                               (gx#core-list
                                                'if
                                                (gx#core-list
                                                 'stx-pair/null?
                                                 _%target168211%_)
                                                (if (zero? _%rlen168284%_)
                                                    _%body168313%_
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'fx>=
                                                      (gx#core-list
                                                       'stx-length
                                                       _%target168211%_)
                                                      _%rlen168284%_)
                                                     _%body168313%_
                                                     _%E168212%_))
                                                _%E168212%_)))))))
                                 (if (pair? _%$%body168267168274%_)
                                     (let ((_%$%hd168271168332%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%body168267168274%_)))
                                           (_%$%tl168272168334%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%body168267168274%_))))
                                       (let* ((_%hd168337%_
                                               _%$%hd168271168332%_)
                                              (_%tl168339%_
                                               _%$%tl168272168334%_))
                                         (_%$%K168270168329%_
                                          _%tl168339%_
                                          _%hd168337%_)))
                                     (_%$%E168269168278%_)))
                               (if (eq? 'null _%$e168231%_)
                                   (gx#core-list
                                    'if
                                    (gx#core-list 'stx-null? _%target168211%_)
                                    (_%k168213%_ _%vars168210%_)
                                    _%E168212%_)
                                   (if (eq? 'vector _%$e168231%_)
                                       (let ((_%$e168341%_ (gx#genident 'e)))
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'stx-vector?
                                           _%target168211%_)
                                          (gx#core-list
                                           'let-values
                                           (cons (cons (cons _%$e168341%_ '())
                                                       (cons (gx#core-list
                                                              'vector->list
                                                              (gx#core-list
                                                               _%unwrap-e167925%_
                                                               _%target168211%_))
                                                             '()))
                                                 '())
                                           (_%recur168118%_
                                            _%body168228%_
                                            _%vars168210%_
                                            _%$e168341%_
                                            _%E168212%_
                                            _%k168213%_))
                                          _%E168212%_))
                                       (if (eq? 'box _%$e168231%_)
                                           (let ((_%$e168343%_
                                                  (gx#genident 'e)))
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'stx-box?
                                               _%target168211%_)
                                              (gx#core-list
                                               'let-values
                                               (cons (cons (cons _%$e168343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (gx#core-list
                          'unbox
                          (gx#core-list _%unwrap-e167925%_ _%target168211%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (_%recur168118%_
                                                _%body168228%_
                                                _%vars168210%_
                                                _%$e168343%_
                                                _%E168212%_
                                                _%k168213%_))
                                              _%E168212%_))
                                           (if (eq? 'datum _%$e168231%_)
                                               (let ((_%$e168345%_
                                                      (gx#genident 'e)))
                                                 (gx#core-list
                                                  'if
                                                  (gx#core-list
                                                   'stx-datum?
                                                   _%target168211%_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons (cons (cons _%$e168345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gx#core-list 'stx-e _%target168211%_) '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     _%$e168345%_
                                                     _%body168228%_)
                                                    (_%k168213%_
                                                     _%vars168210%_)
                                                    _%E168212%_))
                                                  _%E168212%_))
                                               (_%BUG168117%_
                                                _%e168209%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (pair? _%$%e168214168221%_)
                                             (let ((_%$%hd168218168350%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e168214168221%_)))
                                                   (_%$%tl168219168352%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e168214168221%_))))
                                               (let* ((_%tag168355%_
                                                       _%$%hd168218168350%_)
                                                      (_%body168357%_
                                                       _%$%tl168219168352%_))
                                                 (_%$%K168217168347%_
                                                  _%body168357%_
                                                  _%tag168355%_)))
                                             (_%$%E168216168225%_)))))
                                    (_%splice-rlen168119%_
                                     (lambda (_%e168171%_)
                                       (let _%lp168173%_ ((_%e168175%_
                                                           _%e168171%_)
                                                          (_%n168176%_ '0))
                                         (let* ((_%$%e168177168184%_
                                                 _%e168175%_)
                                                (_%$%E168179168188%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%e168177168184%_
                                                          '([tag . body]))
                                                   (void)))
                                                (_%$%K168180168197%_
                                                 (lambda (_%body168191%_
                                                          _%tag168192%_)
                                                   (let ((_%$e168194%_
                                                          _%tag168192%_))
                                                     (if (eq? 'splice
                                                              _%$e168194%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Ambiguous pattern"
                                                          _%stx167923%_
                                                          _%where168110%_)
                                                         (if (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$e168194%_)
                     (_%lp168173%_ (cdr _%body168191%_) (fx1+ _%n168176%_))
                     _%n168176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%e168177168184%_)
                                               (let ((_%$%hd168181168200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e168177168184%_)))
                                                     (_%$%tl168182168202%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e168177168184%_))))
                                                 (let* ((_%tag168205%_
                                                         _%$%hd168181168200%_)
                                                        (_%body168207%_
                                                         _%$%tl168182168202%_))
                                                   (_%$%K168180168197%_
                                                    _%body168207%_
                                                    _%tag168205%_)))
                                               (_%$%E168179168188%_))))))
                                    (_%splice-vars168120%_
                                     (lambda (_%e168127%_)
                                       (let _%recur168129%_ ((_%e168131%_
                                                              _%e168127%_)
                                                             (_%vars168132%_
                                                              '()))
                                         (let* ((_%$%e168133168140%_
                                                 _%e168131%_)
                                                (_%$%E168135168144%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%e168133168140%_
                                                          '([tag . body]))
                                                   (void)))
                                                (_%$%K168136168159%_
                                                 (lambda (_%body168147%_
                                                          _%tag168148%_)
                                                   (let ((_%$e168150%_
                                                          _%tag168148%_))
                                                     (if (eq? 'var
                                                              _%$e168150%_)
                                                         (cons _%body168147%_
                                                               _%vars168132%_)
                                                         (if (or (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$e168150%_)
                         (eq? 'splice _%$e168150%_))
                     (_%recur168129%_
                      (cdr _%body168147%_)
                      (_%recur168129%_ (car _%body168147%_) _%vars168132%_))
                     (if (or (eq? 'vector _%$e168150%_)
                             (eq? 'box _%$e168150%_))
                         (_%recur168129%_ _%body168147%_ _%vars168132%_)
                         _%vars168132%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%e168133168140%_)
                                               (let ((_%$%hd168137168162%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e168133168140%_)))
                                                     (_%$%tl168138168164%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e168133168140%_))))
                                                 (let* ((_%tag168167%_
                                                         _%$%hd168137168162%_)
                                                        (_%body168169%_
                                                         _%$%tl168138168164%_))
                                                   (_%$%K168136168159%_
                                                    _%body168169%_
                                                    _%tag168167%_)))
                                               (_%$%E168135168144%_))))))
                                    (_%make-body168121%_
                                     (lambda (_%vars168123%_)
                                       (cons _%K168114%_
                                             (map (lambda (_%mvar168125%_)
                                                    (agetq (car _%mvar168125%_)
                                                           _%vars168123%_
                                                           _%BUG168117%_))
                                                  _%mvars168113%_)))))
                             (_%recur168118%_
                              _%hd168112%_
                              '()
                              _%target168111%_
                              _%E168115%_
                              _%make-body168121%_))))
                        (_%parse-clause167932%_
                         (lambda (_%hd168004%_ _%ids168005%_)
                           (let _%recur168007%_ ((_%e168009%_ _%hd168004%_)
                                                 (_%vars168010%_ '())
                                                 (_%depth168011%_ '0))
                             (if (gx#identifier? _%e168009%_)
                                 (if (gx#underscore? _%e168009%_)
                                     (values '(any) _%vars168010%_)
                                     (if (gx#ellipsis? _%e168009%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Misplaced ellipsis"
                                          _%stx167923%_
                                          _%hd168004%_)
                                         (if (find (lambda (_%id168016%_)
                                                     (gx#bound-identifier=?
                                                      _%e168009%_
                                                      _%id168016%_))
                                                   _%ids168005%_)
                                             (values (cons 'id _%e168009%_)
                                                     _%vars168010%_)
                                             (if (find (lambda (_%var168019%_)
                                                         (gx#bound-identifier=?
                                                          _%e168009%_
                                                          (car _%var168019%_)))
                                                       _%vars168010%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Duplicate pattern variable"
                                                  _%stx167923%_
                                                  _%e168009%_)
                                                 (values (cons 'var
                                                               _%e168009%_)
                                                         (cons (cons _%e168009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%depth168011%_)
                       _%vars168010%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (if (gx#stx-pair? _%e168009%_)
                                     (let* ((_%$%e168023168030%_ _%e168009%_)
                                            (_%$%E168025168034%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e168023168030%_)))
                                            (_%$%E168024168095%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e168023168030%_)
                                                   (let ((_%$%e168026168038%_
                                                          (gx#syntax-e
                                                           _%$%e168023168030%_)))
                                                     (let ((_%$%hd168027168041%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e168026168038%_)))
                                                           (_%$%tl168028168043%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e168026168038%_))))
                                                       (let* ((_%hd168046%_
                                                               _%$%hd168027168041%_)
                                                              (_%rest168048%_
                                                               _%$%tl168028168043%_))
                                                         (if '#t
                                                             (let* ((_%make-pair168063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%tag168050%_ _%hd168051%_ _%tl168052%_)
                               (let* ((_%hd-depth168054%_
                                       (if (eq? _%tag168050%_ 'splice)
                                           (fx1+ _%depth168011%_)
                                           _%depth168011%_))
                                      (_g169239_
                                       (_%recur168007%_
                                        _%hd168051%_
                                        _%vars168010%_
                                        _%hd-depth168054%_)))
                                 (begin
                                   (let ((_g169240_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g169239_)
                                                (##values-length _g169239_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g169240_ 2)))
                                         (error "Context expects 2 values"
                                                _g169240_)))
                                   (let ((_%hd168056%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g169239_ 0)))
                                         (_%vars168057%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g169239_ 1))))
                                     (let ((_g169241_
                                            (_%recur168007%_
                                             _%tl168052%_
                                             _%vars168057%_
                                             _%depth168011%_)))
                                       (begin
                                         (let ((_g169242_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g169241_)
                                                      (##values-length
                                                       _g169241_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g169242_ 2)))
                                               (error "Context expects 2 values"
                                                      _g169242_)))
                                         (let ((_%tl168059%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g169241_ 0)))
                                               (_%vars168060%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g169241_ 1))))
                                           (values (cons* _%tag168050%_
                                                          _%hd168056%_
                                                          _%tl168059%_)
                                                   _%vars168060%_)))))))))
                            (_%$%e168064168071%_ _%rest168048%_)
                            (_%$%E168066168075%_
                             (lambda ()
                               (_%make-pair168063%_
                                'cons
                                _%hd168046%_
                                _%rest168048%_)))
                            (_%$%E168065168091%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e168064168071%_)
                                   (let ((_%$%e168067168079%_
                                          (gx#syntax-e _%$%e168064168071%_)))
                                     (let ((_%$%hd168068168082%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e168067168079%_)))
                                           (_%$%tl168069168084%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e168067168079%_))))
                                       (let* ((_%rest-hd168087%_
                                               _%$%hd168068168082%_)
                                              (_%rest-tl168089%_
                                               _%$%tl168069168084%_))
                                         (if '#t
                                             (if (gx#ellipsis?
                                                  _%rest-hd168087%_)
                                                 (_%make-pair168063%_
                                                  'splice
                                                  _%hd168046%_
                                                  _%rest-tl168089%_)
                                                 (_%make-pair168063%_
                                                  'cons
                                                  _%hd168046%_
                                                  _%rest168048%_))
                                             (_%$%E168066168075%_)))))
                                   (_%$%E168066168075%_)))))
                       (_%$%E168065168091%_))
                     (_%$%E168025168034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%E168025168034%_)))))
                                       (_%$%E168024168095%_))
                                     (if (gx#stx-null? _%e168009%_)
                                         (values '(null) _%vars168010%_)
                                         (if (gx#stx-vector? _%e168009%_)
                                             (let ((_g169243_
                                                    (_%recur168007%_
                                                     (vector->list
                                                      (gx#syntax-e
                                                       _%e168009%_))
                                                     _%vars168010%_
                                                     _%depth168011%_)))
                                               (begin
                                                 (let ((_g169244_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g169243_)
                                                              (##values-length
                                                               _g169243_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g169244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g169244_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%e168101%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g169243_
                                                           0)))
                                                       (_%vars168102%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g169243_
                                                           1))))
                                                   (values (cons 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e168101%_)
                   _%vars168102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-box? _%e168009%_)
                                                 (let ((_g169245_
                                                        (_%recur168007%_
                                                         (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e168009%_))
                 _%vars168010%_
                 _%depth168011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g169246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g169245_)
                          (##values-length _g169245_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g169246_ 2)))
                   (error "Context expects 2 values" _g169246_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%e168105%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g169245_
                                                               0)))
                                                           (_%vars168106%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g169245_
                                                               1))))
                                                       (values (cons 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e168105%_)
                       _%vars168106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-datum?
                                                      _%e168009%_)
                                                     (values (cons 'datum
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%e168009%_))
                     _%vars168010%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad pattern"
                                                      _%stx167923%_
                                                      _%e168009%_)))))))))))
                 (let* ((_%$%e167933167946%_ _%stx167923%_)
                        (_%$%E167935167950%_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case clause"
                            _%$%e167933167946%_)))
                        (_%$%E167934168000%_
                         (lambda ()
                           (if (gx#stx-pair? _%$%e167933167946%_)
                               (let ((_%$%e167936167954%_
                                      (gx#syntax-e _%$%e167933167946%_)))
                                 (let ((_%$%hd167937167957%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e167936167954%_)))
                                       (_%$%tl167938167959%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e167936167954%_))))
                                   (if (gx#stx-pair? _%$%tl167938167959%_)
                                       (let ((_%$%e167939167962%_
                                              (gx#syntax-e
                                               _%$%tl167938167959%_)))
                                         (let ((_%$%hd167940167965%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e167939167962%_)))
                                               (_%$%tl167941167967%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e167939167962%_))))
                                           (let ((_%expr167970%_
                                                  _%$%hd167940167965%_))
                                             (if (gx#stx-pair?
                                                  _%$%tl167941167967%_)
                                                 (let ((_%$%e167942167972%_
                                                        (gx#syntax-e
                                                         _%$%tl167941167967%_)))
                                                   (let ((_%$%hd167943167975%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e167942167972%_)))
                                                         (_%$%tl167944167977%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e167942167972%_))))
                                                     (let* ((_%ids167980%_
                                                             _%$%hd167943167975%_)
                                                            (_%clauses167982%_
                                                             _%$%tl167944167977%_))
                                                       (if '#t
                                                           (if (not (gx#identifier-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%ids167980%_))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad template identifier list"
                        _%stx167923%_
                        _%ids167980%_)
                       (if (not (gx#stx-list? _%clauses167982%_))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; clauses expected"
                            _%stx167923%_)
                           (let* ((_%ids167987%_
                                   (gx#syntax->list _%ids167980%_))
                                  (_%clauses167989%_
                                   (gx#syntax->list _%clauses167982%_))
                                  (_%clause-ids167991%_
                                   (gx#gentemps _%clauses167989%_))
                                  (_%E167993%_ (gx#genident))
                                  (_%target167995%_ (gx#genident))
                                  (_%first167997%_
                                   (if (null? _%clauses167989%_)
                                       _%E167993%_
                                       (car _%clause-ids167991%_))))
                             (gx#stx-wrap-source
                              (gx#core-list
                               'begin-annotation
                               '@syntax-case
                               (gx#stx-wrap-source
                                (gx#core-list
                                 'let-values
                                 (cons (cons (cons _%E167993%_ '())
                                             (cons (gx#core-list
                                                    'lambda%
                                                    (cons _%target167995%_ '())
                                                    (gx#core-list
                                                     'raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%target167995%_))
                                                   '()))
                                       '())
                                 (_%generate-body167929%_
                                  (_%generate-bindings167928%_
                                   _%target167995%_
                                   _%ids167987%_
                                   _%clauses167989%_
                                   _%clause-ids167991%_
                                   _%E167993%_)
                                  (cons _%first167997%_
                                        (cons _%expr167970%_ '()))))
                                (gx#stx-source _%stx167923%_)))
                              (gx#stx-source _%stx167923%_)))))
                   (_%$%E167935167950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%E167935167950%_)))))
                                       (_%$%E167935167950%_))))
                               (_%$%E167935167950%_)))))
                   (_%$%E167934168000%_))))))
        (lambda _g169247_
          (let ((_g169248_ (let () (declare (not safe)) (##length _g169247_))))
            (cond ((let () (declare (not safe)) (##fx= _g169248_ 1))
                   (apply (lambda (_%stx168648%_)
                            (let* ((_%identifier=?168650%_ 'free-identifier=?)
                                   (_%unwrap-e168652%_ 'syntax-e)
                                   (_%wrap-e168654%_ 'quote-syntax))
                              (_%$%opt-lambda167921168645%_
                               _%stx168648%_
                               _%identifier=?168650%_
                               _%unwrap-e168652%_
                               _%wrap-e168654%_)))
                          _g169247_))
                  ((let () (declare (not safe)) (##fx= _g169248_ 2))
                   (apply (lambda (_%stx168656%_ _%identifier=?168657%_)
                            (let* ((_%unwrap-e168659%_ 'syntax-e)
                                   (_%wrap-e168661%_ 'quote-syntax))
                              (_%$%opt-lambda167921168645%_
                               _%stx168656%_
                               _%identifier=?168657%_
                               _%unwrap-e168659%_
                               _%wrap-e168661%_)))
                          _g169247_))
                  ((let () (declare (not safe)) (##fx= _g169248_ 3))
                   (apply (lambda (_%stx168663%_
                                   _%identifier=?168664%_
                                   _%unwrap-e168665%_)
                            (let ((_%wrap-e168667%_ 'quote-syntax))
                              (_%$%opt-lambda167921168645%_
                               _%stx168663%_
                               _%identifier=?168664%_
                               _%unwrap-e168665%_
                               _%wrap-e168667%_)))
                          _g169247_))
                  ((let () (declare (not safe)) (##fx= _g169248_ 4))
                   (apply _%$%opt-lambda167921168645%_ _g169247_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g169247_)))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx167920%_)
        (if (gx#identifier? _%stx167920%_)
            (gx#syntax-pattern? (gx#syntax-local-e _%stx167920%_ false))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd167878%_ . _%rest167879%_)
        (let ((_%len167881%_ (length _%hd167878%_)))
          (let _%lp167883%_ ((_%rest167885%_ _%rest167879%_))
            (let* ((_%$%rest167886167894%_ _%rest167885%_)
                   (_%$%E167889167898%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest167886167894%_
                             '([hd . rest])
                             'else)
                      (void)))
                   (_%$%else167888167902%_ (lambda () (void)))
                   (_%$%K167890167908%_
                    (lambda (_%rest167905%_ _%hd167906%_)
                      (if (fx= _%len167881%_ (length _%hd167906%_))
                          (_%lp167883%_ _%rest167905%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Splice length mismatch"
                           _%hd167906%_)))))
              (if (pair? _%$%rest167886167894%_)
                  (let ((_%$%hd167891167911%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest167886167894%_)))
                        (_%$%tl167892167913%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest167886167894%_))))
                    (let* ((_%hd167916%_ _%$%hd167891167911%_)
                           (_%rest167918%_ _%$%tl167892167913%_))
                      (_%$%K167890167908%_ _%rest167918%_ _%hd167916%_)))
                  (_%$%else167888167902%_)))))))
    (define gx#syntax-split-splice
      (lambda (_%stx167828%_ _%n167829%_)
        (let _%lp167831%_ ((_%rest167834%_ _%stx167828%_) (_%r167836%_ '()))
          (if (gx#stx-pair? _%rest167834%_)
              (let* ((_%$%g167838167845%_ (gx#syntax-e _%rest167834%_))
                     (_%$%E167840167849%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g167838167845%_
                               '([hd . rest]))
                        (void)))
                     (_%$%K167841167856%_
                      (lambda (_%rest167852%_ _%hd167853%_)
                        (_%lp167831%_
                         _%rest167852%_
                         (cons _%hd167853%_ _%r167836%_)))))
                (if (pair? _%$%g167838167845%_)
                    (let ((_%$%hd167842167859%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g167838167845%_)))
                          (_%$%tl167843167861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g167838167845%_))))
                      (let* ((_%hd167864%_ _%$%hd167842167859%_)
                             (_%rest167866%_ _%$%tl167843167861%_))
                        (_%$%K167841167856%_ _%rest167866%_ _%hd167864%_)))
                    (_%$%E167840167849%_)))
              (let _%lp167868%_ ((_%n167870%_ _%n167829%_)
                                 (_%l167871%_ _%r167836%_)
                                 (_%r167873%_ _%rest167834%_))
                (if (null? _%l167871%_)
                    (values _%l167871%_ _%r167873%_)
                    (if (fxpositive? _%n167870%_)
                        (_%lp167868%_
                         (fx1- _%n167870%_)
                         (cdr _%l167871%_)
                         (cons (car _%l167871%_) _%r167873%_))
                        (values (reverse! _%l167871%_) _%r167873%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx167778%_ _%n167779%_)
        (let _%lp167781%_ ((_%rest167784%_ _%stx167778%_) (_%r167786%_ '()))
          (if (gx#stx-pair? _%rest167784%_)
              (let* ((_%$%g167788167795%_ (gx#syntax-e _%rest167784%_))
                     (_%$%E167790167799%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g167788167795%_
                               '([hd . rest]))
                        (void)))
                     (_%$%K167791167806%_
                      (lambda (_%rest167802%_ _%hd167803%_)
                        (_%lp167781%_
                         _%rest167802%_
                         (cons _%hd167803%_ _%r167786%_)))))
                (if (pair? _%$%g167788167795%_)
                    (let ((_%$%hd167792167809%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g167788167795%_)))
                          (_%$%tl167793167811%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g167788167795%_))))
                      (let* ((_%hd167814%_ _%$%hd167792167809%_)
                             (_%rest167816%_ _%$%tl167793167811%_))
                        (_%$%K167791167806%_ _%rest167816%_ _%hd167814%_)))
                    (_%$%E167790167799%_)))
              (let _%lp167818%_ ((_%n167820%_ _%n167779%_)
                                 (_%l167821%_ _%r167786%_)
                                 (_%r167823%_ _%rest167784%_))
                (if (null? _%l167821%_)
                    (vector _%l167821%_ _%r167823%_)
                    (if (fxpositive? _%n167820%_)
                        (_%lp167818%_
                         (fx1- _%n167820%_)
                         (cdr _%l167821%_)
                         (cons (car _%l167821%_) _%r167823%_))
                        (vector (reverse! _%l167821%_) _%r167823%_))))))))))
