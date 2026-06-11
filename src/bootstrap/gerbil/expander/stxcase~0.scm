(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1781138356)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp192033 (list gx#expander::t))
            (__tmp192032 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp192033
         '(id depth)
         __tmp192032
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args192029%_
        (apply make-instance gx#syntax-pattern::t _%$args192029%_)))
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
      (lambda (_%self192015%_ _%stx192016%_)
        (let ((_%self192019%_ _%self192015%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx192016%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx191482%_)
        (letrec ((_%generate191484%_
                  (lambda (_%e191724%_)
                    (letrec ((_%BUG191726%_
                              (lambda (_%q191891%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx191482%_
                                         _%e191724%_
                                         _%q191891%_))))
                             (_%local-pattern-e191727%_
                              (lambda (_%pat191889%_)
                                (let ((__tmp192034
                                       (##structure-ref
                                        _%pat191889%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp192034))))
                             (_%getvar191728%_
                              (lambda (_%q191886%_ _%vars191887%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q191886%_
                                   _%vars191887%_
                                   _%BUG191726%_))))
                             (_%getarg191729%_
                              (lambda (_%arg191852%_ _%vars191853%_)
                                (let* ((_%$%arg191854191861%_ _%arg191852%_)
                                       (_%$%E191856191865%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg191854191861%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K191857191874%_
                                        (lambda (_%e191868%_ _%tag191869%_)
                                          (let ((_%$e191871%_ _%tag191869%_))
                                            (if (eq? 'ref _%$e191871%_)
                                                (_%getvar191728%_
                                                 _%e191868%_
                                                 _%vars191853%_)
                                                (if (eq? 'pattern _%$e191871%_)
                                                    (_%local-pattern-e191727%_
                                                     _%e191868%_)
                                                    (_%BUG191726%_
                                                     _%arg191852%_)))))))
                                  (if (pair? _%$%arg191854191861%_)
                                      (let ((_%$%hd191858191877%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg191854191861%_)))
                                            (_%$%tl191859191879%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg191854191861%_))))
                                        (let* ((_%tag191882%_
                                                _%$%hd191858191877%_)
                                               (_%e191884%_
                                                _%$%tl191859191879%_))
                                          (_%$%K191857191874%_
                                           _%e191884%_
                                           _%tag191882%_)))
                                      (_%$%E191856191865%_))))))
                      (let _%recur191731%_ ((_%e191733%_ _%e191724%_)
                                            (_%vars191734%_ '()))
                        (let* ((_%$%e191735191742%_ _%e191733%_)
                               (_%$%E191737191746%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e191735191742%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K191738191840%_
                                (lambda (_%body191749%_ _%tag191750%_)
                                  (let ((_%$e191752%_ _%tag191750%_))
                                    (if (eq? 'datum _%$e191752%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body191749%_))
                                        (if (eq? 'term _%$e191752%_)
                                            (let ((_%id191755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body191749%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id191755%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks191758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id191755%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks191758%_)
                                                        (let ((__tmp192035
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body191749%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp192035))
                (let ((__tmp192037
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body191749%_)))
                      (__tmp192036
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body191749%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp192037
                   __tmp192036
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id191755%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body191749%_))
                                                      (_%BUG191726%_
                                                       _%e191733%_))))
                                            (if (eq? 'pattern _%$e191752%_)
                                                (_%local-pattern-e191727%_
                                                 _%body191749%_)
                                                (if (eq? 'ref _%$e191752%_)
                                                    (_%getvar191728%_
                                                     _%body191749%_
                                                     _%vars191734%_)
                                                    (if (eq? 'cons
                                                             _%$e191752%_)
                                                        (let ((__tmp192039
                                                               (_%recur191731%_
                                                                (car _%body191749%_)
                                                                _%vars191734%_))
                                                              (__tmp192038
                                                               (_%recur191731%_
                                                                (cdr _%body191749%_)
                                                                _%vars191734%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp192039
                                                           __tmp192038))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e191752%_)
                    (let ((__tmp192040
                           (_%recur191731%_ _%body191749%_ _%vars191734%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp192040))
                    (if (eq? 'box _%$e191752%_)
                        (let ((__tmp192041
                               (_%recur191731%_
                                _%body191749%_
                                _%vars191734%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp192041))
                        (if (eq? 'splice _%$e191752%_)
                            (let* ((_%$%body191761191772%_ _%body191749%_)
                                   (_%$%E191763191776%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body191761191772%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K191764191814%_
                                    (lambda (_%args191779%_
                                             _%iv191780%_
                                             _%hd191781%_
                                             _%depth191782%_)
                                      (let* ((_%targets191788%_
                                              (map (lambda (_%$%g191783191785%_)
                                                     (_%getarg191729%_
                                                      _%$%g191783191785%_
                                                      _%vars191734%_))
                                                   _%args191779%_))
                                             (_%fold-in191790%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args191779%_)))
                                             (_%fold-out191792%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args191794%_
                                              (let ((__tmp192042
                                                     (cons _%fold-out191792%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp192042
                                                 _%fold-in191790%_)))
                                             (_%lambda-body191811%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth191782%_ '1))
                                                  (let ((_%r-args191802%_
                                                         (map (lambda (_%arg191796%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg191796%_)))
                      _%args191779%_))
                (_%r-vars191803%_
                 (let ((__tmp192043
                        (lambda (_%arg191798%_ _%var191799%_ _%r191800%_)
                          (cons (cons (cdr _%arg191798%_) _%var191799%_)
                                _%r191800%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp192043
                    _%vars191734%_
                    _%args191779%_
                    _%fold-in191790%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur191731%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth191782%_ '1))
                         (cons _%hd191781%_
                               (cons (cons 'var _%fold-out191792%_)
                                     _%r-args191802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars191803%_))
                                                  (let* ((_%hd-vars191809%_
                                                          (let ((__tmp192044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg191805%_ _%var191806%_ _%r191807%_)
                           (cons (cons (cdr _%arg191805%_) _%var191806%_)
                                 _%r191807%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp192044
                     _%vars191734%_
                     _%args191779%_
                     _%fold-in191790%_)))
                 (__tmp192045
                  (_%recur191731%_ _%hd191781%_ _%hd-vars191809%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp192045
                                                     _%fold-out191792%_)))))
                                        (let ((__tmp192049
                                               (if (let ((__tmp192050
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets191788%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp192050 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets191788%_))
                                                   '#!void))
                                              (__tmp192046
                                               (let ((__tmp192048
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args191794%_
                                                         _%lambda-body191811%_)))
                                                     (__tmp192047
                                                      (_%recur191731%_
                                                       _%iv191780%_
                                                       _%vars191734%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp192048
                                                  __tmp192047
                                                  _%targets191788%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp192049
                                           __tmp192046))))))
                              (if (pair? _%$%body191761191772%_)
                                  (let ((_%$%hd191765191817%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body191761191772%_)))
                                        (_%$%tl191766191819%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body191761191772%_))))
                                    (let ((_%depth191822%_
                                           _%$%hd191765191817%_))
                                      (if (pair? _%$%tl191766191819%_)
                                          (let ((_%$%hd191767191824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl191766191819%_)))
                                                (_%$%tl191768191826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl191766191819%_))))
                                            (let ((_%hd191829%_
                                                   _%$%hd191767191824%_))
                                              (if (pair? _%$%tl191768191826%_)
                                                  (let ((_%$%hd191769191831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl191768191826%_)))
                                                        (_%$%tl191770191833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl191768191826%_))))
                                                    (let* ((_%iv191836%_
                                                            _%$%hd191769191831%_)
                                                           (_%args191838%_
                                                            _%$%tl191770191833%_))
                                                      (_%$%K191764191814%_
                                                       _%args191838%_
                                                       _%iv191836%_
                                                       _%hd191829%_
                                                       _%depth191822%_)))
                                                  (_%$%E191763191776%_))))
                                          (_%$%E191763191776%_))))
                                  (_%$%E191763191776%_)))
                            (if (eq? 'var _%$e191752%_)
                                _%body191749%_
                                (_%BUG191726%_ _%e191733%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e191735191742%_)
                              (let ((_%$%hd191739191843%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e191735191742%_)))
                                    (_%$%tl191740191845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e191735191742%_))))
                                (let* ((_%tag191848%_ _%$%hd191739191843%_)
                                       (_%body191850%_ _%$%tl191740191845%_))
                                  (_%$%K191738191840%_
                                   _%body191850%_
                                   _%tag191848%_)))
                              (_%$%E191737191746%_)))))))
                 (_%parse191485%_
                  (lambda (_%e191526%_)
                    (letrec ((_%make-cons191528%_
                              (lambda (_%hd191716%_ _%tl191717%_)
                                (let ((_g192051_ _%hd191716%_)
                                      (_g192053_ _%tl191717%_))
                                  (begin
                                    (let ((_g192052_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192051_)
                                                 (##values-length _g192051_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192052_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192052_)))
                                    (let ((_g192054_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192053_)
                                                 (##values-length _g192053_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192054_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192054_)))
                                    (let ((_%hd-e191719%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g192051_ 0)))
                                          (_%hd-vars191720%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g192051_ 1))))
                                      (let ((_%tl-e191721%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g192053_ 0)))
                                            (_%tl-vars191722%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g192053_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e191719%_
                                                            _%tl-e191721%_))
                                                (append _%hd-vars191720%_
                                                        _%tl-vars191722%_))))))))
                             (_%make-splice191529%_
                              (lambda (_%where191652%_
                                       _%depth191653%_
                                       _%hd191654%_
                                       _%tl191655%_)
                                (let ((_g192055_ _%hd191654%_)
                                      (_g192057_ _%tl191655%_))
                                  (begin
                                    (let ((_g192056_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192055_)
                                                 (##values-length _g192055_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192056_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192056_)))
                                    (let ((_g192058_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192057_)
                                                 (##values-length _g192057_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192058_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192058_)))
                                    (let ((_%hd-e191657%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g192055_ 0)))
                                          (_%hd-vars191658%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g192055_ 1))))
                                      (let ((_%tl-e191659%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g192057_ 0)))
                                            (_%tl-vars191660%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g192057_ 1))))
                                        (let _%lp191662%_ ((_%rest191664%_
                                                            _%hd-vars191658%_)
                                                           (_%targets191665%_
                                                            '())
                                                           (_%vars191666%_
                                                            _%tl-vars191660%_))
                                          (let* ((_%$%rest191667191677%_
                                                  _%rest191664%_)
                                                 (_%$%else191669191685%_
                                                  (lambda ()
                                                    (if (null? _%targets191665%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx191482%_
                                                           _%where191652%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth191653%_
                                    (cons _%hd-e191657%_
                                          (cons _%tl-e191659%_
                                                _%targets191665%_))))
                        _%vars191666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K191671191697%_
                                                  (lambda (_%rest191688%_
                                                           _%hd-pat191689%_
                                                           _%hd-depth*191690%_)
                                                    (let ((_%hd-depth191692%_
                                                           (fx- _%hd-depth*191690%_
                                                                _%depth191653%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth191692%_))
                                                          (_%lp191662%_
                                                           _%rest191688%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat191689%_)
                         _%targets191665%_)
                   (cons (cons _%hd-depth191692%_ _%hd-pat191689%_)
                         _%vars191666%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth191692%_))
                      (_%lp191662%_
                       _%rest191688%_
                       (cons (cons 'pattern _%hd-pat191689%_)
                             _%targets191665%_)
                       _%vars191666%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx191482%_
                         _%where191652%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest191667191677%_)
                                                (let ((_%$%hd191672191700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest191667191677%_)))
                                                      (_%$%tl191673191702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest191667191677%_))))
                                                  (if (pair? _%$%hd191672191700%_)
                                                      (let ((_%$%hd191674191705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd191672191700%_)))
                    (_%$%tl191675191707%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd191672191700%_))))
                (let* ((_%hd-depth*191710%_ _%$%hd191674191705%_)
                       (_%hd-pat191712%_ _%$%tl191675191707%_)
                       (_%rest191714%_ _%$%tl191673191702%_))
                  (_%$%K191671191697%_
                   _%rest191714%_
                   _%hd-pat191712%_
                   _%hd-depth*191710%_)))
              (_%$%else191669191685%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else191669191685%_))))))))))
                             (_%recur191530%_
                              (lambda (_%e191535%_ _%is-e?191536%_)
                                (if (_%is-e?191536%_ _%e191535%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx191482%_))
                                    (if (gx#syntax-local-pattern? _%e191535%_)
                                        (let* ((_%pat191540%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e191535%_)))
                                               (_%depth191542%_
                                                (##structure-ref
                                                 _%pat191540%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth191542%_)
                                              (values (cons 'ref _%pat191540%_)
                                                      (cons (cons _%depth191542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat191540%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat191540%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e191535%_))
                                            (values (cons 'term _%e191535%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e191535%_))
                                                (let* ((_%$%e191546191553%_
                                                        _%e191535%_)
                                                       (_%$%E191548191557%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e191546191553%_))))
                                                       (_%$%E191547191639%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e191546191553%_))
                      (let ((_%$%e191549191561%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e191546191553%_))))
                        (let ((_%$%hd191550191564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e191549191561%_)))
                              (_%$%tl191551191566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e191549191561%_))))
                          (let* ((_%hd191569%_ _%$%hd191550191564%_)
                                 (_%rest191571%_ _%$%tl191551191566%_))
                            (if (_%is-e?191536%_ _%hd191569%_)
                                (let* ((_%$%e191572191579%_ _%rest191571%_)
                                       (_%$%E191574191583%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx191482%_
                                             _%e191535%_))))
                                       (_%$%E191573191597%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e191572191579%_))
                                              (let ((_%$%e191575191587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e191572191579%_))))
                                                (let ((_%$%hd191576191590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e191575191587%_)))
                                                      (_%$%tl191577191592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e191575191587%_))))
                                                  (let ((_%rest191595%_
                                                         _%$%hd191576191590%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl191577191592%_))
                                                        (_%recur191530%_
                                                         _%rest191595%_
                                                         false)
                                                        (_%$%E191574191583%_)))))
                                              (_%$%E191574191583%_)))))
                                  (_%$%E191573191597%_))
                                (let _%lp191601%_ ((_%rest191603%_
                                                    _%rest191571%_)
                                                   (_%depth191604%_ '0))
                                  (let* ((_%$%e191605191612%_ _%rest191603%_)
                                         (_%$%E191607191616%_
                                          (lambda ()
                                            (if (fxpositive? _%depth191604%_)
                                                (_%make-splice191529%_
                                                 _%e191535%_
                                                 _%depth191604%_
                                                 (_%recur191530%_
                                                  _%hd191569%_
                                                  _%is-e?191536%_)
                                                 (_%recur191530%_
                                                  _%rest191603%_
                                                  _%is-e?191536%_))
                                                (_%make-cons191528%_
                                                 (_%recur191530%_
                                                  _%hd191569%_
                                                  _%is-e?191536%_)
                                                 (_%recur191530%_
                                                  _%rest191603%_
                                                  _%is-e?191536%_)))))
                                         (_%$%E191606191635%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e191605191612%_))
                                                (let ((_%$%e191608191620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e191605191612%_))))
                                                  (let ((_%$%hd191609191623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e191608191620%_)))
                                                        (_%$%tl191610191625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e191608191620%_))))
                                                    (let* ((_%rest-hd191628%_
                                                            _%$%hd191609191623%_)
                                                           (_%rest-tl191630%_
                                                            _%$%tl191610191625%_))
                                                      (if (_%is-e?191536%_
                                                           _%rest-hd191628%_)
                                                          (_%lp191601%_
                                                           _%rest-tl191630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth191604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth191604%_)
                      (_%make-splice191529%_
                       _%e191535%_
                       _%depth191604%_
                       (_%recur191530%_ _%hd191569%_ _%is-e?191536%_)
                       (_%recur191530%_ _%rest191603%_ _%is-e?191536%_))
                      (_%make-cons191528%_
                       (_%recur191530%_ _%hd191569%_ _%is-e?191536%_)
                       (_%recur191530%_ _%rest191603%_ _%is-e?191536%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E191607191616%_)))))
                                    (_%$%E191606191635%_)))))))
                      (_%$%E191548191557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191547191639%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e191535%_))
                                                    (let ((_g192059_
                                                           (_%recur191530%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e191535%_)))
                    _%is-e?191536%_)))
              (begin
                (let ((_g192060_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g192059_)
                             (##values-length _g192059_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g192060_ 2)))
                      (error "Context expects 2 values" _g192060_)))
                (let ((_%e191644%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g192059_ 0)))
                      (_%vars191645%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g192059_ 1))))
                  (values (cons 'vector _%e191644%_) _%vars191645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e191535%_))
                                                        (let ((_g192061_
                                                               (_%recur191530%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e191535%_)))
                        _%is-e?191536%_)))
                  (begin
                    (let ((_g192062_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g192061_)
                                 (##values-length _g192061_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g192062_ 2)))
                          (error "Context expects 2 values" _g192062_)))
                    (let ((_%e191648%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g192061_ 0)))
                          (_%vars191649%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g192061_ 1))))
                      (values (cons 'box _%e191648%_) _%vars191649%_))))
                (values (cons 'datum _%e191535%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g192063_
                             (_%recur191530%_ _%e191526%_ gx#ellipsis?)))
                        (begin
                          (let ((_g192064_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g192063_)
                                       (##values-length _g192063_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g192064_ 2)))
                                (error "Context expects 2 values" _g192064_)))
                          (let ((_%tree191532%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g192063_ 0)))
                                (_%vars191533%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g192063_ 1))))
                            (if (null? _%vars191533%_)
                                _%tree191532%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx191482%_
                                   _%vars191533%_))))))))))
          (let* ((_%$%e191486191496%_ _%stx191482%_)
                 (_%$%E191488191500%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx191482%_))))
                 (_%$%E191487191522%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e191486191496%_))
                        (let ((_%$%e191489191504%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e191486191496%_))))
                          (let ((_%$%hd191490191507%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e191489191504%_)))
                                (_%$%tl191491191509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e191489191504%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl191491191509%_))
                                (let ((_%$%e191492191512%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl191491191509%_))))
                                  (let ((_%$%hd191493191515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e191492191512%_)))
                                        (_%$%tl191494191517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e191492191512%_))))
                                    (let ((_%form191520%_
                                           _%$%hd191493191515%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl191494191517%_))
                                          (let ((__tmp192066
                                                 (_%generate191484%_
                                                  (_%parse191485%_
                                                   _%form191520%_)))
                                                (__tmp192065
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx191482%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp192066
                                             __tmp192065))
                                          (_%$%E191488191500%_)))))
                                (_%$%E191488191500%_))))
                        (_%$%E191488191500%_)))))
            (_%$%E191487191522%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx190731%_
               _%identifier=?190732%_
               _%unwrap-e190733%_
               _%wrap-e190734%_)
        (letrec ((_%generate-bindings190736%_
                  (lambda (_%target191346%_
                           _%ids191347%_
                           _%clauses191348%_
                           _%clause-ids191349%_
                           _%E191350%_)
                    (letrec ((_%generate1191352%_
                              (lambda (_%clause191449%_
                                       _%clause-id191450%_
                                       _%E191451%_)
                                (cons (cons _%clause-id191450%_ '())
                                      (cons (let ((__tmp192068
                                                   (cons _%target191346%_ '()))
                                                  (__tmp192067
                                                   (_%generate-clause190738%_
                                                    _%target191346%_
                                                    _%ids191347%_
                                                    _%clause191449%_
                                                    _%E191451%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp192068
                                               __tmp192067))
                                            '())))))
                      (let _%lp191354%_ ((_%rest191356%_ _%clauses191348%_)
                                         (_%rest-ids191357%_
                                          _%clause-ids191349%_)
                                         (_%bindings191358%_ '()))
                        (let* ((_%$%rest191359191367%_ _%rest191356%_)
                               (_%$%else191361191375%_
                                (lambda () _%bindings191358%_))
                               (_%$%K191363191437%_
                                (lambda (_%rest191378%_ _%clause191379%_)
                                  (let* ((_%$%rest-ids191380191387%_
                                          _%rest-ids191357%_)
                                         (_%$%E191382191391%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids191380191387%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K191383191425%_
                                          (lambda (_%rest-ids191394%_
                                                   _%clause-id191395%_)
                                            (let* ((_%$%rest-ids191396191404%_
                                                    _%rest-ids191394%_)
                                                   (_%$%else191398191412%_
                                                    (lambda ()
                                                      (cons (_%generate1191352%_
                                                             _%clause191379%_
                                                             _%clause-id191395%_
                                                             _%E191350%_)
                                                            _%bindings191358%_)))
                                                   (_%$%K191400191417%_
                                                    (lambda (_%next-clause-id191415%_)
                                                      (_%lp191354%_
                                                       _%rest191378%_
                                                       _%rest-ids191394%_
                                                       (cons (_%generate1191352%_
                                                              _%clause191379%_
                                                              _%clause-id191395%_
                                                              _%next-clause-id191415%_)
                                                             _%bindings191358%_)))))
                                              (if (pair? _%$%rest-ids191396191404%_)
                                                  (let* ((_%$%hd191401191420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids191396191404%_)))
                                                         (_%next-clause-id191423%_
                                                          _%$%hd191401191420%_))
                                                    (_%$%K191400191417%_
                                                     _%next-clause-id191423%_))
                                                  (_%$%else191398191412%_))))))
                                    (if (pair? _%$%rest-ids191380191387%_)
                                        (let ((_%$%hd191384191428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids191380191387%_)))
                                              (_%$%tl191385191430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids191380191387%_))))
                                          (let* ((_%clause-id191433%_
                                                  _%$%hd191384191428%_)
                                                 (_%rest-ids191435%_
                                                  _%$%tl191385191430%_))
                                            (_%$%K191383191425%_
                                             _%rest-ids191435%_
                                             _%clause-id191433%_)))
                                        (_%$%E191382191391%_))))))
                          (if (pair? _%$%rest191359191367%_)
                              (let ((_%$%hd191364191440%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest191359191367%_)))
                                    (_%$%tl191365191442%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest191359191367%_))))
                                (let* ((_%clause191445%_ _%$%hd191364191440%_)
                                       (_%rest191447%_ _%$%tl191365191442%_))
                                  (_%$%K191363191437%_
                                   _%rest191447%_
                                   _%clause191445%_)))
                              (_%$%else191361191375%_)))))))
                 (_%generate-body190737%_
                  (lambda (_%bindings191306%_ _%body191307%_)
                    (let _%recur191309%_ ((_%rest191311%_ _%bindings191306%_))
                      (let* ((_%$%rest191312191320%_ _%rest191311%_)
                             (_%$%else191314191328%_
                              (lambda () _%body191307%_))
                             (_%$%K191316191334%_
                              (lambda (_%rest191331%_ _%hd191332%_)
                                (let ((__tmp192070 (cons _%hd191332%_ '()))
                                      (__tmp192069
                                       (_%recur191309%_ _%rest191331%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp192070
                                   __tmp192069)))))
                        (if (pair? _%$%rest191312191320%_)
                            (let ((_%$%hd191317191337%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest191312191320%_)))
                                  (_%$%tl191318191339%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest191312191320%_))))
                              (let* ((_%hd191342%_ _%$%hd191317191337%_)
                                     (_%rest191344%_ _%$%tl191318191339%_))
                                (_%$%K191316191334%_
                                 _%rest191344%_
                                 _%hd191342%_)))
                            (_%$%else191314191328%_))))))
                 (_%generate-clause190738%_
                  (lambda (_%target191169%_
                           _%ids191170%_
                           _%clause191171%_
                           _%E191172%_)
                    (letrec ((_%generate1191174%_
                              (lambda (_%hd191261%_
                                       _%fender191262%_
                                       _%body191263%_)
                                (let ((_g192071_
                                       (_%parse-clause190740%_
                                        _%hd191261%_
                                        _%ids191170%_)))
                                  (begin
                                    (let ((_g192072_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192071_)
                                                 (##values-length _g192071_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192072_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192072_)))
                                    (let ((_%e191265%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g192071_ 0)))
                                          (_%mvars191266%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g192071_ 1))))
                                      (let* ((_%pvars191268%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars191266%_))))
                                             (_%E191270%_
                                              (cons _%E191172%_
                                                    (cons _%target191169%_
                                                          '())))
                                             (_%K191303%_
                                              (let ((__tmp192073
                                                     (let ((__tmp192075
                                                            (map (lambda (_%mvar191272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar191273%_)
                           (let* ((_%$%mvar191274191281%_ _%mvar191272%_)
                                  (_%$%E191276191285%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar191274191281%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K191277191291%_
                                   (lambda (_%depth191288%_ _%id191289%_)
                                     (cons _%id191289%_
                                           (cons (let ((__tmp192077
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id191289%_)))
                                                       (__tmp192076
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar191273%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp192077
                                                    __tmp192076
                                                    _%depth191288%_))
                                                 '())))))
                             (if (pair? _%$%mvar191274191281%_)
                                 (let ((_%$%hd191278191294%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar191274191281%_)))
                                       (_%$%tl191279191296%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar191274191281%_))))
                                   (let* ((_%id191299%_ _%$%hd191278191294%_)
                                          (_%depth191301%_
                                           _%$%tl191279191296%_))
                                     (_%$%K191277191291%_
                                      _%depth191301%_
                                      _%id191299%_)))
                                 (_%$%E191276191285%_))))
                         _%mvars191266%_
                         _%pvars191268%_))
                   (__tmp192074
                    (if (eq? _%fender191262%_ '#t)
                        _%body191263%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender191262%_
                           _%body191263%_
                           _%E191270%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp192075 __tmp192074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars191268%_
                                                 __tmp192073))))
                                        (_%generate-match190739%_
                                         _%hd191261%_
                                         _%target191169%_
                                         _%e191265%_
                                         _%mvars191266%_
                                         _%K191303%_
                                         _%E191270%_))))))))
                      (let* ((_%$%e191175191195%_ _%clause191171%_)
                             (_%$%E191184191199%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e191175191195%_))))
                             (_%$%E191177191233%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e191175191195%_))
                                    (let ((_%$%e191185191203%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e191175191195%_))))
                                      (let ((_%$%hd191186191206%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e191185191203%_)))
                                            (_%$%tl191187191208%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e191185191203%_))))
                                        (let ((_%hd191211%_
                                               _%$%hd191186191206%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl191187191208%_))
                                              (let ((_%$%e191188191213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl191187191208%_))))
                                                (let ((_%$%hd191189191216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e191188191213%_)))
                                                      (_%$%tl191190191218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e191188191213%_))))
                                                  (let ((_%fender191221%_
                                                         _%$%hd191189191216%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl191190191218%_))
                                                        (let ((_%$%e191191191223%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl191190191218%_))))
                  (let ((_%$%hd191192191226%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e191191191223%_)))
                        (_%$%tl191193191228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e191191191223%_))))
                    (let ((_%body191231%_ _%$%hd191192191226%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl191193191228%_))
                          (_%generate1191174%_
                           _%hd191211%_
                           _%fender191221%_
                           _%body191231%_)
                          (_%$%E191184191199%_)))))
                (_%$%E191184191199%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191184191199%_)))))
                                    (_%$%E191184191199%_))))
                             (_%$%E191176191257%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e191175191195%_))
                                    (let ((_%$%e191178191237%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e191175191195%_))))
                                      (let ((_%$%hd191179191240%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e191178191237%_)))
                                            (_%$%tl191180191242%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e191178191237%_))))
                                        (let ((_%hd191245%_
                                               _%$%hd191179191240%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl191180191242%_))
                                              (let ((_%$%e191181191247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl191180191242%_))))
                                                (let ((_%$%hd191182191250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e191181191247%_)))
                                                      (_%$%tl191183191252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e191181191247%_))))
                                                  (let ((_%body191255%_
                                                         _%$%hd191182191250%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl191183191252%_))
                                                        (_%generate1191174%_
                                                         _%hd191245%_
                                                         '#t
                                                         _%body191255%_)
                                                        (_%$%E191177191233%_)))))
                                              (_%$%E191177191233%_)))))
                                    (_%$%E191177191233%_)))))
                        (_%$%E191176191257%_)))))
                 (_%generate-match190739%_
                  (lambda (_%where190918%_
                           _%target190919%_
                           _%hd190920%_
                           _%mvars190921%_
                           _%K190922%_
                           _%E190923%_)
                    (letrec ((_%BUG190925%_
                              (lambda (_%q191167%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx190731%_
                                         _%hd190920%_
                                         _%q191167%_))))
                             (_%recur190926%_
                              (lambda (_%e191017%_
                                       _%vars191018%_
                                       _%target191019%_
                                       _%E191020%_
                                       _%k191021%_)
                                (let* ((_%$%e191022191029%_ _%e191017%_)
                                       (_%$%E191024191033%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e191022191029%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K191025191155%_
                                        (lambda (_%body191036%_ _%tag191037%_)
                                          (let ((_%$e191039%_ _%tag191037%_))
                                            (if (eq? 'any _%$e191039%_)
                                                (_%k191021%_ _%vars191018%_)
                                                (if (eq? 'id _%$e191039%_)
                                                    (let ((__tmp192082
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target191019%_)))
                                                          (__tmp192078
                                                           (let ((__tmp192080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp192081
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e190734%_
                                    _%body191036%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?190732%_
                             __tmp192081
                             _%target191019%_)))
                         (__tmp192079 (_%k191021%_ _%vars191018%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp192080 __tmp192079 _%E191020%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp192082 __tmp192078 _%E191020%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e191039%_)
                                                        (_%k191021%_
                                                         (cons (cons _%body191036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target191019%_)
                       _%vars191018%_))
                (if (eq? 'cons _%$e191039%_)
                    (let ((_%$e191042%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd191043%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl191044%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp192088
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target191019%_)))
                            (__tmp192083
                             (let ((__tmp192087
                                    (cons (cons (cons _%$e191042%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e190733%_
                                                         _%target191019%_))
                                                      '()))
                                          '()))
                                   (__tmp192084
                                    (let ((__tmp192086
                                           (cons (cons (cons _%$hd191043%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e191042%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl191044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e191042%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp192085
                                           (let* ((_%$%body191045191052%_
                                                   _%body191036%_)
                                                  (_%$%E191047191056%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body191045191052%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K191048191064%_
                                                   (lambda (_%tl191059%_
                                                            _%hd191060%_)
                                                     (_%recur190926%_
                                                      _%hd191060%_
                                                      _%vars191018%_
                                                      _%$hd191043%_
                                                      _%E191020%_
                                                      (lambda (_%vars191062%_)
                                                        (_%recur190926%_
                                                         _%tl191059%_
                                                         _%vars191062%_
                                                         _%$tl191044%_
                                                         _%E191020%_
                                                         _%k191021%_))))))
                                             (if (pair? _%$%body191045191052%_)
                                                 (let ((_%$%hd191049191067%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body191045191052%_)))
                                                       (_%$%tl191050191069%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body191045191052%_))))
                                                   (let* ((_%hd191072%_
                                                           _%$%hd191049191067%_)
                                                          (_%tl191074%_
                                                           _%$%tl191050191069%_))
                                                     (_%$%K191048191064%_
                                                      _%tl191074%_
                                                      _%hd191072%_)))
                                                 (_%$%E191047191056%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp192086
                                       __tmp192085))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp192087
                                __tmp192084))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp192088
                         __tmp192083
                         _%E191020%_)))
                    (if (eq? 'splice _%$e191039%_)
                        (let* ((_%$%body191075191082%_ _%body191036%_)
                               (_%$%E191077191086%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body191075191082%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K191078191137%_
                                (lambda (_%tl191089%_ _%hd191090%_)
                                  (let* ((_%rlen191092%_
                                          (_%splice-rlen190927%_ _%tl191089%_))
                                         (_%$target191094%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd191096%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl191098%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp191100%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e191102%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd191104%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl191106%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars191108%_
                                          (_%splice-vars190928%_ _%hd191090%_))
                                         (_%lvars191110%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars191108%_)))
                                         (_%tlvars191112%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars191108%_)))
                                         (_%linit191116%_
                                          (map (lambda (_%var191114%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars191110%_)))
                                    (letrec ((_%make-loop191119%_
                                              (lambda (_%vars191123%_)
                                                (let ((__tmp192090
                                                       (cons (cons (cons _%$lp191100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp192103
                                        (cons _%$hd191096%_ _%lvars191110%_))
                                       (__tmp192091
                                        (let ((__tmp192102
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd191096%_)))
                                              (__tmp192096
                                               (let ((__tmp192101
                                                      (cons (cons (cons _%$lp-e191102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e190733%_
                                   _%$hd191096%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192097
                                                      (let ((__tmp192100
                                                             (cons (cons (cons _%$lp-hd191104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e191102%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl191106%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e191102%_))
                                             '()))
                                 '())))
                    (__tmp192098
                     (_%recur190926%_
                      _%hd191090%_
                      '()
                      _%$lp-hd191104%_
                      _%E191020%_
                      (lambda (_%hdvars191125%_)
                        (cons _%$lp191100%_
                              (cons _%$lp-tl191106%_
                                    (map (lambda (_%svar191127%_
                                                  _%lvar191128%_)
                                           (let ((__tmp192099
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar191127%_
                                                     _%hdvars191125%_
                                                     _%BUG190925%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp192099
                                              _%lvar191128%_)))
                                         _%svars191108%_
                                         _%lvars191110%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp192100 __tmp192098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp192101
                                                  __tmp192097)))
                                              (__tmp192092
                                               (let ((__tmp192095
                                                      (map (lambda (_%lvar191130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar191131%_)
                     (cons (cons _%tlvar191131%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar191130%_))
                                 '())))
                   _%lvars191110%_
                   _%tlvars191112%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192093
                                                      (_%k191021%_
                                                       (let ((__tmp192094
                                                              (lambda (_%svar191133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar191134%_
                               _%r191135%_)
                        (cons (cons _%svar191133%_ _%tlvar191134%_)
                              _%r191135%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp192094
                  _%vars191123%_
                  _%svars191108%_
                  _%tlvars191112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp192095
                                                  __tmp192093))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp192102
                                           __tmp192096
                                           __tmp192092))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp192103
                                    __tmp192091))
                                 '()))
                     '()))
              (__tmp192089
               (cons _%$lp191100%_ (cons _%$target191094%_ _%linit191116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp192090
                                                   __tmp192089)))))
                                      (let ((_%body191121%_
                                             (let ((__tmp192105
                                                    (cons (cons (cons _%$target191094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl191098%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target191019%_
                                 _%rlen191092%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192104
                                                    (_%recur190926%_
                                                     _%tl191089%_
                                                     _%vars191018%_
                                                     _%$tl191098%_
                                                     _%E191020%_
                                                     _%make-loop191119%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp192105
                                                __tmp192104))))
                                        (let ((__tmp192109
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target191019%_)))
                                              (__tmp192106
                                               (if (zero? _%rlen191092%_)
                                                   _%body191121%_
                                                   (let ((__tmp192107
                                                          (let ((__tmp192108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target191019%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp192108 _%rlen191092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp192107
                                                      _%body191121%_
                                                      _%E191020%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp192109
                                           __tmp192106
                                           _%E191020%_))))))))
                          (if (pair? _%$%body191075191082%_)
                              (let ((_%$%hd191079191140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body191075191082%_)))
                                    (_%$%tl191080191142%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body191075191082%_))))
                                (let* ((_%hd191145%_ _%$%hd191079191140%_)
                                       (_%tl191147%_ _%$%tl191080191142%_))
                                  (_%$%K191078191137%_
                                   _%tl191147%_
                                   _%hd191145%_)))
                              (_%$%E191077191086%_)))
                        (if (eq? 'null _%$e191039%_)
                            (let ((__tmp192111
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target191019%_)))
                                  (__tmp192110 (_%k191021%_ _%vars191018%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp192111
                               __tmp192110
                               _%E191020%_))
                            (if (eq? 'vector _%$e191039%_)
                                (let ((_%$e191149%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp192116
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target191019%_)))
                                        (__tmp192112
                                         (let ((__tmp192114
                                                (cons (cons (cons _%$e191149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp192115
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e190733%_
                                    _%target191019%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp192115))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp192113
                                                (_%recur190926%_
                                                 _%body191036%_
                                                 _%vars191018%_
                                                 _%$e191149%_
                                                 _%E191020%_
                                                 _%k191021%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp192114
                                            __tmp192113))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp192116
                                     __tmp192112
                                     _%E191020%_)))
                                (if (eq? 'box _%$e191039%_)
                                    (let ((_%$e191151%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp192121
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target191019%_)))
                                            (__tmp192117
                                             (let ((__tmp192119
                                                    (cons (cons (cons _%$e191151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp192120
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e190733%_
                                        _%target191019%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp192120))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192118
                                                    (_%recur190926%_
                                                     _%body191036%_
                                                     _%vars191018%_
                                                     _%$e191151%_
                                                     _%E191020%_
                                                     _%k191021%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp192119
                                                __tmp192118))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp192121
                                         __tmp192117
                                         _%E191020%_)))
                                    (if (eq? 'datum _%$e191039%_)
                                        (let ((_%$e191153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp192127
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target191019%_)))
                                                (__tmp192122
                                                 (let ((__tmp192126
                                                        (cons (cons (cons _%$e191153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target191019%_))
                                  '()))
                      '()))
               (__tmp192123
                (let ((__tmp192125
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e191153%_ _%body191036%_)))
                      (__tmp192124 (_%k191021%_ _%vars191018%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp192125 __tmp192124 _%E191020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp192126
                                                    __tmp192123))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp192127
                                             __tmp192122
                                             _%E191020%_)))
                                        (_%BUG190925%_
                                         _%e191017%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e191022191029%_)
                                      (let ((_%$%hd191026191158%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e191022191029%_)))
                                            (_%$%tl191027191160%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e191022191029%_))))
                                        (let* ((_%tag191163%_
                                                _%$%hd191026191158%_)
                                               (_%body191165%_
                                                _%$%tl191027191160%_))
                                          (_%$%K191025191155%_
                                           _%body191165%_
                                           _%tag191163%_)))
                                      (_%$%E191024191033%_)))))
                             (_%splice-rlen190927%_
                              (lambda (_%e190979%_)
                                (let _%lp190981%_ ((_%e190983%_ _%e190979%_)
                                                   (_%n190984%_ '0))
                                  (let* ((_%$%e190985190992%_ _%e190983%_)
                                         (_%$%E190987190996%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e190985190992%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K190988191005%_
                                          (lambda (_%body190999%_
                                                   _%tag191000%_)
                                            (let ((_%$e191002%_ _%tag191000%_))
                                              (if (eq? 'splice _%$e191002%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx190731%_
                                                     _%where190918%_))
                                                  (if (eq? 'cons _%$e191002%_)
                                                      (_%lp190981%_
                                                       (cdr _%body190999%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n190984%_
                                                                '1)))
                                                      _%n190984%_))))))
                                    (if (pair? _%$%e190985190992%_)
                                        (let ((_%$%hd190989191008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e190985190992%_)))
                                              (_%$%tl190990191010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e190985190992%_))))
                                          (let* ((_%tag191013%_
                                                  _%$%hd190989191008%_)
                                                 (_%body191015%_
                                                  _%$%tl190990191010%_))
                                            (_%$%K190988191005%_
                                             _%body191015%_
                                             _%tag191013%_)))
                                        (_%$%E190987190996%_))))))
                             (_%splice-vars190928%_
                              (lambda (_%e190935%_)
                                (let _%recur190937%_ ((_%e190939%_ _%e190935%_)
                                                      (_%vars190940%_ '()))
                                  (let* ((_%$%e190941190948%_ _%e190939%_)
                                         (_%$%E190943190952%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e190941190948%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K190944190967%_
                                          (lambda (_%body190955%_
                                                   _%tag190956%_)
                                            (let ((_%$e190958%_ _%tag190956%_))
                                              (if (eq? 'var _%$e190958%_)
                                                  (cons _%body190955%_
                                                        _%vars190940%_)
                                                  (if (or (eq? 'cons
                                                               _%$e190958%_)
                                                          (eq? 'splice
                                                               _%$e190958%_))
                                                      (_%recur190937%_
                                                       (cdr _%body190955%_)
                                                       (_%recur190937%_
                                                        (car _%body190955%_)
                                                        _%vars190940%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e190958%_)
                      (eq? 'box _%$e190958%_))
                  (_%recur190937%_ _%body190955%_ _%vars190940%_)
                  _%vars190940%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e190941190948%_)
                                        (let ((_%$%hd190945190970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e190941190948%_)))
                                              (_%$%tl190946190972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e190941190948%_))))
                                          (let* ((_%tag190975%_
                                                  _%$%hd190945190970%_)
                                                 (_%body190977%_
                                                  _%$%tl190946190972%_))
                                            (_%$%K190944190967%_
                                             _%body190977%_
                                             _%tag190975%_)))
                                        (_%$%E190943190952%_))))))
                             (_%make-body190929%_
                              (lambda (_%vars190931%_)
                                (cons _%K190922%_
                                      (map (lambda (_%mvar190933%_)
                                             (let ((__tmp192128
                                                    (car _%mvar190933%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp192128
                                                _%vars190931%_
                                                _%BUG190925%_)))
                                           _%mvars190921%_)))))
                      (_%recur190926%_
                       _%hd190920%_
                       '()
                       _%target190919%_
                       _%E190923%_
                       _%make-body190929%_))))
                 (_%parse-clause190740%_
                  (lambda (_%hd190812%_ _%ids190813%_)
                    (let _%recur190815%_ ((_%e190817%_ _%hd190812%_)
                                          (_%vars190818%_ '())
                                          (_%depth190819%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e190817%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e190817%_))
                              (values '(any) _%vars190818%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e190817%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx190731%_
                                     _%hd190812%_))
                                  (if (let ((__tmp192129
                                             (lambda (_%id190824%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e190817%_
                                                  _%id190824%_)))))
                                        (declare (not safe))
                                        (__find __tmp192129 _%ids190813%_))
                                      (values (cons 'id _%e190817%_)
                                              _%vars190818%_)
                                      (if (let ((__tmp192130
                                                 (lambda (_%var190827%_)
                                                   (let ((__tmp192131
                                                          (car _%var190827%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e190817%_
                                                      __tmp192131)))))
                                            (declare (not safe))
                                            (__find __tmp192130
                                                    _%vars190818%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx190731%_
                                             _%e190817%_))
                                          (values (cons 'var _%e190817%_)
                                                  (cons (cons _%e190817%_
                                                              _%depth190819%_)
                                                        _%vars190818%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e190817%_))
                              (let* ((_%$%e190831190838%_ _%e190817%_)
                                     (_%$%E190833190842%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e190831190838%_))))
                                     (_%$%E190832190903%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e190831190838%_))
                                            (let ((_%$%e190834190846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e190831190838%_))))
                                              (let ((_%$%hd190835190849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e190834190846%_)))
                                                    (_%$%tl190836190851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e190834190846%_))))
                                                (let* ((_%hd190854%_
                                                        _%$%hd190835190849%_)
                                                       (_%rest190856%_
                                                        _%$%tl190836190851%_)
                                                       (_%make-pair190871%_
                                                        (lambda (_%tag190858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd190859%_
                         _%tl190860%_)
                  (let* ((_%hd-depth190862%_
                          (if (eq? _%tag190858%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth190819%_ '1))
                              _%depth190819%_))
                         (_g192132_
                          (_%recur190815%_
                           _%hd190859%_
                           _%vars190818%_
                           _%hd-depth190862%_)))
                    (begin
                      (let ((_g192133_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g192132_)
                                   (##values-length _g192132_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g192133_ 2)))
                            (error "Context expects 2 values" _g192133_)))
                      (let ((_%hd190864%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g192132_ 0)))
                            (_%vars190865%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g192132_ 1))))
                        (let ((_g192134_
                               (_%recur190815%_
                                _%tl190860%_
                                _%vars190865%_
                                _%depth190819%_)))
                          (begin
                            (let ((_g192135_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g192134_)
                                         (##values-length _g192134_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g192135_ 2)))
                                  (error "Context expects 2 values"
                                         _g192135_)))
                            (let ((_%tl190867%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g192134_ 0)))
                                  (_%vars190868%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g192134_ 1))))
                              (values (cons _%tag190858%_
                                            (cons _%hd190864%_ _%tl190867%_))
                                      _%vars190868%_)))))))))
               (_%$%e190872190879%_ _%rest190856%_)
               (_%$%E190874190883%_
                (lambda ()
                  (_%make-pair190871%_ 'cons _%hd190854%_ _%rest190856%_)))
               (_%$%E190873190899%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e190872190879%_))
                      (let ((_%$%e190875190887%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e190872190879%_))))
                        (let ((_%$%hd190876190890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e190875190887%_)))
                              (_%$%tl190877190892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e190875190887%_))))
                          (let* ((_%rest-hd190895%_ _%$%hd190876190890%_)
                                 (_%rest-tl190897%_ _%$%tl190877190892%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd190895%_))
                                (_%make-pair190871%_
                                 'splice
                                 _%hd190854%_
                                 _%rest-tl190897%_)
                                (_%make-pair190871%_
                                 'cons
                                 _%hd190854%_
                                 _%rest190856%_)))))
                      (_%$%E190874190883%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190873190899%_))))
                                            (_%$%E190833190842%_)))))
                                (_%$%E190832190903%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e190817%_))
                                  (values '(null) _%vars190818%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e190817%_))
                                      (let ((_g192136_
                                             (_%recur190815%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e190817%_)))
                                              _%vars190818%_
                                              _%depth190819%_)))
                                        (begin
                                          (let ((_g192137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192136_)
                                                       (##values-length
                                                        _g192136_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192137_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192137_)))
                                          (let ((_%e190909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192136_ 0)))
                                                (_%vars190910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192136_
                                                    1))))
                                            (values (cons 'vector _%e190909%_)
                                                    _%vars190910%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e190817%_))
                                          (let ((_g192138_
                                                 (_%recur190815%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e190817%_)))
                                                  _%vars190818%_
                                                  _%depth190819%_)))
                                            (begin
                                              (let ((_g192139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g192138_)
                                                           (##values-length
                                                            _g192138_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g192139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g192139_)))
                                              (let ((_%e190913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g192138_
                                                        0)))
                                                    (_%vars190914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g192138_
                                                        1))))
                                                (values (cons 'box _%e190913%_)
                                                        _%vars190914%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e190817%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e190817%_)))
                                                      _%vars190818%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx190731%_
                                                 _%e190817%_))))))))))))
          (let* ((_%$%e190741190754%_ _%stx190731%_)
                 (_%$%E190743190758%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e190741190754%_))))
                 (_%$%E190742190808%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e190741190754%_))
                        (let ((_%$%e190744190762%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e190741190754%_))))
                          (let ((_%$%hd190745190765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e190744190762%_)))
                                (_%$%tl190746190767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e190744190762%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl190746190767%_))
                                (let ((_%$%e190747190770%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl190746190767%_))))
                                  (let ((_%$%hd190748190773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e190747190770%_)))
                                        (_%$%tl190749190775%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e190747190770%_))))
                                    (let ((_%expr190778%_
                                           _%$%hd190748190773%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl190749190775%_))
                                          (let ((_%$%e190750190780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl190749190775%_))))
                                            (let ((_%$%hd190751190783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e190750190780%_)))
                                                  (_%$%tl190752190785%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e190750190780%_))))
                                              (let* ((_%ids190788%_
                                                      _%$%hd190751190783%_)
                                                     (_%clauses190790%_
                                                      _%$%tl190752190785%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids190788%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses190790%_))
                                                        (let* ((_%ids190795%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids190788%_)))
                       (_%clauses190797%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses190790%_)))
                       (_%clause-ids190799%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses190797%_)))
                       (_%E190801%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target190803%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first190805%_
                        (if (null? _%clauses190797%_)
                            _%E190801%_
                            (car _%clause-ids190799%_))))
                  (let ((__tmp192141
                         (let ((__tmp192142
                                (let ((__tmp192144
                                       (let ((__tmp192146
                                              (cons (cons (cons _%E190801%_
                                                                '())
                                                          (cons (let ((__tmp192148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target190803%_ '()))
                              (__tmp192147
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target190803%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp192148 __tmp192147))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp192145
                                              (_%generate-body190737%_
                                               (_%generate-bindings190736%_
                                                _%target190803%_
                                                _%ids190795%_
                                                _%clauses190797%_
                                                _%clause-ids190799%_
                                                _%E190801%_)
                                               (cons _%first190805%_
                                                     (cons _%expr190778%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp192146
                                          __tmp192145)))
                                      (__tmp192143
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx190731%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp192144
                                   __tmp192143))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp192142)))
                        (__tmp192140
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx190731%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp192141 __tmp192140)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx190731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx190731%_
                                                       _%ids190788%_))))))
                                          (_%$%E190743190758%_)))))
                                (_%$%E190743190758%_))))
                        (_%$%E190743190758%_)))))
            (_%$%E190742190808%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx191456%_)
        (let* ((_%identifier=?191458%_ 'free-identifier=?)
               (_%unwrap-e191460%_ 'syntax-e)
               (_%wrap-e191462%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx191456%_
           _%identifier=?191458%_
           _%unwrap-e191460%_
           _%wrap-e191462%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx191464%_ _%identifier=?191465%_)
        (let* ((_%unwrap-e191467%_ 'syntax-e) (_%wrap-e191469%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx191464%_
           _%identifier=?191465%_
           _%unwrap-e191467%_
           _%wrap-e191469%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx191471%_ _%identifier=?191472%_ _%unwrap-e191473%_)
        (let ((_%wrap-e191475%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx191471%_
           _%identifier=?191472%_
           _%unwrap-e191473%_
           _%wrap-e191475%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g192149_
        (let ((_g192150_ (let () (declare (not safe)) (##length _g192149_))))
          (cond ((let () (declare (not safe)) (##fx= _g192150_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g192149_))
                ((let () (declare (not safe)) (##fx= _g192150_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g192149_))
                ((let () (declare (not safe)) (##fx= _g192150_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g192149_))
                ((let () (declare (not safe)) (##fx= _g192150_ 4))
                 (apply gx#macro-expand-syntax-case__% _g192149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g192149_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx190728%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx190728%_))
            (let ((__tmp192151
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx190728%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp192151 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd190686%_ . _%rest190687%_)
        (let ((_%len190689%_ (length _%hd190686%_)))
          (let _%lp190691%_ ((_%rest190693%_ _%rest190687%_))
            (let* ((_%$%rest190694190702%_ _%rest190693%_)
                   (_%$%else190696190710%_ (lambda () '#!void))
                   (_%$%K190698190716%_
                    (lambda (_%rest190713%_ _%hd190714%_)
                      (if (let ((__tmp192152 (length _%hd190714%_)))
                            (declare (not safe))
                            (##fx= _%len190689%_ __tmp192152))
                          (_%lp190691%_ _%rest190713%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd190714%_))))))
              (if (pair? _%$%rest190694190702%_)
                  (let ((_%$%hd190699190719%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest190694190702%_)))
                        (_%$%tl190700190721%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest190694190702%_))))
                    (let* ((_%hd190724%_ _%$%hd190699190719%_)
                           (_%rest190726%_ _%$%tl190700190721%_))
                      (_%$%K190698190716%_ _%rest190726%_ _%hd190724%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx190636%_ _%n190637%_)
        (let _%lp190639%_ ((_%rest190642%_ _%stx190636%_) (_%r190644%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest190642%_))
              (let* ((_%$%g190646190653%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest190642%_)))
                     (_%$%E190648190657%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g190646190653%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K190649190664%_
                      (lambda (_%rest190660%_ _%hd190661%_)
                        (_%lp190639%_
                         _%rest190660%_
                         (cons _%hd190661%_ _%r190644%_)))))
                (if (pair? _%$%g190646190653%_)
                    (let ((_%$%hd190650190667%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g190646190653%_)))
                          (_%$%tl190651190669%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g190646190653%_))))
                      (let* ((_%hd190672%_ _%$%hd190650190667%_)
                             (_%rest190674%_ _%$%tl190651190669%_))
                        (_%$%K190649190664%_ _%rest190674%_ _%hd190672%_)))
                    (_%$%E190648190657%_)))
              (let _%lp190676%_ ((_%n190678%_ _%n190637%_)
                                 (_%l190679%_ _%r190644%_)
                                 (_%r190681%_ _%rest190642%_))
                (if (null? _%l190679%_)
                    (values _%l190679%_ _%r190681%_)
                    (if (fxpositive? _%n190678%_)
                        (_%lp190676%_
                         (let () (declare (not safe)) (##fx- _%n190678%_ '1))
                         (cdr _%l190679%_)
                         (cons (car _%l190679%_) _%r190681%_))
                        (values (reverse! _%l190679%_) _%r190681%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx190586%_ _%n190587%_)
        (let _%lp190589%_ ((_%rest190592%_ _%stx190586%_) (_%r190594%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest190592%_))
              (let* ((_%$%g190596190603%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest190592%_)))
                     (_%$%E190598190607%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g190596190603%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K190599190614%_
                      (lambda (_%rest190610%_ _%hd190611%_)
                        (_%lp190589%_
                         _%rest190610%_
                         (cons _%hd190611%_ _%r190594%_)))))
                (if (pair? _%$%g190596190603%_)
                    (let ((_%$%hd190600190617%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g190596190603%_)))
                          (_%$%tl190601190619%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g190596190603%_))))
                      (let* ((_%hd190622%_ _%$%hd190600190617%_)
                             (_%rest190624%_ _%$%tl190601190619%_))
                        (_%$%K190599190614%_ _%rest190624%_ _%hd190622%_)))
                    (_%$%E190598190607%_)))
              (let _%lp190626%_ ((_%n190628%_ _%n190587%_)
                                 (_%l190629%_ _%r190594%_)
                                 (_%r190631%_ _%rest190592%_))
                (if (null? _%l190629%_)
                    (vector _%l190629%_ _%r190631%_)
                    (if (fxpositive? _%n190628%_)
                        (_%lp190626%_
                         (let () (declare (not safe)) (##fx- _%n190628%_ '1))
                         (cdr _%l190629%_)
                         (cons (car _%l190629%_) _%r190631%_))
                        (vector (reverse! _%l190629%_) _%r190631%_))))))))))
