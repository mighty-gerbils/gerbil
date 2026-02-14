(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771036677)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp372389 (list gx#expander::t))
            (__tmp372388 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp372389
         '(id depth)
         __tmp372388
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args372385%_
        (apply make-instance gx#syntax-pattern::t _%$args372385%_)))
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
      (lambda (_%self372371%_ _%stx372372%_)
        (let ((_%self372375%_ _%self372371%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx372372%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx371838%_)
        (letrec ((_%generate371840%_
                  (lambda (_%e372080%_)
                    (letrec ((_%BUG372082%_
                              (lambda (_%q372247%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx371838%_
                                         _%e372080%_
                                         _%q372247%_))))
                             (_%local-pattern-e372083%_
                              (lambda (_%pat372245%_)
                                (let ((__tmp372390
                                       (##structure-ref
                                        _%pat372245%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp372390))))
                             (_%getvar372084%_
                              (lambda (_%q372242%_ _%vars372243%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q372242%_
                                   _%vars372243%_
                                   _%BUG372082%_))))
                             (_%getarg372085%_
                              (lambda (_%arg372208%_ _%vars372209%_)
                                (let* ((_%arg372210372217%_ _%arg372208%_)
                                       (_%E372212372221%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg372210372217%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K372213372230%_
                                        (lambda (_%e372224%_ _%tag372225%_)
                                          (let ((_%$e372227%_ _%tag372225%_))
                                            (if (eq? 'ref _%$e372227%_)
                                                (_%getvar372084%_
                                                 _%e372224%_
                                                 _%vars372209%_)
                                                (if (eq? 'pattern _%$e372227%_)
                                                    (_%local-pattern-e372083%_
                                                     _%e372224%_)
                                                    (_%BUG372082%_
                                                     _%arg372208%_)))))))
                                  (if (pair? _%arg372210372217%_)
                                      (let ((_%hd372214372233%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg372210372217%_)))
                                            (_%tl372215372235%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg372210372217%_))))
                                        (let* ((_%tag372238%_
                                                _%hd372214372233%_)
                                               (_%e372240%_
                                                _%tl372215372235%_))
                                          (_%K372213372230%_
                                           _%e372240%_
                                           _%tag372238%_)))
                                      (_%E372212372221%_))))))
                      (let _%recur372087%_ ((_%e372089%_ _%e372080%_)
                                            (_%vars372090%_ '()))
                        (let* ((_%e372091372098%_ _%e372089%_)
                               (_%E372093372102%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e372091372098%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K372094372196%_
                                (lambda (_%body372105%_ _%tag372106%_)
                                  (let ((_%$e372108%_ _%tag372106%_))
                                    (if (eq? 'datum _%$e372108%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body372105%_))
                                        (if (eq? 'term _%$e372108%_)
                                            (let ((_%id372111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body372105%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id372111%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks372114%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id372111%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks372114%_)
                                                        (let ((__tmp372391
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body372105%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp372391))
                (let ((__tmp372393
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body372105%_)))
                      (__tmp372392
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body372105%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp372393
                   __tmp372392
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id372111%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body372105%_))
                                                      (_%BUG372082%_
                                                       _%e372089%_))))
                                            (if (eq? 'pattern _%$e372108%_)
                                                (_%local-pattern-e372083%_
                                                 _%body372105%_)
                                                (if (eq? 'ref _%$e372108%_)
                                                    (_%getvar372084%_
                                                     _%body372105%_
                                                     _%vars372090%_)
                                                    (if (eq? 'cons
                                                             _%$e372108%_)
                                                        (let ((__tmp372395
                                                               (_%recur372087%_
                                                                (car _%body372105%_)
                                                                _%vars372090%_))
                                                              (__tmp372394
                                                               (_%recur372087%_
                                                                (cdr _%body372105%_)
                                                                _%vars372090%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp372395
                                                           __tmp372394))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e372108%_)
                    (let ((__tmp372396
                           (_%recur372087%_ _%body372105%_ _%vars372090%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp372396))
                    (if (eq? 'box _%$e372108%_)
                        (let ((__tmp372397
                               (_%recur372087%_
                                _%body372105%_
                                _%vars372090%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp372397))
                        (if (eq? 'splice _%$e372108%_)
                            (let* ((_%body372117372128%_ _%body372105%_)
                                   (_%E372119372132%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body372117372128%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K372120372170%_
                                    (lambda (_%args372135%_
                                             _%iv372136%_
                                             _%hd372137%_
                                             _%depth372138%_)
                                      (let* ((_%targets372144%_
                                              (map (lambda (_%g372139372141%_)
                                                     (_%getarg372085%_
                                                      _%g372139372141%_
                                                      _%vars372090%_))
                                                   _%args372135%_))
                                             (_%fold-in372146%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args372135%_)))
                                             (_%fold-out372148%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args372150%_
                                              (let ((__tmp372398
                                                     (cons _%fold-out372148%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp372398
                                                 _%fold-in372146%_)))
                                             (_%lambda-body372167%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth372138%_ '1))
                                                  (let ((_%r-args372158%_
                                                         (map (lambda (_%arg372152%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg372152%_)))
                      _%args372135%_))
                (_%r-vars372159%_
                 (let ((__tmp372399
                        (lambda (_%arg372154%_ _%var372155%_ _%r372156%_)
                          (cons (cons (cdr _%arg372154%_) _%var372155%_)
                                _%r372156%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp372399
                    _%vars372090%_
                    _%args372135%_
                    _%fold-in372146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur372087%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth372138%_ '1))
                         (cons _%hd372137%_
                               (cons (cons 'var _%fold-out372148%_)
                                     _%r-args372158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars372159%_))
                                                  (let* ((_%hd-vars372165%_
                                                          (let ((__tmp372400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg372161%_ _%var372162%_ _%r372163%_)
                           (cons (cons (cdr _%arg372161%_) _%var372162%_)
                                 _%r372163%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp372400
                     _%vars372090%_
                     _%args372135%_
                     _%fold-in372146%_)))
                 (__tmp372401
                  (_%recur372087%_ _%hd372137%_ _%hd-vars372165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp372401
                                                     _%fold-out372148%_)))))
                                        (let ((__tmp372405
                                               (if (let ((__tmp372406
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets372144%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp372406 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets372144%_))
                                                   '#!void))
                                              (__tmp372402
                                               (let ((__tmp372404
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args372150%_
                                                         _%lambda-body372167%_)))
                                                     (__tmp372403
                                                      (_%recur372087%_
                                                       _%iv372136%_
                                                       _%vars372090%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp372404
                                                  __tmp372403
                                                  _%targets372144%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp372405
                                           __tmp372402))))))
                              (if (pair? _%body372117372128%_)
                                  (let ((_%hd372121372173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body372117372128%_)))
                                        (_%tl372122372175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body372117372128%_))))
                                    (let ((_%depth372178%_ _%hd372121372173%_))
                                      (if (pair? _%tl372122372175%_)
                                          (let ((_%hd372123372180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl372122372175%_)))
                                                (_%tl372124372182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl372122372175%_))))
                                            (let ((_%hd372185%_
                                                   _%hd372123372180%_))
                                              (if (pair? _%tl372124372182%_)
                                                  (let ((_%hd372125372187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl372124372182%_)))
                                                        (_%tl372126372189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl372124372182%_))))
                                                    (let* ((_%iv372192%_
                                                            _%hd372125372187%_)
                                                           (_%args372194%_
                                                            _%tl372126372189%_))
                                                      (_%K372120372170%_
                                                       _%args372194%_
                                                       _%iv372192%_
                                                       _%hd372185%_
                                                       _%depth372178%_)))
                                                  (_%E372119372132%_))))
                                          (_%E372119372132%_))))
                                  (_%E372119372132%_)))
                            (if (eq? 'var _%$e372108%_)
                                _%body372105%_
                                (_%BUG372082%_ _%e372089%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e372091372098%_)
                              (let ((_%hd372095372199%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e372091372098%_)))
                                    (_%tl372096372201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e372091372098%_))))
                                (let* ((_%tag372204%_ _%hd372095372199%_)
                                       (_%body372206%_ _%tl372096372201%_))
                                  (_%K372094372196%_
                                   _%body372206%_
                                   _%tag372204%_)))
                              (_%E372093372102%_)))))))
                 (_%parse371841%_
                  (lambda (_%e371882%_)
                    (letrec ((_%make-cons371884%_
                              (lambda (_%hd372072%_ _%tl372073%_)
                                (let ((_g372407_ _%hd372072%_)
                                      (_g372409_ _%tl372073%_))
                                  (begin
                                    (let ((_g372408_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g372407_)
                                                 (##values-length _g372407_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g372408_ 2)))
                                          (error "Context expects 2 values"
                                                 _g372408_)))
                                    (let ((_g372410_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g372409_)
                                                 (##values-length _g372409_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g372410_ 2)))
                                          (error "Context expects 2 values"
                                                 _g372410_)))
                                    (let ((_%hd-e372075%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g372407_ 0)))
                                          (_%hd-vars372076%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g372407_ 1))))
                                      (let ((_%tl-e372077%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g372409_ 0)))
                                            (_%tl-vars372078%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g372409_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e372075%_
                                                            _%tl-e372077%_))
                                                (append _%hd-vars372076%_
                                                        _%tl-vars372078%_))))))))
                             (_%make-splice371885%_
                              (lambda (_%where372008%_
                                       _%depth372009%_
                                       _%hd372010%_
                                       _%tl372011%_)
                                (let ((_g372411_ _%hd372010%_)
                                      (_g372413_ _%tl372011%_))
                                  (begin
                                    (let ((_g372412_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g372411_)
                                                 (##values-length _g372411_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g372412_ 2)))
                                          (error "Context expects 2 values"
                                                 _g372412_)))
                                    (let ((_g372414_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g372413_)
                                                 (##values-length _g372413_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g372414_ 2)))
                                          (error "Context expects 2 values"
                                                 _g372414_)))
                                    (let ((_%hd-e372013%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g372411_ 0)))
                                          (_%hd-vars372014%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g372411_ 1))))
                                      (let ((_%tl-e372015%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g372413_ 0)))
                                            (_%tl-vars372016%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g372413_ 1))))
                                        (let _%lp372018%_ ((_%rest372020%_
                                                            _%hd-vars372014%_)
                                                           (_%targets372021%_
                                                            '())
                                                           (_%vars372022%_
                                                            _%tl-vars372016%_))
                                          (let* ((_%rest372023372033%_
                                                  _%rest372020%_)
                                                 (_%else372025372041%_
                                                  (lambda ()
                                                    (if (null? _%targets372021%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx371838%_
                                                           _%where372008%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth372009%_
                                    (cons _%hd-e372013%_
                                          (cons _%tl-e372015%_
                                                _%targets372021%_))))
                        _%vars372022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K372027372053%_
                                                  (lambda (_%rest372044%_
                                                           _%hd-pat372045%_
                                                           _%hd-depth*372046%_)
                                                    (let ((_%hd-depth372048%_
                                                           (fx- _%hd-depth*372046%_
                                                                _%depth372009%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth372048%_))
                                                          (_%lp372018%_
                                                           _%rest372044%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat372045%_)
                         _%targets372021%_)
                   (cons (cons _%hd-depth372048%_ _%hd-pat372045%_)
                         _%vars372022%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth372048%_))
                      (_%lp372018%_
                       _%rest372044%_
                       (cons (cons 'pattern _%hd-pat372045%_)
                             _%targets372021%_)
                       _%vars372022%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx371838%_
                         _%where372008%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest372023372033%_)
                                                (let ((_%hd372028372056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest372023372033%_)))
                                                      (_%tl372029372058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest372023372033%_))))
                                                  (if (pair? _%hd372028372056%_)
                                                      (let ((_%hd372030372061%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd372028372056%_)))
                    (_%tl372031372063%_
                     (let () (declare (not safe)) (##cdr _%hd372028372056%_))))
                (let* ((_%hd-depth*372066%_ _%hd372030372061%_)
                       (_%hd-pat372068%_ _%tl372031372063%_)
                       (_%rest372070%_ _%tl372029372058%_))
                  (_%K372027372053%_
                   _%rest372070%_
                   _%hd-pat372068%_
                   _%hd-depth*372066%_)))
              (_%else372025372041%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else372025372041%_))))))))))
                             (_%recur371886%_
                              (lambda (_%e371891%_ _%is-e?371892%_)
                                (if (_%is-e?371892%_ _%e371891%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx371838%_))
                                    (if (gx#syntax-local-pattern? _%e371891%_)
                                        (let* ((_%pat371896%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e371891%_)))
                                               (_%depth371898%_
                                                (##structure-ref
                                                 _%pat371896%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth371898%_)
                                              (values (cons 'ref _%pat371896%_)
                                                      (cons (cons _%depth371898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat371896%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat371896%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e371891%_))
                                            (values (cons 'term _%e371891%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e371891%_))
                                                (let* ((_%e371902371909%_
                                                        _%e371891%_)
                                                       (_%E371904371913%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e371902371909%_))))
                                                       (_%E371903371995%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e371902371909%_))
                      (let ((_%e371905371917%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e371902371909%_))))
                        (let ((_%hd371906371920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e371905371917%_)))
                              (_%tl371907371922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e371905371917%_))))
                          (let* ((_%hd371925%_ _%hd371906371920%_)
                                 (_%rest371927%_ _%tl371907371922%_))
                            (if (_%is-e?371892%_ _%hd371925%_)
                                (let* ((_%e371928371935%_ _%rest371927%_)
                                       (_%E371930371939%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx371838%_
                                             _%e371891%_))))
                                       (_%E371929371953%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e371928371935%_))
                                              (let ((_%e371931371943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e371928371935%_))))
                                                (let ((_%hd371932371946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e371931371943%_)))
                                                      (_%tl371933371948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e371931371943%_))))
                                                  (let ((_%rest371951%_
                                                         _%hd371932371946%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl371933371948%_))
                                                        (_%recur371886%_
                                                         _%rest371951%_
                                                         false)
                                                        (_%E371930371939%_)))))
                                              (_%E371930371939%_)))))
                                  (_%E371929371953%_))
                                (let _%lp371957%_ ((_%rest371959%_
                                                    _%rest371927%_)
                                                   (_%depth371960%_ '0))
                                  (let* ((_%e371961371968%_ _%rest371959%_)
                                         (_%E371963371972%_
                                          (lambda ()
                                            (if (fxpositive? _%depth371960%_)
                                                (_%make-splice371885%_
                                                 _%e371891%_
                                                 _%depth371960%_
                                                 (_%recur371886%_
                                                  _%hd371925%_
                                                  _%is-e?371892%_)
                                                 (_%recur371886%_
                                                  _%rest371959%_
                                                  _%is-e?371892%_))
                                                (_%make-cons371884%_
                                                 (_%recur371886%_
                                                  _%hd371925%_
                                                  _%is-e?371892%_)
                                                 (_%recur371886%_
                                                  _%rest371959%_
                                                  _%is-e?371892%_)))))
                                         (_%E371962371991%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e371961371968%_))
                                                (let ((_%e371964371976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e371961371968%_))))
                                                  (let ((_%hd371965371979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e371964371976%_)))
                                                        (_%tl371966371981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e371964371976%_))))
                                                    (let* ((_%rest-hd371984%_
                                                            _%hd371965371979%_)
                                                           (_%rest-tl371986%_
                                                            _%tl371966371981%_))
                                                      (if (_%is-e?371892%_
                                                           _%rest-hd371984%_)
                                                          (_%lp371957%_
                                                           _%rest-tl371986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth371960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth371960%_)
                      (_%make-splice371885%_
                       _%e371891%_
                       _%depth371960%_
                       (_%recur371886%_ _%hd371925%_ _%is-e?371892%_)
                       (_%recur371886%_ _%rest371959%_ _%is-e?371892%_))
                      (_%make-cons371884%_
                       (_%recur371886%_ _%hd371925%_ _%is-e?371892%_)
                       (_%recur371886%_ _%rest371959%_ _%is-e?371892%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E371963371972%_)))))
                                    (_%E371962371991%_)))))))
                      (_%E371904371913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E371903371995%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e371891%_))
                                                    (let ((_g372415_
                                                           (_%recur371886%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e371891%_)))
                    _%is-e?371892%_)))
              (begin
                (let ((_g372416_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g372415_)
                             (##values-length _g372415_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g372416_ 2)))
                      (error "Context expects 2 values" _g372416_)))
                (let ((_%e372000%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g372415_ 0)))
                      (_%vars372001%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g372415_ 1))))
                  (values (cons 'vector _%e372000%_) _%vars372001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e371891%_))
                                                        (let ((_g372417_
                                                               (_%recur371886%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e371891%_)))
                        _%is-e?371892%_)))
                  (begin
                    (let ((_g372418_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g372417_)
                                 (##values-length _g372417_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g372418_ 2)))
                          (error "Context expects 2 values" _g372418_)))
                    (let ((_%e372004%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g372417_ 0)))
                          (_%vars372005%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g372417_ 1))))
                      (values (cons 'box _%e372004%_) _%vars372005%_))))
                (values (cons 'datum _%e371891%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g372419_
                             (_%recur371886%_ _%e371882%_ gx#ellipsis?)))
                        (begin
                          (let ((_g372420_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g372419_)
                                       (##values-length _g372419_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g372420_ 2)))
                                (error "Context expects 2 values" _g372420_)))
                          (let ((_%tree371888%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g372419_ 0)))
                                (_%vars371889%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g372419_ 1))))
                            (if (null? _%vars371889%_)
                                _%tree371888%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx371838%_
                                   _%vars371889%_))))))))))
          (let* ((_%e371842371852%_ _%stx371838%_)
                 (_%E371844371856%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx371838%_))))
                 (_%E371843371878%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e371842371852%_))
                        (let ((_%e371845371860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e371842371852%_))))
                          (let ((_%hd371846371863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e371845371860%_)))
                                (_%tl371847371865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e371845371860%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl371847371865%_))
                                (let ((_%e371848371868%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl371847371865%_))))
                                  (let ((_%hd371849371871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e371848371868%_)))
                                        (_%tl371850371873%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e371848371868%_))))
                                    (let ((_%form371876%_ _%hd371849371871%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl371850371873%_))
                                          (let ((__tmp372422
                                                 (_%generate371840%_
                                                  (_%parse371841%_
                                                   _%form371876%_)))
                                                (__tmp372421
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx371838%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp372422
                                             __tmp372421))
                                          (_%E371844371856%_)))))
                                (_%E371844371856%_))))
                        (_%E371844371856%_)))))
            (_%E371843371878%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx371087%_
               _%identifier=?371088%_
               _%unwrap-e371089%_
               _%wrap-e371090%_)
        (letrec ((_%generate-bindings371092%_
                  (lambda (_%target371702%_
                           _%ids371703%_
                           _%clauses371704%_
                           _%clause-ids371705%_
                           _%E371706%_)
                    (letrec ((_%generate1371708%_
                              (lambda (_%clause371805%_
                                       _%clause-id371806%_
                                       _%E371807%_)
                                (cons (cons _%clause-id371806%_ '())
                                      (cons (let ((__tmp372424
                                                   (cons _%target371702%_ '()))
                                                  (__tmp372423
                                                   (_%generate-clause371094%_
                                                    _%target371702%_
                                                    _%ids371703%_
                                                    _%clause371805%_
                                                    _%E371807%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp372424
                                               __tmp372423))
                                            '())))))
                      (let _%lp371710%_ ((_%rest371712%_ _%clauses371704%_)
                                         (_%rest-ids371713%_
                                          _%clause-ids371705%_)
                                         (_%bindings371714%_ '()))
                        (let* ((_%rest371715371723%_ _%rest371712%_)
                               (_%else371717371731%_
                                (lambda () _%bindings371714%_))
                               (_%K371719371793%_
                                (lambda (_%rest371734%_ _%clause371735%_)
                                  (let* ((_%rest-ids371736371743%_
                                          _%rest-ids371713%_)
                                         (_%E371738371747%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids371736371743%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K371739371781%_
                                          (lambda (_%rest-ids371750%_
                                                   _%clause-id371751%_)
                                            (let* ((_%rest-ids371752371760%_
                                                    _%rest-ids371750%_)
                                                   (_%else371754371768%_
                                                    (lambda ()
                                                      (cons (_%generate1371708%_
                                                             _%clause371735%_
                                                             _%clause-id371751%_
                                                             _%E371706%_)
                                                            _%bindings371714%_)))
                                                   (_%K371756371773%_
                                                    (lambda (_%next-clause-id371771%_)
                                                      (_%lp371710%_
                                                       _%rest371734%_
                                                       _%rest-ids371750%_
                                                       (cons (_%generate1371708%_
                                                              _%clause371735%_
                                                              _%clause-id371751%_
                                                              _%next-clause-id371771%_)
                                                             _%bindings371714%_)))))
                                              (if (pair? _%rest-ids371752371760%_)
                                                  (let* ((_%hd371757371776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids371752371760%_)))
                                                         (_%next-clause-id371779%_
                                                          _%hd371757371776%_))
                                                    (_%K371756371773%_
                                                     _%next-clause-id371779%_))
                                                  (_%else371754371768%_))))))
                                    (if (pair? _%rest-ids371736371743%_)
                                        (let ((_%hd371740371784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids371736371743%_)))
                                              (_%tl371741371786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids371736371743%_))))
                                          (let* ((_%clause-id371789%_
                                                  _%hd371740371784%_)
                                                 (_%rest-ids371791%_
                                                  _%tl371741371786%_))
                                            (_%K371739371781%_
                                             _%rest-ids371791%_
                                             _%clause-id371789%_)))
                                        (_%E371738371747%_))))))
                          (if (pair? _%rest371715371723%_)
                              (let ((_%hd371720371796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest371715371723%_)))
                                    (_%tl371721371798%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest371715371723%_))))
                                (let* ((_%clause371801%_ _%hd371720371796%_)
                                       (_%rest371803%_ _%tl371721371798%_))
                                  (_%K371719371793%_
                                   _%rest371803%_
                                   _%clause371801%_)))
                              (_%else371717371731%_)))))))
                 (_%generate-body371093%_
                  (lambda (_%bindings371662%_ _%body371663%_)
                    (let _%recur371665%_ ((_%rest371667%_ _%bindings371662%_))
                      (let* ((_%rest371668371676%_ _%rest371667%_)
                             (_%else371670371684%_ (lambda () _%body371663%_))
                             (_%K371672371690%_
                              (lambda (_%rest371687%_ _%hd371688%_)
                                (let ((__tmp372426 (cons _%hd371688%_ '()))
                                      (__tmp372425
                                       (_%recur371665%_ _%rest371687%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp372426
                                   __tmp372425)))))
                        (if (pair? _%rest371668371676%_)
                            (let ((_%hd371673371693%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest371668371676%_)))
                                  (_%tl371674371695%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest371668371676%_))))
                              (let* ((_%hd371698%_ _%hd371673371693%_)
                                     (_%rest371700%_ _%tl371674371695%_))
                                (_%K371672371690%_
                                 _%rest371700%_
                                 _%hd371698%_)))
                            (_%else371670371684%_))))))
                 (_%generate-clause371094%_
                  (lambda (_%target371525%_
                           _%ids371526%_
                           _%clause371527%_
                           _%E371528%_)
                    (letrec ((_%generate1371530%_
                              (lambda (_%hd371617%_
                                       _%fender371618%_
                                       _%body371619%_)
                                (let ((_g372427_
                                       (_%parse-clause371096%_
                                        _%hd371617%_
                                        _%ids371526%_)))
                                  (begin
                                    (let ((_g372428_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g372427_)
                                                 (##values-length _g372427_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g372428_ 2)))
                                          (error "Context expects 2 values"
                                                 _g372428_)))
                                    (let ((_%e371621%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g372427_ 0)))
                                          (_%mvars371622%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g372427_ 1))))
                                      (let* ((_%pvars371624%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars371622%_))))
                                             (_%E371626%_
                                              (cons _%E371528%_
                                                    (cons _%target371525%_
                                                          '())))
                                             (_%K371659%_
                                              (let ((__tmp372429
                                                     (let ((__tmp372431
                                                            (map (lambda (_%mvar371628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar371629%_)
                           (let* ((_%mvar371630371637%_ _%mvar371628%_)
                                  (_%E371632371641%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar371630371637%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K371633371647%_
                                   (lambda (_%depth371644%_ _%id371645%_)
                                     (cons _%id371645%_
                                           (cons (let ((__tmp372433
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id371645%_)))
                                                       (__tmp372432
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar371629%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp372433
                                                    __tmp372432
                                                    _%depth371644%_))
                                                 '())))))
                             (if (pair? _%mvar371630371637%_)
                                 (let ((_%hd371634371650%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar371630371637%_)))
                                       (_%tl371635371652%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar371630371637%_))))
                                   (let* ((_%id371655%_ _%hd371634371650%_)
                                          (_%depth371657%_ _%tl371635371652%_))
                                     (_%K371633371647%_
                                      _%depth371657%_
                                      _%id371655%_)))
                                 (_%E371632371641%_))))
                         _%mvars371622%_
                         _%pvars371624%_))
                   (__tmp372430
                    (if (eq? _%fender371618%_ '#t)
                        _%body371619%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender371618%_
                           _%body371619%_
                           _%E371626%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp372431 __tmp372430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars371624%_
                                                 __tmp372429))))
                                        (_%generate-match371095%_
                                         _%hd371617%_
                                         _%target371525%_
                                         _%e371621%_
                                         _%mvars371622%_
                                         _%K371659%_
                                         _%E371626%_))))))))
                      (let* ((_%e371531371551%_ _%clause371527%_)
                             (_%E371540371555%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e371531371551%_))))
                             (_%E371533371589%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e371531371551%_))
                                    (let ((_%e371541371559%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e371531371551%_))))
                                      (let ((_%hd371542371562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e371541371559%_)))
                                            (_%tl371543371564%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e371541371559%_))))
                                        (let ((_%hd371567%_
                                               _%hd371542371562%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl371543371564%_))
                                              (let ((_%e371544371569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl371543371564%_))))
                                                (let ((_%hd371545371572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e371544371569%_)))
                                                      (_%tl371546371574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e371544371569%_))))
                                                  (let ((_%fender371577%_
                                                         _%hd371545371572%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl371546371574%_))
                                                        (let ((_%e371547371579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl371546371574%_))))
                  (let ((_%hd371548371582%_
                         (let ()
                           (declare (not safe))
                           (##car _%e371547371579%_)))
                        (_%tl371549371584%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e371547371579%_))))
                    (let ((_%body371587%_ _%hd371548371582%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl371549371584%_))
                          (_%generate1371530%_
                           _%hd371567%_
                           _%fender371577%_
                           _%body371587%_)
                          (_%E371540371555%_)))))
                (_%E371540371555%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E371540371555%_)))))
                                    (_%E371540371555%_))))
                             (_%E371532371613%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e371531371551%_))
                                    (let ((_%e371534371593%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e371531371551%_))))
                                      (let ((_%hd371535371596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e371534371593%_)))
                                            (_%tl371536371598%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e371534371593%_))))
                                        (let ((_%hd371601%_
                                               _%hd371535371596%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl371536371598%_))
                                              (let ((_%e371537371603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl371536371598%_))))
                                                (let ((_%hd371538371606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e371537371603%_)))
                                                      (_%tl371539371608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e371537371603%_))))
                                                  (let ((_%body371611%_
                                                         _%hd371538371606%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl371539371608%_))
                                                        (_%generate1371530%_
                                                         _%hd371601%_
                                                         '#t
                                                         _%body371611%_)
                                                        (_%E371533371589%_)))))
                                              (_%E371533371589%_)))))
                                    (_%E371533371589%_)))))
                        (_%E371532371613%_)))))
                 (_%generate-match371095%_
                  (lambda (_%where371274%_
                           _%target371275%_
                           _%hd371276%_
                           _%mvars371277%_
                           _%K371278%_
                           _%E371279%_)
                    (letrec ((_%BUG371281%_
                              (lambda (_%q371523%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx371087%_
                                         _%hd371276%_
                                         _%q371523%_))))
                             (_%recur371282%_
                              (lambda (_%e371373%_
                                       _%vars371374%_
                                       _%target371375%_
                                       _%E371376%_
                                       _%k371377%_)
                                (let* ((_%e371378371385%_ _%e371373%_)
                                       (_%E371380371389%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e371378371385%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K371381371511%_
                                        (lambda (_%body371392%_ _%tag371393%_)
                                          (let ((_%$e371395%_ _%tag371393%_))
                                            (if (eq? 'any _%$e371395%_)
                                                (_%k371377%_ _%vars371374%_)
                                                (if (eq? 'id _%$e371395%_)
                                                    (let ((__tmp372438
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target371375%_)))
                                                          (__tmp372434
                                                           (let ((__tmp372436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp372437
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e371090%_
                                    _%body371392%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?371088%_
                             __tmp372437
                             _%target371375%_)))
                         (__tmp372435 (_%k371377%_ _%vars371374%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp372436 __tmp372435 _%E371376%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp372438 __tmp372434 _%E371376%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e371395%_)
                                                        (_%k371377%_
                                                         (cons (cons _%body371392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target371375%_)
                       _%vars371374%_))
                (if (eq? 'cons _%$e371395%_)
                    (let ((_%$e371398%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd371399%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl371400%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp372444
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target371375%_)))
                            (__tmp372439
                             (let ((__tmp372443
                                    (cons (cons (cons _%$e371398%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e371089%_
                                                         _%target371375%_))
                                                      '()))
                                          '()))
                                   (__tmp372440
                                    (let ((__tmp372442
                                           (cons (cons (cons _%$hd371399%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e371398%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl371400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e371398%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp372441
                                           (let* ((_%body371401371408%_
                                                   _%body371392%_)
                                                  (_%E371403371412%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body371401371408%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K371404371420%_
                                                   (lambda (_%tl371415%_
                                                            _%hd371416%_)
                                                     (_%recur371282%_
                                                      _%hd371416%_
                                                      _%vars371374%_
                                                      _%$hd371399%_
                                                      _%E371376%_
                                                      (lambda (_%vars371418%_)
                                                        (_%recur371282%_
                                                         _%tl371415%_
                                                         _%vars371418%_
                                                         _%$tl371400%_
                                                         _%E371376%_
                                                         _%k371377%_))))))
                                             (if (pair? _%body371401371408%_)
                                                 (let ((_%hd371405371423%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body371401371408%_)))
                                                       (_%tl371406371425%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body371401371408%_))))
                                                   (let* ((_%hd371428%_
                                                           _%hd371405371423%_)
                                                          (_%tl371430%_
                                                           _%tl371406371425%_))
                                                     (_%K371404371420%_
                                                      _%tl371430%_
                                                      _%hd371428%_)))
                                                 (_%E371403371412%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp372442
                                       __tmp372441))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp372443
                                __tmp372440))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp372444
                         __tmp372439
                         _%E371376%_)))
                    (if (eq? 'splice _%$e371395%_)
                        (let* ((_%body371431371438%_ _%body371392%_)
                               (_%E371433371442%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body371431371438%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K371434371493%_
                                (lambda (_%tl371445%_ _%hd371446%_)
                                  (let* ((_%rlen371448%_
                                          (_%splice-rlen371283%_ _%tl371445%_))
                                         (_%$target371450%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd371452%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl371454%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp371456%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e371458%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd371460%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl371462%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars371464%_
                                          (_%splice-vars371284%_ _%hd371446%_))
                                         (_%lvars371466%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars371464%_)))
                                         (_%tlvars371468%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars371464%_)))
                                         (_%linit371472%_
                                          (map (lambda (_%var371470%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars371466%_)))
                                    (letrec ((_%make-loop371475%_
                                              (lambda (_%vars371479%_)
                                                (let ((__tmp372446
                                                       (cons (cons (cons _%$lp371456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp372459
                                        (cons _%$hd371452%_ _%lvars371466%_))
                                       (__tmp372447
                                        (let ((__tmp372458
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd371452%_)))
                                              (__tmp372452
                                               (let ((__tmp372457
                                                      (cons (cons (cons _%$lp-e371458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e371089%_
                                   _%$hd371452%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp372453
                                                      (let ((__tmp372456
                                                             (cons (cons (cons _%$lp-hd371460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e371458%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl371462%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e371458%_))
                                             '()))
                                 '())))
                    (__tmp372454
                     (_%recur371282%_
                      _%hd371446%_
                      '()
                      _%$lp-hd371460%_
                      _%E371376%_
                      (lambda (_%hdvars371481%_)
                        (cons _%$lp371456%_
                              (cons _%$lp-tl371462%_
                                    (map (lambda (_%svar371483%_
                                                  _%lvar371484%_)
                                           (let ((__tmp372455
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar371483%_
                                                     _%hdvars371481%_
                                                     _%BUG371281%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp372455
                                              _%lvar371484%_)))
                                         _%svars371464%_
                                         _%lvars371466%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp372456 __tmp372454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp372457
                                                  __tmp372453)))
                                              (__tmp372448
                                               (let ((__tmp372451
                                                      (map (lambda (_%lvar371486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar371487%_)
                     (cons (cons _%tlvar371487%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar371486%_))
                                 '())))
                   _%lvars371466%_
                   _%tlvars371468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp372449
                                                      (_%k371377%_
                                                       (let ((__tmp372450
                                                              (lambda (_%svar371489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar371490%_
                               _%r371491%_)
                        (cons (cons _%svar371489%_ _%tlvar371490%_)
                              _%r371491%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp372450
                  _%vars371479%_
                  _%svars371464%_
                  _%tlvars371468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp372451
                                                  __tmp372449))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp372458
                                           __tmp372452
                                           __tmp372448))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp372459
                                    __tmp372447))
                                 '()))
                     '()))
              (__tmp372445
               (cons _%$lp371456%_ (cons _%$target371450%_ _%linit371472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp372446
                                                   __tmp372445)))))
                                      (let ((_%body371477%_
                                             (let ((__tmp372461
                                                    (cons (cons (cons _%$target371450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl371454%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target371375%_
                                 _%rlen371448%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp372460
                                                    (_%recur371282%_
                                                     _%tl371445%_
                                                     _%vars371374%_
                                                     _%$tl371454%_
                                                     _%E371376%_
                                                     _%make-loop371475%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp372461
                                                __tmp372460))))
                                        (let ((__tmp372465
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target371375%_)))
                                              (__tmp372462
                                               (if (zero? _%rlen371448%_)
                                                   _%body371477%_
                                                   (let ((__tmp372463
                                                          (let ((__tmp372464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target371375%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp372464 _%rlen371448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp372463
                                                      _%body371477%_
                                                      _%E371376%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp372465
                                           __tmp372462
                                           _%E371376%_))))))))
                          (if (pair? _%body371431371438%_)
                              (let ((_%hd371435371496%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body371431371438%_)))
                                    (_%tl371436371498%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body371431371438%_))))
                                (let* ((_%hd371501%_ _%hd371435371496%_)
                                       (_%tl371503%_ _%tl371436371498%_))
                                  (_%K371434371493%_
                                   _%tl371503%_
                                   _%hd371501%_)))
                              (_%E371433371442%_)))
                        (if (eq? 'null _%$e371395%_)
                            (let ((__tmp372467
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target371375%_)))
                                  (__tmp372466 (_%k371377%_ _%vars371374%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp372467
                               __tmp372466
                               _%E371376%_))
                            (if (eq? 'vector _%$e371395%_)
                                (let ((_%$e371505%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp372472
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target371375%_)))
                                        (__tmp372468
                                         (let ((__tmp372470
                                                (cons (cons (cons _%$e371505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp372471
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e371089%_
                                    _%target371375%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp372471))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp372469
                                                (_%recur371282%_
                                                 _%body371392%_
                                                 _%vars371374%_
                                                 _%$e371505%_
                                                 _%E371376%_
                                                 _%k371377%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp372470
                                            __tmp372469))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp372472
                                     __tmp372468
                                     _%E371376%_)))
                                (if (eq? 'box _%$e371395%_)
                                    (let ((_%$e371507%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp372477
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target371375%_)))
                                            (__tmp372473
                                             (let ((__tmp372475
                                                    (cons (cons (cons _%$e371507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp372476
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e371089%_
                                        _%target371375%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp372476))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp372474
                                                    (_%recur371282%_
                                                     _%body371392%_
                                                     _%vars371374%_
                                                     _%$e371507%_
                                                     _%E371376%_
                                                     _%k371377%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp372475
                                                __tmp372474))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp372477
                                         __tmp372473
                                         _%E371376%_)))
                                    (if (eq? 'datum _%$e371395%_)
                                        (let ((_%$e371509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp372483
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target371375%_)))
                                                (__tmp372478
                                                 (let ((__tmp372482
                                                        (cons (cons (cons _%$e371509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target371375%_))
                                  '()))
                      '()))
               (__tmp372479
                (let ((__tmp372481
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e371509%_ _%body371392%_)))
                      (__tmp372480 (_%k371377%_ _%vars371374%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp372481 __tmp372480 _%E371376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp372482
                                                    __tmp372479))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp372483
                                             __tmp372478
                                             _%E371376%_)))
                                        (_%BUG371281%_
                                         _%e371373%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e371378371385%_)
                                      (let ((_%hd371382371514%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e371378371385%_)))
                                            (_%tl371383371516%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e371378371385%_))))
                                        (let* ((_%tag371519%_
                                                _%hd371382371514%_)
                                               (_%body371521%_
                                                _%tl371383371516%_))
                                          (_%K371381371511%_
                                           _%body371521%_
                                           _%tag371519%_)))
                                      (_%E371380371389%_)))))
                             (_%splice-rlen371283%_
                              (lambda (_%e371335%_)
                                (let _%lp371337%_ ((_%e371339%_ _%e371335%_)
                                                   (_%n371340%_ '0))
                                  (let* ((_%e371341371348%_ _%e371339%_)
                                         (_%E371343371352%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e371341371348%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K371344371361%_
                                          (lambda (_%body371355%_
                                                   _%tag371356%_)
                                            (let ((_%$e371358%_ _%tag371356%_))
                                              (if (eq? 'splice _%$e371358%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx371087%_
                                                     _%where371274%_))
                                                  (if (eq? 'cons _%$e371358%_)
                                                      (_%lp371337%_
                                                       (cdr _%body371355%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n371340%_
                                                                '1)))
                                                      _%n371340%_))))))
                                    (if (pair? _%e371341371348%_)
                                        (let ((_%hd371345371364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e371341371348%_)))
                                              (_%tl371346371366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e371341371348%_))))
                                          (let* ((_%tag371369%_
                                                  _%hd371345371364%_)
                                                 (_%body371371%_
                                                  _%tl371346371366%_))
                                            (_%K371344371361%_
                                             _%body371371%_
                                             _%tag371369%_)))
                                        (_%E371343371352%_))))))
                             (_%splice-vars371284%_
                              (lambda (_%e371291%_)
                                (let _%recur371293%_ ((_%e371295%_ _%e371291%_)
                                                      (_%vars371296%_ '()))
                                  (let* ((_%e371297371304%_ _%e371295%_)
                                         (_%E371299371308%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e371297371304%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K371300371323%_
                                          (lambda (_%body371311%_
                                                   _%tag371312%_)
                                            (let ((_%$e371314%_ _%tag371312%_))
                                              (if (eq? 'var _%$e371314%_)
                                                  (cons _%body371311%_
                                                        _%vars371296%_)
                                                  (if (or (eq? 'cons
                                                               _%$e371314%_)
                                                          (eq? 'splice
                                                               _%$e371314%_))
                                                      (_%recur371293%_
                                                       (cdr _%body371311%_)
                                                       (_%recur371293%_
                                                        (car _%body371311%_)
                                                        _%vars371296%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e371314%_)
                      (eq? 'box _%$e371314%_))
                  (_%recur371293%_ _%body371311%_ _%vars371296%_)
                  _%vars371296%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e371297371304%_)
                                        (let ((_%hd371301371326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e371297371304%_)))
                                              (_%tl371302371328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e371297371304%_))))
                                          (let* ((_%tag371331%_
                                                  _%hd371301371326%_)
                                                 (_%body371333%_
                                                  _%tl371302371328%_))
                                            (_%K371300371323%_
                                             _%body371333%_
                                             _%tag371331%_)))
                                        (_%E371299371308%_))))))
                             (_%make-body371285%_
                              (lambda (_%vars371287%_)
                                (cons _%K371278%_
                                      (map (lambda (_%mvar371289%_)
                                             (let ((__tmp372484
                                                    (car _%mvar371289%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp372484
                                                _%vars371287%_
                                                _%BUG371281%_)))
                                           _%mvars371277%_)))))
                      (_%recur371282%_
                       _%hd371276%_
                       '()
                       _%target371275%_
                       _%E371279%_
                       _%make-body371285%_))))
                 (_%parse-clause371096%_
                  (lambda (_%hd371168%_ _%ids371169%_)
                    (let _%recur371171%_ ((_%e371173%_ _%hd371168%_)
                                          (_%vars371174%_ '())
                                          (_%depth371175%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e371173%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e371173%_))
                              (values '(any) _%vars371174%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e371173%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx371087%_
                                     _%hd371168%_))
                                  (if (let ((__tmp372485
                                             (lambda (_%id371180%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e371173%_
                                                  _%id371180%_)))))
                                        (declare (not safe))
                                        (__find __tmp372485 _%ids371169%_))
                                      (values (cons 'id _%e371173%_)
                                              _%vars371174%_)
                                      (if (let ((__tmp372486
                                                 (lambda (_%var371183%_)
                                                   (let ((__tmp372487
                                                          (car _%var371183%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e371173%_
                                                      __tmp372487)))))
                                            (declare (not safe))
                                            (__find __tmp372486
                                                    _%vars371174%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx371087%_
                                             _%e371173%_))
                                          (values (cons 'var _%e371173%_)
                                                  (cons (cons _%e371173%_
                                                              _%depth371175%_)
                                                        _%vars371174%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e371173%_))
                              (let* ((_%e371187371194%_ _%e371173%_)
                                     (_%E371189371198%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e371187371194%_))))
                                     (_%E371188371259%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e371187371194%_))
                                            (let ((_%e371190371202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e371187371194%_))))
                                              (let ((_%hd371191371205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e371190371202%_)))
                                                    (_%tl371192371207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e371190371202%_))))
                                                (let* ((_%hd371210%_
                                                        _%hd371191371205%_)
                                                       (_%rest371212%_
                                                        _%tl371192371207%_)
                                                       (_%make-pair371227%_
                                                        (lambda (_%tag371214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd371215%_
                         _%tl371216%_)
                  (let* ((_%hd-depth371218%_
                          (if (eq? _%tag371214%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth371175%_ '1))
                              _%depth371175%_))
                         (_g372488_
                          (_%recur371171%_
                           _%hd371215%_
                           _%vars371174%_
                           _%hd-depth371218%_)))
                    (begin
                      (let ((_g372489_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g372488_)
                                   (##values-length _g372488_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g372489_ 2)))
                            (error "Context expects 2 values" _g372489_)))
                      (let ((_%hd371220%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g372488_ 0)))
                            (_%vars371221%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g372488_ 1))))
                        (let ((_g372490_
                               (_%recur371171%_
                                _%tl371216%_
                                _%vars371221%_
                                _%depth371175%_)))
                          (begin
                            (let ((_g372491_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g372490_)
                                         (##values-length _g372490_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g372491_ 2)))
                                  (error "Context expects 2 values"
                                         _g372491_)))
                            (let ((_%tl371223%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g372490_ 0)))
                                  (_%vars371224%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g372490_ 1))))
                              (values (cons _%tag371214%_
                                            (cons _%hd371220%_ _%tl371223%_))
                                      _%vars371224%_)))))))))
               (_%e371228371235%_ _%rest371212%_)
               (_%E371230371239%_
                (lambda ()
                  (_%make-pair371227%_ 'cons _%hd371210%_ _%rest371212%_)))
               (_%E371229371255%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e371228371235%_))
                      (let ((_%e371231371243%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e371228371235%_))))
                        (let ((_%hd371232371246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e371231371243%_)))
                              (_%tl371233371248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e371231371243%_))))
                          (let* ((_%rest-hd371251%_ _%hd371232371246%_)
                                 (_%rest-tl371253%_ _%tl371233371248%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd371251%_))
                                (_%make-pair371227%_
                                 'splice
                                 _%hd371210%_
                                 _%rest-tl371253%_)
                                (_%make-pair371227%_
                                 'cons
                                 _%hd371210%_
                                 _%rest371212%_)))))
                      (_%E371230371239%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E371229371255%_))))
                                            (_%E371189371198%_)))))
                                (_%E371188371259%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e371173%_))
                                  (values '(null) _%vars371174%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e371173%_))
                                      (let ((_g372492_
                                             (_%recur371171%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e371173%_)))
                                              _%vars371174%_
                                              _%depth371175%_)))
                                        (begin
                                          (let ((_g372493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g372492_)
                                                       (##values-length
                                                        _g372492_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g372493_ 2)))
                                                (error "Context expects 2 values"
                                                       _g372493_)))
                                          (let ((_%e371265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g372492_ 0)))
                                                (_%vars371266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g372492_
                                                    1))))
                                            (values (cons 'vector _%e371265%_)
                                                    _%vars371266%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e371173%_))
                                          (let ((_g372494_
                                                 (_%recur371171%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e371173%_)))
                                                  _%vars371174%_
                                                  _%depth371175%_)))
                                            (begin
                                              (let ((_g372495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g372494_)
                                                           (##values-length
                                                            _g372494_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g372495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g372495_)))
                                              (let ((_%e371269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g372494_
                                                        0)))
                                                    (_%vars371270%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g372494_
                                                        1))))
                                                (values (cons 'box _%e371269%_)
                                                        _%vars371270%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e371173%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e371173%_)))
                                                      _%vars371174%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx371087%_
                                                 _%e371173%_))))))))))))
          (let* ((_%e371097371110%_ _%stx371087%_)
                 (_%E371099371114%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e371097371110%_))))
                 (_%E371098371164%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e371097371110%_))
                        (let ((_%e371100371118%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e371097371110%_))))
                          (let ((_%hd371101371121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e371100371118%_)))
                                (_%tl371102371123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e371100371118%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl371102371123%_))
                                (let ((_%e371103371126%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl371102371123%_))))
                                  (let ((_%hd371104371129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e371103371126%_)))
                                        (_%tl371105371131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e371103371126%_))))
                                    (let ((_%expr371134%_ _%hd371104371129%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl371105371131%_))
                                          (let ((_%e371106371136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl371105371131%_))))
                                            (let ((_%hd371107371139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e371106371136%_)))
                                                  (_%tl371108371141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e371106371136%_))))
                                              (let* ((_%ids371144%_
                                                      _%hd371107371139%_)
                                                     (_%clauses371146%_
                                                      _%tl371108371141%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids371144%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses371146%_))
                                                        (let* ((_%ids371151%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids371144%_)))
                       (_%clauses371153%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses371146%_)))
                       (_%clause-ids371155%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses371153%_)))
                       (_%E371157%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target371159%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first371161%_
                        (if (null? _%clauses371153%_)
                            _%E371157%_
                            (car _%clause-ids371155%_))))
                  (let ((__tmp372497
                         (let ((__tmp372498
                                (let ((__tmp372500
                                       (let ((__tmp372502
                                              (cons (cons (cons _%E371157%_
                                                                '())
                                                          (cons (let ((__tmp372504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target371159%_ '()))
                              (__tmp372503
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target371159%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp372504 __tmp372503))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp372501
                                              (_%generate-body371093%_
                                               (_%generate-bindings371092%_
                                                _%target371159%_
                                                _%ids371151%_
                                                _%clauses371153%_
                                                _%clause-ids371155%_
                                                _%E371157%_)
                                               (cons _%first371161%_
                                                     (cons _%expr371134%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp372502
                                          __tmp372501)))
                                      (__tmp372499
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx371087%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp372500
                                   __tmp372499))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp372498)))
                        (__tmp372496
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx371087%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp372497 __tmp372496)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx371087%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx371087%_
                                                       _%ids371144%_))))))
                                          (_%E371099371114%_)))))
                                (_%E371099371114%_))))
                        (_%E371099371114%_)))))
            (_%E371098371164%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx371812%_)
        (let* ((_%identifier=?371814%_ 'free-identifier=?)
               (_%unwrap-e371816%_ 'syntax-e)
               (_%wrap-e371818%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx371812%_
           _%identifier=?371814%_
           _%unwrap-e371816%_
           _%wrap-e371818%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx371820%_ _%identifier=?371821%_)
        (let* ((_%unwrap-e371823%_ 'syntax-e) (_%wrap-e371825%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx371820%_
           _%identifier=?371821%_
           _%unwrap-e371823%_
           _%wrap-e371825%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx371827%_ _%identifier=?371828%_ _%unwrap-e371829%_)
        (let ((_%wrap-e371831%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx371827%_
           _%identifier=?371828%_
           _%unwrap-e371829%_
           _%wrap-e371831%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g372505_
        (let ((_g372506_ (let () (declare (not safe)) (##length _g372505_))))
          (cond ((let () (declare (not safe)) (##fx= _g372506_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g372505_))
                ((let () (declare (not safe)) (##fx= _g372506_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g372505_))
                ((let () (declare (not safe)) (##fx= _g372506_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g372505_))
                ((let () (declare (not safe)) (##fx= _g372506_ 4))
                 (apply gx#macro-expand-syntax-case__% _g372505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g372505_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx371084%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx371084%_))
            (let ((__tmp372507
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx371084%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp372507 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd371042%_ . _%rest371043%_)
        (let ((_%len371045%_ (length _%hd371042%_)))
          (let _%lp371047%_ ((_%rest371049%_ _%rest371043%_))
            (let* ((_%rest371050371058%_ _%rest371049%_)
                   (_%else371052371066%_ (lambda () '#!void))
                   (_%K371054371072%_
                    (lambda (_%rest371069%_ _%hd371070%_)
                      (if (let ((__tmp372508 (length _%hd371070%_)))
                            (declare (not safe))
                            (##fx= _%len371045%_ __tmp372508))
                          (_%lp371047%_ _%rest371069%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd371070%_))))))
              (if (pair? _%rest371050371058%_)
                  (let ((_%hd371055371075%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest371050371058%_)))
                        (_%tl371056371077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest371050371058%_))))
                    (let* ((_%hd371080%_ _%hd371055371075%_)
                           (_%rest371082%_ _%tl371056371077%_))
                      (_%K371054371072%_ _%rest371082%_ _%hd371080%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx370992%_ _%n370993%_)
        (let _%lp370995%_ ((_%rest370998%_ _%stx370992%_) (_%r371000%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest370998%_))
              (let* ((_%g371002371009%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest370998%_)))
                     (_%E371004371013%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g371002371009%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K371005371020%_
                      (lambda (_%rest371016%_ _%hd371017%_)
                        (_%lp370995%_
                         _%rest371016%_
                         (cons _%hd371017%_ _%r371000%_)))))
                (if (pair? _%g371002371009%_)
                    (let ((_%hd371006371023%_
                           (let ()
                             (declare (not safe))
                             (##car _%g371002371009%_)))
                          (_%tl371007371025%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g371002371009%_))))
                      (let* ((_%hd371028%_ _%hd371006371023%_)
                             (_%rest371030%_ _%tl371007371025%_))
                        (_%K371005371020%_ _%rest371030%_ _%hd371028%_)))
                    (_%E371004371013%_)))
              (let _%lp371032%_ ((_%n371034%_ _%n370993%_)
                                 (_%l371035%_ _%r371000%_)
                                 (_%r371037%_ _%rest370998%_))
                (if (null? _%l371035%_)
                    (values _%l371035%_ _%r371037%_)
                    (if (fxpositive? _%n371034%_)
                        (_%lp371032%_
                         (let () (declare (not safe)) (##fx- _%n371034%_ '1))
                         (cdr _%l371035%_)
                         (cons (car _%l371035%_) _%r371037%_))
                        (values (reverse! _%l371035%_) _%r371037%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx370942%_ _%n370943%_)
        (let _%lp370945%_ ((_%rest370948%_ _%stx370942%_) (_%r370950%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest370948%_))
              (let* ((_%g370952370959%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest370948%_)))
                     (_%E370954370963%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g370952370959%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K370955370970%_
                      (lambda (_%rest370966%_ _%hd370967%_)
                        (_%lp370945%_
                         _%rest370966%_
                         (cons _%hd370967%_ _%r370950%_)))))
                (if (pair? _%g370952370959%_)
                    (let ((_%hd370956370973%_
                           (let ()
                             (declare (not safe))
                             (##car _%g370952370959%_)))
                          (_%tl370957370975%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g370952370959%_))))
                      (let* ((_%hd370978%_ _%hd370956370973%_)
                             (_%rest370980%_ _%tl370957370975%_))
                        (_%K370955370970%_ _%rest370980%_ _%hd370978%_)))
                    (_%E370954370963%_)))
              (let _%lp370982%_ ((_%n370984%_ _%n370943%_)
                                 (_%l370985%_ _%r370950%_)
                                 (_%r370987%_ _%rest370948%_))
                (if (null? _%l370985%_)
                    (vector _%l370985%_ _%r370987%_)
                    (if (fxpositive? _%n370984%_)
                        (_%lp370982%_
                         (let () (declare (not safe)) (##fx- _%n370984%_ '1))
                         (cdr _%l370985%_)
                         (cons (car _%l370985%_) _%r370987%_))
                        (vector (reverse! _%l370985%_) _%r370987%_))))))))))
