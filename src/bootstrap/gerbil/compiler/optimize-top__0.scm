(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708165432)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl244653_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251314 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl244653_ __tmp251314))
           (let ()
             (declare (not safe))
             (table-set! _tbl244653_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244653_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244653_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244653_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl244653_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx244636_ . _args244638_)
        (let ((__tmp251316
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244638_)
                     (gxc#compile-e__0 _stx244636_)
                     (let ((_arg1244643_ (car _args244638_))
                           (_rest244645_ (cdr _args244638_)))
                       (if (null? _rest244645_)
                           (gxc#compile-e__1 _stx244636_ _arg1244643_)
                           (let ((_arg2244648_ (car _rest244645_))
                                 (_rest244650_ (cdr _rest244645_)))
                             (if (null? _rest244650_)
                                 (gxc#compile-e__2
                                  _stx244636_
                                  _arg1244643_
                                  _arg2244648_)
                                 (apply gxc#compile-e
                                        _stx244636_
                                        _arg1244643_
                                        _arg2244648_
                                        _rest244650_))))))))
              (__tmp251315 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251316
           gxc#current-compile-methods
           __tmp251315))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl244633_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251317 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl244633_ __tmp251317))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244633_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244633_ '%#call gxc#basic-expression-type-call%))
           _tbl244633_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx244616_ . _args244618_)
        (let ((__tmp251319
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244618_)
                     (gxc#compile-e__0 _stx244616_)
                     (let ((_arg1244623_ (car _args244618_))
                           (_rest244625_ (cdr _args244618_)))
                       (if (null? _rest244625_)
                           (gxc#compile-e__1 _stx244616_ _arg1244623_)
                           (let ((_arg2244628_ (car _rest244625_))
                                 (_rest244630_ (cdr _rest244625_)))
                             (if (null? _rest244630_)
                                 (gxc#compile-e__2
                                  _stx244616_
                                  _arg1244623_
                                  _arg2244628_)
                                 (apply gxc#compile-e
                                        _stx244616_
                                        _arg1244623_
                                        _arg2244628_
                                        _rest244630_))))))))
              (__tmp251318 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251319
           gxc#current-compile-methods
           __tmp251318))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl244613_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251320 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl244613_ __tmp251320))
           (let ()
             (declare (not safe))
             (table-set! _tbl244613_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244613_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244613_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244613_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244613_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244613_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244613_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244613_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244613_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244613_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244613_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244613_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl244613_ '%#set! gxc#collect-body-setq%))
           _tbl244613_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx244596_ . _args244598_)
        (let ((__tmp251322
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244598_)
                     (gxc#compile-e__0 _stx244596_)
                     (let ((_arg1244603_ (car _args244598_))
                           (_rest244605_ (cdr _args244598_)))
                       (if (null? _rest244605_)
                           (gxc#compile-e__1 _stx244596_ _arg1244603_)
                           (let ((_arg2244608_ (car _rest244605_))
                                 (_rest244610_ (cdr _rest244605_)))
                             (if (null? _rest244610_)
                                 (gxc#compile-e__2
                                  _stx244596_
                                  _arg1244603_
                                  _arg2244608_)
                                 (apply gxc#compile-e
                                        _stx244596_
                                        _arg1244603_
                                        _arg2244608_
                                        _rest244610_))))))))
              (__tmp251321 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251322
           gxc#current-compile-methods
           __tmp251321))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl244593_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251323 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl244593_ __tmp251323))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244593_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244593_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244593_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244593_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244593_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244593_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244593_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244593_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl244593_ '%#ref gxc#basic-expression-type-ref%))
           _tbl244593_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx244576_ . _args244578_)
        (let ((__tmp251325
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244578_)
                     (gxc#compile-e__0 _stx244576_)
                     (let ((_arg1244583_ (car _args244578_))
                           (_rest244585_ (cdr _args244578_)))
                       (if (null? _rest244585_)
                           (gxc#compile-e__1 _stx244576_ _arg1244583_)
                           (let ((_arg2244588_ (car _rest244585_))
                                 (_rest244590_ (cdr _rest244585_)))
                             (if (null? _rest244590_)
                                 (gxc#compile-e__2
                                  _stx244576_
                                  _arg1244583_
                                  _arg2244588_)
                                 (apply gxc#compile-e
                                        _stx244576_
                                        _arg1244583_
                                        _arg2244588_
                                        _rest244590_))))))))
              (__tmp251324 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251325
           gxc#current-compile-methods
           __tmp251324))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl244573_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251326 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl244573_ __tmp251326))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244573_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244573_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244573_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl244573_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl244573_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx244556_ . _args244558_)
        (let ((__tmp251328
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244558_)
                     (gxc#compile-e__0 _stx244556_)
                     (let ((_arg1244563_ (car _args244558_))
                           (_rest244565_ (cdr _args244558_)))
                       (if (null? _rest244565_)
                           (gxc#compile-e__1 _stx244556_ _arg1244563_)
                           (let ((_arg2244568_ (car _rest244565_))
                                 (_rest244570_ (cdr _rest244565_)))
                             (if (null? _rest244570_)
                                 (gxc#compile-e__2
                                  _stx244556_
                                  _arg1244563_
                                  _arg2244568_)
                                 (apply gxc#compile-e
                                        _stx244556_
                                        _arg1244563_
                                        _arg2244568_
                                        _rest244570_))))))))
              (__tmp251327 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp251328
           gxc#current-compile-methods
           __tmp251327))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx244459_)
        (let* ((___stx249234249235_ _stx244459_)
               (_g244462244482_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249234249235_)))))
          (let ((___kont249236249237_
                 (lambda (_L244526_ _L244527_)
                   (let ((_sym244545_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244527_))))
                     (if (let ((__tmp251329 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp251329 _sym244545_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244545_))
                         (let ((_type244546244548_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L244526_))))
                           (if _type244546244548_
                               (let ((_type244551_ _type244546244548_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym244545_
                                  _type244551_))
                               '#f))))))
                (___kont249238249239_ (lambda () '#!void)))
            (let ((___match249267249268_
                   (lambda (_e244468244494_
                            _hd244467244497_
                            _tl244466244499_
                            _e244471244502_
                            _hd244470244505_
                            _tl244469244507_
                            _e244474244510_
                            _hd244473244513_
                            _tl244472244515_
                            _e244477244518_
                            _hd244476244521_
                            _tl244475244523_)
                     (let ((_L244526_ _hd244476244521_)
                           (_L244527_ _hd244473244513_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244527_))
                           (___kont249236249237_ _L244526_ _L244527_)
                           (___kont249238249239_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249234249235_))
                  (let ((_e244468244494_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249234249235_))))
                    (let ((_tl244466244499_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244468244494_)))
                          (_hd244467244497_
                           (let ()
                             (declare (not safe))
                             (##car _e244468244494_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244466244499_))
                          (let ((_e244471244502_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244466244499_))))
                            (let ((_tl244469244507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244471244502_)))
                                  (_hd244470244505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244471244502_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244470244505_))
                                  (let ((_e244474244510_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244470244505_))))
                                    (let ((_tl244472244515_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244474244510_)))
                                          (_hd244473244513_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244474244510_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244472244515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244469244507_))
                                              (let ((_e244477244518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244469244507_))))
                                                (let ((_tl244475244523_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244477244518_)))
                                                      (_hd244476244521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244477244518_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244475244523_))
                                                      (___match249267249268_
                                                       _e244468244494_
                                                       _hd244467244497_
                                                       _tl244466244499_
                                                       _e244471244502_
                                                       _hd244470244505_
                                                       _tl244469244507_
                                                       _e244474244510_
                                                       _hd244473244513_
                                                       _tl244472244515_
                                                       _e244477244518_
                                                       _hd244476244521_
                                                       _tl244475244523_)
                                                      (___kont249238249239_))))
                                              (___kont249238249239_))
                                          (___kont249238249239_))))
                                  (___kont249238249239_))))
                          (___kont249238249239_))))
                  (___kont249238249239_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx244315_)
        (let* ((___stx249270249271_ _stx244315_)
               (_g244318244349_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249270249271_)))))
          (let ((___kont249272249273_
                 (lambda (_L244431_ _L244432_)
                   (let ((_sym244448_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244432_))))
                     (if (let ((__tmp251330 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp251330 _sym244448_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244448_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym244448_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym244448_))
                             (let ((_type244449244451_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L244431_))))
                               (if _type244449244451_
                                   (let ((_type244454_ _type244449244451_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym244448_
                                      _type244454_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L244431_)))))
                (___kont249274249275_
                 (lambda (_L244378_ _L244379_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L244378_)))))
            (let ((___match249303249304_
                   (lambda (_e244324244399_
                            _hd244323244402_
                            _tl244322244404_
                            _e244327244407_
                            _hd244326244410_
                            _tl244325244412_
                            _e244330244415_
                            _hd244329244418_
                            _tl244328244420_
                            _e244333244423_
                            _hd244332244426_
                            _tl244331244428_)
                     (let ((_L244431_ _hd244332244426_)
                           (_L244432_ _hd244329244418_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244432_))
                           (___kont249272249273_ _L244431_ _L244432_)
                           (___kont249274249275_
                            _hd244332244426_
                            _hd244326244410_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249270249271_))
                  (let ((_e244324244399_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249270249271_))))
                    (let ((_tl244322244404_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244324244399_)))
                          (_hd244323244402_
                           (let ()
                             (declare (not safe))
                             (##car _e244324244399_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244322244404_))
                          (let ((_e244327244407_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244322244404_))))
                            (let ((_tl244325244412_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244327244407_)))
                                  (_hd244326244410_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244327244407_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244326244410_))
                                  (let ((_e244330244415_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244326244410_))))
                                    (let ((_tl244328244420_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244330244415_)))
                                          (_hd244329244418_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244330244415_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244328244420_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244325244412_))
                                              (let ((_e244333244423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244325244412_))))
                                                (let ((_tl244331244428_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244333244423_)))
                                                      (_hd244332244426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244333244423_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244331244428_))
                                                      (___match249303249304_
                                                       _e244324244399_
                                                       _hd244323244402_
                                                       _tl244322244404_
                                                       _e244327244407_
                                                       _hd244326244410_
                                                       _tl244325244412_
                                                       _e244330244415_
                                                       _hd244329244418_
                                                       _tl244328244420_
                                                       _e244333244423_
                                                       _hd244332244426_
                                                       _tl244331244428_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244318244349_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244318244349_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244325244412_))
                                              (let ((_e244344244370_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244325244412_))))
                                                (let ((_tl244342244375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244344244370_)))
                                                      (_hd244343244373_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244344244370_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244342244375_))
                                                      (___kont249274249275_
                                                       _hd244343244373_
                                                       _hd244326244410_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244318244349_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244318244349_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244325244412_))
                                      (let ((_e244344244370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244325244412_))))
                                        (let ((_tl244342244375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244344244370_)))
                                              (_hd244343244373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244344244370_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244342244375_))
                                              (___kont249274249275_
                                               _hd244343244373_
                                               _hd244326244410_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244318244349_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244318244349_))))))
                          (let () (declare (not safe)) (_g244318244349_)))))
                  (let () (declare (not safe)) (_g244318244349_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx244100_)
        (letrec ((_collect-e244102_
                  (lambda (_hd244259_ _expr244260_)
                    (let* ((___stx249326249327_ _hd244259_)
                           (_g244263244273_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx249326249327_)))))
                      (let ((___kont249328249329_
                             (lambda (_L244293_)
                               (let ((_sym244304_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L244293_))))
                                 (if (let ((__tmp251331
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp251331 _sym244304_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym244304_))
                                     (let ((_type244305244307_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr244260_))))
                                       (if _type244305244307_
                                           (let ((_type244310_
                                                  _type244305244307_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym244304_
                                              _type244310_
                                              '#t))
                                           '#f))))))
                            (___kont249330249331_ (lambda () '#!void)))
                        (let ((___match249339249340_
                               (lambda (_e244268244285_
                                        _hd244267244288_
                                        _tl244266244290_)
                                 (let ((_L244293_ _hd244267244288_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L244293_))
                                       (___kont249328249329_ _L244293_)
                                       (___kont249330249331_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx249326249327_))
                              (let ((_e244268244285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx249326249327_))))
                                (let ((_tl244266244290_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244268244285_)))
                                      (_hd244267244288_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244268244285_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244266244290_))
                                      (___match249339249340_
                                       _e244268244285_
                                       _hd244267244288_
                                       _tl244266244290_)
                                      (___kont249330249331_))))
                              (___kont249330249331_))))))))
          (let* ((_g244104244139_
                  (lambda (_g244105244136_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g244105244136_))))
                 (_g244103244256_
                  (lambda (_g244105244142_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g244105244142_))
                        (let ((_e244111244144_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g244105244142_))))
                          (let ((_hd244110244147_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244111244144_)))
                                (_tl244109244149_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244111244144_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244109244149_))
                                (let ((_e244114244152_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244109244149_))))
                                  (let ((_hd244113244155_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244114244152_)))
                                        (_tl244112244157_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244114244152_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd244113244155_))
                                        (let ((_g251332_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd244113244155_
                                                  '0))))
                                          (begin
                                            (let ((_g251333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g251332_)
                                                         (##vector-length
                                                          _g251332_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g251333_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g251333_)))
                                            (let ((_target244115244160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251332_
                                                      0)))
                                                  (_tl244117244162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251332_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244117244162_))
                                                  (letrec ((_loop244118244165_
                                                            (lambda (_hd244116244168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr244122244170_
                             _hd244123244172_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd244116244168_))
                          (let ((_e244119244175_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd244116244168_))))
                            (let ((_lp-hd244120244178_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244119244175_)))
                                  (_lp-tl244121244180_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244119244175_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd244120244178_))
                                  (let ((_e244128244183_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd244120244178_))))
                                    (let ((_hd244127244186_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244128244183_)))
                                          (_tl244126244188_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244128244183_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl244126244188_))
                                          (let ((_e244131244191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl244126244188_))))
                                            (let ((_hd244130244194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e244131244191_)))
                                                  (_tl244129244196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e244131244191_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244129244196_))
                                                  (let ((__tmp251338
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd244130244194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr244122244170_)))
                (__tmp251337
                 (let ()
                   (declare (not safe))
                   (cons _hd244127244186_ _hd244123244172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop244118244165_
                                                     _lp-tl244121244180_
                                                     __tmp251338
                                                     __tmp251337))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244104244139_
                                                     _g244105244142_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244104244139_
                                             _g244105244142_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244104244139_ _g244105244142_)))))
                          (let ((_expr244124244199_
                                 (reverse _expr244122244170_))
                                (_hd244125244201_ (reverse _hd244123244172_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244112244157_))
                                (let ((_e244134244204_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244112244157_))))
                                  (let ((_hd244133244207_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244134244204_)))
                                        (_tl244132244209_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244134244204_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244132244209_))
                                        ((lambda (_L244212_
                                                  _L244213_
                                                  _L244214_)
                                           (for-each
                                            _collect-e244102_
                                            (let ((__tmp251334
                                                   (lambda (_g244234244237_
                                                            _g244235244239_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244234244237_
                                                             _g244235244239_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251334
                                                      '()
                                                      _L244214_))
                                            (let ((__tmp251335
                                                   (lambda (_g244241244244_
                                                            _g244242244246_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244241244244_
                                                             _g244242244246_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251335
                                                      '()
                                                      _L244213_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp251336
                                                   (lambda (_g244248244251_
                                                            _g244249244253_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244248244251_
                                                             _g244249244253_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251336
                                                      '()
                                                      _L244213_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L244212_)))
                                         _hd244133244207_
                                         _expr244124244199_
                                         _hd244125244201_)
                                        (let ()
                                          (declare (not safe))
                                          (_g244104244139_ _g244105244142_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244104244139_ _g244105244142_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop244118244165_
                                                       _target244115244160_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244104244139_
                                                     _g244105244142_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g244104244139_ _g244105244142_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244104244139_ _g244105244142_)))))
                        (let ()
                          (declare (not safe))
                          (_g244104244139_ _g244105244142_))))))
            (declare (not safe))
            (_g244103244256_ _stx244100_)))))
    (define gxc#collect-type-call%
      (lambda (_stx243592_)
        (let* ((___stx249342249343_ _stx243592_)
               (_g243596243711_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249342249343_)))))
          (let ((___kont249344249345_
                 (lambda (_L244050_ _L244051_ _L244052_ _L244053_ _L244054_)
                   (let ((__tmp251342
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244053_)))
                         (__tmp251341
                          (let () (declare (not safe)) (gx#stx-e _L244052_)))
                         (__tmp251340
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244051_)))
                         (__tmp251339
                          (let () (declare (not safe)) (gx#stx-e _L244050_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251342
                      __tmp251341
                      __tmp251340
                      __tmp251339))))
                (___kont249346249347_
                 (lambda (_L243878_ _L243879_ _L243880_ _L243881_)
                   (let ((__tmp251345
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243880_)))
                         (__tmp251344
                          (let () (declare (not safe)) (gx#stx-e _L243879_)))
                         (__tmp251343
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243878_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251345
                      __tmp251344
                      __tmp251343
                      '#f))))
                (___kont249348249349_
                 (lambda (_L243748_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp251346
                           (lambda (_g243761243764_ _g243762243766_)
                             (let ()
                               (declare (not safe))
                               (cons _g243761243764_ _g243762243766_)))))
                      (declare (not safe))
                      (foldr1 __tmp251346 '() _L243748_))))))
            (let* ((___match249599249600_
                    (lambda (_e243697243716_
                             _hd243696243719_
                             _tl243695243721_
                             ___splice249350249351_
                             _target243698243724_
                             _tl243700243726_)
                      (letrec ((_loop243701243729_
                                (lambda (_hd243699243732_ _expr243705243734_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd243699243732_))
                                      (let ((_e243702243737_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd243699243732_))))
                                        (let ((_lp-tl243704243742_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243702243737_)))
                                              (_lp-hd243703243740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243702243737_))))
                                          (let ((__tmp251347
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd243703243740_
                                                         _expr243705243734_))))
                                            (declare (not safe))
                                            (_loop243701243729_
                                             _lp-tl243704243742_
                                             __tmp251347))))
                                      (let ((_expr243706243745_
                                             (reverse _expr243705243734_)))
                                        (___kont249348249349_
                                         _expr243706243745_))))))
                        (let ()
                          (declare (not safe))
                          (_loop243701243729_ _target243698243724_ '())))))
                   (___match249479249480_
                    (lambda (_e243605243922_
                             _hd243604243925_
                             _tl243603243927_
                             _e243608243930_
                             _hd243607243933_
                             _tl243606243935_
                             _e243611243938_
                             _hd243610243941_
                             _tl243609243943_
                             _e243614243946_
                             _hd243613243949_
                             _tl243612243951_
                             _e243617243954_
                             _hd243616243957_
                             _tl243615243959_
                             _e243620243962_
                             _hd243619243965_
                             _tl243618243967_
                             _e243623243970_
                             _hd243622243973_
                             _tl243621243975_
                             _e243626243978_
                             _hd243625243981_
                             _tl243624243983_
                             _e243629243986_
                             _hd243628243989_
                             _tl243627243991_
                             _e243632243994_
                             _hd243631243997_
                             _tl243630243999_
                             _e243635244002_
                             _hd243634244005_
                             _tl243633244007_
                             _e243638244010_
                             _hd243637244013_
                             _tl243636244015_
                             _e243641244018_
                             _hd243640244021_
                             _tl243639244023_
                             _e243644244026_
                             _hd243643244029_
                             _tl243642244031_
                             _e243647244034_
                             _hd243646244037_
                             _tl243645244039_
                             _e243650244042_
                             _hd243649244045_
                             _tl243648244047_)
                      (let ((_L244050_ _hd243649244045_)
                            (_L244051_ _hd243640244021_)
                            (_L244052_ _hd243631243997_)
                            (_L244053_ _hd243622243973_)
                            (_L244054_ _hd243613243949_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L244054_
                               'bind-method!))
                            (___kont249344249345_
                             _L244050_
                             _L244051_
                             _L244052_
                             _L244053_
                             _L244054_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl243603243927_))
                                (let ((___splice249350249351_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl243603243927_
                                          '0))))
                                  (let ((_tl243700243726_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249350249351_
                                            '1)))
                                        (_target243698243724_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249350249351_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl243700243726_))
                                        (___match249599249600_
                                         _e243605243922_
                                         _hd243604243925_
                                         _tl243603243927_
                                         ___splice249350249351_
                                         _target243698243724_
                                         _tl243700243726_)
                                        (let ()
                                          (declare (not safe))
                                          (_g243596243711_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g243596243711_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249342249343_))
                  (let ((_e243605243922_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249342249343_))))
                    (let ((_tl243603243927_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243605243922_)))
                          (_hd243604243925_
                           (let ()
                             (declare (not safe))
                             (##car _e243605243922_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl243603243927_))
                          (let ((_e243608243930_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl243603243927_))))
                            (let ((_tl243606243935_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243608243930_)))
                                  (_hd243607243933_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243608243930_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd243607243933_))
                                  (let ((_e243611243938_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd243607243933_))))
                                    (let ((_tl243609243943_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243611243938_)))
                                          (_hd243610243941_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243611243938_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd243610243941_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd243610243941_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl243609243943_))
                                                  (let ((_e243614243946_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl243609243943_))))
                                                    (let ((_tl243612243951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e243614243946_)))
                                                          (_hd243613243949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e243614243946_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243612243951_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl243606243935_))
                      (let ((_e243617243954_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl243606243935_))))
                        (let ((_tl243615243959_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243617243954_)))
                              (_hd243616243957_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243617243954_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd243616243957_))
                              (let ((_e243620243962_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd243616243957_))))
                                (let ((_tl243618243967_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243620243962_)))
                                      (_hd243619243965_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243620243962_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd243619243965_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd243619243965_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243618243967_))
                                              (let ((_e243623243970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243618243967_))))
                                                (let ((_tl243621243975_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243623243970_)))
                                                      (_hd243622243973_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243623243970_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243621243975_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl243615243959_))
                                                          (let ((_e243626243978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl243615243959_))))
                    (let ((_tl243624243983_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243626243978_)))
                          (_hd243625243981_
                           (let ()
                             (declare (not safe))
                             (##car _e243626243978_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd243625243981_))
                          (let ((_e243629243986_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd243625243981_))))
                            (let ((_tl243627243991_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243629243986_)))
                                  (_hd243628243989_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243629243986_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd243628243989_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd243628243989_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl243627243991_))
                                          (let ((_e243632243994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl243627243991_))))
                                            (let ((_tl243630243999_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e243632243994_)))
                                                  (_hd243631243997_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e243632243994_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243630243999_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl243624243983_))
                                                      (let ((_e243635244002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl243624243983_))))
                (let ((_tl243633244007_
                       (let () (declare (not safe)) (##cdr _e243635244002_)))
                      (_hd243634244005_
                       (let () (declare (not safe)) (##car _e243635244002_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd243634244005_))
                      (let ((_e243638244010_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd243634244005_))))
                        (let ((_tl243636244015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243638244010_)))
                              (_hd243637244013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243638244010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd243637244013_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd243637244013_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243636244015_))
                                      (let ((_e243641244018_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243636244015_))))
                                        (let ((_tl243639244023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243641244018_)))
                                              (_hd243640244021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243641244018_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243639244023_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl243633244007_))
                                                  (let ((_e243644244026_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl243633244007_))))
                                                    (let ((_tl243642244031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e243644244026_)))
                                                          (_hd243643244029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e243644244026_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd243643244029_))
                                                          (let ((_e243647244034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd243643244029_))))
                    (let ((_tl243645244039_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243647244034_)))
                          (_hd243646244037_
                           (let ()
                             (declare (not safe))
                             (##car _e243647244034_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd243646244037_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd243646244037_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl243645244039_))
                                  (let ((_e243650244042_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl243645244039_))))
                                    (let ((_tl243648244047_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243650244042_)))
                                          (_hd243649244045_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243650244042_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243648244047_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243642244031_))
                                              (___match249479249480_
                                               _e243605243922_
                                               _hd243604243925_
                                               _tl243603243927_
                                               _e243608243930_
                                               _hd243607243933_
                                               _tl243606243935_
                                               _e243611243938_
                                               _hd243610243941_
                                               _tl243609243943_
                                               _e243614243946_
                                               _hd243613243949_
                                               _tl243612243951_
                                               _e243617243954_
                                               _hd243616243957_
                                               _tl243615243959_
                                               _e243620243962_
                                               _hd243619243965_
                                               _tl243618243967_
                                               _e243623243970_
                                               _hd243622243973_
                                               _tl243621243975_
                                               _e243626243978_
                                               _hd243625243981_
                                               _tl243624243983_
                                               _e243629243986_
                                               _hd243628243989_
                                               _tl243627243991_
                                               _e243632243994_
                                               _hd243631243997_
                                               _tl243630243999_
                                               _e243635244002_
                                               _hd243634244005_
                                               _tl243633244007_
                                               _e243638244010_
                                               _hd243637244013_
                                               _tl243636244015_
                                               _e243641244018_
                                               _hd243640244021_
                                               _tl243639244023_
                                               _e243644244026_
                                               _hd243643244029_
                                               _tl243642244031_
                                               _e243647244034_
                                               _hd243646244037_
                                               _tl243645244039_
                                               _e243650244042_
                                               _hd243649244045_
                                               _tl243648244047_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243603243927_))
                                                  (let ((___splice249350249351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243603243927_
                                                            '0))))
                                                    (let ((_tl243700243726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '1)))
                                                          (_target243698243724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243700243726_))
                                                          (___match249599249600_
                                                           _e243605243922_
                                                           _hd243604243925_
                                                           _tl243603243927_
                                                           ___splice249350249351_
                                                           _target243698243724_
                                                           _tl243700243726_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243596243711_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243596243711_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243603243927_))
                                              (let ((___splice249350249351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243603243927_
                                                        '0))))
                                                (let ((_tl243700243726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '1)))
                                                      (_target243698243724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243700243726_))
                                                      (___match249599249600_
                                                       _e243605243922_
                                                       _hd243604243925_
                                                       _tl243603243927_
                                                       ___splice249350249351_
                                                       _target243698243724_
                                                       _tl243700243726_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243596243711_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243603243927_))
                                      (let ((___splice249350249351_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243603243927_
                                                '0))))
                                        (let ((_tl243700243726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '1)))
                                              (_target243698243724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243700243726_))
                                              (___match249599249600_
                                               _e243605243922_
                                               _hd243604243925_
                                               _tl243603243927_
                                               ___splice249350249351_
                                               _target243698243724_
                                               _tl243700243726_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243711_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl243603243927_))
                                  (let ((___splice249350249351_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl243603243927_
                                            '0))))
                                    (let ((_tl243700243726_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249350249351_
                                              '1)))
                                          (_target243698243724_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249350249351_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243700243726_))
                                          (___match249599249600_
                                           _e243605243922_
                                           _hd243604243925_
                                           _tl243603243927_
                                           ___splice249350249351_
                                           _target243698243724_
                                           _tl243700243726_)
                                          (let ()
                                            (declare (not safe))
                                            (_g243596243711_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g243596243711_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl243603243927_))
                              (let ((___splice249350249351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl243603243927_
                                        '0))))
                                (let ((_tl243700243726_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249350249351_
                                          '1)))
                                      (_target243698243724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249350249351_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243700243726_))
                                      (___match249599249600_
                                       _e243605243922_
                                       _hd243604243925_
                                       _tl243603243927_
                                       ___splice249350249351_
                                       _target243698243724_
                                       _tl243700243726_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243711_)))))
                              (let ()
                                (declare (not safe))
                                (_g243596243711_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243603243927_))
                      (let ((___splice249350249351_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243603243927_ '0))))
                        (let ((_tl243700243726_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '1)))
                              (_target243698243724_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243700243726_))
                              (___match249599249600_
                               _e243605243922_
                               _hd243604243925_
                               _tl243603243927_
                               ___splice249350249351_
                               _target243698243724_
                               _tl243700243726_)
                              (let ()
                                (declare (not safe))
                                (_g243596243711_)))))
                      (let () (declare (not safe)) (_g243596243711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243633244007_))
                                                      (if (let ((__tmp251348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp251348 'bind-method!))
                  (let ((_L243878_ _hd243640244021_)
                        (_L243879_ _hd243631243997_)
                        (_L243880_ _hd243622243973_)
                        (_L243881_ _hd243613243949_))
                    (___kont249346249347_
                     _L243878_
                     _L243879_
                     _L243880_
                     _L243881_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243603243927_))
                      (let ((___splice249350249351_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243603243927_ '0))))
                        (let ((_tl243700243726_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '1)))
                              (_target243698243724_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243700243726_))
                              (___match249599249600_
                               _e243605243922_
                               _hd243604243925_
                               _tl243603243927_
                               ___splice249350249351_
                               _target243698243724_
                               _tl243700243726_)
                              (let ()
                                (declare (not safe))
                                (_g243596243711_)))))
                      (let () (declare (not safe)) (_g243596243711_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl243603243927_))
                  (let ((___splice249350249351_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl243603243927_ '0))))
                    (let ((_tl243700243726_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249350249351_ '1)))
                          (_target243698243724_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249350249351_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243700243726_))
                          (___match249599249600_
                           _e243605243922_
                           _hd243604243925_
                           _tl243603243927_
                           ___splice249350249351_
                           _target243698243724_
                           _tl243700243726_)
                          (let () (declare (not safe)) (_g243596243711_)))))
                  (let () (declare (not safe)) (_g243596243711_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243603243927_))
                                                  (let ((___splice249350249351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243603243927_
                                                            '0))))
                                                    (let ((_tl243700243726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '1)))
                                                          (_target243698243724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243700243726_))
                                                          (___match249599249600_
                                                           _e243605243922_
                                                           _hd243604243925_
                                                           _tl243603243927_
                                                           ___splice249350249351_
                                                           _target243698243724_
                                                           _tl243700243726_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243596243711_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243596243711_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl243603243927_))
                                          (let ((___splice249350249351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl243603243927_
                                                    '0))))
                                            (let ((_tl243700243726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249350249351_
                                                      '1)))
                                                  (_target243698243724_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249350249351_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243700243726_))
                                                  (___match249599249600_
                                                   _e243605243922_
                                                   _hd243604243925_
                                                   _tl243603243927_
                                                   ___splice249350249351_
                                                   _target243698243724_
                                                   _tl243700243726_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243596243711_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g243596243711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243603243927_))
                                      (let ((___splice249350249351_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243603243927_
                                                '0))))
                                        (let ((_tl243700243726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '1)))
                                              (_target243698243724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243700243726_))
                                              (___match249599249600_
                                               _e243605243922_
                                               _hd243604243925_
                                               _tl243603243927_
                                               ___splice249350249351_
                                               _target243698243724_
                                               _tl243700243726_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243711_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl243603243927_))
                                  (let ((___splice249350249351_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl243603243927_
                                            '0))))
                                    (let ((_tl243700243726_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249350249351_
                                              '1)))
                                          (_target243698243724_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249350249351_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243700243726_))
                                          (___match249599249600_
                                           _e243605243922_
                                           _hd243604243925_
                                           _tl243603243927_
                                           ___splice249350249351_
                                           _target243698243724_
                                           _tl243700243726_)
                                          (let ()
                                            (declare (not safe))
                                            (_g243596243711_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g243596243711_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl243603243927_))
                          (let ((___splice249350249351_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl243603243927_
                                    '0))))
                            (let ((_tl243700243726_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249350249351_ '1)))
                                  (_target243698243724_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249350249351_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl243700243726_))
                                  (___match249599249600_
                                   _e243605243922_
                                   _hd243604243925_
                                   _tl243603243927_
                                   ___splice249350249351_
                                   _target243698243724_
                                   _tl243700243726_)
                                  (let ()
                                    (declare (not safe))
                                    (_g243596243711_)))))
                          (let () (declare (not safe)) (_g243596243711_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl243603243927_))
                  (let ((___splice249350249351_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl243603243927_ '0))))
                    (let ((_tl243700243726_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249350249351_ '1)))
                          (_target243698243724_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249350249351_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243700243726_))
                          (___match249599249600_
                           _e243605243922_
                           _hd243604243925_
                           _tl243603243927_
                           ___splice249350249351_
                           _target243698243724_
                           _tl243700243726_)
                          (let () (declare (not safe)) (_g243596243711_)))))
                  (let () (declare (not safe)) (_g243596243711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl243603243927_))
                                                      (let ((___splice249350249351_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl243603243927_ '0))))
                (let ((_tl243700243726_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249350249351_ '1)))
                      (_target243698243724_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249350249351_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl243700243726_))
                      (___match249599249600_
                       _e243605243922_
                       _hd243604243925_
                       _tl243603243927_
                       ___splice249350249351_
                       _target243698243724_
                       _tl243700243726_)
                      (let () (declare (not safe)) (_g243596243711_)))))
              (let () (declare (not safe)) (_g243596243711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243603243927_))
                                              (let ((___splice249350249351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243603243927_
                                                        '0))))
                                                (let ((_tl243700243726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '1)))
                                                      (_target243698243724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243700243726_))
                                                      (___match249599249600_
                                                       _e243605243922_
                                                       _hd243604243925_
                                                       _tl243603243927_
                                                       ___splice249350249351_
                                                       _target243698243724_
                                                       _tl243700243726_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243596243711_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl243603243927_))
                                          (let ((___splice249350249351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl243603243927_
                                                    '0))))
                                            (let ((_tl243700243726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249350249351_
                                                      '1)))
                                                  (_target243698243724_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249350249351_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243700243726_))
                                                  (___match249599249600_
                                                   _e243605243922_
                                                   _hd243604243925_
                                                   _tl243603243927_
                                                   ___splice249350249351_
                                                   _target243698243724_
                                                   _tl243700243726_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243596243711_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g243596243711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243603243927_))
                                      (let ((___splice249350249351_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243603243927_
                                                '0))))
                                        (let ((_tl243700243726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '1)))
                                              (_target243698243724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243700243726_))
                                              (___match249599249600_
                                               _e243605243922_
                                               _hd243604243925_
                                               _tl243603243927_
                                               ___splice249350249351_
                                               _target243698243724_
                                               _tl243700243726_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243711_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl243603243927_))
                              (let ((___splice249350249351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl243603243927_
                                        '0))))
                                (let ((_tl243700243726_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249350249351_
                                          '1)))
                                      (_target243698243724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249350249351_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243700243726_))
                                      (___match249599249600_
                                       _e243605243922_
                                       _hd243604243925_
                                       _tl243603243927_
                                       ___splice249350249351_
                                       _target243698243724_
                                       _tl243700243726_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243711_)))))
                              (let ()
                                (declare (not safe))
                                (_g243596243711_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243603243927_))
                      (let ((___splice249350249351_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243603243927_ '0))))
                        (let ((_tl243700243726_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '1)))
                              (_target243698243724_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243700243726_))
                              (___match249599249600_
                               _e243605243922_
                               _hd243604243925_
                               _tl243603243927_
                               ___splice249350249351_
                               _target243698243724_
                               _tl243700243726_)
                              (let ()
                                (declare (not safe))
                                (_g243596243711_)))))
                      (let () (declare (not safe)) (_g243596243711_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl243603243927_))
                  (let ((___splice249350249351_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl243603243927_ '0))))
                    (let ((_tl243700243726_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249350249351_ '1)))
                          (_target243698243724_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249350249351_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243700243726_))
                          (___match249599249600_
                           _e243605243922_
                           _hd243604243925_
                           _tl243603243927_
                           ___splice249350249351_
                           _target243698243724_
                           _tl243700243726_)
                          (let () (declare (not safe)) (_g243596243711_)))))
                  (let () (declare (not safe)) (_g243596243711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243603243927_))
                                                  (let ((___splice249350249351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243603243927_
                                                            '0))))
                                                    (let ((_tl243700243726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '1)))
                                                          (_target243698243724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243700243726_))
                                                          (___match249599249600_
                                                           _e243605243922_
                                                           _hd243604243925_
                                                           _tl243603243927_
                                                           ___splice249350249351_
                                                           _target243698243724_
                                                           _tl243700243726_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243596243711_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243596243711_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243603243927_))
                                              (let ((___splice249350249351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243603243927_
                                                        '0))))
                                                (let ((_tl243700243726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '1)))
                                                      (_target243698243724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243700243726_))
                                                      (___match249599249600_
                                                       _e243605243922_
                                                       _hd243604243925_
                                                       _tl243603243927_
                                                       ___splice249350249351_
                                                       _target243698243724_
                                                       _tl243700243726_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243596243711_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl243603243927_))
                                          (let ((___splice249350249351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl243603243927_
                                                    '0))))
                                            (let ((_tl243700243726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249350249351_
                                                      '1)))
                                                  (_target243698243724_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249350249351_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243700243726_))
                                                  (___match249599249600_
                                                   _e243605243922_
                                                   _hd243604243925_
                                                   _tl243603243927_
                                                   ___splice249350249351_
                                                   _target243698243724_
                                                   _tl243700243726_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243596243711_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g243596243711_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl243603243927_))
                                  (let ((___splice249350249351_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl243603243927_
                                            '0))))
                                    (let ((_tl243700243726_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249350249351_
                                              '1)))
                                          (_target243698243724_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249350249351_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243700243726_))
                                          (___match249599249600_
                                           _e243605243922_
                                           _hd243604243925_
                                           _tl243603243927_
                                           ___splice249350249351_
                                           _target243698243724_
                                           _tl243700243726_)
                                          (let ()
                                            (declare (not safe))
                                            (_g243596243711_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g243596243711_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl243603243927_))
                          (let ((___splice249350249351_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl243603243927_
                                    '0))))
                            (let ((_tl243700243726_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249350249351_ '1)))
                                  (_target243698243724_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249350249351_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl243700243726_))
                                  (___match249599249600_
                                   _e243605243922_
                                   _hd243604243925_
                                   _tl243603243927_
                                   ___splice249350249351_
                                   _target243698243724_
                                   _tl243700243726_)
                                  (let ()
                                    (declare (not safe))
                                    (_g243596243711_)))))
                          (let () (declare (not safe)) (_g243596243711_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243603243927_))
                      (let ((___splice249350249351_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243603243927_ '0))))
                        (let ((_tl243700243726_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '1)))
                              (_target243698243724_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249350249351_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243700243726_))
                              (___match249599249600_
                               _e243605243922_
                               _hd243604243925_
                               _tl243603243927_
                               ___splice249350249351_
                               _target243698243724_
                               _tl243700243726_)
                              (let ()
                                (declare (not safe))
                                (_g243596243711_)))))
                      (let () (declare (not safe)) (_g243596243711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl243603243927_))
                                                      (let ((___splice249350249351_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl243603243927_ '0))))
                (let ((_tl243700243726_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249350249351_ '1)))
                      (_target243698243724_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249350249351_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl243700243726_))
                      (___match249599249600_
                       _e243605243922_
                       _hd243604243925_
                       _tl243603243927_
                       ___splice249350249351_
                       _target243698243724_
                       _tl243700243726_)
                      (let () (declare (not safe)) (_g243596243711_)))))
              (let () (declare (not safe)) (_g243596243711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243603243927_))
                                                  (let ((___splice249350249351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243603243927_
                                                            '0))))
                                                    (let ((_tl243700243726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '1)))
                                                          (_target243698243724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249350249351_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243700243726_))
                                                          (___match249599249600_
                                                           _e243605243922_
                                                           _hd243604243925_
                                                           _tl243603243927_
                                                           ___splice249350249351_
                                                           _target243698243724_
                                                           _tl243700243726_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243596243711_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243596243711_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243603243927_))
                                              (let ((___splice249350249351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243603243927_
                                                        '0))))
                                                (let ((_tl243700243726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '1)))
                                                      (_target243698243724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249350249351_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243700243726_))
                                                      (___match249599249600_
                                                       _e243605243922_
                                                       _hd243604243925_
                                                       _tl243603243927_
                                                       ___splice249350249351_
                                                       _target243698243724_
                                                       _tl243700243726_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243596243711_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243603243927_))
                                      (let ((___splice249350249351_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243603243927_
                                                '0))))
                                        (let ((_tl243700243726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '1)))
                                              (_target243698243724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249350249351_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243700243726_))
                                              (___match249599249600_
                                               _e243605243922_
                                               _hd243604243925_
                                               _tl243603243927_
                                               ___splice249350249351_
                                               _target243698243724_
                                               _tl243700243726_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243596243711_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243711_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl243603243927_))
                              (let ((___splice249350249351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl243603243927_
                                        '0))))
                                (let ((_tl243700243726_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249350249351_
                                          '1)))
                                      (_target243698243724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249350249351_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243700243726_))
                                      (___match249599249600_
                                       _e243605243922_
                                       _hd243604243925_
                                       _tl243603243927_
                                       ___splice249350249351_
                                       _target243698243724_
                                       _tl243700243726_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243711_)))))
                              (let ()
                                (declare (not safe))
                                (_g243596243711_))))))
                  (let () (declare (not safe)) (_g243596243711_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx243532_)
        (let* ((___stx249602249603_ _stx243532_)
               (_g243535243548_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249602249603_)))))
          (let ((___kont249604249605_
                 (lambda (_L243576_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L243576_))))
                (___kont249606249607_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249602249603_))
                (let ((_e243540243560_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249602249603_))))
                  (let ((_tl243538243565_
                         (let () (declare (not safe)) (##cdr _e243540243560_)))
                        (_hd243539243563_
                         (let ()
                           (declare (not safe))
                           (##car _e243540243560_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl243538243565_))
                        (let ((_e243543243568_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl243538243565_))))
                          (let ((_tl243541243573_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e243543243568_)))
                                (_hd243542243571_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e243543243568_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl243541243573_))
                                (___kont249604249605_ _hd243542243571_)
                                (___kont249606249607_))))
                        (___kont249606249607_))))
                (___kont249606249607_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx243412_)
        (let* ((_g243414243431_
                (lambda (_g243415243428_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243415243428_))))
               (_g243413243529_
                (lambda (_g243415243434_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243415243434_))
                      (let ((_e243420243436_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243415243434_))))
                        (let ((_hd243419243439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243420243436_)))
                              (_tl243418243441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243420243436_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243418243441_))
                              (let ((_e243423243444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243418243441_))))
                                (let ((_hd243422243447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243423243444_)))
                                      (_tl243421243449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243423243444_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243421243449_))
                                      (let ((_e243426243452_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243421243449_))))
                                        (let ((_hd243425243455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243426243452_)))
                                              (_tl243424243457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243426243452_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243424243457_))
                                              ((lambda (_L243460_ _L243461_)
                                                 (let* ((___stx249624249625_
                                                         _L243461_)
                                                        (_g243477243488_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx249624249625_)))))
                                                   (let ((___kont249626249627_
                                                          (lambda (_L243508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L243509_)
                    (let ((_$e243521_
                           (let ((__tmp251349
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L243509_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp251349
                              '#f))))
                      (if _$e243521_
                          ((lambda (_type-e243524_)
                             (_type-e243524_ _stx243412_ _L243461_))
                           _$e243521_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L243460_))))))
                 (___kont249628249629_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L243460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match249635249636_
                                                            (lambda (_e243483243500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd243482243503_
                             _tl243481243505_)
                      (let ((_L243508_ _tl243481243505_)
                            (_L243509_ _hd243482243503_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L243509_))
                            (___kont249626249627_ _L243508_ _L243509_)
                            (___kont249628249629_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx249624249625_))
                   (let ((_e243483243500_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx249624249625_))))
                     (let ((_tl243481243505_
                            (let ()
                              (declare (not safe))
                              (##cdr _e243483243500_)))
                           (_hd243482243503_
                            (let ()
                              (declare (not safe))
                              (##car _e243483243500_))))
                       (___match249635249636_
                        _e243483243500_
                        _hd243482243503_
                        _tl243481243505_)))
                   (___kont249628249629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd243425243455_
                                               _hd243422243447_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243414243431_
                                                 _g243415243434_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243414243431_ _g243415243434_)))))
                              (let ()
                                (declare (not safe))
                                (_g243414243431_ _g243415243434_)))))
                      (let ()
                        (declare (not safe))
                        (_g243414243431_ _g243415243434_))))))
          (declare (not safe))
          (_g243413243529_ _stx243412_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx243256_ _ann243257_)
        (let* ((_g243259243296_
                (lambda (_g243260243293_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243260243293_))))
               (_g243258243409_
                (lambda (_g243260243299_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243260243299_))
                      (let ((_e243270243301_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243260243299_))))
                        (let ((_hd243269243304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243270243301_)))
                              (_tl243268243306_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243270243301_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243268243306_))
                              (let ((_e243273243309_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243268243306_))))
                                (let ((_hd243272243312_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243273243309_)))
                                      (_tl243271243314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243273243309_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243271243314_))
                                      (let ((_e243276243317_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243271243314_))))
                                        (let ((_hd243275243320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243276243317_)))
                                              (_tl243274243322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243276243317_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243274243322_))
                                              (let ((_e243279243325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243274243322_))))
                                                (let ((_hd243278243328_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243279243325_)))
                                                      (_tl243277243330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243279243325_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl243277243330_))
                                                      (let ((_e243282243333_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl243277243330_))))
                (let ((_hd243281243336_
                       (let () (declare (not safe)) (##car _e243282243333_)))
                      (_tl243280243338_
                       (let () (declare (not safe)) (##cdr _e243282243333_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl243280243338_))
                      (let ((_e243285243341_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl243280243338_))))
                        (let ((_hd243284243344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243285243341_)))
                              (_tl243283243346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243285243341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243283243346_))
                              (let ((_e243288243349_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243283243346_))))
                                (let ((_hd243287243352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243288243349_)))
                                      (_tl243286243354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243288243349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243286243354_))
                                      (let ((_e243291243357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243286243354_))))
                                        (let ((_hd243290243360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243291243357_)))
                                              (_tl243289243362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243291243357_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243289243362_))
                                              ((lambda (_L243365_
                                                        _L243366_
                                                        _L243367_
                                                        _L243368_
                                                        _L243369_
                                                        _L243370_
                                                        _L243371_)
                                                 (let ((_type-id243401_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243371_)))
                                                       (_super243402_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L243370_)))
                                                       (_slots243403_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L243369_)))
                                                       (_ctor-method243404_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243368_)))
                                                       (_struct?243405_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243367_)))
                                                       (_final?243406_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243366_)))
                                                       (_metaclass243407_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L243365_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L243365_))
                                                            '#f)))
                                                   (let ((__obj251307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj251307
                                                      _type-id243401_
                                                      _super243402_
                                                      _slots243403_
                                                      _ctor-method243404_
                                                      _struct?243405_
                                                      _final?243406_
                                                      _metaclass243407_)
                                                     __obj251307)))
                                               _hd243290243360_
                                               _hd243287243352_
                                               _hd243284243344_
                                               _hd243281243336_
                                               _hd243278243328_
                                               _hd243275243320_
                                               _hd243272243312_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243259243296_
                                                 _g243260243299_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243259243296_ _g243260243299_)))))
                              (let ()
                                (declare (not safe))
                                (_g243259243296_ _g243260243299_)))))
                      (let ()
                        (declare (not safe))
                        (_g243259243296_ _g243260243299_)))))
              (let ()
                (declare (not safe))
                (_g243259243296_ _g243260243299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243259243296_
                                                 _g243260243299_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243259243296_ _g243260243299_)))))
                              (let ()
                                (declare (not safe))
                                (_g243259243296_ _g243260243299_)))))
                      (let ()
                        (declare (not safe))
                        (_g243259243296_ _g243260243299_))))))
          (declare (not safe))
          (_g243258243409_ _ann243257_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx243204_ _ann243205_)
        (let* ((_g243207243220_
                (lambda (_g243208243217_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243208243217_))))
               (_g243206243253_
                (lambda (_g243208243223_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243208243223_))
                      (let ((_e243212243225_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243208243223_))))
                        (let ((_hd243211243228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243212243225_)))
                              (_tl243210243230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243212243225_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243210243230_))
                              (let ((_e243215243233_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243210243230_))))
                                (let ((_hd243214243236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243215243233_)))
                                      (_tl243213243238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243215243233_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243213243238_))
                                      ((lambda (_L243241_)
                                         (let ((__tmp251350
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243241_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp251350)))
                                       _hd243214243236_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243207243220_ _g243208243223_)))))
                              (let ()
                                (declare (not safe))
                                (_g243207243220_ _g243208243223_)))))
                      (let ()
                        (declare (not safe))
                        (_g243207243220_ _g243208243223_))))))
          (declare (not safe))
          (_g243206243253_ _ann243205_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx243152_ _ann243153_)
        (let* ((_g243155243168_
                (lambda (_g243156243165_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243156243165_))))
               (_g243154243201_
                (lambda (_g243156243171_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243156243171_))
                      (let ((_e243160243173_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243156243171_))))
                        (let ((_hd243159243176_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243160243173_)))
                              (_tl243158243178_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243160243173_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243158243178_))
                              (let ((_e243163243181_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243158243178_))))
                                (let ((_hd243162243184_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243163243181_)))
                                      (_tl243161243186_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243163243181_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243161243186_))
                                      ((lambda (_L243189_)
                                         (let ((__tmp251351
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243189_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp251351)))
                                       _hd243162243184_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243155243168_ _g243156243171_)))))
                              (let ()
                                (declare (not safe))
                                (_g243155243168_ _g243156243171_)))))
                      (let ()
                        (declare (not safe))
                        (_g243155243168_ _g243156243171_))))))
          (declare (not safe))
          (_g243154243201_ _ann243153_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx243068_ _ann243069_)
        (let* ((_g243071243092_
                (lambda (_g243072243089_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243072243089_))))
               (_g243070243149_
                (lambda (_g243072243095_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243072243095_))
                      (let ((_e243078243097_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243072243095_))))
                        (let ((_hd243077243100_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243078243097_)))
                              (_tl243076243102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243078243097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243076243102_))
                              (let ((_e243081243105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243076243102_))))
                                (let ((_hd243080243108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243081243105_)))
                                      (_tl243079243110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243081243105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243079243110_))
                                      (let ((_e243084243113_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243079243110_))))
                                        (let ((_hd243083243116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243084243113_)))
                                              (_tl243082243118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243084243113_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243082243118_))
                                              (let ((_e243087243121_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243082243118_))))
                                                (let ((_hd243086243124_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243087243121_)))
                                                      (_tl243085243126_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243087243121_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243085243126_))
                                                      ((lambda (_L243129_
                                                                _L243130_
                                                                _L243131_)
                                                         (let ((__tmp251354
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243131_)))
                       (__tmp251353
                        (let () (declare (not safe)) (gx#stx-e _L243130_)))
                       (__tmp251352
                        (let () (declare (not safe)) (gx#stx-e _L243129_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp251354
                    __tmp251353
                    __tmp251352)))
               _hd243086243124_
               _hd243083243116_
               _hd243080243108_)
              (let ()
                (declare (not safe))
                (_g243071243092_ _g243072243095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243071243092_
                                                 _g243072243095_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243071243092_ _g243072243095_)))))
                              (let ()
                                (declare (not safe))
                                (_g243071243092_ _g243072243095_)))))
                      (let ()
                        (declare (not safe))
                        (_g243071243092_ _g243072243095_))))))
          (declare (not safe))
          (_g243070243149_ _ann243069_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx242984_ _ann242985_)
        (let* ((_g242987243008_
                (lambda (_g242988243005_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242988243005_))))
               (_g242986243065_
                (lambda (_g242988243011_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242988243011_))
                      (let ((_e242994243013_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242988243011_))))
                        (let ((_hd242993243016_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242994243013_)))
                              (_tl242992243018_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242994243013_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242992243018_))
                              (let ((_e242997243021_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242992243018_))))
                                (let ((_hd242996243024_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242997243021_)))
                                      (_tl242995243026_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242997243021_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242995243026_))
                                      (let ((_e243000243029_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242995243026_))))
                                        (let ((_hd242999243032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243000243029_)))
                                              (_tl242998243034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243000243029_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242998243034_))
                                              (let ((_e243003243037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242998243034_))))
                                                (let ((_hd243002243040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243003243037_)))
                                                      (_tl243001243042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243003243037_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243001243042_))
                                                      ((lambda (_L243045_
                                                                _L243046_
                                                                _L243047_)
                                                         (let ((__tmp251357
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243047_)))
                       (__tmp251356
                        (let () (declare (not safe)) (gx#stx-e _L243046_)))
                       (__tmp251355
                        (let () (declare (not safe)) (gx#stx-e _L243045_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp251357
                    __tmp251356
                    __tmp251355)))
               _hd243002243040_
               _hd242999243032_
               _hd242996243024_)
              (let ()
                (declare (not safe))
                (_g242987243008_ _g242988243011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g242987243008_
                                                 _g242988243011_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242987243008_ _g242988243011_)))))
                              (let ()
                                (declare (not safe))
                                (_g242987243008_ _g242988243011_)))))
                      (let ()
                        (declare (not safe))
                        (_g242987243008_ _g242988243011_))))))
          (declare (not safe))
          (_g242986243065_ _ann242985_))))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.class
       gxc#basic-expression-type-annotation-mop.class))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.constructor
       gxc#basic-expression-type-annotation-mop.constructor))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.predicate
       gxc#basic-expression-type-annotation-mop.predicate))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.accessor
       gxc#basic-expression-type-annotation-mop.accessor))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.mutator
       gxc#basic-expression-type-annotation-mop.mutator))
    (define gxc#basic-expression-type-lambda%
      (lambda (_stx242104_)
        (let* ((___stx249638249639_ _stx242104_)
               (_g242110242306_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249638249639_)))))
          (let ((___kont249640249641_
                 (lambda (_L242972_)
                   (let ((__obj251308
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251308
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242972_))
                      '#f)
                     __obj251308)))
                (___kont249642249643_
                 (lambda (_L242899_
                          _L242900_
                          _L242901_
                          _L242902_
                          _L242903_
                          _L242904_)
                   (let* ((_tab242954_
                           (let () (declare (not safe)) (gx#stx-e _L242901_)))
                          (_keys242956_
                           (if _tab242954_
                               (let ((__tmp251358 (vector->list _tab242954_)))
                                 (declare (not safe))
                                 (filter values __tmp251358))
                               '#f)))
                     (let ((__tmp251359
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L242900_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys242956_
                        __tmp251359)))))
                (___kont249644249645_
                 (lambda (_L242632_
                          _L242633_
                          _L242634_
                          _L242635_
                          _L242636_
                          _L242637_
                          _L242638_
                          _L242639_
                          _L242640_
                          _L242641_)
                   (let ((__tmp251361
                          (map gx#stx-e
                               (let ((__tmp251362
                                      (lambda (_g242734242737_ _g242735242739_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g242734242737_
                                                _g242735242739_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp251362 '() _L242634_))))
                         (__tmp251360
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242638_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp251361
                      __tmp251360))))
                (___kont249648249649_
                 (lambda (_L242342_)
                   (let ((__obj251309
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251309
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242342_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L242342_)))
                     __obj251309)))
                (___kont249650249651_
                 (lambda (_L242319_)
                   (let ((__obj251310
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251310
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242319_))
                      '#f)
                     __obj251310))))
            (let* ((___match249957249958_
                    (lambda (_e242297242334_ _hd242296242337_ _tl242295242339_)
                      (let ((_L242342_ _tl242295242339_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L242342_))
                            (___kont249648249649_ _L242342_)
                            (___kont249650249651_ _tl242295242339_)))))
                   (___match249951249952_
                    (lambda (_e242191242356_
                             _hd242190242359_
                             _tl242189242361_
                             _e242194242364_
                             _hd242193242367_
                             _tl242192242369_
                             _e242197242372_
                             _hd242196242375_
                             _tl242195242377_
                             _e242200242380_
                             _hd242199242383_
                             _tl242198242385_
                             _e242203242388_
                             _hd242202242391_
                             _tl242201242393_
                             _e242206242396_
                             _hd242205242399_
                             _tl242204242401_
                             _e242209242404_
                             _hd242208242407_
                             _tl242207242409_
                             _e242212242412_
                             _hd242211242415_
                             _tl242210242417_
                             _e242215242420_
                             _hd242214242423_
                             _tl242213242425_
                             _e242218242428_
                             _hd242217242431_
                             _tl242216242433_
                             _e242221242436_
                             _hd242220242439_
                             _tl242219242441_
                             _e242224242444_
                             _hd242223242447_
                             _tl242222242449_
                             _e242227242452_
                             _hd242226242455_
                             _tl242225242457_
                             _e242230242460_
                             _hd242229242463_
                             _tl242228242465_
                             ___splice249646249647_
                             _target242231242468_
                             _tl242233242470_
                             _e242248242473_
                             _hd242247242476_
                             _tl242246242478_
                             _e242251242481_
                             _hd242250242484_
                             _tl242249242486_
                             _e242254242489_
                             _hd242253242492_
                             _tl242252242494_)
                      (letrec ((_loop242234242497_
                                (lambda (_hd242232242500_
                                         _-absent-value242238242502_
                                         _key242239242504_
                                         _-xkwvar242240242506_
                                         _-hash-ref242241242508_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242232242500_))
                                      (let ((_e242235242511_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242232242500_))))
                                        (let ((_lp-tl242237242516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242235242511_)))
                                              (_lp-hd242236242514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242235242511_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd242236242514_))
                                              (let ((_e242257242519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd242236242514_))))
                                                (let ((_tl242255242524_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242257242519_)))
                                                      (_hd242256242522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242257242519_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd242256242522_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd242256242522_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242255242524_))
                      (let ((_e242260242527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242255242524_))))
                        (let ((_tl242258242532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242260242527_)))
                              (_hd242259242530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242260242527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242259242530_))
                              (let ((_e242263242535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242259242530_))))
                                (let ((_tl242261242540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242263242535_)))
                                      (_hd242262242538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242263242535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242262242538_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242262242538_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242261242540_))
                                              (let ((_e242266242543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242261242540_))))
                                                (let ((_tl242264242548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242266242543_)))
                                                      (_hd242265242546_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242266242543_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242264242548_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242258242532_))
                                                          (let ((_e242269242551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242258242532_))))
                    (let ((_tl242267242556_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242269242551_)))
                          (_hd242268242554_
                           (let ()
                             (declare (not safe))
                             (##car _e242269242551_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242268242554_))
                          (let ((_e242272242559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242268242554_))))
                            (let ((_tl242270242564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242272242559_)))
                                  (_hd242271242562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242272242559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242271242562_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242271242562_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242270242564_))
                                          (let ((_e242275242567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242270242564_))))
                                            (let ((_tl242273242572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242275242567_)))
                                                  (_hd242274242570_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242275242567_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242273242572_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242267242556_))
                                                      (let ((_e242278242575_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242267242556_))))
                (let ((_tl242276242580_
                       (let () (declare (not safe)) (##cdr _e242278242575_)))
                      (_hd242277242578_
                       (let () (declare (not safe)) (##car _e242278242575_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242277242578_))
                      (let ((_e242281242583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242277242578_))))
                        (let ((_tl242279242588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242281242583_)))
                              (_hd242280242586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242281242583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242280242586_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd242280242586_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242279242588_))
                                      (let ((_e242284242591_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242279242588_))))
                                        (let ((_tl242282242596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242284242591_)))
                                              (_hd242283242594_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242284242591_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242282242596_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242276242580_))
                                                  (let ((_e242287242599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242276242580_))))
                                                    (let ((_tl242285242604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242287242599_)))
                                                          (_hd242286242602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242287242599_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242286242602_))
                                                          (let ((_e242290242607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242286242602_))))
                    (let ((_tl242288242612_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242290242607_)))
                          (_hd242289242610_
                           (let ()
                             (declare (not safe))
                             (##car _e242290242607_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242289242610_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242289242610_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242288242612_))
                                  (let ((_e242293242615_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242288242612_))))
                                    (let ((_tl242291242620_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242293242615_)))
                                          (_hd242292242618_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242293242615_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242291242620_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242285242604_))
                                              (let ((__tmp251377
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242292242618_
                                                             _-absent-value242238242502_)))
                                                    (__tmp251376
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242283242594_
                                                             _key242239242504_)))
                                                    (__tmp251375
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242274242570_
                                                             _-xkwvar242240242506_)))
                                                    (__tmp251374
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242265242546_
                                                             _-hash-ref242241242508_))))
                                                (declare (not safe))
                                                (_loop242234242497_
                                                 _lp-tl242237242516_
                                                 __tmp251377
                                                 __tmp251376
                                                 __tmp251375
                                                 __tmp251374))
                                              (___match249957249958_
                                               _e242191242356_
                                               _hd242190242359_
                                               _tl242189242361_))
                                          (___match249957249958_
                                           _e242191242356_
                                           _hd242190242359_
                                           _tl242189242361_))))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))
                              (___match249957249958_
                               _e242191242356_
                               _hd242190242359_
                               _tl242189242361_))
                          (___match249957249958_
                           _e242191242356_
                           _hd242190242359_
                           _tl242189242361_))))
                  (___match249957249958_
                   _e242191242356_
                   _hd242190242359_
                   _tl242189242361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_))
                                              (___match249957249958_
                                               _e242191242356_
                                               _hd242190242359_
                                               _tl242189242361_))))
                                      (___match249957249958_
                                       _e242191242356_
                                       _hd242190242359_
                                       _tl242189242361_))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))
                              (___match249957249958_
                               _e242191242356_
                               _hd242190242359_
                               _tl242189242361_))))
                      (___match249957249958_
                       _e242191242356_
                       _hd242190242359_
                       _tl242189242361_))))
              (___match249957249958_
               _e242191242356_
               _hd242190242359_
               _tl242189242361_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_))))
                                          (___match249957249958_
                                           _e242191242356_
                                           _hd242190242359_
                                           _tl242189242361_))
                                      (___match249957249958_
                                       _e242191242356_
                                       _hd242190242359_
                                       _tl242189242361_))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))))
                          (___match249957249958_
                           _e242191242356_
                           _hd242190242359_
                           _tl242189242361_))))
                  (___match249957249958_
                   _e242191242356_
                   _hd242190242359_
                   _tl242189242361_))
              (___match249957249958_
               _e242191242356_
               _hd242190242359_
               _tl242189242361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249957249958_
                                               _e242191242356_
                                               _hd242190242359_
                                               _tl242189242361_))
                                          (___match249957249958_
                                           _e242191242356_
                                           _hd242190242359_
                                           _tl242189242361_))
                                      (___match249957249958_
                                       _e242191242356_
                                       _hd242190242359_
                                       _tl242189242361_))))
                              (___match249957249958_
                               _e242191242356_
                               _hd242190242359_
                               _tl242189242361_))))
                      (___match249957249958_
                       _e242191242356_
                       _hd242190242359_
                       _tl242189242361_))
                  (___match249957249958_
                   _e242191242356_
                   _hd242190242359_
                   _tl242189242361_))
              (___match249957249958_
               _e242191242356_
               _hd242190242359_
               _tl242189242361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249957249958_
                                               _e242191242356_
                                               _hd242190242359_
                                               _tl242189242361_))))
                                      (let ((_-hash-ref242245242629_
                                             (reverse _-hash-ref242241242508_))
                                            (_-xkwvar242244242627_
                                             (reverse _-xkwvar242240242506_))
                                            (_key242243242625_
                                             (reverse _key242239242504_))
                                            (_-absent-value242242242623_
                                             (reverse _-absent-value242238242502_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl242198242385_))
                                            (let ((_L242632_ _hd242253242492_)
                                                  (_L242633_
                                                   _-absent-value242242242623_)
                                                  (_L242634_ _key242243242625_)
                                                  (_L242635_
                                                   _-xkwvar242244242627_)
                                                  (_L242636_
                                                   _-hash-ref242245242629_)
                                                  (_L242637_ _hd242229242463_)
                                                  (_L242638_ _hd242220242439_)
                                                  (_L242639_ _hd242211242415_)
                                                  (_L242640_ _tl242195242377_)
                                                  (_L242641_ _hd242196242375_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L242641_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L242640_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L242639_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L242641_
                                                          _L242637_))
                                                       (let ((__tmp251372
                                                              (let ((__tmp251373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g242694242697_ _g242695242699_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242694242697_ _g242695242699_)))))
                        (declare (not safe))
                        (foldr1 __tmp251373 '() _L242634_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp251372))
               (let ((__tmp251371
                      (lambda (_g242701242703_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g242701242703_
                           'hash-ref))))
                     (__tmp251369
                      (let ((__tmp251370
                             (lambda (_g242705242708_ _g242706242710_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242705242708_ _g242706242710_)))))
                        (declare (not safe))
                        (foldr1 __tmp251370 '() _L242636_))))
                 (declare (not safe))
                 (andmap1 __tmp251371 __tmp251369))
               (let ((__tmp251368
                      (lambda (_g242712242714_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g242712242714_
                           'absent-value))))
                     (__tmp251366
                      (let ((__tmp251367
                             (lambda (_g242716242719_ _g242717242721_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242716242719_ _g242717242721_)))))
                        (declare (not safe))
                        (foldr1 __tmp251367 '() _L242633_))))
                 (declare (not safe))
                 (andmap1 __tmp251368 __tmp251366))
               (let ((__tmp251365
                      (lambda (_g242723242725_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g242723242725_ _L242641_))))
                     (__tmp251363
                      (let ((__tmp251364
                             (lambda (_g242727242730_ _g242728242732_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242727242730_ _g242728242732_)))))
                        (declare (not safe))
                        (foldr1 __tmp251364 '() _L242635_))))
                 (declare (not safe))
                 (andmap1 __tmp251365 __tmp251363)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249644249645_
                                                   _L242632_
                                                   _L242633_
                                                   _L242634_
                                                   _L242635_
                                                   _L242636_
                                                   _L242637_
                                                   _L242638_
                                                   _L242639_
                                                   _L242640_
                                                   _L242641_)
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_)))
                                            (___match249957249958_
                                             _e242191242356_
                                             _hd242190242359_
                                             _tl242189242361_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop242234242497_
                           _target242231242468_
                           '()
                           '()
                           '()
                           '())))))
                   (___match249823249824_
                    (lambda (_e242191242356_
                             _hd242190242359_
                             _tl242189242361_
                             _e242194242364_
                             _hd242193242367_
                             _tl242192242369_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242193242367_))
                          (let ((_e242197242372_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242193242367_))))
                            (let ((_tl242195242377_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242197242372_)))
                                  (_hd242196242375_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242197242372_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242192242369_))
                                  (let ((_e242200242380_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242192242369_))))
                                    (let ((_tl242198242385_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242200242380_)))
                                          (_hd242199242383_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242200242380_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242199242383_))
                                          (let ((_e242203242388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242199242383_))))
                                            (let ((_tl242201242393_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242203242388_)))
                                                  (_hd242202242391_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242203242388_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242202242391_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242202242391_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242201242393_))
                                                          (let ((_e242206242396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242201242393_))))
                    (let ((_tl242204242401_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242206242396_)))
                          (_hd242205242399_
                           (let ()
                             (declare (not safe))
                             (##car _e242206242396_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242205242399_))
                          (let ((_e242209242404_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242205242399_))))
                            (let ((_tl242207242409_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242209242404_)))
                                  (_hd242208242407_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242209242404_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242208242407_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242208242407_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242207242409_))
                                          (let ((_e242212242412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242207242409_))))
                                            (let ((_tl242210242417_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242212242412_)))
                                                  (_hd242211242415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242212242412_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242210242417_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242204242401_))
                                                      (let ((_e242215242420_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242204242401_))))
                (let ((_tl242213242425_
                       (let () (declare (not safe)) (##cdr _e242215242420_)))
                      (_hd242214242423_
                       (let () (declare (not safe)) (##car _e242215242420_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242214242423_))
                      (let ((_e242218242428_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242214242423_))))
                        (let ((_tl242216242433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242218242428_)))
                              (_hd242217242431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242218242428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242217242431_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242217242431_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242216242433_))
                                      (let ((_e242221242436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242216242433_))))
                                        (let ((_tl242219242441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242221242436_)))
                                              (_hd242220242439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242221242436_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242219242441_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242213242425_))
                                                  (let ((_e242224242444_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242213242425_))))
                                                    (let ((_tl242222242449_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242224242444_)))
                                                          (_hd242223242447_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242224242444_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242223242447_))
                                                          (let ((_e242227242452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242223242447_))))
                    (let ((_tl242225242457_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242227242452_)))
                          (_hd242226242455_
                           (let ()
                             (declare (not safe))
                             (##car _e242227242452_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242226242455_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242226242455_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242225242457_))
                                  (let ((_e242230242460_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242225242457_))))
                                    (let ((_tl242228242465_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242230242460_)))
                                          (_hd242229242463_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242230242460_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242228242465_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242222242449_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl242222242449_))
                                                        '1)
                                                  (let ((___splice249646249647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242222242449_
                                                            '1))))
                                                    (let ((_tl242233242470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249646249647_
                                                              '1)))
                                                          (_target242231242468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249646249647_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242233242470_))
                                                          (let ((_e242248242473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242233242470_))))
                    (let ((_tl242246242478_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242248242473_)))
                          (_hd242247242476_
                           (let ()
                             (declare (not safe))
                             (##car _e242248242473_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242247242476_))
                          (let ((_e242251242481_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242247242476_))))
                            (let ((_tl242249242486_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242251242481_)))
                                  (_hd242250242484_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242251242481_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242250242484_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242250242484_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242249242486_))
                                          (let ((_e242254242489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242249242486_))))
                                            (let ((_tl242252242494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242254242489_)))
                                                  (_hd242253242492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242254242489_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242252242494_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242246242478_))
                                                      (___match249951249952_
                                                       _e242191242356_
                                                       _hd242190242359_
                                                       _tl242189242361_
                                                       _e242194242364_
                                                       _hd242193242367_
                                                       _tl242192242369_
                                                       _e242197242372_
                                                       _hd242196242375_
                                                       _tl242195242377_
                                                       _e242200242380_
                                                       _hd242199242383_
                                                       _tl242198242385_
                                                       _e242203242388_
                                                       _hd242202242391_
                                                       _tl242201242393_
                                                       _e242206242396_
                                                       _hd242205242399_
                                                       _tl242204242401_
                                                       _e242209242404_
                                                       _hd242208242407_
                                                       _tl242207242409_
                                                       _e242212242412_
                                                       _hd242211242415_
                                                       _tl242210242417_
                                                       _e242215242420_
                                                       _hd242214242423_
                                                       _tl242213242425_
                                                       _e242218242428_
                                                       _hd242217242431_
                                                       _tl242216242433_
                                                       _e242221242436_
                                                       _hd242220242439_
                                                       _tl242219242441_
                                                       _e242224242444_
                                                       _hd242223242447_
                                                       _tl242222242449_
                                                       _e242227242452_
                                                       _hd242226242455_
                                                       _tl242225242457_
                                                       _e242230242460_
                                                       _hd242229242463_
                                                       _tl242228242465_
                                                       ___splice249646249647_
                                                       _target242231242468_
                                                       _tl242233242470_
                                                       _e242248242473_
                                                       _hd242247242476_
                                                       _tl242246242478_
                                                       _e242251242481_
                                                       _hd242250242484_
                                                       _tl242249242486_
                                                       _e242254242489_
                                                       _hd242253242492_
                                                       _tl242252242494_)
                                                      (___match249957249958_
                                                       _e242191242356_
                                                       _hd242190242359_
                                                       _tl242189242361_))
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_))))
                                          (___match249957249958_
                                           _e242191242356_
                                           _hd242190242359_
                                           _tl242189242361_))
                                      (___match249957249958_
                                       _e242191242356_
                                       _hd242190242359_
                                       _tl242189242361_))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))))
                          (___match249957249958_
                           _e242191242356_
                           _hd242190242359_
                           _tl242189242361_))))
                  (___match249957249958_
                   _e242191242356_
                   _hd242190242359_
                   _tl242189242361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_))
                                              (___match249957249958_
                                               _e242191242356_
                                               _hd242190242359_
                                               _tl242189242361_))
                                          (___match249957249958_
                                           _e242191242356_
                                           _hd242190242359_
                                           _tl242189242361_))))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))
                              (___match249957249958_
                               _e242191242356_
                               _hd242190242359_
                               _tl242189242361_))
                          (___match249957249958_
                           _e242191242356_
                           _hd242190242359_
                           _tl242189242361_))))
                  (___match249957249958_
                   _e242191242356_
                   _hd242190242359_
                   _tl242189242361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_))
                                              (___match249957249958_
                                               _e242191242356_
                                               _hd242190242359_
                                               _tl242189242361_))))
                                      (___match249957249958_
                                       _e242191242356_
                                       _hd242190242359_
                                       _tl242189242361_))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))
                              (___match249957249958_
                               _e242191242356_
                               _hd242190242359_
                               _tl242189242361_))))
                      (___match249957249958_
                       _e242191242356_
                       _hd242190242359_
                       _tl242189242361_))))
              (___match249957249958_
               _e242191242356_
               _hd242190242359_
               _tl242189242361_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_))))
                                          (___match249957249958_
                                           _e242191242356_
                                           _hd242190242359_
                                           _tl242189242361_))
                                      (___match249957249958_
                                       _e242191242356_
                                       _hd242190242359_
                                       _tl242189242361_))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))))
                          (___match249957249958_
                           _e242191242356_
                           _hd242190242359_
                           _tl242189242361_))))
                  (___match249957249958_
                   _e242191242356_
                   _hd242190242359_
                   _tl242189242361_))
              (___match249957249958_
               _e242191242356_
               _hd242190242359_
               _tl242189242361_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249957249958_
                                                   _e242191242356_
                                                   _hd242190242359_
                                                   _tl242189242361_))))
                                          (___match249957249958_
                                           _e242191242356_
                                           _hd242190242359_
                                           _tl242189242361_))))
                                  (___match249957249958_
                                   _e242191242356_
                                   _hd242190242359_
                                   _tl242189242361_))))
                          (___match249957249958_
                           _e242191242356_
                           _hd242190242359_
                           _tl242189242361_))))
                   (___match249811249812_
                    (lambda (_e242124242747_
                             _hd242123242750_
                             _tl242122242752_
                             _e242127242755_
                             _hd242126242758_
                             _tl242125242760_
                             _e242130242763_
                             _hd242129242766_
                             _tl242128242768_
                             _e242133242771_
                             _hd242132242774_
                             _tl242131242776_
                             _e242136242779_
                             _hd242135242782_
                             _tl242134242784_
                             _e242139242787_
                             _hd242138242790_
                             _tl242137242792_
                             _e242142242795_
                             _hd242141242798_
                             _tl242140242800_
                             _e242145242803_
                             _hd242144242806_
                             _tl242143242808_
                             _e242148242811_
                             _hd242147242814_
                             _tl242146242816_
                             _e242151242819_
                             _hd242150242822_
                             _tl242149242824_
                             _e242154242827_
                             _hd242153242830_
                             _tl242152242832_
                             _e242157242835_
                             _hd242156242838_
                             _tl242155242840_
                             _e242160242843_
                             _hd242159242846_
                             _tl242158242848_
                             _e242163242851_
                             _hd242162242854_
                             _tl242161242856_
                             _e242166242859_
                             _hd242165242862_
                             _tl242164242864_
                             _e242169242867_
                             _hd242168242870_
                             _tl242167242872_
                             _e242172242875_
                             _hd242171242878_
                             _tl242170242880_
                             _e242175242883_
                             _hd242174242886_
                             _tl242173242888_
                             _e242178242891_
                             _hd242177242894_
                             _tl242176242896_)
                      (let ((_L242899_ _hd242177242894_)
                            (_L242900_ _hd242168242870_)
                            (_L242901_ _hd242159242846_)
                            (_L242902_ _hd242150242822_)
                            (_L242903_ _hd242141242798_)
                            (_L242904_ _hd242126242758_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L242904_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L242903_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L242902_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L242904_ _L242899_)))
                            (___kont249642249643_
                             _L242899_
                             _L242900_
                             _L242901_
                             _L242902_
                             _L242903_
                             _L242904_)
                            (___match249823249824_
                             _e242124242747_
                             _hd242123242750_
                             _tl242122242752_
                             _e242127242755_
                             _hd242126242758_
                             _tl242125242760_)))))
                   (___match249665249666_
                    (lambda (_e242124242747_ _hd242123242750_ _tl242122242752_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242122242752_))
                          (let ((_e242127242755_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242122242752_))))
                            (let ((_tl242125242760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242127242755_)))
                                  (_hd242126242758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242127242755_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242125242760_))
                                  (let ((_e242130242763_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242125242760_))))
                                    (let ((_tl242128242768_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242130242763_)))
                                          (_hd242129242766_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242130242763_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242129242766_))
                                          (let ((_e242133242771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242129242766_))))
                                            (let ((_tl242131242776_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242133242771_)))
                                                  (_hd242132242774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242133242771_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242132242774_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242132242774_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242131242776_))
                                                          (let ((_e242136242779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242131242776_))))
                    (let ((_tl242134242784_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242136242779_)))
                          (_hd242135242782_
                           (let ()
                             (declare (not safe))
                             (##car _e242136242779_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242135242782_))
                          (let ((_e242139242787_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242135242782_))))
                            (let ((_tl242137242792_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242139242787_)))
                                  (_hd242138242790_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242139242787_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242138242790_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242138242790_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242137242792_))
                                          (let ((_e242142242795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242137242792_))))
                                            (let ((_tl242140242800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242142242795_)))
                                                  (_hd242141242798_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242142242795_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242140242800_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242134242784_))
                                                      (let ((_e242145242803_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242134242784_))))
                (let ((_tl242143242808_
                       (let () (declare (not safe)) (##cdr _e242145242803_)))
                      (_hd242144242806_
                       (let () (declare (not safe)) (##car _e242145242803_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242144242806_))
                      (let ((_e242148242811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242144242806_))))
                        (let ((_tl242146242816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242148242811_)))
                              (_hd242147242814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242148242811_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242147242814_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242147242814_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242146242816_))
                                      (let ((_e242151242819_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242146242816_))))
                                        (let ((_tl242149242824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242151242819_)))
                                              (_hd242150242822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242151242819_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242149242824_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242143242808_))
                                                  (let ((_e242154242827_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242143242808_))))
                                                    (let ((_tl242152242832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242154242827_)))
                                                          (_hd242153242830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242154242827_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242153242830_))
                                                          (let ((_e242157242835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242153242830_))))
                    (let ((_tl242155242840_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242157242835_)))
                          (_hd242156242838_
                           (let ()
                             (declare (not safe))
                             (##car _e242157242835_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242156242838_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd242156242838_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242155242840_))
                                  (let ((_e242160242843_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242155242840_))))
                                    (let ((_tl242158242848_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242160242843_)))
                                          (_hd242159242846_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242160242843_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242158242848_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242152242832_))
                                              (let ((_e242163242851_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242152242832_))))
                                                (let ((_tl242161242856_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242163242851_)))
                                                      (_hd242162242854_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242163242851_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd242162242854_))
                                                      (let ((_e242166242859_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd242162242854_))))
                (let ((_tl242164242864_
                       (let () (declare (not safe)) (##cdr _e242166242859_)))
                      (_hd242165242862_
                       (let () (declare (not safe)) (##car _e242166242859_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd242165242862_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242165242862_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242164242864_))
                              (let ((_e242169242867_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242164242864_))))
                                (let ((_tl242167242872_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242169242867_)))
                                      (_hd242168242870_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242169242867_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242167242872_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242161242856_))
                                          (let ((_e242172242875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242161242856_))))
                                            (let ((_tl242170242880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242172242875_)))
                                                  (_hd242171242878_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242172242875_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242171242878_))
                                                  (let ((_e242175242883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242171242878_))))
                                                    (let ((_tl242173242888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242175242883_)))
                                                          (_hd242174242886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242175242883_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242174242886_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd242174242886_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242173242888_))
                          (let ((_e242178242891_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242173242888_))))
                            (let ((_tl242176242896_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242178242891_)))
                                  (_hd242177242894_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242178242891_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242176242896_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242170242880_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242128242768_))
                                          (___match249811249812_
                                           _e242124242747_
                                           _hd242123242750_
                                           _tl242122242752_
                                           _e242127242755_
                                           _hd242126242758_
                                           _tl242125242760_
                                           _e242130242763_
                                           _hd242129242766_
                                           _tl242128242768_
                                           _e242133242771_
                                           _hd242132242774_
                                           _tl242131242776_
                                           _e242136242779_
                                           _hd242135242782_
                                           _tl242134242784_
                                           _e242139242787_
                                           _hd242138242790_
                                           _tl242137242792_
                                           _e242142242795_
                                           _hd242141242798_
                                           _tl242140242800_
                                           _e242145242803_
                                           _hd242144242806_
                                           _tl242143242808_
                                           _e242148242811_
                                           _hd242147242814_
                                           _tl242146242816_
                                           _e242151242819_
                                           _hd242150242822_
                                           _tl242149242824_
                                           _e242154242827_
                                           _hd242153242830_
                                           _tl242152242832_
                                           _e242157242835_
                                           _hd242156242838_
                                           _tl242155242840_
                                           _e242160242843_
                                           _hd242159242846_
                                           _tl242158242848_
                                           _e242163242851_
                                           _hd242162242854_
                                           _tl242161242856_
                                           _e242166242859_
                                           _hd242165242862_
                                           _tl242164242864_
                                           _e242169242867_
                                           _hd242168242870_
                                           _tl242167242872_
                                           _e242172242875_
                                           _hd242171242878_
                                           _tl242170242880_
                                           _e242175242883_
                                           _hd242174242886_
                                           _tl242173242888_
                                           _e242178242891_
                                           _hd242177242894_
                                           _tl242176242896_)
                                          (___match249823249824_
                                           _e242124242747_
                                           _hd242123242750_
                                           _tl242122242752_
                                           _e242127242755_
                                           _hd242126242758_
                                           _tl242125242760_))
                                      (___match249823249824_
                                       _e242124242747_
                                       _hd242123242750_
                                       _tl242122242752_
                                       _e242127242755_
                                       _hd242126242758_
                                       _tl242125242760_))
                                  (___match249823249824_
                                   _e242124242747_
                                   _hd242123242750_
                                   _tl242122242752_
                                   _e242127242755_
                                   _hd242126242758_
                                   _tl242125242760_))))
                          (___match249823249824_
                           _e242124242747_
                           _hd242123242750_
                           _tl242122242752_
                           _e242127242755_
                           _hd242126242758_
                           _tl242125242760_))
                      (___match249823249824_
                       _e242124242747_
                       _hd242123242750_
                       _tl242122242752_
                       _e242127242755_
                       _hd242126242758_
                       _tl242125242760_))
                  (___match249823249824_
                   _e242124242747_
                   _hd242123242750_
                   _tl242122242752_
                   _e242127242755_
                   _hd242126242758_
                   _tl242125242760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249823249824_
                                                   _e242124242747_
                                                   _hd242123242750_
                                                   _tl242122242752_
                                                   _e242127242755_
                                                   _hd242126242758_
                                                   _tl242125242760_))))
                                          (___match249823249824_
                                           _e242124242747_
                                           _hd242123242750_
                                           _tl242122242752_
                                           _e242127242755_
                                           _hd242126242758_
                                           _tl242125242760_))
                                      (___match249823249824_
                                       _e242124242747_
                                       _hd242123242750_
                                       _tl242122242752_
                                       _e242127242755_
                                       _hd242126242758_
                                       _tl242125242760_))))
                              (___match249823249824_
                               _e242124242747_
                               _hd242123242750_
                               _tl242122242752_
                               _e242127242755_
                               _hd242126242758_
                               _tl242125242760_))
                          (___match249823249824_
                           _e242124242747_
                           _hd242123242750_
                           _tl242122242752_
                           _e242127242755_
                           _hd242126242758_
                           _tl242125242760_))
                      (___match249823249824_
                       _e242124242747_
                       _hd242123242750_
                       _tl242122242752_
                       _e242127242755_
                       _hd242126242758_
                       _tl242125242760_))))
              (___match249823249824_
               _e242124242747_
               _hd242123242750_
               _tl242122242752_
               _e242127242755_
               _hd242126242758_
               _tl242125242760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249823249824_
                                               _e242124242747_
                                               _hd242123242750_
                                               _tl242122242752_
                                               _e242127242755_
                                               _hd242126242758_
                                               _tl242125242760_))
                                          (___match249823249824_
                                           _e242124242747_
                                           _hd242123242750_
                                           _tl242122242752_
                                           _e242127242755_
                                           _hd242126242758_
                                           _tl242125242760_))))
                                  (___match249823249824_
                                   _e242124242747_
                                   _hd242123242750_
                                   _tl242122242752_
                                   _e242127242755_
                                   _hd242126242758_
                                   _tl242125242760_))
                              (___match249823249824_
                               _e242124242747_
                               _hd242123242750_
                               _tl242122242752_
                               _e242127242755_
                               _hd242126242758_
                               _tl242125242760_))
                          (___match249823249824_
                           _e242124242747_
                           _hd242123242750_
                           _tl242122242752_
                           _e242127242755_
                           _hd242126242758_
                           _tl242125242760_))))
                  (___match249823249824_
                   _e242124242747_
                   _hd242123242750_
                   _tl242122242752_
                   _e242127242755_
                   _hd242126242758_
                   _tl242125242760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249823249824_
                                                   _e242124242747_
                                                   _hd242123242750_
                                                   _tl242122242752_
                                                   _e242127242755_
                                                   _hd242126242758_
                                                   _tl242125242760_))
                                              (___match249823249824_
                                               _e242124242747_
                                               _hd242123242750_
                                               _tl242122242752_
                                               _e242127242755_
                                               _hd242126242758_
                                               _tl242125242760_))))
                                      (___match249823249824_
                                       _e242124242747_
                                       _hd242123242750_
                                       _tl242122242752_
                                       _e242127242755_
                                       _hd242126242758_
                                       _tl242125242760_))
                                  (___match249823249824_
                                   _e242124242747_
                                   _hd242123242750_
                                   _tl242122242752_
                                   _e242127242755_
                                   _hd242126242758_
                                   _tl242125242760_))
                              (___match249823249824_
                               _e242124242747_
                               _hd242123242750_
                               _tl242122242752_
                               _e242127242755_
                               _hd242126242758_
                               _tl242125242760_))))
                      (___match249823249824_
                       _e242124242747_
                       _hd242123242750_
                       _tl242122242752_
                       _e242127242755_
                       _hd242126242758_
                       _tl242125242760_))))
              (___match249823249824_
               _e242124242747_
               _hd242123242750_
               _tl242122242752_
               _e242127242755_
               _hd242126242758_
               _tl242125242760_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249823249824_
                                                   _e242124242747_
                                                   _hd242123242750_
                                                   _tl242122242752_
                                                   _e242127242755_
                                                   _hd242126242758_
                                                   _tl242125242760_))))
                                          (___match249823249824_
                                           _e242124242747_
                                           _hd242123242750_
                                           _tl242122242752_
                                           _e242127242755_
                                           _hd242126242758_
                                           _tl242125242760_))
                                      (___match249823249824_
                                       _e242124242747_
                                       _hd242123242750_
                                       _tl242122242752_
                                       _e242127242755_
                                       _hd242126242758_
                                       _tl242125242760_))
                                  (___match249823249824_
                                   _e242124242747_
                                   _hd242123242750_
                                   _tl242122242752_
                                   _e242127242755_
                                   _hd242126242758_
                                   _tl242125242760_))))
                          (___match249823249824_
                           _e242124242747_
                           _hd242123242750_
                           _tl242122242752_
                           _e242127242755_
                           _hd242126242758_
                           _tl242125242760_))))
                  (___match249823249824_
                   _e242124242747_
                   _hd242123242750_
                   _tl242122242752_
                   _e242127242755_
                   _hd242126242758_
                   _tl242125242760_))
              (___match249823249824_
               _e242124242747_
               _hd242123242750_
               _tl242122242752_
               _e242127242755_
               _hd242126242758_
               _tl242125242760_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249823249824_
                                                   _e242124242747_
                                                   _hd242123242750_
                                                   _tl242122242752_
                                                   _e242127242755_
                                                   _hd242126242758_
                                                   _tl242125242760_))))
                                          (___match249823249824_
                                           _e242124242747_
                                           _hd242123242750_
                                           _tl242122242752_
                                           _e242127242755_
                                           _hd242126242758_
                                           _tl242125242760_))))
                                  (___match249823249824_
                                   _e242124242747_
                                   _hd242123242750_
                                   _tl242122242752_
                                   _e242127242755_
                                   _hd242126242758_
                                   _tl242125242760_))))
                          (___match249957249958_
                           _e242124242747_
                           _hd242123242750_
                           _tl242122242752_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249638249639_))
                  (let ((_e242115242964_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249638249639_))))
                    (let ((_tl242113242969_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242115242964_)))
                          (_hd242114242967_
                           (let ()
                             (declare (not safe))
                             (##car _e242115242964_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L242972_ _tl242113242969_))
                            (___kont249640249641_ _L242972_))
                          (___match249665249666_
                           _e242115242964_
                           _hd242114242967_
                           _tl242113242969_))))
                  (let () (declare (not safe)) (_g242110242306_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx242059_)
        (letrec ((_clause-e242061_
                  (lambda (_form242102_)
                    (let ((__obj251311
                           (let ()
                             (declare (not safe))
                             (##structure
                              gxc#!lambda::t
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f))))
                      (gxc#!lambda:::init!
                       __obj251311
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form242102_))
                       (if (let ((__tmp251378
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp251378))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form242102_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form242102_))
                               '#f)
                           '#f))
                      __obj251311))))
          (let* ((_g242063242073_
                  (lambda (_g242064242070_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g242064242070_))))
                 (_g242062242099_
                  (lambda (_g242064242076_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g242064242076_))
                        (let ((_e242068242078_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g242064242076_))))
                          (let ((_hd242067242081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242068242078_)))
                                (_tl242066242083_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242068242078_))))
                            ((lambda (_L242086_)
                               (let ((_clauses242097_
                                      (map _clause-e242061_ _L242086_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses242097_)))
                             _tl242066242083_)))
                        (let ()
                          (declare (not safe))
                          (_g242063242073_ _g242064242076_))))))
            (declare (not safe))
            (_g242062242099_ _stx242059_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx241991_)
        (let* ((_g241993242010_
                (lambda (_g241994242007_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241994242007_))))
               (_g241992242056_
                (lambda (_g241994242013_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241994242013_))
                      (let ((_e241999242015_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241994242013_))))
                        (let ((_hd241998242018_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241999242015_)))
                              (_tl241997242020_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241999242015_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241997242020_))
                              (let ((_e242002242023_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241997242020_))))
                                (let ((_hd242001242026_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242002242023_)))
                                      (_tl242000242028_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242002242023_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242000242028_))
                                      (let ((_e242005242031_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242000242028_))))
                                        (let ((_hd242004242034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242005242031_)))
                                              (_tl242003242036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242005242031_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242003242036_))
                                              ((lambda (_L242039_ _L242040_)
                                                 (let ((__tmp251379
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L242039_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp251379
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd242004242034_
                                               _hd242001242026_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241993242010_
                                                 _g241994242013_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241993242010_ _g241994242013_)))))
                              (let ()
                                (declare (not safe))
                                (_g241993242010_ _g241994242013_)))))
                      (let ()
                        (declare (not safe))
                        (_g241993242010_ _g241994242013_))))))
          (declare (not safe))
          (_g241992242056_ _stx241991_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx241896_)
        (let* ((___stx249966249967_ _stx241896_)
               (_g241899241919_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249966249967_)))))
          (let ((___kont249968249969_
                 (lambda (_L241963_ _L241964_)
                   (let ((_type-e241981241983_
                          (let ((__tmp251380
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L241964_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp251380
                             '#f))))
                     (if _type-e241981241983_
                         (let ((_type-e241986_ _type-e241981241983_))
                           (_type-e241986_ _stx241896_ _L241963_))
                         '#f))))
                (___kont249970249971_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249966249967_))
                (let ((_e241905241931_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249966249967_))))
                  (let ((_tl241903241936_
                         (let () (declare (not safe)) (##cdr _e241905241931_)))
                        (_hd241904241934_
                         (let ()
                           (declare (not safe))
                           (##car _e241905241931_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241903241936_))
                        (let ((_e241908241939_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241903241936_))))
                          (let ((_tl241906241944_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241908241939_)))
                                (_hd241907241942_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241908241939_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241907241942_))
                                (let ((_e241911241947_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241907241942_))))
                                  (let ((_tl241909241952_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241911241947_)))
                                        (_hd241910241950_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241911241947_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241910241950_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241910241950_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241909241952_))
                                                (let ((_e241914241955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241909241952_))))
                                                  (let ((_tl241912241960_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241914241955_)))
                                                        (_hd241913241958_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241914241955_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241912241960_))
                                                        (___kont249968249969_
                                                         _tl241906241944_
                                                         _hd241913241958_)
                                                        (___kont249970249971_))))
                                                (___kont249970249971_))
                                            (___kont249970249971_))
                                        (___kont249970249971_))))
                                (___kont249970249971_))))
                        (___kont249970249971_))))
                (___kont249970249971_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx241845_)
        (let* ((_g241847241860_
                (lambda (_g241848241857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241848241857_))))
               (_g241846241893_
                (lambda (_g241848241863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241848241863_))
                      (let ((_e241852241865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241848241863_))))
                        (let ((_hd241851241868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241852241865_)))
                              (_tl241850241870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241852241865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241850241870_))
                              (let ((_e241855241873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241850241870_))))
                                (let ((_hd241854241876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241855241873_)))
                                      (_tl241853241878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241855241873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241853241878_))
                                      ((lambda (_L241881_)
                                         (let ((__tmp251381
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L241881_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp251381)))
                                       _hd241854241876_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241847241860_ _g241848241863_)))))
                              (let ()
                                (declare (not safe))
                                (_g241847241860_ _g241848241863_)))))
                      (let ()
                        (declare (not safe))
                        (_g241847241860_ _g241848241863_))))))
          (declare (not safe))
          (_g241846241893_ _stx241845_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form241079_)
        (let* ((___stx250004250005_ _form241079_)
               (_g241084241241_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250004250005_)))))
          (let ((___kont250006250007_
                 (lambda (_L241765_ _L241766_ _L241767_) '#t))
                (___kont250012250013_
                 (lambda (_L241553_
                          _L241554_
                          _L241555_
                          _L241556_
                          _L241557_
                          _L241558_)
                   '#t))
                (___kont250018250019_
                 (lambda (_L241349_ _L241350_ _L241351_ _L241352_) '#t))
                (___kont250020250021_ (lambda () '#f)))
            (let* ((___match250145250146_
                    (lambda (_e241203241253_
                             _hd241202241256_
                             _tl241201241258_
                             _e241206241261_
                             _hd241205241264_
                             _tl241204241266_
                             _e241209241269_
                             _hd241208241272_
                             _tl241207241274_
                             _e241212241277_
                             _hd241211241280_
                             _tl241210241282_
                             _e241215241285_
                             _hd241214241288_
                             _tl241213241290_
                             _e241218241293_
                             _hd241217241296_
                             _tl241216241298_
                             _e241221241301_
                             _hd241220241304_
                             _tl241219241306_
                             _e241224241309_
                             _hd241223241312_
                             _tl241222241314_
                             _e241227241317_
                             _hd241226241320_
                             _tl241225241322_
                             _e241230241325_
                             _hd241229241328_
                             _tl241228241330_
                             _e241233241333_
                             _hd241232241336_
                             _tl241231241338_
                             _e241236241341_
                             _hd241235241344_
                             _tl241234241346_)
                      (let ((_L241349_ _hd241235241344_)
                            (_L241350_ _hd241226241320_)
                            (_L241351_ _hd241217241296_)
                            (_L241352_ _hd241202241256_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L241352_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L241351_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L241352_ _L241349_))
                                 (let ((__tmp251382
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L241350_
                                           _L241352_))))
                                   (declare (not safe))
                                   (not __tmp251382)))
                            (___kont250018250019_
                             _L241349_
                             _L241350_
                             _L241351_
                             _L241352_)
                            (___kont250020250021_)))))
                   (___match250117250118_
                    (lambda (_e241203241253_
                             _hd241202241256_
                             _tl241201241258_
                             _e241206241261_
                             _hd241205241264_
                             _tl241204241266_
                             _e241209241269_
                             _hd241208241272_
                             _tl241207241274_
                             _e241212241277_
                             _hd241211241280_
                             _tl241210241282_
                             _e241215241285_
                             _hd241214241288_
                             _tl241213241290_
                             _e241218241293_
                             _hd241217241296_
                             _tl241216241298_
                             _e241221241301_
                             _hd241220241304_
                             _tl241219241306_
                             _e241224241309_
                             _hd241223241312_
                             _tl241222241314_
                             _e241227241317_
                             _hd241226241320_
                             _tl241225241322_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241219241306_))
                          (let ((_e241230241325_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241219241306_))))
                            (let ((_tl241228241330_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241230241325_)))
                                  (_hd241229241328_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241230241325_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd241229241328_))
                                  (let ((_e241233241333_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd241229241328_))))
                                    (let ((_tl241231241338_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241233241333_)))
                                          (_hd241232241336_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241233241333_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd241232241336_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd241232241336_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241231241338_))
                                                  (let ((_e241236241341_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241231241338_))))
                                                    (let ((_tl241234241346_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241236241341_)))
                                                          (_hd241235241344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241236241341_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241234241346_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl241228241330_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl241204241266_))
                          (___match250145250146_
                           _e241203241253_
                           _hd241202241256_
                           _tl241201241258_
                           _e241206241261_
                           _hd241205241264_
                           _tl241204241266_
                           _e241209241269_
                           _hd241208241272_
                           _tl241207241274_
                           _e241212241277_
                           _hd241211241280_
                           _tl241210241282_
                           _e241215241285_
                           _hd241214241288_
                           _tl241213241290_
                           _e241218241293_
                           _hd241217241296_
                           _tl241216241298_
                           _e241221241301_
                           _hd241220241304_
                           _tl241219241306_
                           _e241224241309_
                           _hd241223241312_
                           _tl241222241314_
                           _e241227241317_
                           _hd241226241320_
                           _tl241225241322_
                           _e241230241325_
                           _hd241229241328_
                           _tl241228241330_
                           _e241233241333_
                           _hd241232241336_
                           _tl241231241338_
                           _e241236241341_
                           _hd241235241344_
                           _tl241234241346_)
                          (___kont250020250021_))
                      (___kont250020250021_))
                  (___kont250020250021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250020250021_))
                                              (___kont250020250021_))
                                          (___kont250020250021_))))
                                  (___kont250020250021_))))
                          (___kont250020250021_))))
                   (___match250047250048_
                    (lambda (_e241139241393_
                             _hd241138241396_
                             _tl241137241398_
                             ___splice250014250015_
                             _target241140241401_
                             _tl241142241403_)
                      (letrec ((_loop241143241406_
                                (lambda (_hd241141241409_ _arg241147241411_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241141241409_))
                                      (let ((_e241144241414_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241141241409_))))
                                        (let ((_lp-tl241146241419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241144241414_)))
                                              (_lp-hd241145241417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241144241414_))))
                                          (let ((__tmp251397
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241145241417_
                                                         _arg241147241411_))))
                                            (declare (not safe))
                                            (_loop241143241406_
                                             _lp-tl241146241419_
                                             __tmp251397))))
                                      (let ((_arg241148241422_
                                             (reverse _arg241147241411_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241137241398_))
                                            (let ((_e241151241425_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241137241398_))))
                                              (let ((_tl241149241430_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241151241425_)))
                                                    (_hd241150241428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241151241425_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241150241428_))
                                                    (let ((_e241154241433_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241150241428_))))
                                                      (let ((_tl241152241438_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241154241433_)))
                    (_hd241153241436_
                     (let () (declare (not safe)) (##car _e241154241433_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241153241436_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241153241436_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241152241438_))
                            (let ((_e241157241441_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241152241438_))))
                              (let ((_tl241155241446_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241157241441_)))
                                    (_hd241156241444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241157241441_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241156241444_))
                                    (let ((_e241160241449_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241156241444_))))
                                      (let ((_tl241158241454_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241160241449_)))
                                            (_hd241159241452_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241160241449_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241159241452_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241159241452_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241158241454_))
                                                    (let ((_e241163241457_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241158241454_))))
                                                      (let ((_tl241161241462_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241163241457_)))
                    (_hd241162241460_
                     (let () (declare (not safe)) (##car _e241163241457_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241161241462_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241155241446_))
                        (let ((_e241166241465_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241155241446_))))
                          (let ((_tl241164241470_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241166241465_)))
                                (_hd241165241468_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241166241465_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241165241468_))
                                (let ((_e241169241473_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241165241468_))))
                                  (let ((_tl241167241478_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241169241473_)))
                                        (_hd241168241476_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241169241473_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241168241476_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241168241476_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241167241478_))
                                                (let ((_e241172241481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241167241478_))))
                                                  (let ((_tl241170241486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241172241481_)))
                                                        (_hd241171241484_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241172241481_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241170241486_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl241164241470_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl241164241470_))
                              '1)
                        (let ((___splice250016250017_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241164241470_
                                  '1))))
                          (let ((_tl241175241491_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250016250017_ '1)))
                                (_target241173241489_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250016250017_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241175241491_))
                                (let ((_e241184241494_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241175241491_))))
                                  (let ((_tl241182241499_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241184241494_)))
                                        (_hd241183241497_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241184241494_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241183241497_))
                                        (let ((_e241187241502_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241183241497_))))
                                          (let ((_tl241185241507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241187241502_)))
                                                (_hd241186241505_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241187241502_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd241186241505_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd241186241505_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl241185241507_))
                                                        (let ((_e241190241510_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl241185241507_))))
                  (let ((_tl241188241515_
                         (let () (declare (not safe)) (##cdr _e241190241510_)))
                        (_hd241189241513_
                         (let ()
                           (declare (not safe))
                           (##car _e241190241510_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241188241515_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241182241499_))
                            (letrec ((_loop241176241518_
                                      (lambda (_hd241174241521_
                                               _xarg241180241523_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd241174241521_))
                                            (let ((_e241177241526_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd241174241521_))))
                                              (let ((_lp-tl241179241531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241177241526_)))
                                                    (_lp-hd241178241529_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241177241526_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd241178241529_))
                                                    (let ((_e241193241534_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd241178241529_))))
                                                      (let ((_tl241191241539_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241193241534_)))
                    (_hd241192241537_
                     (let () (declare (not safe)) (##car _e241193241534_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241192241537_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd241192241537_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241191241539_))
                            (let ((_e241196241542_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241191241539_))))
                              (let ((_tl241194241547_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241196241542_)))
                                    (_hd241195241545_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241196241542_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241194241547_))
                                    (let ((__tmp251396
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd241195241545_
                                                   _xarg241180241523_))))
                                      (declare (not safe))
                                      (_loop241176241518_
                                       _lp-tl241179241531_
                                       __tmp251396))
                                    (___match250117250118_
                                     _e241139241393_
                                     _hd241138241396_
                                     _tl241137241398_
                                     _e241151241425_
                                     _hd241150241428_
                                     _tl241149241430_
                                     _e241154241433_
                                     _hd241153241436_
                                     _tl241152241438_
                                     _e241157241441_
                                     _hd241156241444_
                                     _tl241155241446_
                                     _e241160241449_
                                     _hd241159241452_
                                     _tl241158241454_
                                     _e241163241457_
                                     _hd241162241460_
                                     _tl241161241462_
                                     _e241166241465_
                                     _hd241165241468_
                                     _tl241164241470_
                                     _e241169241473_
                                     _hd241168241476_
                                     _tl241167241478_
                                     _e241172241481_
                                     _hd241171241484_
                                     _tl241170241486_))))
                            (___match250117250118_
                             _e241139241393_
                             _hd241138241396_
                             _tl241137241398_
                             _e241151241425_
                             _hd241150241428_
                             _tl241149241430_
                             _e241154241433_
                             _hd241153241436_
                             _tl241152241438_
                             _e241157241441_
                             _hd241156241444_
                             _tl241155241446_
                             _e241160241449_
                             _hd241159241452_
                             _tl241158241454_
                             _e241163241457_
                             _hd241162241460_
                             _tl241161241462_
                             _e241166241465_
                             _hd241165241468_
                             _tl241164241470_
                             _e241169241473_
                             _hd241168241476_
                             _tl241167241478_
                             _e241172241481_
                             _hd241171241484_
                             _tl241170241486_))
                        (___match250117250118_
                         _e241139241393_
                         _hd241138241396_
                         _tl241137241398_
                         _e241151241425_
                         _hd241150241428_
                         _tl241149241430_
                         _e241154241433_
                         _hd241153241436_
                         _tl241152241438_
                         _e241157241441_
                         _hd241156241444_
                         _tl241155241446_
                         _e241160241449_
                         _hd241159241452_
                         _tl241158241454_
                         _e241163241457_
                         _hd241162241460_
                         _tl241161241462_
                         _e241166241465_
                         _hd241165241468_
                         _tl241164241470_
                         _e241169241473_
                         _hd241168241476_
                         _tl241167241478_
                         _e241172241481_
                         _hd241171241484_
                         _tl241170241486_))
                    (___match250117250118_
                     _e241139241393_
                     _hd241138241396_
                     _tl241137241398_
                     _e241151241425_
                     _hd241150241428_
                     _tl241149241430_
                     _e241154241433_
                     _hd241153241436_
                     _tl241152241438_
                     _e241157241441_
                     _hd241156241444_
                     _tl241155241446_
                     _e241160241449_
                     _hd241159241452_
                     _tl241158241454_
                     _e241163241457_
                     _hd241162241460_
                     _tl241161241462_
                     _e241166241465_
                     _hd241165241468_
                     _tl241164241470_
                     _e241169241473_
                     _hd241168241476_
                     _tl241167241478_
                     _e241172241481_
                     _hd241171241484_
                     _tl241170241486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250117250118_
                                                     _e241139241393_
                                                     _hd241138241396_
                                                     _tl241137241398_
                                                     _e241151241425_
                                                     _hd241150241428_
                                                     _tl241149241430_
                                                     _e241154241433_
                                                     _hd241153241436_
                                                     _tl241152241438_
                                                     _e241157241441_
                                                     _hd241156241444_
                                                     _tl241155241446_
                                                     _e241160241449_
                                                     _hd241159241452_
                                                     _tl241158241454_
                                                     _e241163241457_
                                                     _hd241162241460_
                                                     _tl241161241462_
                                                     _e241166241465_
                                                     _hd241165241468_
                                                     _tl241164241470_
                                                     _e241169241473_
                                                     _hd241168241476_
                                                     _tl241167241478_
                                                     _e241172241481_
                                                     _hd241171241484_
                                                     _tl241170241486_))))
                                            (let ((_xarg241181241550_
                                                   (reverse _xarg241180241523_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241149241430_))
                                                  (let ((_L241553_
                                                         _hd241189241513_)
                                                        (_L241554_
                                                         _xarg241181241550_)
                                                        (_L241555_
                                                         _hd241171241484_)
                                                        (_L241556_
                                                         _hd241162241460_)
                                                        (_L241557_
                                                         _tl241142241403_)
                                                        (_L241558_
                                                         _arg241148241422_))
                                                    (if (and (let ((__tmp251394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251395
                                   (lambda (_g241601241604_ _g241602241606_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g241601241604_
                                             _g241602241606_)))))
                              (declare (not safe))
                              (foldr1 __tmp251395 '() _L241558_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp251394))
                     (let () (declare (not safe)) (gx#identifier? _L241557_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L241556_ 'apply))
                     (fx= (length (let ((__tmp251392
                                         (lambda (_g241608241611_
                                                  _g241609241613_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g241608241611_
                                                   _g241609241613_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251392 '() _L241558_)))
                          (length (let ((__tmp251393
                                         (lambda (_g241615241618_
                                                  _g241616241620_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g241615241618_
                                                   _g241616241620_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251393 '() _L241554_))))
                     (let ((__tmp251390
                            (let ((__tmp251391
                                   (lambda (_g241622241625_ _g241623241627_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g241622241625_
                                             _g241623241627_)))))
                              (declare (not safe))
                              (foldr1 __tmp251391 '() _L241558_)))
                           (__tmp251388
                            (let ((__tmp251389
                                   (lambda (_g241629241632_ _g241630241634_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g241629241632_
                                             _g241630241634_)))))
                              (declare (not safe))
                              (foldr1 __tmp251389 '() _L241554_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp251390 __tmp251388))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L241557_ _L241553_))
                     (let ((__tmp251383
                            (let ((__tmp251387
                                   (lambda (_g241636241638_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g241636241638_
                                        _L241555_))))
                                  (__tmp251384
                                   (let ((__tmp251386
                                          (lambda (_g241640241643_
                                                   _g241641241645_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g241640241643_
                                                    _g241641241645_))))
                                         (__tmp251385
                                          (let ()
                                            (declare (not safe))
                                            (cons _L241557_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp251386
                                             __tmp251385
                                             _L241558_))))
                              (declare (not safe))
                              (find __tmp251387 __tmp251384))))
                       (declare (not safe))
                       (not __tmp251383)))
                (___kont250012250013_
                 _L241553_
                 _L241554_
                 _L241555_
                 _L241556_
                 _L241557_
                 _L241558_)
                (___match250117250118_
                 _e241139241393_
                 _hd241138241396_
                 _tl241137241398_
                 _e241151241425_
                 _hd241150241428_
                 _tl241149241430_
                 _e241154241433_
                 _hd241153241436_
                 _tl241152241438_
                 _e241157241441_
                 _hd241156241444_
                 _tl241155241446_
                 _e241160241449_
                 _hd241159241452_
                 _tl241158241454_
                 _e241163241457_
                 _hd241162241460_
                 _tl241161241462_
                 _e241166241465_
                 _hd241165241468_
                 _tl241164241470_
                 _e241169241473_
                 _hd241168241476_
                 _tl241167241478_
                 _e241172241481_
                 _hd241171241484_
                 _tl241170241486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250117250118_
                                                   _e241139241393_
                                                   _hd241138241396_
                                                   _tl241137241398_
                                                   _e241151241425_
                                                   _hd241150241428_
                                                   _tl241149241430_
                                                   _e241154241433_
                                                   _hd241153241436_
                                                   _tl241152241438_
                                                   _e241157241441_
                                                   _hd241156241444_
                                                   _tl241155241446_
                                                   _e241160241449_
                                                   _hd241159241452_
                                                   _tl241158241454_
                                                   _e241163241457_
                                                   _hd241162241460_
                                                   _tl241161241462_
                                                   _e241166241465_
                                                   _hd241165241468_
                                                   _tl241164241470_
                                                   _e241169241473_
                                                   _hd241168241476_
                                                   _tl241167241478_
                                                   _e241172241481_
                                                   _hd241171241484_
                                                   _tl241170241486_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop241176241518_ _target241173241489_ '())))
                            (___match250117250118_
                             _e241139241393_
                             _hd241138241396_
                             _tl241137241398_
                             _e241151241425_
                             _hd241150241428_
                             _tl241149241430_
                             _e241154241433_
                             _hd241153241436_
                             _tl241152241438_
                             _e241157241441_
                             _hd241156241444_
                             _tl241155241446_
                             _e241160241449_
                             _hd241159241452_
                             _tl241158241454_
                             _e241163241457_
                             _hd241162241460_
                             _tl241161241462_
                             _e241166241465_
                             _hd241165241468_
                             _tl241164241470_
                             _e241169241473_
                             _hd241168241476_
                             _tl241167241478_
                             _e241172241481_
                             _hd241171241484_
                             _tl241170241486_))
                        (___match250117250118_
                         _e241139241393_
                         _hd241138241396_
                         _tl241137241398_
                         _e241151241425_
                         _hd241150241428_
                         _tl241149241430_
                         _e241154241433_
                         _hd241153241436_
                         _tl241152241438_
                         _e241157241441_
                         _hd241156241444_
                         _tl241155241446_
                         _e241160241449_
                         _hd241159241452_
                         _tl241158241454_
                         _e241163241457_
                         _hd241162241460_
                         _tl241161241462_
                         _e241166241465_
                         _hd241165241468_
                         _tl241164241470_
                         _e241169241473_
                         _hd241168241476_
                         _tl241167241478_
                         _e241172241481_
                         _hd241171241484_
                         _tl241170241486_))))
                (___match250117250118_
                 _e241139241393_
                 _hd241138241396_
                 _tl241137241398_
                 _e241151241425_
                 _hd241150241428_
                 _tl241149241430_
                 _e241154241433_
                 _hd241153241436_
                 _tl241152241438_
                 _e241157241441_
                 _hd241156241444_
                 _tl241155241446_
                 _e241160241449_
                 _hd241159241452_
                 _tl241158241454_
                 _e241163241457_
                 _hd241162241460_
                 _tl241161241462_
                 _e241166241465_
                 _hd241165241468_
                 _tl241164241470_
                 _e241169241473_
                 _hd241168241476_
                 _tl241167241478_
                 _e241172241481_
                 _hd241171241484_
                 _tl241170241486_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250117250118_
                                                     _e241139241393_
                                                     _hd241138241396_
                                                     _tl241137241398_
                                                     _e241151241425_
                                                     _hd241150241428_
                                                     _tl241149241430_
                                                     _e241154241433_
                                                     _hd241153241436_
                                                     _tl241152241438_
                                                     _e241157241441_
                                                     _hd241156241444_
                                                     _tl241155241446_
                                                     _e241160241449_
                                                     _hd241159241452_
                                                     _tl241158241454_
                                                     _e241163241457_
                                                     _hd241162241460_
                                                     _tl241161241462_
                                                     _e241166241465_
                                                     _hd241165241468_
                                                     _tl241164241470_
                                                     _e241169241473_
                                                     _hd241168241476_
                                                     _tl241167241478_
                                                     _e241172241481_
                                                     _hd241171241484_
                                                     _tl241170241486_))
                                                (___match250117250118_
                                                 _e241139241393_
                                                 _hd241138241396_
                                                 _tl241137241398_
                                                 _e241151241425_
                                                 _hd241150241428_
                                                 _tl241149241430_
                                                 _e241154241433_
                                                 _hd241153241436_
                                                 _tl241152241438_
                                                 _e241157241441_
                                                 _hd241156241444_
                                                 _tl241155241446_
                                                 _e241160241449_
                                                 _hd241159241452_
                                                 _tl241158241454_
                                                 _e241163241457_
                                                 _hd241162241460_
                                                 _tl241161241462_
                                                 _e241166241465_
                                                 _hd241165241468_
                                                 _tl241164241470_
                                                 _e241169241473_
                                                 _hd241168241476_
                                                 _tl241167241478_
                                                 _e241172241481_
                                                 _hd241171241484_
                                                 _tl241170241486_))))
                                        (___match250117250118_
                                         _e241139241393_
                                         _hd241138241396_
                                         _tl241137241398_
                                         _e241151241425_
                                         _hd241150241428_
                                         _tl241149241430_
                                         _e241154241433_
                                         _hd241153241436_
                                         _tl241152241438_
                                         _e241157241441_
                                         _hd241156241444_
                                         _tl241155241446_
                                         _e241160241449_
                                         _hd241159241452_
                                         _tl241158241454_
                                         _e241163241457_
                                         _hd241162241460_
                                         _tl241161241462_
                                         _e241166241465_
                                         _hd241165241468_
                                         _tl241164241470_
                                         _e241169241473_
                                         _hd241168241476_
                                         _tl241167241478_
                                         _e241172241481_
                                         _hd241171241484_
                                         _tl241170241486_))))
                                (___match250117250118_
                                 _e241139241393_
                                 _hd241138241396_
                                 _tl241137241398_
                                 _e241151241425_
                                 _hd241150241428_
                                 _tl241149241430_
                                 _e241154241433_
                                 _hd241153241436_
                                 _tl241152241438_
                                 _e241157241441_
                                 _hd241156241444_
                                 _tl241155241446_
                                 _e241160241449_
                                 _hd241159241452_
                                 _tl241158241454_
                                 _e241163241457_
                                 _hd241162241460_
                                 _tl241161241462_
                                 _e241166241465_
                                 _hd241165241468_
                                 _tl241164241470_
                                 _e241169241473_
                                 _hd241168241476_
                                 _tl241167241478_
                                 _e241172241481_
                                 _hd241171241484_
                                 _tl241170241486_))))
                        (___match250117250118_
                         _e241139241393_
                         _hd241138241396_
                         _tl241137241398_
                         _e241151241425_
                         _hd241150241428_
                         _tl241149241430_
                         _e241154241433_
                         _hd241153241436_
                         _tl241152241438_
                         _e241157241441_
                         _hd241156241444_
                         _tl241155241446_
                         _e241160241449_
                         _hd241159241452_
                         _tl241158241454_
                         _e241163241457_
                         _hd241162241460_
                         _tl241161241462_
                         _e241166241465_
                         _hd241165241468_
                         _tl241164241470_
                         _e241169241473_
                         _hd241168241476_
                         _tl241167241478_
                         _e241172241481_
                         _hd241171241484_
                         _tl241170241486_))
                    (___match250117250118_
                     _e241139241393_
                     _hd241138241396_
                     _tl241137241398_
                     _e241151241425_
                     _hd241150241428_
                     _tl241149241430_
                     _e241154241433_
                     _hd241153241436_
                     _tl241152241438_
                     _e241157241441_
                     _hd241156241444_
                     _tl241155241446_
                     _e241160241449_
                     _hd241159241452_
                     _tl241158241454_
                     _e241163241457_
                     _hd241162241460_
                     _tl241161241462_
                     _e241166241465_
                     _hd241165241468_
                     _tl241164241470_
                     _e241169241473_
                     _hd241168241476_
                     _tl241167241478_
                     _e241172241481_
                     _hd241171241484_
                     _tl241170241486_))
                (___kont250020250021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250020250021_))
                                            (___kont250020250021_))
                                        (___kont250020250021_))))
                                (___kont250020250021_))))
                        (___kont250020250021_))
                    (___kont250020250021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250020250021_))
                                                (___kont250020250021_))
                                            (___kont250020250021_))))
                                    (___kont250020250021_))))
                            (___kont250020250021_))
                        (___kont250020250021_))
                    (___kont250020250021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250020250021_))))
                                            (___kont250020250021_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241143241406_ _target241140241401_ '())))))
                   (___match250035250036_
                    (lambda (_e241091241653_
                             _hd241090241656_
                             _tl241089241658_
                             ___splice250008250009_
                             _target241092241661_
                             _tl241094241663_)
                      (letrec ((_loop241095241666_
                                (lambda (_hd241093241669_ _arg241099241671_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241093241669_))
                                      (let ((_e241096241674_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241093241669_))))
                                        (let ((_lp-tl241098241679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241096241674_)))
                                              (_lp-hd241097241677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241096241674_))))
                                          (let ((__tmp251411
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241097241677_
                                                         _arg241099241671_))))
                                            (declare (not safe))
                                            (_loop241095241666_
                                             _lp-tl241098241679_
                                             __tmp251411))))
                                      (let ((_arg241100241682_
                                             (reverse _arg241099241671_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241089241658_))
                                            (let ((_e241103241685_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241089241658_))))
                                              (let ((_tl241101241690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241103241685_)))
                                                    (_hd241102241688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241103241685_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241102241688_))
                                                    (let ((_e241106241693_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241102241688_))))
                                                      (let ((_tl241104241698_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241106241693_)))
                    (_hd241105241696_
                     (let () (declare (not safe)) (##car _e241106241693_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241105241696_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241105241696_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241104241698_))
                            (let ((_e241109241701_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241104241698_))))
                              (let ((_tl241107241706_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241109241701_)))
                                    (_hd241108241704_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241109241701_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241108241704_))
                                    (let ((_e241112241709_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241108241704_))))
                                      (let ((_tl241110241714_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241112241709_)))
                                            (_hd241111241712_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241112241709_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241111241712_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241111241712_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241110241714_))
                                                    (let ((_e241115241717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241110241714_))))
                                                      (let ((_tl241113241722_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241115241717_)))
                    (_hd241114241720_
                     (let () (declare (not safe)) (##car _e241115241717_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241113241722_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241107241706_))
                        (let ((___splice250010250011_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241107241706_
                                  '0))))
                          (let ((_tl241118241727_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250010250011_ '1)))
                                (_target241116241725_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250010250011_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl241118241727_))
                                (letrec ((_loop241119241730_
                                          (lambda (_hd241117241733_
                                                   _xarg241123241735_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd241117241733_))
                                                (let ((_e241120241738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd241117241733_))))
                                                  (let ((_lp-tl241122241743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241120241738_)))
                                                        (_lp-hd241121241741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241120241738_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd241121241741_))
                                                        (let ((_e241127241746_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd241121241741_))))
                  (let ((_tl241125241751_
                         (let () (declare (not safe)) (##cdr _e241127241746_)))
                        (_hd241126241749_
                         (let ()
                           (declare (not safe))
                           (##car _e241127241746_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd241126241749_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241126241749_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241125241751_))
                                (let ((_e241130241754_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241125241751_))))
                                  (let ((_tl241128241759_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241130241754_)))
                                        (_hd241129241757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241130241754_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241128241759_))
                                        (let ((__tmp251410
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd241129241757_
                                                       _xarg241123241735_))))
                                          (declare (not safe))
                                          (_loop241119241730_
                                           _lp-tl241122241743_
                                           __tmp251410))
                                        (___match250047250048_
                                         _e241091241653_
                                         _hd241090241656_
                                         _tl241089241658_
                                         ___splice250008250009_
                                         _target241092241661_
                                         _tl241094241663_))))
                                (___match250047250048_
                                 _e241091241653_
                                 _hd241090241656_
                                 _tl241089241658_
                                 ___splice250008250009_
                                 _target241092241661_
                                 _tl241094241663_))
                            (___match250047250048_
                             _e241091241653_
                             _hd241090241656_
                             _tl241089241658_
                             ___splice250008250009_
                             _target241092241661_
                             _tl241094241663_))
                        (___match250047250048_
                         _e241091241653_
                         _hd241090241656_
                         _tl241089241658_
                         ___splice250008250009_
                         _target241092241661_
                         _tl241094241663_))))
                (___match250047250048_
                 _e241091241653_
                 _hd241090241656_
                 _tl241089241658_
                 ___splice250008250009_
                 _target241092241661_
                 _tl241094241663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg241124241762_
                                                       (reverse _xarg241123241735_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241101241690_))
                                                      (let ((_L241765_
                                                             _xarg241124241762_)
                                                            (_L241766_
                                                             _hd241114241720_)
                                                            (_L241767_
                                                             _arg241100241682_))
                                                        (if (and (let ((__tmp251408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp251409
                                       (lambda (_g241795241798_
                                                _g241796241800_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g241795241798_
                                                 _g241796241800_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251409 '() _L241767_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp251408))
                         (fx= (length (let ((__tmp251406
                                             (lambda (_g241802241805_
                                                      _g241803241807_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g241802241805_
                                                       _g241803241807_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251406 '() _L241767_)))
                              (length (let ((__tmp251407
                                             (lambda (_g241809241812_
                                                      _g241810241814_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g241809241812_
                                                       _g241810241814_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251407 '() _L241765_))))
                         (let ((__tmp251404
                                (let ((__tmp251405
                                       (lambda (_g241816241819_
                                                _g241817241821_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g241816241819_
                                                 _g241817241821_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251405 '() _L241767_)))
                               (__tmp251402
                                (let ((__tmp251403
                                       (lambda (_g241823241826_
                                                _g241824241828_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g241823241826_
                                                 _g241824241828_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251403 '() _L241765_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp251404
                                    __tmp251402))
                         (let ((__tmp251398
                                (let ((__tmp251401
                                       (lambda (_g241830241832_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g241830241832_
                                            _L241766_))))
                                      (__tmp251399
                                       (let ((__tmp251400
                                              (lambda (_g241834241837_
                                                       _g241835241839_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g241834241837_
                                                        _g241835241839_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp251400 '() _L241767_))))
                                  (declare (not safe))
                                  (find __tmp251401 __tmp251399))))
                           (declare (not safe))
                           (not __tmp251398)))
                    (___kont250006250007_ _L241765_ _L241766_ _L241767_)
                    (___match250047250048_
                     _e241091241653_
                     _hd241090241656_
                     _tl241089241658_
                     ___splice250008250009_
                     _target241092241661_
                     _tl241094241663_)))
              (___match250047250048_
               _e241091241653_
               _hd241090241656_
               _tl241089241658_
               ___splice250008250009_
               _target241092241661_
               _tl241094241663_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop241119241730_
                                     _target241116241725_
                                     '())))
                                (___match250047250048_
                                 _e241091241653_
                                 _hd241090241656_
                                 _tl241089241658_
                                 ___splice250008250009_
                                 _target241092241661_
                                 _tl241094241663_))))
                        (___match250047250048_
                         _e241091241653_
                         _hd241090241656_
                         _tl241089241658_
                         ___splice250008250009_
                         _target241092241661_
                         _tl241094241663_))
                    (___match250047250048_
                     _e241091241653_
                     _hd241090241656_
                     _tl241089241658_
                     ___splice250008250009_
                     _target241092241661_
                     _tl241094241663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250047250048_
                                                     _e241091241653_
                                                     _hd241090241656_
                                                     _tl241089241658_
                                                     ___splice250008250009_
                                                     _target241092241661_
                                                     _tl241094241663_))
                                                (___match250047250048_
                                                 _e241091241653_
                                                 _hd241090241656_
                                                 _tl241089241658_
                                                 ___splice250008250009_
                                                 _target241092241661_
                                                 _tl241094241663_))
                                            (___match250047250048_
                                             _e241091241653_
                                             _hd241090241656_
                                             _tl241089241658_
                                             ___splice250008250009_
                                             _target241092241661_
                                             _tl241094241663_))))
                                    (___match250047250048_
                                     _e241091241653_
                                     _hd241090241656_
                                     _tl241089241658_
                                     ___splice250008250009_
                                     _target241092241661_
                                     _tl241094241663_))))
                            (___match250047250048_
                             _e241091241653_
                             _hd241090241656_
                             _tl241089241658_
                             ___splice250008250009_
                             _target241092241661_
                             _tl241094241663_))
                        (___match250047250048_
                         _e241091241653_
                         _hd241090241656_
                         _tl241089241658_
                         ___splice250008250009_
                         _target241092241661_
                         _tl241094241663_))
                    (___match250047250048_
                     _e241091241653_
                     _hd241090241656_
                     _tl241089241658_
                     ___splice250008250009_
                     _target241092241661_
                     _tl241094241663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250047250048_
                                                     _e241091241653_
                                                     _hd241090241656_
                                                     _tl241089241658_
                                                     ___splice250008250009_
                                                     _target241092241661_
                                                     _tl241094241663_))))
                                            (___match250047250048_
                                             _e241091241653_
                                             _hd241090241656_
                                             _tl241089241658_
                                             ___splice250008250009_
                                             _target241092241661_
                                             _tl241094241663_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241095241666_ _target241092241661_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx250004250005_))
                  (let ((_e241091241653_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx250004250005_))))
                    (let ((_tl241089241658_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241091241653_)))
                          (_hd241090241656_
                           (let ()
                             (declare (not safe))
                             (##car _e241091241653_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd241090241656_))
                          (let ((___splice250008250009_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd241090241656_
                                    '0))))
                            (let ((_tl241094241663_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice250008250009_ '1)))
                                  (_target241092241661_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice250008250009_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241094241663_))
                                  (___match250035250036_
                                   _e241091241653_
                                   _hd241090241656_
                                   _tl241089241658_
                                   ___splice250008250009_
                                   _target241092241661_
                                   _tl241094241663_)
                                  (___match250047250048_
                                   _e241091241653_
                                   _hd241090241656_
                                   _tl241089241658_
                                   ___splice250008250009_
                                   _target241092241661_
                                   _tl241094241663_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241089241658_))
                              (let ((_e241206241261_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241089241658_))))
                                (let ((_tl241204241266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241206241261_)))
                                      (_hd241205241264_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241206241261_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241205241264_))
                                      (let ((_e241209241269_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241205241264_))))
                                        (let ((_tl241207241274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241209241269_)))
                                              (_hd241208241272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241209241269_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd241208241272_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd241208241272_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241207241274_))
                                                      (let ((_e241212241277_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241207241274_))))
                (let ((_tl241210241282_
                       (let () (declare (not safe)) (##cdr _e241212241277_)))
                      (_hd241211241280_
                       (let () (declare (not safe)) (##car _e241212241277_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241211241280_))
                      (let ((_e241215241285_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241211241280_))))
                        (let ((_tl241213241290_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241215241285_)))
                              (_hd241214241288_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241215241285_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241214241288_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241214241288_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241213241290_))
                                      (let ((_e241218241293_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241213241290_))))
                                        (let ((_tl241216241298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241218241293_)))
                                              (_hd241217241296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241218241293_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241216241298_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241210241282_))
                                                  (let ((_e241221241301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241210241282_))))
                                                    (let ((_tl241219241306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241221241301_)))
                                                          (_hd241220241304_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241221241301_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241220241304_))
                                                          (let ((_e241224241309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241220241304_))))
                    (let ((_tl241222241314_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241224241309_)))
                          (_hd241223241312_
                           (let ()
                             (declare (not safe))
                             (##car _e241224241309_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241223241312_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241223241312_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241222241314_))
                                  (let ((_e241227241317_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241222241314_))))
                                    (let ((_tl241225241322_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241227241317_)))
                                          (_hd241226241320_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241227241317_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241225241322_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241219241306_))
                                              (let ((_e241230241325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241219241306_))))
                                                (let ((_tl241228241330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241230241325_)))
                                                      (_hd241229241328_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241230241325_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd241229241328_))
                                                      (let ((_e241233241333_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd241229241328_))))
                (let ((_tl241231241338_
                       (let () (declare (not safe)) (##cdr _e241233241333_)))
                      (_hd241232241336_
                       (let () (declare (not safe)) (##car _e241233241333_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd241232241336_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd241232241336_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241231241338_))
                              (let ((_e241236241341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241231241338_))))
                                (let ((_tl241234241346_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241236241341_)))
                                      (_hd241235241344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241236241341_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241234241346_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241228241330_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241204241266_))
                                              (___match250145250146_
                                               _e241091241653_
                                               _hd241090241656_
                                               _tl241089241658_
                                               _e241206241261_
                                               _hd241205241264_
                                               _tl241204241266_
                                               _e241209241269_
                                               _hd241208241272_
                                               _tl241207241274_
                                               _e241212241277_
                                               _hd241211241280_
                                               _tl241210241282_
                                               _e241215241285_
                                               _hd241214241288_
                                               _tl241213241290_
                                               _e241218241293_
                                               _hd241217241296_
                                               _tl241216241298_
                                               _e241221241301_
                                               _hd241220241304_
                                               _tl241219241306_
                                               _e241224241309_
                                               _hd241223241312_
                                               _tl241222241314_
                                               _e241227241317_
                                               _hd241226241320_
                                               _tl241225241322_
                                               _e241230241325_
                                               _hd241229241328_
                                               _tl241228241330_
                                               _e241233241333_
                                               _hd241232241336_
                                               _tl241231241338_
                                               _e241236241341_
                                               _hd241235241344_
                                               _tl241234241346_)
                                              (___kont250020250021_))
                                          (___kont250020250021_))
                                      (___kont250020250021_))))
                              (___kont250020250021_))
                          (___kont250020250021_))
                      (___kont250020250021_))))
              (___kont250020250021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont250020250021_))
                                          (___kont250020250021_))))
                                  (___kont250020250021_))
                              (___kont250020250021_))
                          (___kont250020250021_))))
                  (___kont250020250021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250020250021_))
                                              (___kont250020250021_))))
                                      (___kont250020250021_))
                                  (___kont250020250021_))
                              (___kont250020250021_))))
                      (___kont250020250021_))))
              (___kont250020250021_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250020250021_))
                                              (___kont250020250021_))))
                                      (___kont250020250021_))))
                              (___kont250020250021_)))))
                  (___kont250020250021_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form240547_)
        (let* ((___stx250148250149_ _form240547_)
               (_g240551240675_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250148250149_)))))
          (let ((___kont250150250151_
                 (lambda (_L241045_ _L241046_ _L241047_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241046_))))
                (___kont250156250157_
                 (lambda (_L240893_ _L240894_ _L240895_ _L240896_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L240893_))))
                (___kont250160250161_
                 (lambda (_L240760_ _L240761_ _L240762_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L240760_)))))
            (let* ((___match250257250258_
                    (lambda (_e240643240680_
                             _hd240642240683_
                             _tl240641240685_
                             _e240646240688_
                             _hd240645240691_
                             _tl240644240693_
                             _e240649240696_
                             _hd240648240699_
                             _tl240647240701_
                             _e240652240704_
                             _hd240651240707_
                             _tl240650240709_
                             _e240655240712_
                             _hd240654240715_
                             _tl240653240717_
                             _e240658240720_
                             _hd240657240723_
                             _tl240656240725_
                             _e240661240728_
                             _hd240660240731_
                             _tl240659240733_
                             _e240664240736_
                             _hd240663240739_
                             _tl240662240741_
                             _e240667240744_
                             _hd240666240747_
                             _tl240665240749_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240659240733_))
                          (let ((_e240670240752_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240659240733_))))
                            (let ((_tl240668240757_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240670240752_)))
                                  (_hd240669240755_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240670240752_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240668240757_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240644240693_))
                                      (___kont250160250161_
                                       _hd240666240747_
                                       _hd240657240723_
                                       _hd240642240683_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240551240675_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240551240675_)))))
                          (let () (declare (not safe)) (_g240551240675_)))))
                   (___match250187250188_
                    (lambda (_e240604240797_
                             _hd240603240800_
                             _tl240602240802_
                             ___splice250158250159_
                             _target240605240805_
                             _tl240607240807_)
                      (letrec ((_loop240608240810_
                                (lambda (_hd240606240813_ _arg240612240815_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240606240813_))
                                      (let ((_e240609240818_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240606240813_))))
                                        (let ((_lp-tl240611240823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240609240818_)))
                                              (_lp-hd240610240821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240609240818_))))
                                          (let ((__tmp251412
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240610240821_
                                                         _arg240612240815_))))
                                            (declare (not safe))
                                            (_loop240608240810_
                                             _lp-tl240611240823_
                                             __tmp251412))))
                                      (let ((_arg240613240826_
                                             (reverse _arg240612240815_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240602240802_))
                                            (let ((_e240616240829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240602240802_))))
                                              (let ((_tl240614240834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240616240829_)))
                                                    (_hd240615240832_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240616240829_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd240615240832_))
                                                    (let ((_e240619240837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd240615240832_))))
                                                      (let ((_tl240617240842_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240619240837_)))
                    (_hd240618240840_
                     (let () (declare (not safe)) (##car _e240619240837_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240618240840_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd240618240840_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240617240842_))
                            (let ((_e240622240845_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240617240842_))))
                              (let ((_tl240620240850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240622240845_)))
                                    (_hd240621240848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240622240845_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd240621240848_))
                                    (let ((_e240625240853_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd240621240848_))))
                                      (let ((_tl240623240858_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240625240853_)))
                                            (_hd240624240856_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240625240853_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240624240856_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240624240856_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240623240858_))
                                                    (let ((_e240628240861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240623240858_))))
                                                      (let ((_tl240626240866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240628240861_)))
                    (_hd240627240864_
                     (let () (declare (not safe)) (##car _e240628240861_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240626240866_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240620240850_))
                        (let ((_e240631240869_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240620240850_))))
                          (let ((_tl240629240874_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240631240869_)))
                                (_hd240630240872_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240631240869_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240630240872_))
                                (let ((_e240634240877_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240630240872_))))
                                  (let ((_tl240632240882_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240634240877_)))
                                        (_hd240633240880_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240634240877_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd240633240880_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd240633240880_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl240632240882_))
                                                (let ((_e240637240885_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl240632240882_))))
                                                  (let ((_tl240635240890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240637240885_)))
                                                        (_hd240636240888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240637240885_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl240635240890_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl240614240834_))
                                                            (___kont250156250157_
                                                             _hd240636240888_
                                                             _hd240627240864_
                                                             _tl240607240807_
                                                             _arg240613240826_)
                                                            (___match250257250258_
                                                             _e240604240797_
                                                             _hd240603240800_
                                                             _tl240602240802_
                                                             _e240616240829_
                                                             _hd240615240832_
                                                             _tl240614240834_
                                                             _e240619240837_
                                                             _hd240618240840_
                                                             _tl240617240842_
                                                             _e240622240845_
                                                             _hd240621240848_
                                                             _tl240620240850_
                                                             _e240625240853_
                                                             _hd240624240856_
                                                             _tl240623240858_
                                                             _e240628240861_
                                                             _hd240627240864_
                                                             _tl240626240866_
                                                             _e240631240869_
                                                             _hd240630240872_
                                                             _tl240629240874_
                                                             _e240634240877_
                                                             _hd240633240880_
                                                             _tl240632240882_
                                                             _e240637240885_
                                                             _hd240636240888_
                                                             _tl240635240890_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g240551240675_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240551240675_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240551240675_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g240551240675_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g240551240675_)))))
                        (let () (declare (not safe)) (_g240551240675_)))
                    (let () (declare (not safe)) (_g240551240675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240551240675_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240551240675_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240551240675_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g240551240675_)))))
                            (let () (declare (not safe)) (_g240551240675_)))
                        (let () (declare (not safe)) (_g240551240675_)))
                    (let () (declare (not safe)) (_g240551240675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240551240675_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g240551240675_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop240608240810_ _target240605240805_ '())))))
                   (___match250175250176_
                    (lambda (_e240558240933_
                             _hd240557240936_
                             _tl240556240938_
                             ___splice250152250153_
                             _target240559240941_
                             _tl240561240943_)
                      (letrec ((_loop240562240946_
                                (lambda (_hd240560240949_ _arg240566240951_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240560240949_))
                                      (let ((_e240563240954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240560240949_))))
                                        (let ((_lp-tl240565240959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240563240954_)))
                                              (_lp-hd240564240957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240563240954_))))
                                          (let ((__tmp251414
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240564240957_
                                                         _arg240566240951_))))
                                            (declare (not safe))
                                            (_loop240562240946_
                                             _lp-tl240565240959_
                                             __tmp251414))))
                                      (let ((_arg240567240962_
                                             (reverse _arg240566240951_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240556240938_))
                                            (let ((_e240570240965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240556240938_))))
                                              (let ((_tl240568240970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240570240965_)))
                                                    (_hd240569240968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240570240965_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd240569240968_))
                                                    (let ((_e240573240973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd240569240968_))))
                                                      (let ((_tl240571240978_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240573240973_)))
                    (_hd240572240976_
                     (let () (declare (not safe)) (##car _e240573240973_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240572240976_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd240572240976_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240571240978_))
                            (let ((_e240576240981_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240571240978_))))
                              (let ((_tl240574240986_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240576240981_)))
                                    (_hd240575240984_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240576240981_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd240575240984_))
                                    (let ((_e240579240989_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd240575240984_))))
                                      (let ((_tl240577240994_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240579240989_)))
                                            (_hd240578240992_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240579240989_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240578240992_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240578240992_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240577240994_))
                                                    (let ((_e240582240997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240577240994_))))
                                                      (let ((_tl240580241002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240582240997_)))
                    (_hd240581241000_
                     (let () (declare (not safe)) (##car _e240582240997_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240580241002_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl240574240986_))
                        (let ((___splice250154250155_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl240574240986_
                                  '0))))
                          (let ((_tl240585241007_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250154250155_ '1)))
                                (_target240583241005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250154250155_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl240585241007_))
                                (letrec ((_loop240586241010_
                                          (lambda (_hd240584241013_
                                                   _xarg240590241015_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd240584241013_))
                                                (let ((_e240587241018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd240584241013_))))
                                                  (let ((_lp-tl240589241023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240587241018_)))
                                                        (_lp-hd240588241021_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240587241018_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd240588241021_))
                                                        (let ((_e240594241026_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd240588241021_))))
                  (let ((_tl240592241031_
                         (let () (declare (not safe)) (##cdr _e240594241026_)))
                        (_hd240593241029_
                         (let ()
                           (declare (not safe))
                           (##car _e240594241026_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240593241029_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd240593241029_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240592241031_))
                                (let ((_e240597241034_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240592241031_))))
                                  (let ((_tl240595241039_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240597241034_)))
                                        (_hd240596241037_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240597241034_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl240595241039_))
                                        (let ((__tmp251413
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd240596241037_
                                                       _xarg240590241015_))))
                                          (declare (not safe))
                                          (_loop240586241010_
                                           _lp-tl240589241023_
                                           __tmp251413))
                                        (___match250187250188_
                                         _e240558240933_
                                         _hd240557240936_
                                         _tl240556240938_
                                         ___splice250152250153_
                                         _target240559240941_
                                         _tl240561240943_))))
                                (___match250187250188_
                                 _e240558240933_
                                 _hd240557240936_
                                 _tl240556240938_
                                 ___splice250152250153_
                                 _target240559240941_
                                 _tl240561240943_))
                            (___match250187250188_
                             _e240558240933_
                             _hd240557240936_
                             _tl240556240938_
                             ___splice250152250153_
                             _target240559240941_
                             _tl240561240943_))
                        (___match250187250188_
                         _e240558240933_
                         _hd240557240936_
                         _tl240556240938_
                         ___splice250152250153_
                         _target240559240941_
                         _tl240561240943_))))
                (___match250187250188_
                 _e240558240933_
                 _hd240557240936_
                 _tl240556240938_
                 ___splice250152250153_
                 _target240559240941_
                 _tl240561240943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg240591241042_
                                                       (reverse _xarg240590241015_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240568240970_))
                                                      (___kont250150250151_
                                                       _xarg240591241042_
                                                       _hd240581241000_
                                                       _arg240567240962_)
                                                      (___match250187250188_
                                                       _e240558240933_
                                                       _hd240557240936_
                                                       _tl240556240938_
                                                       ___splice250152250153_
                                                       _target240559240941_
                                                       _tl240561240943_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop240586241010_
                                     _target240583241005_
                                     '())))
                                (___match250187250188_
                                 _e240558240933_
                                 _hd240557240936_
                                 _tl240556240938_
                                 ___splice250152250153_
                                 _target240559240941_
                                 _tl240561240943_))))
                        (___match250187250188_
                         _e240558240933_
                         _hd240557240936_
                         _tl240556240938_
                         ___splice250152250153_
                         _target240559240941_
                         _tl240561240943_))
                    (___match250187250188_
                     _e240558240933_
                     _hd240557240936_
                     _tl240556240938_
                     ___splice250152250153_
                     _target240559240941_
                     _tl240561240943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250187250188_
                                                     _e240558240933_
                                                     _hd240557240936_
                                                     _tl240556240938_
                                                     ___splice250152250153_
                                                     _target240559240941_
                                                     _tl240561240943_))
                                                (___match250187250188_
                                                 _e240558240933_
                                                 _hd240557240936_
                                                 _tl240556240938_
                                                 ___splice250152250153_
                                                 _target240559240941_
                                                 _tl240561240943_))
                                            (___match250187250188_
                                             _e240558240933_
                                             _hd240557240936_
                                             _tl240556240938_
                                             ___splice250152250153_
                                             _target240559240941_
                                             _tl240561240943_))))
                                    (___match250187250188_
                                     _e240558240933_
                                     _hd240557240936_
                                     _tl240556240938_
                                     ___splice250152250153_
                                     _target240559240941_
                                     _tl240561240943_))))
                            (___match250187250188_
                             _e240558240933_
                             _hd240557240936_
                             _tl240556240938_
                             ___splice250152250153_
                             _target240559240941_
                             _tl240561240943_))
                        (___match250187250188_
                         _e240558240933_
                         _hd240557240936_
                         _tl240556240938_
                         ___splice250152250153_
                         _target240559240941_
                         _tl240561240943_))
                    (___match250187250188_
                     _e240558240933_
                     _hd240557240936_
                     _tl240556240938_
                     ___splice250152250153_
                     _target240559240941_
                     _tl240561240943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250187250188_
                                                     _e240558240933_
                                                     _hd240557240936_
                                                     _tl240556240938_
                                                     ___splice250152250153_
                                                     _target240559240941_
                                                     _tl240561240943_))))
                                            (___match250187250188_
                                             _e240558240933_
                                             _hd240557240936_
                                             _tl240556240938_
                                             ___splice250152250153_
                                             _target240559240941_
                                             _tl240561240943_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop240562240946_ _target240559240941_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx250148250149_))
                  (let ((_e240558240933_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx250148250149_))))
                    (let ((_tl240556240938_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240558240933_)))
                          (_hd240557240936_
                           (let ()
                             (declare (not safe))
                             (##car _e240558240933_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd240557240936_))
                          (let ((___splice250152250153_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd240557240936_
                                    '0))))
                            (let ((_tl240561240943_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice250152250153_ '1)))
                                  (_target240559240941_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice250152250153_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240561240943_))
                                  (___match250175250176_
                                   _e240558240933_
                                   _hd240557240936_
                                   _tl240556240938_
                                   ___splice250152250153_
                                   _target240559240941_
                                   _tl240561240943_)
                                  (___match250187250188_
                                   _e240558240933_
                                   _hd240557240936_
                                   _tl240556240938_
                                   ___splice250152250153_
                                   _target240559240941_
                                   _tl240561240943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240556240938_))
                              (let ((_e240646240688_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240556240938_))))
                                (let ((_tl240644240693_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240646240688_)))
                                      (_hd240645240691_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240646240688_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240645240691_))
                                      (let ((_e240649240696_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240645240691_))))
                                        (let ((_tl240647240701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240649240696_)))
                                              (_hd240648240699_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240649240696_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd240648240699_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd240648240699_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl240647240701_))
                                                      (let ((_e240652240704_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl240647240701_))))
                (let ((_tl240650240709_
                       (let () (declare (not safe)) (##cdr _e240652240704_)))
                      (_hd240651240707_
                       (let () (declare (not safe)) (##car _e240652240704_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240651240707_))
                      (let ((_e240655240712_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240651240707_))))
                        (let ((_tl240653240717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240655240712_)))
                              (_hd240654240715_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240655240712_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240654240715_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd240654240715_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240653240717_))
                                      (let ((_e240658240720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240653240717_))))
                                        (let ((_tl240656240725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240658240720_)))
                                              (_hd240657240723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240658240720_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240656240725_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240650240709_))
                                                  (let ((_e240661240728_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240650240709_))))
                                                    (let ((_tl240659240733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240661240728_)))
                                                          (_hd240660240731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240661240728_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240660240731_))
                                                          (let ((_e240664240736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240660240731_))))
                    (let ((_tl240662240741_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240664240736_)))
                          (_hd240663240739_
                           (let ()
                             (declare (not safe))
                             (##car _e240664240736_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240663240739_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd240663240739_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240662240741_))
                                  (let ((_e240667240744_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240662240741_))))
                                    (let ((_tl240665240749_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240667240744_)))
                                          (_hd240666240747_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240667240744_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240665240749_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240659240733_))
                                              (let ((_e240670240752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240659240733_))))
                                                (let ((_tl240668240757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240670240752_)))
                                                      (_hd240669240755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240670240752_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240668240757_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl240644240693_))
                                                          (___kont250160250161_
                                                           _hd240666240747_
                                                           _hd240657240723_
                                                           _hd240557240936_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g240551240675_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g240551240675_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g240551240675_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g240551240675_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g240551240675_)))
                              (let () (declare (not safe)) (_g240551240675_)))
                          (let () (declare (not safe)) (_g240551240675_)))))
                  (let () (declare (not safe)) (_g240551240675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240551240675_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240551240675_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240551240675_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240551240675_)))
                              (let ()
                                (declare (not safe))
                                (_g240551240675_)))))
                      (let () (declare (not safe)) (_g240551240675_)))))
              (let () (declare (not safe)) (_g240551240675_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240551240675_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240551240675_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240551240675_)))))
                              (let ()
                                (declare (not safe))
                                (_g240551240675_))))))
                  (let () (declare (not safe)) (_g240551240675_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form240351_)
        (let* ((_g240353240367_
                (lambda (_g240354240364_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240354240364_))))
               (_g240352240544_
                (lambda (_g240354240370_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240354240370_))
                      (let ((_e240359240372_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240354240370_))))
                        (let ((_hd240358240375_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240359240372_)))
                              (_tl240357240377_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240359240372_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240357240377_))
                              (let ((_e240362240380_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240357240377_))))
                                (let ((_hd240361240383_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240362240380_)))
                                      (_tl240360240385_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240362240380_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240360240385_))
                                      ((lambda (_L240388_ _L240389_)
                                         (let* ((___stx250270250271_ _L240389_)
                                                (_g240404240432_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx250270250271_)))))
                                           (let ((___kont250272250273_
                                                  (lambda (_L240523_)
                                                    (length (let ((__tmp251415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g240533240536_ _g240534240538_)
                             (let ()
                               (declare (not safe))
                               (cons _g240533240536_ _g240534240538_)))))
                      (declare (not safe))
                      (foldr1 __tmp251415 '() _L240523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250276250277_
                                                  (lambda (_L240474_ _L240475_)
                                                    (let ((__tmp251416
                                                           (length (let ((__tmp251417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g240486240489_ _g240487240491_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g240486240489_
                                            _g240487240491_)))))
                             (declare (not safe))
                             (foldr1 __tmp251417 '() _L240475_)))))
              (declare (not safe))
              (cons __tmp251416 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250280250281_
                                                  (lambda (_L240437_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match250295250296_
                                                     (lambda (___splice250278250279_
                                                              _target240418240450_
                                                              _tl240420240452_)
                                                       (letrec ((_loop240421240455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240419240458_ _arg240425240460_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240419240458_))
                               (let ((_e240422240463_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240419240458_))))
                                 (let ((_lp-tl240424240468_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240422240463_)))
                                       (_lp-hd240423240466_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240422240463_))))
                                   (let ((__tmp251418
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240423240466_
                                                  _arg240425240460_))))
                                     (declare (not safe))
                                     (_loop240421240455_
                                      _lp-tl240424240468_
                                      __tmp251418))))
                               (let ((_arg240426240471_
                                      (reverse _arg240425240460_)))
                                 (___kont250276250277_
                                  _tl240420240452_
                                  _arg240426240471_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240421240455_ _target240418240450_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250289250290_
                                                     (lambda (___splice250274250275_
                                                              _target240407240499_
                                                              _tl240409240501_)
                                                       (letrec ((_loop240410240504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240408240507_ _arg240414240509_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240408240507_))
                               (let ((_e240411240512_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240408240507_))))
                                 (let ((_lp-tl240413240517_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240411240512_)))
                                       (_lp-hd240412240515_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240411240512_))))
                                   (let ((__tmp251419
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240412240515_
                                                  _arg240414240509_))))
                                     (declare (not safe))
                                     (_loop240410240504_
                                      _lp-tl240413240517_
                                      __tmp251419))))
                               (let ((_arg240415240520_
                                      (reverse _arg240414240509_)))
                                 (___kont250272250273_ _arg240415240520_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240410240504_ _target240407240499_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx250270250271_))
                                                   (let ((___splice250274250275_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx250270250271_
                                                             '0))))
                                                     (let ((_tl240409240501_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250274250275_
                                                               '1)))
                                                           (_target240407240499_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250274250275_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl240409240501_))
                                                           (___match250289250290_
                                                            ___splice250274250275_
                                                            _target240407240499_
                                                            _tl240409240501_)
                                                           (___match250295250296_
                                                            ___splice250274250275_
                                                            _target240407240499_
                                                            _tl240409240501_))))
                                                   (___kont250280250281_
                                                    ___stx250270250271_))))))
                                       _hd240361240383_
                                       _hd240358240375_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240353240367_ _g240354240370_)))))
                              (let ()
                                (declare (not safe))
                                (_g240353240367_ _g240354240370_)))))
                      (let ()
                        (declare (not safe))
                        (_g240353240367_ _g240354240370_))))))
          (declare (not safe))
          (_g240352240544_ _form240351_))))
    (define gxc#lambda-expr?
      (lambda (_expr240304_)
        (let* ((___stx250298250299_ _expr240304_)
               (_g240307240317_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250298250299_)))))
          (let ((___kont250300250301_ (lambda (_L240337_) '#t))
                (___kont250302250303_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250298250299_))
                (let ((_e240312240329_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250298250299_))))
                  (let ((_tl240310240334_
                         (let () (declare (not safe)) (##cdr _e240312240329_)))
                        (_hd240311240332_
                         (let ()
                           (declare (not safe))
                           (##car _e240312240329_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240311240332_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd240311240332_))
                            (___kont250300250301_ _tl240310240334_)
                            (___kont250302250303_))
                        (___kont250302250303_))))
                (___kont250302250303_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr240257_)
        (let* ((___stx250316250317_ _expr240257_)
               (_g240260240270_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250316250317_)))))
          (let ((___kont250318250319_ (lambda (_L240290_) '#t))
                (___kont250320250321_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250316250317_))
                (let ((_e240265240282_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250316250317_))))
                  (let ((_tl240263240287_
                         (let () (declare (not safe)) (##cdr _e240265240282_)))
                        (_hd240264240285_
                         (let ()
                           (declare (not safe))
                           (##car _e240265240282_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240264240285_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd240264240285_))
                            (___kont250318250319_ _tl240263240287_)
                            (___kont250320250321_))
                        (___kont250320250321_))))
                (___kont250320250321_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr240126_)
        (let* ((___stx250334250335_ _expr240126_)
               (_g240129240159_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250334250335_)))))
          (let ((___kont250336250337_
                 (lambda (_L240227_ _L240228_ _L240229_)
                   (if (let () (declare (not safe)) (gx#identifier? _L240229_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L240228_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L240227_))
                           '#f)
                       '#f)))
                (___kont250338250339_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250334250335_))
                (let ((_e240136240171_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250334250335_))))
                  (let ((_tl240134240176_
                         (let () (declare (not safe)) (##cdr _e240136240171_)))
                        (_hd240135240174_
                         (let ()
                           (declare (not safe))
                           (##car _e240136240171_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240135240174_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd240135240174_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240134240176_))
                                (let ((_e240139240179_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240134240176_))))
                                  (let ((_tl240137240184_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240139240179_)))
                                        (_hd240138240182_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240139240179_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240138240182_))
                                        (let ((_e240142240187_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240138240182_))))
                                          (let ((_tl240140240192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240142240187_)))
                                                (_hd240141240190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240142240187_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd240141240190_))
                                                (let ((_e240145240195_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd240141240190_))))
                                                  (let ((_tl240143240200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240145240195_)))
                                                        (_hd240144240198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240145240195_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd240144240198_))
                                                        (let ((_e240148240203_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd240144240198_))))
                  (let ((_tl240146240208_
                         (let () (declare (not safe)) (##cdr _e240148240203_)))
                        (_hd240147240206_
                         (let ()
                           (declare (not safe))
                           (##car _e240148240203_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl240146240208_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240143240200_))
                            (let ((_e240151240211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240143240200_))))
                              (let ((_tl240149240216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240151240211_)))
                                    (_hd240150240214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240151240211_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl240149240216_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl240140240192_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240137240184_))
                                            (let ((_e240154240219_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240137240184_))))
                                              (let ((_tl240152240224_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240154240219_)))
                                                    (_hd240153240222_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240154240219_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl240152240224_))
                                                    (___kont250336250337_
                                                     _hd240153240222_
                                                     _hd240150240214_
                                                     _hd240147240206_)
                                                    (___kont250338250339_))))
                                            (___kont250338250339_))
                                        (___kont250338250339_))
                                    (___kont250338250339_))))
                            (___kont250338250339_))
                        (___kont250338250339_))))
                (___kont250338250339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250338250339_))))
                                        (___kont250338250339_))))
                                (___kont250338250339_))
                            (___kont250338250339_))
                        (___kont250338250339_))))
                (___kont250338250339_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr239451_)
        (let* ((___stx250396250397_ _expr239451_)
               (_g239454239612_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250396250397_)))))
          (let ((___kont250398250399_
                 (lambda (_L240000_
                          _L240001_
                          _L240002_
                          _L240003_
                          _L240004_
                          _L240005_
                          _L240006_
                          _L240007_
                          _L240008_
                          _L240009_
                          _L240010_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L240007_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L240003_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L240002_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L240010_
                                      _L240001_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L240009_
                                          _L240006_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240004_
                                              _L240000_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240008_
                                              _L240005_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont250400250401_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250396250397_))
                (let ((_e239469239624_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250396250397_))))
                  (let ((_tl239467239629_
                         (let () (declare (not safe)) (##cdr _e239469239624_)))
                        (_hd239468239627_
                         (let ()
                           (declare (not safe))
                           (##car _e239469239624_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239468239627_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd239468239627_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239467239629_))
                                (let ((_e239472239632_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239467239629_))))
                                  (let ((_tl239470239637_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239472239632_)))
                                        (_hd239471239635_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239472239632_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd239471239635_))
                                        (let ((_e239475239640_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd239471239635_))))
                                          (let ((_tl239473239645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239475239640_)))
                                                (_hd239474239643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239475239640_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239474239643_))
                                                (let ((_e239478239648_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239474239643_))))
                                                  (let ((_tl239476239653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239478239648_)))
                                                        (_hd239477239651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239478239648_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239477239651_))
                                                        (let ((_e239481239656_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239477239651_))))
                  (let ((_tl239479239661_
                         (let () (declare (not safe)) (##cdr _e239481239656_)))
                        (_hd239480239659_
                         (let ()
                           (declare (not safe))
                           (##car _e239481239656_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl239479239661_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239476239653_))
                            (let ((_e239484239664_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239476239653_))))
                              (let ((_tl239482239669_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239484239664_)))
                                    (_hd239483239667_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239484239664_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239483239667_))
                                    (let ((_e239487239672_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239483239667_))))
                                      (let ((_tl239485239677_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239487239672_)))
                                            (_hd239486239675_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239487239672_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239486239675_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd239486239675_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239485239677_))
                                                    (let ((_e239490239680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239485239677_))))
                                                      (let ((_tl239488239685_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239490239680_)))
                    (_hd239489239683_
                     (let () (declare (not safe)) (##car _e239490239680_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239489239683_))
                    (let ((_e239493239688_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239489239683_))))
                      (let ((_tl239491239693_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239493239688_)))
                            (_hd239492239691_
                             (let ()
                               (declare (not safe))
                               (##car _e239493239688_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd239492239691_))
                            (let ((_e239496239696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd239492239691_))))
                              (let ((_tl239494239701_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239496239696_)))
                                    (_hd239495239699_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239496239696_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239495239699_))
                                    (let ((_e239499239704_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239495239699_))))
                                      (let ((_tl239497239709_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239499239704_)))
                                            (_hd239498239707_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239499239704_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239497239709_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239494239701_))
                                                (let ((_e239502239712_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239494239701_))))
                                                  (let ((_tl239500239717_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239502239712_)))
                                                        (_hd239501239715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239502239712_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239500239717_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl239491239693_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239488239685_))
                        (let ((_e239505239720_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239488239685_))))
                          (let ((_tl239503239725_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239505239720_)))
                                (_hd239504239723_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239505239720_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239504239723_))
                                (let ((_e239508239728_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239504239723_))))
                                  (let ((_tl239506239733_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239508239728_)))
                                        (_hd239507239731_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239508239728_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239507239731_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd239507239731_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239506239733_))
                                                (let ((_e239511239736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239506239733_))))
                                                  (let ((_tl239509239741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239511239736_)))
                                                        (_hd239510239739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239511239736_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239510239739_))
                                                        (let ((_e239514239744_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239510239739_))))
                  (let ((_tl239512239749_
                         (let () (declare (not safe)) (##cdr _e239514239744_)))
                        (_hd239513239747_
                         (let ()
                           (declare (not safe))
                           (##car _e239514239744_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239509239741_))
                        (let ((_e239517239752_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239509239741_))))
                          (let ((_tl239515239757_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239517239752_)))
                                (_hd239516239755_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239517239752_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239516239755_))
                                (let ((_e239520239760_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239516239755_))))
                                  (let ((_tl239518239765_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239520239760_)))
                                        (_hd239519239763_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239520239760_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239519239763_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd239519239763_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239518239765_))
                                                (let ((_e239523239768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239518239765_))))
                                                  (let ((_tl239521239773_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239523239768_)))
                                                        (_hd239522239771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239523239768_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239522239771_))
                                                        (let ((_e239526239776_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239522239771_))))
                  (let ((_tl239524239781_
                         (let () (declare (not safe)) (##cdr _e239526239776_)))
                        (_hd239525239779_
                         (let ()
                           (declare (not safe))
                           (##car _e239526239776_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239525239779_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd239525239779_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239524239781_))
                                (let ((_e239529239784_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239524239781_))))
                                  (let ((_tl239527239789_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239529239784_)))
                                        (_hd239528239787_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239529239784_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239527239789_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239521239773_))
                                            (let ((_e239532239792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239521239773_))))
                                              (let ((_tl239530239797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239532239792_)))
                                                    (_hd239531239795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239532239792_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239531239795_))
                                                    (let ((_e239535239800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239531239795_))))
                                                      (let ((_tl239533239805_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239535239800_)))
                    (_hd239534239803_
                     (let () (declare (not safe)) (##car _e239535239800_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239534239803_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd239534239803_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239533239805_))
                            (let ((_e239538239808_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239533239805_))))
                              (let ((_tl239536239813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239538239808_)))
                                    (_hd239537239811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239538239808_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239536239813_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl239530239797_))
                                        (let ((_e239541239816_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl239530239797_))))
                                          (let ((_tl239539239821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239541239816_)))
                                                (_hd239540239819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239541239816_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239540239819_))
                                                (let ((_e239544239824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239540239819_))))
                                                  (let ((_tl239542239829_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239544239824_)))
                                                        (_hd239543239827_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239544239824_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd239543239827_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd239543239827_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239542239829_))
                        (let ((_e239547239832_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239542239829_))))
                          (let ((_tl239545239837_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239547239832_)))
                                (_hd239546239835_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239547239832_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl239545239837_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239515239757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239503239725_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239482239669_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239473239645_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239470239637_))
                                                    (let ((_e239550239840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239470239637_))))
                                                      (let ((_tl239548239845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239550239840_)))
                    (_hd239549239843_
                     (let () (declare (not safe)) (##car _e239550239840_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239549239843_))
                    (let ((_e239553239848_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239549239843_))))
                      (let ((_tl239551239853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239553239848_)))
                            (_hd239552239851_
                             (let ()
                               (declare (not safe))
                               (##car _e239553239848_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd239552239851_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd239552239851_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl239551239853_))
                                    (let ((_e239556239856_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl239551239853_))))
                                      (let ((_tl239554239861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239556239856_)))
                                            (_hd239555239859_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239556239856_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239554239861_))
                                            (let ((_e239559239864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239554239861_))))
                                              (let ((_tl239557239869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239559239864_)))
                                                    (_hd239558239867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239559239864_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239558239867_))
                                                    (let ((_e239562239872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239558239867_))))
                                                      (let ((_tl239560239877_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239562239872_)))
                    (_hd239561239875_
                     (let () (declare (not safe)) (##car _e239562239872_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239561239875_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239561239875_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239560239877_))
                            (let ((_e239565239880_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239560239877_))))
                              (let ((_tl239563239885_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239565239880_)))
                                    (_hd239564239883_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239565239880_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239564239883_))
                                    (let ((_e239568239888_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239564239883_))))
                                      (let ((_tl239566239893_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239568239888_)))
                                            (_hd239567239891_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239568239888_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239567239891_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239567239891_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239566239893_))
                                                    (let ((_e239571239896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239566239893_))))
                                                      (let ((_tl239569239901_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239571239896_)))
                    (_hd239570239899_
                     (let () (declare (not safe)) (##car _e239571239896_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239569239901_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239563239885_))
                        (let ((_e239574239904_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239563239885_))))
                          (let ((_tl239572239909_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239574239904_)))
                                (_hd239573239907_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239574239904_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239573239907_))
                                (let ((_e239577239912_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239573239907_))))
                                  (let ((_tl239575239917_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239577239912_)))
                                        (_hd239576239915_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239577239912_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239576239915_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd239576239915_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239575239917_))
                                                (let ((_e239580239920_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239575239917_))))
                                                  (let ((_tl239578239925_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239580239920_)))
                                                        (_hd239579239923_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239580239920_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239578239925_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl239572239909_))
                                                            (let ((_e239583239928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl239572239909_))))
                      (let ((_tl239581239933_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239583239928_)))
                            (_hd239582239931_
                             (let ()
                               (declare (not safe))
                               (##car _e239583239928_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd239582239931_))
                            (let ((_e239586239936_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd239582239931_))))
                              (let ((_tl239584239941_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239586239936_)))
                                    (_hd239585239939_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239586239936_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd239585239939_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd239585239939_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239584239941_))
                                            (let ((_e239589239944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239584239941_))))
                                              (let ((_tl239587239949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239589239944_)))
                                                    (_hd239588239947_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239589239944_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl239587239949_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl239581239933_))
                                                        (let ((_e239592239952_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl239581239933_))))
                  (let ((_tl239590239957_
                         (let () (declare (not safe)) (##cdr _e239592239952_)))
                        (_hd239591239955_
                         (let ()
                           (declare (not safe))
                           (##car _e239592239952_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd239591239955_))
                        (let ((_e239595239960_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd239591239955_))))
                          (let ((_tl239593239965_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239595239960_)))
                                (_hd239594239963_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239595239960_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd239594239963_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd239594239963_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl239593239965_))
                                        (let ((_e239598239968_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl239593239965_))))
                                          (let ((_tl239596239973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239598239968_)))
                                                (_hd239597239971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239598239968_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239596239973_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239590239957_))
                                                    (let ((_e239601239976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239590239957_))))
                                                      (let ((_tl239599239981_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239601239976_)))
                    (_hd239600239979_
                     (let () (declare (not safe)) (##car _e239601239976_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239600239979_))
                    (let ((_e239604239984_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239600239979_))))
                      (let ((_tl239602239989_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239604239984_)))
                            (_hd239603239987_
                             (let ()
                               (declare (not safe))
                               (##car _e239604239984_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd239603239987_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd239603239987_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl239602239989_))
                                    (let ((_e239607239992_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl239602239989_))))
                                      (let ((_tl239605239997_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239607239992_)))
                                            (_hd239606239995_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239607239992_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239605239997_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239599239981_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl239557239869_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239548239845_))
                                                        (___kont250398250399_
                                                         _hd239606239995_
                                                         _hd239597239971_
                                                         _hd239579239923_
                                                         _hd239570239899_
                                                         _hd239555239859_
                                                         _hd239546239835_
                                                         _hd239537239811_
                                                         _hd239528239787_
                                                         _hd239513239747_
                                                         _hd239498239707_
                                                         _hd239480239659_)
                                                        (___kont250400250401_))
                                                    (___kont250400250401_))
                                                (___kont250400250401_))
                                            (___kont250400250401_))))
                                    (___kont250400250401_))
                                (___kont250400250401_))
                            (___kont250400250401_))))
                    (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250400250401_))
                                                (___kont250400250401_))))
                                        (___kont250400250401_))
                                    (___kont250400250401_))
                                (___kont250400250401_))))
                        (___kont250400250401_))))
                (___kont250400250401_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250400250401_))))
                                            (___kont250400250401_))
                                        (___kont250400250401_))
                                    (___kont250400250401_))))
                            (___kont250400250401_))))
                    (___kont250400250401_))
                (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250400250401_))
                                            (___kont250400250401_))
                                        (___kont250400250401_))))
                                (___kont250400250401_))))
                        (___kont250400250401_))
                    (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250400250401_))
                                                (___kont250400250401_))
                                            (___kont250400250401_))))
                                    (___kont250400250401_))))
                            (___kont250400250401_))
                        (___kont250400250401_))
                    (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250400250401_))))
                                            (___kont250400250401_))))
                                    (___kont250400250401_))
                                (___kont250400250401_))
                            (___kont250400250401_))))
                    (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250400250401_))
                                                (___kont250400250401_))
                                            (___kont250400250401_))
                                        (___kont250400250401_))
                                    (___kont250400250401_))
                                (___kont250400250401_))))
                        (___kont250400250401_))
                    (___kont250400250401_))
                (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250400250401_))))
                                        (___kont250400250401_))
                                    (___kont250400250401_))))
                            (___kont250400250401_))
                        (___kont250400250401_))
                    (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250400250401_))))
                                            (___kont250400250401_))
                                        (___kont250400250401_))))
                                (___kont250400250401_))
                            (___kont250400250401_))
                        (___kont250400250401_))))
                (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250400250401_))
                                            (___kont250400250401_))
                                        (___kont250400250401_))))
                                (___kont250400250401_))))
                        (___kont250400250401_))))
                (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250400250401_))
                                            (___kont250400250401_))
                                        (___kont250400250401_))))
                                (___kont250400250401_))))
                        (___kont250400250401_))
                    (___kont250400250401_))
                (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250400250401_))
                                            (___kont250400250401_))))
                                    (___kont250400250401_))))
                            (___kont250400250401_))))
                    (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250400250401_))
                                                (___kont250400250401_))
                                            (___kont250400250401_))))
                                    (___kont250400250401_))))
                            (___kont250400250401_))
                        (___kont250400250401_))))
                (___kont250400250401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250400250401_))))
                                        (___kont250400250401_))))
                                (___kont250400250401_))
                            (___kont250400250401_))
                        (___kont250400250401_))))
                (___kont250400250401_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx239193_ _id239194_ _clauses239195_ _gensym?239196_)
        (let _lp239198_ ((_rest239200_ _clauses239195_)
                         (_ids239201_ '())
                         (_impls239202_ '())
                         (_clauses239203_ '()))
          (let* ((_rest239204239212_ _rest239200_)
                 (_else239206239220_
                  (lambda ()
                    (values (reverse _ids239201_)
                            (reverse _impls239202_)
                            (reverse _clauses239203_))))
                 (_K239208239425_
                  (lambda (_rest239223_ _clause239224_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause239224_))
                        (let ((__tmp251475
                               (let ()
                                 (declare (not safe))
                                 (cons _clause239224_ _clauses239203_))))
                          (declare (not safe))
                          (_lp239198_
                           _rest239223_
                           _ids239201_
                           _impls239202_
                           __tmp251475))
                        (let* ((_g239226239237_
                                (lambda (_g239227239234_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g239227239234_))))
                               (_g239225239422_
                                (lambda (_g239227239240_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g239227239240_))
                                      (let ((_e239232239242_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g239227239240_))))
                                        (let ((_hd239231239245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239232239242_)))
                                              (_tl239230239247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239232239242_))))
                                          ((lambda (_L239250_ _L239251_)
                                             (let* ((_id239268_
                                                     (let ((__tmp251422
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id239194_)))
                                                           (__tmp251421
                                                            (length _clauses239203_))
                                                           (__tmp251420
                                                            (if _gensym?239196_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp251422
                                                        '"__"
                                                        __tmp251421
                                                        __tmp251420)))
                                                    (_id239270_
                                                     (let ((__tmp251423
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx239193_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id239268_
                                                        __tmp251423)))
                                                    (_impl239272_
                                                     (let ((__tmp251424
                                                            (let ((__tmp251426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp251425
                           (let ()
                             (declare (not safe))
                             (cons _L239251_ _L239250_))))
                      (declare (not safe))
                      (cons __tmp251426 __tmp251425))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp251424 _stx239193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause239419_
                                                     (let* ((___stx250780250781_
                                                             _L239251_)
                                                            (_g239276239304_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx250780250781_)))))
               (let ((___kont250782250783_
                      (lambda (_L239398_)
                        (let ((__tmp251427
                               (let ((__tmp251428
                                      (let ((__tmp251429
                                             (let ((__tmp251430
                                                    (let ((__tmp251436
                                                           (let ((__tmp251437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id239270_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251437)))
                  (__tmp251431
                   (let ((__tmp251432
                          (lambda (_g239408239411_ _g239409239413_)
                            (let ((__tmp251433
                                   (let ((__tmp251435
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp251434
                                          (let ()
                                            (declare (not safe))
                                            (cons _g239408239411_ '()))))
                                     (declare (not safe))
                                     (cons __tmp251435 __tmp251434))))
                              (declare (not safe))
                              (cons __tmp251433 _g239409239413_)))))
                     (declare (not safe))
                     (foldr1 __tmp251432 '() _L239398_))))
              (declare (not safe))
              (cons __tmp251436 __tmp251431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251430))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251429
                                         _stx239193_))))
                                 (declare (not safe))
                                 (cons __tmp251428 '()))))
                          (declare (not safe))
                          (cons _L239251_ __tmp251427))))
                     (___kont250786250787_
                      (lambda (_L239349_ _L239350_)
                        (let ((__tmp251438
                               (let ((__tmp251439
                                      (let ((__tmp251440
                                             (let ((__tmp251441
                                                    (let ((__tmp251455
                                                           (let ((__tmp251456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251456)))
                  (__tmp251442
                   (let ((__tmp251453
                          (let ((__tmp251454
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239270_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251454)))
                         (__tmp251443
                          (let ((__tmp251449
                                 (let ((__tmp251450
                                        (let ((__tmp251452
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp251451
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L239349_ '()))))
                                          (declare (not safe))
                                          (cons __tmp251452 __tmp251451))))
                                   (declare (not safe))
                                   (cons __tmp251450 '())))
                                (__tmp251444
                                 (let ((__tmp251445
                                        (lambda (_g239361239364_
                                                 _g239362239366_)
                                          (let ((__tmp251446
                                                 (let ((__tmp251448
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp251447
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g239361239364_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp251448
                                                         __tmp251447))))
                                            (declare (not safe))
                                            (cons __tmp251446
                                                  _g239362239366_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp251445 '() _L239350_))))
                            (declare (not safe))
                            (foldr1 cons __tmp251449 __tmp251444))))
                     (declare (not safe))
                     (cons __tmp251453 __tmp251443))))
              (declare (not safe))
              (cons __tmp251455 __tmp251442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251441))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251440
                                         _stx239193_))))
                                 (declare (not safe))
                                 (cons __tmp251439 '()))))
                          (declare (not safe))
                          (cons _L239251_ __tmp251438))))
                     (___kont250790250791_
                      (lambda (_L239309_)
                        (let ((__tmp251457
                               (let ((__tmp251458
                                      (let ((__tmp251459
                                             (let ((__tmp251460
                                                    (let ((__tmp251468
                                                           (let ((__tmp251469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251469)))
                  (__tmp251461
                   (let ((__tmp251466
                          (let ((__tmp251467
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239270_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251467)))
                         (__tmp251462
                          (let ((__tmp251463
                                 (let ((__tmp251465
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp251464
                                        (let ()
                                          (declare (not safe))
                                          (cons _L239309_ '()))))
                                   (declare (not safe))
                                   (cons __tmp251465 __tmp251464))))
                            (declare (not safe))
                            (cons __tmp251463 '()))))
                     (declare (not safe))
                     (cons __tmp251466 __tmp251462))))
              (declare (not safe))
              (cons __tmp251468 __tmp251461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251460))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251459
                                         _stx239193_))))
                                 (declare (not safe))
                                 (cons __tmp251458 '()))))
                          (declare (not safe))
                          (cons _L239251_ __tmp251457)))))
                 (let* ((___match250805250806_
                         (lambda (___splice250788250789_
                                  _target239290239325_
                                  _tl239292239327_)
                           (letrec ((_loop239293239330_
                                     (lambda (_hd239291239333_
                                              _arg239297239335_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239291239333_))
                                           (let ((_e239294239338_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239291239333_))))
                                             (let ((_lp-tl239296239343_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239294239338_)))
                                                   (_lp-hd239295239341_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239294239338_))))
                                               (let ((__tmp251470
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239295239341_
                                                              _arg239297239335_))))
                                                 (declare (not safe))
                                                 (_loop239293239330_
                                                  _lp-tl239296239343_
                                                  __tmp251470))))
                                           (let ((_arg239298239346_
                                                  (reverse _arg239297239335_)))
                                             (___kont250786250787_
                                              _tl239292239327_
                                              _arg239298239346_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239293239330_
                                _target239290239325_
                                '())))))
                        (___match250799250800_
                         (lambda (___splice250784250785_
                                  _target239279239374_
                                  _tl239281239376_)
                           (letrec ((_loop239282239379_
                                     (lambda (_hd239280239382_
                                              _arg239286239384_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239280239382_))
                                           (let ((_e239283239387_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239280239382_))))
                                             (let ((_lp-tl239285239392_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239283239387_)))
                                                   (_lp-hd239284239390_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239283239387_))))
                                               (let ((__tmp251471
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239284239390_
                                                              _arg239286239384_))))
                                                 (declare (not safe))
                                                 (_loop239282239379_
                                                  _lp-tl239285239392_
                                                  __tmp251471))))
                                           (let ((_arg239287239395_
                                                  (reverse _arg239286239384_)))
                                             (___kont250782250783_
                                              _arg239287239395_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239282239379_
                                _target239279239374_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx250780250781_))
                       (let ((___splice250784250785_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx250780250781_
                                 '0))))
                         (let ((_tl239281239376_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice250784250785_ '1)))
                               (_target239279239374_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice250784250785_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl239281239376_))
                               (___match250799250800_
                                ___splice250784250785_
                                _target239279239374_
                                _tl239281239376_)
                               (___match250805250806_
                                ___splice250784250785_
                                _target239279239374_
                                _tl239281239376_))))
                       (___kont250790250791_ ___stx250780250781_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp251474
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id239270_
                                                              _ids239201_)))
                                                     (__tmp251473
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl239272_
                                                              _impls239202_)))
                                                     (__tmp251472
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause239419_
                                                              _clauses239203_))))
                                                 (declare (not safe))
                                                 (_lp239198_
                                                  _rest239223_
                                                  __tmp251474
                                                  __tmp251473
                                                  __tmp251472))))
                                           _tl239230239247_
                                           _hd239231239245_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g239226239237_ _g239227239240_))))))
                          (declare (not safe))
                          (_g239225239422_ _clause239224_))))))
            (if (let () (declare (not safe)) (##pair? _rest239204239212_))
                (let ((_hd239209239428_
                       (let ()
                         (declare (not safe))
                         (##car _rest239204239212_)))
                      (_tl239210239430_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest239204239212_))))
                  (let* ((_clause239433_ _hd239209239428_)
                         (_rest239435_ _tl239210239430_))
                    (declare (not safe))
                    (_K239208239425_ _rest239435_ _clause239433_)))
                (let () (declare (not safe)) (_else239206239220_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx239440_ _id239441_ _clauses239442_)
        (let ((_gensym?239444_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx239440_
           _id239441_
           _clauses239442_
           _gensym?239444_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g251477_
        (let ((_g251476_ (let () (declare (not safe)) (##length _g251477_))))
          (cond ((let () (declare (not safe)) (##fx= _g251476_ 3))
                 (apply (lambda (_stx239440_ _id239441_ _clauses239442_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx239440_
                             _id239441_
                             _clauses239442_)))
                        _g251477_))
                ((let () (declare (not safe)) (##fx= _g251476_ 4))
                 (apply (lambda (_stx239446_
                                 _id239447_
                                 _clauses239448_
                                 _gensym?239449_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx239446_
                             _id239447_
                             _clauses239448_
                             _gensym?239449_)))
                        _g251477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g251477_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx238470_)
        (letrec ((_case-lambda-clause-def238472_
                  (lambda (_id239189_ _impl239190_)
                    (let ((__tmp251478
                           (let ((__tmp251479
                                  (let ((__tmp251482
                                         (let ()
                                           (declare (not safe))
                                           (cons _id239189_ '())))
                                        (__tmp251480
                                         (let ((__tmp251481
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl239190_))))
                                           (declare (not safe))
                                           (cons __tmp251481 '()))))
                                    (declare (not safe))
                                    (cons __tmp251482 __tmp251480))))
                             (declare (not safe))
                             (cons '%#define-values __tmp251479))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251478 _stx238470_))))
                 (_opt-lambda-dispatch-name238473_
                  (lambda (_id239185_)
                    (if (uninterned-symbol? _id239185_)
                        (let ((_str239187_ (symbol->string _id239185_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str239187_))
                              '"%"
                              _id239185_))
                        _id239185_)))
                 (_kw-lambda-dispatch-name238474_
                  (lambda (_id239180_ _name239181_)
                    (if (uninterned-symbol? _id239180_)
                        (let ((_str239183_ (symbol->string _id239180_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str239183_))
                              _name239181_
                              _id239180_))
                        _id239180_))))
          (let* ((___stx250828250829_ _stx238470_)
                 (_g238479238538_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx250828250829_)))))
            (let ((___kont250830250831_
                   (lambda (_L239089_ _L239090_)
                     (let* ((___stx250808250809_ _L239089_)
                            (_g239107239121_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx250808250809_)))))
                       (let ((___kont250810250811_
                              (lambda (_L239165_) _stx238470_))
                             (___kont250812250813_
                              (lambda (_L239134_)
                                (let ((_g251483_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx238470_
                                          _L239090_
                                          _L239134_))))
                                  (begin
                                    (let ((_g251484_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g251483_)
                                                 (##vector-length _g251483_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g251484_ 3)))
                                          (error "Context expects 3 values"
                                                 _g251484_)))
                                    (let ((_ids239144_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251483_ 0)))
                                          (_impls239145_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251483_ 1)))
                                          (_clauses239146_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251483_ 2))))
                                      (let* ((_g251485_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids239144_))
                                             (_defs239149_
                                              (map _case-lambda-clause-def238472_
                                                   _ids239144_
                                                   _impls239145_)))
                                        (let ((__tmp251487
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L239090_)))
                                              (__tmp251486
                                               (map gxc#identifier-symbol
                                                    _ids239144_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp251487
                                           '" => "
                                           __tmp251486))
                                        (let ((__tmp251488
                                               (let ((__tmp251489
                                                      (let ((__tmp251490
                                                             (let ((__tmp251491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251492
                                   (let ((__tmp251493
                                          (let ((__tmp251498
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L239090_ '())))
                                                (__tmp251494
                                                 (let ((__tmp251495
                                                        (let ((__tmp251497
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses239146_)))
                      (__tmp251496
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp251497 __tmp251496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251495 '()))))
                                            (declare (not safe))
                                            (cons __tmp251498 __tmp251494))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp251493))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251492
                               _stx238470_))))
                       (declare (not safe))
                       (cons __tmp251491 '()))))
                (declare (not safe))
                (foldr1 cons __tmp251490 _defs239149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp251489))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp251488
                                           _stx238470_)))))))))
                         (let ((___match250819250820_
                                (lambda (_e239112239157_
                                         _hd239111239160_
                                         _tl239110239162_)
                                  (let ((_L239165_ _tl239110239162_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L239165_))
                                        (___kont250810250811_ _L239165_)
                                        (___kont250812250813_
                                         _tl239110239162_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx250808250809_))
                               (let ((_e239112239157_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx250808250809_))))
                                 (let ((_tl239110239162_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239112239157_)))
                                       (_hd239111239160_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239112239157_))))
                                   (___match250819250820_
                                    _e239112239157_
                                    _hd239111239160_
                                    _tl239110239162_)))
                               (let ()
                                 (declare (not safe))
                                 (_g239107239121_))))))))
                  (___kont250832250833_
                   (lambda (_L238907_ _L238908_)
                     (let* ((_g238924238954_
                             (lambda (_g238925238951_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g238925238951_))))
                            (_g238923239049_
                             (lambda (_g238925238957_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g238925238957_))
                                   (let ((_e238931238959_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g238925238957_))))
                                     (let ((_hd238930238962_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e238931238959_)))
                                           (_tl238929238964_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e238931238959_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl238929238964_))
                                           (let ((_e238934238967_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl238929238964_))))
                                             (let ((_hd238933238970_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238934238967_)))
                                                   (_tl238932238972_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238934238967_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238933238970_))
                                                   (let ((_e238937238975_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238933238970_))))
                                                     (let ((_hd238936238978_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238937238975_)))
                                                           (_tl238935238980_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238937238975_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd238936238978_))
                                                           (let ((_e238940238983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd238936238978_))))
                     (let ((_hd238939238986_
                            (let ()
                              (declare (not safe))
                              (##car _e238940238983_)))
                           (_tl238938238988_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238940238983_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd238939238986_))
                           (let ((_e238943238991_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd238939238986_))))
                             (let ((_hd238942238994_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e238943238991_)))
                                   (_tl238941238996_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e238943238991_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl238941238996_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl238938238988_))
                                       (let ((_e238946238999_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl238938238988_))))
                                         (let ((_hd238945239002_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238946238999_)))
                                               (_tl238944239004_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238946238999_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl238944239004_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl238935238980_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238932238972_))
                                                       (let ((_e238949239007_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238932238972_))))
                 (let ((_hd238948239010_
                        (let () (declare (not safe)) (##car _e238949239007_)))
                       (_tl238947239012_
                        (let () (declare (not safe)) (##cdr _e238949239007_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238947239012_))
                       ((lambda (_L239015_ _L239016_ _L239017_)
                          (let* ((_lambda-id239041_
                                  (let ((__tmp251501
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L238908_)))
                                        (__tmp251499
                                         (let ((__tmp251500
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L239017_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name238473_
                                            __tmp251500))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp251501
                                     '"__"
                                     __tmp251499)))
                                 (_lambda-id239043_
                                  (let ((__tmp251502
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx238470_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id239041_
                                     __tmp251502)))
                                 (_g251503_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id239043_)))
                                 (_new-case-lambda-expr239046_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L239015_
                                     _L239017_
                                     _lambda-id239043_))))
                            (let ((__tmp251505
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L238908_)))
                                  (__tmp251504
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id239043_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp251505
                               '" => "
                               __tmp251504))
                            (let ((__tmp251506
                                   (let ((__tmp251507
                                          (let ((__tmp251515
                                                 (let ((__tmp251516
                                                        (let ((__tmp251517
                                                               (let ((__tmp251520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id239043_ '())))
                             (__tmp251518
                              (let ((__tmp251519
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L239016_))))
                                (declare (not safe))
                                (cons __tmp251519 '()))))
                         (declare (not safe))
                         (cons __tmp251520 __tmp251518))))
                  (declare (not safe))
                  (cons '%#define-values __tmp251517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp251516
                                                    _stx238470_)))
                                                (__tmp251508
                                                 (let ((__tmp251509
                                                        (let ((__tmp251510
                                                               (let ((__tmp251511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp251512
                                     (let ((__tmp251514
                                            (let ()
                                              (declare (not safe))
                                              (cons _L238908_ '())))
                                           (__tmp251513
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr239046_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp251514 __tmp251513))))
                                (declare (not safe))
                                (cons '%#define-values __tmp251512))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp251511 _stx238470_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp251510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251509 '()))))
                                            (declare (not safe))
                                            (cons __tmp251515 __tmp251508))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp251507))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251506
                               _stx238470_))))
                        _hd238948239010_
                        _hd238945239002_
                        _hd238942238994_)
                       (let ()
                         (declare (not safe))
                         (_g238924238954_ _g238925238957_)))))
               (let () (declare (not safe)) (_g238924238954_ _g238925238957_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238924238954_
                                                      _g238925238957_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238924238954_
                                                  _g238925238957_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238924238954_ _g238925238957_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g238924238954_ _g238925238957_)))))
                           (let ()
                             (declare (not safe))
                             (_g238924238954_ _g238925238957_)))))
                   (let ()
                     (declare (not safe))
                     (_g238924238954_ _g238925238957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238924238954_
                                                      _g238925238957_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g238924238954_
                                              _g238925238957_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g238924238954_ _g238925238957_))))))
                       (declare (not safe))
                       (_g238923239049_ _L238907_))))
                  (___kont250834250835_
                   (lambda (_L238621_ _L238622_)
                     (let* ((_g238638238691_
                             (lambda (_g238639238688_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g238639238688_))))
                            (_g238637238867_
                             (lambda (_g238639238694_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g238639238694_))
                                   (let ((_e238647238696_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g238639238694_))))
                                     (let ((_hd238646238699_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e238647238696_)))
                                           (_tl238645238701_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e238647238696_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl238645238701_))
                                           (let ((_e238650238704_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl238645238701_))))
                                             (let ((_hd238649238707_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238650238704_)))
                                                   (_tl238648238709_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238650238704_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238649238707_))
                                                   (let ((_e238653238712_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238649238707_))))
                                                     (let ((_hd238652238715_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238653238712_)))
                                                           (_tl238651238717_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238653238712_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd238652238715_))
                                                           (let ((_e238656238720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd238652238715_))))
                     (let ((_hd238655238723_
                            (let ()
                              (declare (not safe))
                              (##car _e238656238720_)))
                           (_tl238654238725_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238656238720_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd238655238723_))
                           (let ((_e238659238728_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd238655238723_))))
                             (let ((_hd238658238731_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e238659238728_)))
                                   (_tl238657238733_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e238659238728_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl238657238733_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl238654238725_))
                                       (let ((_e238662238736_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl238654238725_))))
                                         (let ((_hd238661238739_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238662238736_)))
                                               (_tl238660238741_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238662238736_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd238661238739_))
                                               (let ((_e238665238744_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd238661238739_))))
                                                 (let ((_hd238664238747_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238665238744_)))
                                                       (_tl238663238749_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238665238744_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238663238749_))
                                                       (let ((_e238668238752_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238663238749_))))
                 (let ((_hd238667238755_
                        (let () (declare (not safe)) (##car _e238668238752_)))
                       (_tl238666238757_
                        (let () (declare (not safe)) (##cdr _e238668238752_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd238667238755_))
                       (let ((_e238671238760_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd238667238755_))))
                         (let ((_hd238670238763_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238671238760_)))
                               (_tl238669238765_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238671238760_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd238670238763_))
                               (let ((_e238674238768_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd238670238763_))))
                                 (let ((_hd238673238771_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238674238768_)))
                                       (_tl238672238773_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238674238768_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd238673238771_))
                                       (let ((_e238677238776_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd238673238771_))))
                                         (let ((_hd238676238779_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238677238776_)))
                                               (_tl238675238781_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238677238776_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl238675238781_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl238672238773_))
                                                   (let ((_e238680238784_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl238672238773_))))
                                                     (let ((_hd238679238787_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238680238784_)))
                                                           (_tl238678238789_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238680238784_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238678238789_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl238669238765_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl238666238757_))
                           (let ((_e238683238792_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl238666238757_))))
                             (let ((_hd238682238795_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e238683238792_)))
                                   (_tl238681238797_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e238683238792_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl238681238797_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl238660238741_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl238651238717_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl238648238709_))
                                               (let ((_e238686238800_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl238648238709_))))
                                                 (let ((_hd238685238803_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238686238800_)))
                                                       (_tl238684238805_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238686238800_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl238684238805_))
                                                       ((lambda (_L238808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L238809_
                         _L238810_
                         _L238811_
                         _L238812_)
                  (let* ((_get-kws-id238852_
                          (let ((__tmp251523
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L238622_)))
                                (__tmp251521
                                 (let ((__tmp251522
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L238812_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238474_
                                    __tmp251522
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251523 '"__" __tmp251521)))
                         (_get-kws-id238854_
                          (let ((__tmp251524
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238470_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id238852_
                             __tmp251524)))
                         (_main-id238856_
                          (let ((__tmp251527
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L238622_)))
                                (__tmp251525
                                 (let ((__tmp251526
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L238811_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238474_
                                    __tmp251526
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251527 '"__" __tmp251525)))
                         (_main-id238858_
                          (let ((__tmp251528
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238470_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id238856_
                             __tmp251528)))
                         (_g251529_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id238854_)))
                         (_g251530_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id238858_)))
                         (_new-kw-dispatch238862_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L238808_
                             _L238812_
                             _get-kws-id238854_)))
                         (_new-get-kws238864_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L238809_
                             _L238811_
                             _main-id238858_))))
                    (let ((__tmp251533
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L238622_)))
                          (__tmp251532
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id238854_)))
                          (__tmp251531
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id238858_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp251533
                       '" => "
                       __tmp251532
                       '" => "
                       __tmp251531))
                    (let ((__tmp251534
                           (let ((__tmp251535
                                  (let ((__tmp251548
                                         (let ((__tmp251549
                                                (let ((__tmp251550
                                                       (let ((__tmp251551
                                                              (let ((__tmp251553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id238858_ '())))
                            (__tmp251552
                             (let ()
                               (declare (not safe))
                               (cons _L238810_ '()))))
                        (declare (not safe))
                        (cons __tmp251553 __tmp251552))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251550
                                                   _stx238470_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp251549)))
                                        (__tmp251536
                                         (let ((__tmp251543
                                                (let ((__tmp251544
                                                       (let ((__tmp251545
                                                              (let ((__tmp251547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id238854_ '())))
                            (__tmp251546
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws238864_ '()))))
                        (declare (not safe))
                        (cons __tmp251547 __tmp251546))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251544
                                                   _stx238470_)))
                                               (__tmp251537
                                                (let ((__tmp251538
                                                       (let ((__tmp251539
                                                              (let ((__tmp251540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp251542
                                    (let ()
                                      (declare (not safe))
                                      (cons _L238622_ '())))
                                   (__tmp251541
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch238862_ '()))))
                               (declare (not safe))
                               (cons __tmp251542 __tmp251541))))
                        (declare (not safe))
                        (cons '%#define-values __tmp251540))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp251539 _stx238470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251538 '()))))
                                           (declare (not safe))
                                           (cons __tmp251543 __tmp251537))))
                                    (declare (not safe))
                                    (cons __tmp251548 __tmp251536))))
                             (declare (not safe))
                             (cons '%#begin __tmp251535))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251534 _stx238470_))))
                _hd238685238803_
                _hd238682238795_
                _hd238679238787_
                _hd238676238779_
                _hd238658238731_)
               (let ()
                 (declare (not safe))
                 (_g238638238691_ _g238639238694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238638238691_
                                                  _g238639238694_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g238638238691_
                                              _g238639238694_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g238638238691_ _g238639238694_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g238638238691_ _g238639238694_)))))
                           (let ()
                             (declare (not safe))
                             (_g238638238691_ _g238639238694_)))
                       (let ()
                         (declare (not safe))
                         (_g238638238691_ _g238639238694_)))
                   (let ()
                     (declare (not safe))
                     (_g238638238691_ _g238639238694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238638238691_
                                                      _g238639238694_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238638238691_
                                                  _g238639238694_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238638238691_ _g238639238694_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g238638238691_ _g238639238694_)))))
                       (let ()
                         (declare (not safe))
                         (_g238638238691_ _g238639238694_)))))
               (let ()
                 (declare (not safe))
                 (_g238638238691_ _g238639238694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238638238691_
                                                  _g238639238694_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238638238691_ _g238639238694_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g238638238691_ _g238639238694_)))))
                           (let ()
                             (declare (not safe))
                             (_g238638238691_ _g238639238694_)))))
                   (let ()
                     (declare (not safe))
                     (_g238638238691_ _g238639238694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238638238691_
                                                      _g238639238694_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g238638238691_
                                              _g238639238694_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g238638238691_ _g238639238694_))))))
                       (declare (not safe))
                       (_g238637238867_ _L238621_))))
                  (___kont250836250837_
                   (lambda (_L238567_ _L238568_)
                     (let ((__tmp251554
                            (let ((__tmp251555
                                   (let ((__tmp251556
                                          (let ((__tmp251557
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L238567_))))
                                            (declare (not safe))
                                            (cons __tmp251557 '()))))
                                     (declare (not safe))
                                     (cons _L238568_ __tmp251556))))
                              (declare (not safe))
                              (cons '%#define-values __tmp251555))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp251554 _stx238470_)))))
              (let* ((___match250921250922_
                      (lambda (_e238513238589_
                               _hd238512238592_
                               _tl238511238594_
                               _e238516238597_
                               _hd238515238600_
                               _tl238514238602_
                               _e238519238605_
                               _hd238518238608_
                               _tl238517238610_
                               _e238522238613_
                               _hd238521238616_
                               _tl238520238618_)
                        (let ((_L238621_ _hd238521238616_)
                              (_L238622_ _hd238518238608_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L238622_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L238621_)))
                              (___kont250834250835_ _L238621_ _L238622_)
                              (___kont250836250837_
                               _hd238521238616_
                               _hd238515238600_)))))
                     (___match250893250894_
                      (lambda (_e238499238875_
                               _hd238498238878_
                               _tl238497238880_
                               _e238502238883_
                               _hd238501238886_
                               _tl238500238888_
                               _e238505238891_
                               _hd238504238894_
                               _tl238503238896_
                               _e238508238899_
                               _hd238507238902_
                               _tl238506238904_)
                        (let ((_L238907_ _hd238507238902_)
                              (_L238908_ _hd238504238894_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L238908_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L238907_)))
                              (___kont250832250833_ _L238907_ _L238908_)
                              (___match250921250922_
                               _e238499238875_
                               _hd238498238878_
                               _tl238497238880_
                               _e238502238883_
                               _hd238501238886_
                               _tl238500238888_
                               _e238505238891_
                               _hd238504238894_
                               _tl238503238896_
                               _e238508238899_
                               _hd238507238902_
                               _tl238506238904_)))))
                     (___match250865250866_
                      (lambda (_e238485239057_
                               _hd238484239060_
                               _tl238483239062_
                               _e238488239065_
                               _hd238487239068_
                               _tl238486239070_
                               _e238491239073_
                               _hd238490239076_
                               _tl238489239078_
                               _e238494239081_
                               _hd238493239084_
                               _tl238492239086_)
                        (let ((_L239089_ _hd238493239084_)
                              (_L239090_ _hd238490239076_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239090_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L239089_)))
                              (___kont250830250831_ _L239089_ _L239090_)
                              (___match250893250894_
                               _e238485239057_
                               _hd238484239060_
                               _tl238483239062_
                               _e238488239065_
                               _hd238487239068_
                               _tl238486239070_
                               _e238491239073_
                               _hd238490239076_
                               _tl238489239078_
                               _e238494239081_
                               _hd238493239084_
                               _tl238492239086_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx250828250829_))
                    (let ((_e238485239057_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx250828250829_))))
                      (let ((_tl238483239062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238485239057_)))
                            (_hd238484239060_
                             (let ()
                               (declare (not safe))
                               (##car _e238485239057_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238483239062_))
                            (let ((_e238488239065_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238483239062_))))
                              (let ((_tl238486239070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238488239065_)))
                                    (_hd238487239068_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238488239065_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238487239068_))
                                    (let ((_e238491239073_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238487239068_))))
                                      (let ((_tl238489239078_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238491239073_)))
                                            (_hd238490239076_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238491239073_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238489239078_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238486239070_))
                                                (let ((_e238494239081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238486239070_))))
                                                  (let ((_tl238492239086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238494239081_)))
                                                        (_hd238493239084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238494239081_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238492239086_))
                                                        (___match250865250866_
                                                         _e238485239057_
                                                         _hd238484239060_
                                                         _tl238483239062_
                                                         _e238488239065_
                                                         _hd238487239068_
                                                         _tl238486239070_
                                                         _e238491239073_
                                                         _hd238490239076_
                                                         _tl238489239078_
                                                         _e238494239081_
                                                         _hd238493239084_
                                                         _tl238492239086_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238479238538_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238479238538_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238486239070_))
                                                (let ((_e238533238559_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238486239070_))))
                                                  (let ((_tl238531238564_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238533238559_)))
                                                        (_hd238532238562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238533238559_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238531238564_))
                                                        (___kont250836250837_
                                                         _hd238532238562_
                                                         _hd238487239068_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238479238538_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238479238538_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238486239070_))
                                        (let ((_e238533238559_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238486239070_))))
                                          (let ((_tl238531238564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238533238559_)))
                                                (_hd238532238562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238533238559_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238531238564_))
                                                (___kont250836250837_
                                                 _hd238532238562_
                                                 _hd238487239068_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238479238538_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g238479238538_))))))
                            (let () (declare (not safe)) (_g238479238538_)))))
                    (let () (declare (not safe)) (_g238479238538_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx237402_)
        (letrec* ((_bind-e__249224249225_
                   (lambda (_id238454_ _expr238455_ _compile?238456_)
                     (let ((__tmp251560
                            (let ()
                              (declare (not safe))
                              (cons _id238454_ '())))
                           (__tmp251558
                            (let ((__tmp251559
                                   (if _compile?238456_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr238455_))
                                       _expr238455_)))
                              (declare (not safe))
                              (cons __tmp251559 '()))))
                       (declare (not safe))
                       (cons __tmp251560 __tmp251558))))
                  (_bind-e__0__249226249227_
                   (lambda (_id238461_ _expr238462_)
                     (let ((_compile?238464_ '#t))
                       (declare (not safe))
                       (_bind-e__249224249225_
                        _id238461_
                        _expr238462_
                        _compile?238464_))))
                  (_bind-e237404_
                   (lambda _g251562_
                     (let ((_g251561_
                            (let ()
                              (declare (not safe))
                              (##length _g251562_))))
                       (cond ((let () (declare (not safe)) (##fx= _g251561_ 2))
                              (apply (lambda (_id238461_ _expr238462_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249226249227_
                                          _id238461_
                                          _expr238462_)))
                                     _g251562_))
                             ((let () (declare (not safe)) (##fx= _g251561_ 3))
                              (apply (lambda (_id238466_
                                              _expr238467_
                                              _compile?238468_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249224249225_
                                          _id238466_
                                          _expr238467_
                                          _compile?238468_)))
                                     _g251562_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g251562_))))))
                  (_compile-bindings237405_
                   (lambda (_bindings238038_)
                     (let _lp238040_ ((_rest238042_ _bindings238038_)
                                      (_lift1238043_ '())
                                      (_lift2238044_ '())
                                      (_bind238045_ '()))
                       (let* ((_rest238046238054_ _rest238042_)
                              (_else238048238062_
                               (lambda ()
                                 (values (reverse _lift1238043_)
                                         (reverse _lift2238044_)
                                         (reverse _bind238045_))))
                              (_K238050238441_
                               (lambda (_rest238065_ _hd238066_)
                                 (let* ((___stx250964250965_ _hd238066_)
                                        (_g238070238106_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx250964250965_)))))
                                   (let ((___kont250966250967_
                                          (lambda (_L238348_ _L238349_)
                                            (let* ((___stx250944250945_
                                                    _L238348_)
                                                   (_g238364238378_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx250944250945_)))))
                                              (let ((___kont250946250947_
                                                     (lambda (_L238426_)
                                                       (let ((__tmp251563
                                                              (let ((__tmp251564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249224249225_
                                _L238349_
                                _L238348_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp251564 _bind238045_))))
                 (declare (not safe))
                 (_lp238040_
                  _rest238065_
                  _lift1238043_
                  _lift2238044_
                  __tmp251563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250948250949_
                                                     (lambda (_L238391_)
                                                       (let ((_g251565_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx237402_
                         _L238349_
                         _L238391_
                         '#t))))
                 (begin
                   (let ((_g251566_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g251565_)
                                (##vector-length _g251565_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g251566_ 3)))
                         (error "Context expects 3 values" _g251566_)))
                   (let ((_ids238401_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251565_ 0)))
                         (_impls238402_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251565_ 1)))
                         (_clauses238403_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251565_ 2))))
                     (let* ((_g251567_
                             (for-each gx#core-bind-runtime! _ids238401_))
                            (_xbind238406_
                             (map _bind-e237404_ _ids238401_ _impls238402_))
                            (_expr*238408_
                             (let ((__tmp251569
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses238403_)))
                                   (__tmp251568
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp251569
                                __tmp251568)))
                            (_bind*238410_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249224249225_
                                _L238349_
                                _expr*238408_
                                '#f))))
                       (let ((__tmp251571
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L238349_)))
                             (__tmp251570
                              (map gxc#identifier-symbol _ids238401_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp251571
                          '" => "
                          __tmp251570))
                       (let ((__tmp251573
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2238044_ _xbind238406_)))
                             (__tmp251572
                              (let ()
                                (declare (not safe))
                                (cons _bind*238410_ _bind238045_))))
                         (declare (not safe))
                         (_lp238040_
                          _rest238065_
                          _lift1238043_
                          __tmp251573
                          __tmp251572)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match250955250956_
                                                       (lambda (_e238369238418_
                                                                _hd238368238421_
                                                                _tl238367238423_)
                                                         (let ((_L238426_
                                                                _tl238367238423_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L238426_))
                       (___kont250946250947_ _L238426_)
                       (___kont250948250949_ _tl238367238423_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx250944250945_))
                                                      (let ((_e238369238418_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx250944250945_))))
                (let ((_tl238367238423_
                       (let () (declare (not safe)) (##cdr _e238369238418_)))
                      (_hd238368238421_
                       (let () (declare (not safe)) (##car _e238369238418_))))
                  (___match250955250956_
                   _e238369238418_
                   _hd238368238421_
                   _tl238367238423_)))
              (let () (declare (not safe)) (_g238364238378_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont250968250969_
                                          (lambda (_L238176_ _L238177_)
                                            (let* ((_g238191238221_
                                                    (lambda (_g238192238218_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g238192238218_))))
                                                   (_g238190238316_
                                                    (lambda (_g238192238224_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g238192238224_))
                                                          (let ((_e238198238226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g238192238224_))))
                    (let ((_hd238197238229_
                           (let ()
                             (declare (not safe))
                             (##car _e238198238226_)))
                          (_tl238196238231_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238198238226_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238196238231_))
                          (let ((_e238201238234_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238196238231_))))
                            (let ((_hd238200238237_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238201238234_)))
                                  (_tl238199238239_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238201238234_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238200238237_))
                                  (let ((_e238204238242_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238200238237_))))
                                    (let ((_hd238203238245_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238204238242_)))
                                          (_tl238202238247_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238204238242_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd238203238245_))
                                          (let ((_e238207238250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd238203238245_))))
                                            (let ((_hd238206238253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238207238250_)))
                                                  (_tl238205238255_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238207238250_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238206238253_))
                                                  (let ((_e238210238258_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238206238253_))))
                                                    (let ((_hd238209238261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238210238258_)))
                                                          (_tl238208238263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238210238258_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238208238263_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238205238255_))
                      (let ((_e238213238266_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238205238255_))))
                        (let ((_hd238212238269_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238213238266_)))
                              (_tl238211238271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238213238266_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl238211238271_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238202238247_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238199238239_))
                                      (let ((_e238216238274_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238199238239_))))
                                        (let ((_hd238215238277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238216238274_)))
                                              (_tl238214238279_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238216238274_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238214238279_))
                                              ((lambda (_L238282_
                                                        _L238283_
                                                        _L238284_)
                                                 (let* ((_lambda-id238308_
                                                         (let ((__tmp251575
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L238177_)))
                       (__tmp251574 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp251575 __tmp251574)))
                (_lambda-id238310_
                 (let ((__tmp251576
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx237402_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id238308_ __tmp251576)))
                (_g251577_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id238310_)))
                (_new-case-lambda-expr238313_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L238282_
                    _L238284_
                    _lambda-id238310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp251579
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L238177_)))
                                                         (__tmp251578
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id238310_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp251579
                                                      '" => "
                                                      __tmp251578))
                                                   (let ((__tmp251582
                                                          (let ((__tmp251583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249224249225_
                            _L238177_
                            _new-case-lambda-expr238313_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp251583 _rest238065_)))
                 (__tmp251580
                  (let ((__tmp251581
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249226249227_
                            _lambda-id238310_
                            _L238283_))))
                    (declare (not safe))
                    (cons __tmp251581 _lift1238043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp238040_
                                                      __tmp251582
                                                      __tmp251580
                                                      _lift2238044_
                                                      _bind238045_))))
                                               _hd238215238277_
                                               _hd238212238269_
                                               _hd238209238261_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238191238221_
                                                 _g238192238224_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238191238221_ _g238192238224_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g238191238221_ _g238192238224_)))
                              (let ()
                                (declare (not safe))
                                (_g238191238221_ _g238192238224_)))))
                      (let ()
                        (declare (not safe))
                        (_g238191238221_ _g238192238224_)))
                  (let ()
                    (declare (not safe))
                    (_g238191238221_ _g238192238224_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238191238221_
                                                     _g238192238224_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238191238221_
                                             _g238192238224_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238191238221_ _g238192238224_)))))
                          (let ()
                            (declare (not safe))
                            (_g238191238221_ _g238192238224_)))))
                  (let ()
                    (declare (not safe))
                    (_g238191238221_ _g238192238224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g238190238316_ _L238176_))))
                                         (___kont250970250971_
                                          (lambda (_L238127_ _L238128_)
                                            (let ((__tmp251584
                                                   (let ((__tmp251585
                                                          (let ((__tmp251586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251587
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L238127_))))
                           (declare (not safe))
                           (cons __tmp251587 '()))))
                    (declare (not safe))
                    (cons _L238128_ __tmp251586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251585
                                                           _bind238045_))))
                                              (declare (not safe))
                                              (_lp238040_
                                               _rest238065_
                                               _lift1238043_
                                               _lift2238044_
                                               __tmp251584)))))
                                     (let* ((___match251015251016_
                                             (lambda (_e238087238152_
                                                      _hd238086238155_
                                                      _tl238085238157_
                                                      _e238090238160_
                                                      _hd238089238163_
                                                      _tl238088238165_
                                                      _e238093238168_
                                                      _hd238092238171_
                                                      _tl238091238173_)
                                               (let ((_L238176_
                                                      _hd238092238171_)
                                                     (_L238177_
                                                      _hd238089238163_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238177_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L238176_)))
                                                     (___kont250968250969_
                                                      _L238176_
                                                      _L238177_)
                                                     (___kont250970250971_
                                                      _hd238092238171_
                                                      _hd238086238155_)))))
                                            (___match250993250994_
                                             (lambda (_e238076238324_
                                                      _hd238075238327_
                                                      _tl238074238329_
                                                      _e238079238332_
                                                      _hd238078238335_
                                                      _tl238077238337_
                                                      _e238082238340_
                                                      _hd238081238343_
                                                      _tl238080238345_)
                                               (let ((_L238348_
                                                      _hd238081238343_)
                                                     (_L238349_
                                                      _hd238078238335_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238349_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L238348_)))
                                                     (___kont250966250967_
                                                      _L238348_
                                                      _L238349_)
                                                     (___match251015251016_
                                                      _e238076238324_
                                                      _hd238075238327_
                                                      _tl238074238329_
                                                      _e238079238332_
                                                      _hd238078238335_
                                                      _tl238077238337_
                                                      _e238082238340_
                                                      _hd238081238343_
                                                      _tl238080238345_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx250964250965_))
                                           (let ((_e238076238324_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx250964250965_))))
                                             (let ((_tl238074238329_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238076238324_)))
                                                   (_hd238075238327_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238076238324_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238075238327_))
                                                   (let ((_e238079238332_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238075238327_))))
                                                     (let ((_tl238077238337_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238079238332_)))
                                                           (_hd238078238335_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238079238332_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238077238337_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl238074238329_))
                       (let ((_e238082238340_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238074238329_))))
                         (let ((_tl238080238345_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238082238340_)))
                               (_hd238081238343_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238082238340_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238080238345_))
                               (___match250993250994_
                                _e238076238324_
                                _hd238075238327_
                                _tl238074238329_
                                _e238079238332_
                                _hd238078238335_
                                _tl238077238337_
                                _e238082238340_
                                _hd238081238343_
                                _tl238080238345_)
                               (let ()
                                 (declare (not safe))
                                 (_g238070238106_)))))
                       (let () (declare (not safe)) (_g238070238106_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238074238329_))
                       (let ((_e238101238119_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238074238329_))))
                         (let ((_tl238099238124_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238101238119_)))
                               (_hd238100238122_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238101238119_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238099238124_))
                               (___kont250970250971_
                                _hd238100238122_
                                _hd238075238327_)
                               (let ()
                                 (declare (not safe))
                                 (_g238070238106_)))))
                       (let () (declare (not safe)) (_g238070238106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238074238329_))
                                                       (let ((_e238101238119_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238074238329_))))
                 (let ((_tl238099238124_
                        (let () (declare (not safe)) (##cdr _e238101238119_)))
                       (_hd238100238122_
                        (let () (declare (not safe)) (##car _e238101238119_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238099238124_))
                       (___kont250970250971_ _hd238100238122_ _hd238075238327_)
                       (let () (declare (not safe)) (_g238070238106_)))))
               (let () (declare (not safe)) (_g238070238106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g238070238106_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest238046238054_))
                             (let ((_hd238051238444_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest238046238054_)))
                                   (_tl238052238446_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest238046238054_))))
                               (let* ((_hd238449_ _hd238051238444_)
                                      (_rest238451_ _tl238052238446_))
                                 (declare (not safe))
                                 (_K238050238441_ _rest238451_ _hd238449_)))
                             (let ()
                               (declare (not safe))
                               (_else238048238062_)))))))
                  (_lift-kw-lambda?237406_
                   (lambda (_bind237962_)
                     (let* ((___stx251032251033_ _bind237962_)
                            (_g237965237982_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx251032251033_)))))
                       (let ((___kont251034251035_
                              (lambda (_L238018_ _L238019_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L238019_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L238018_))
                                    '#f)))
                             (___kont251036251037_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx251032251033_))
                             (let ((_e237971237994_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx251032251033_))))
                               (let ((_tl237969237999_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e237971237994_)))
                                     (_hd237970237997_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e237971237994_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd237970237997_))
                                     (let ((_e237974238002_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd237970237997_))))
                                       (let ((_tl237972238007_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e237974238002_)))
                                             (_hd237973238005_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e237974238002_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl237972238007_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl237969237999_))
                                                 (let ((_e237977238010_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl237969237999_))))
                                                   (let ((_tl237975238015_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e237977238010_)))
                                                         (_hd237976238013_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e237977238010_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl237975238015_))
                                                         (___kont251034251035_
                                                          _hd237976238013_
                                                          _hd237973238005_)
                                                         (___kont251036251037_))))
                                                 (___kont251036251037_))
                                             (___kont251036251037_))))
                                     (___kont251036251037_))))
                             (___kont251036251037_))))))
                  (_lift-kw-lambda-bindings237407_
                   (lambda (_bindings237574_)
                     (let _lp237576_ ((_rest237578_ _bindings237574_)
                                      (_lift1237579_ '())
                                      (_lift2237580_ '())
                                      (_bind237581_ '()))
                       (let* ((_rest237582237590_ _rest237578_)
                              (_else237584237598_
                               (lambda ()
                                 (values (reverse _lift1237579_)
                                         (reverse _lift2237580_)
                                         (reverse _bind237581_))))
                              (_K237586237950_
                               (lambda (_rest237601_ _hd237602_)
                                 (let* ((___stx251062251063_ _hd237602_)
                                        (_g237605237630_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx251062251063_)))))
                                   (let ((___kont251064251065_
                                          (lambda (_L237700_ _L237701_)
                                            (let* ((_g237715237768_
                                                    (lambda (_g237716237765_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237716237765_))))
                                                   (_g237714237944_
                                                    (lambda (_g237716237771_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237716237771_))
                                                          (let ((_e237724237773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237716237771_))))
                    (let ((_hd237723237776_
                           (let ()
                             (declare (not safe))
                             (##car _e237724237773_)))
                          (_tl237722237778_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237724237773_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237722237778_))
                          (let ((_e237727237781_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237722237778_))))
                            (let ((_hd237726237784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237727237781_)))
                                  (_tl237725237786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237727237781_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237726237784_))
                                  (let ((_e237730237789_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237726237784_))))
                                    (let ((_hd237729237792_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237730237789_)))
                                          (_tl237728237794_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237730237789_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237729237792_))
                                          (let ((_e237733237797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237729237792_))))
                                            (let ((_hd237732237800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237733237797_)))
                                                  (_tl237731237802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237733237797_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237732237800_))
                                                  (let ((_e237736237805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237732237800_))))
                                                    (let ((_hd237735237808_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237736237805_)))
                                                          (_tl237734237810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237736237805_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237734237810_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237731237802_))
                      (let ((_e237739237813_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237731237802_))))
                        (let ((_hd237738237816_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237739237813_)))
                              (_tl237737237818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237739237813_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237738237816_))
                              (let ((_e237742237821_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237738237816_))))
                                (let ((_hd237741237824_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237742237821_)))
                                      (_tl237740237826_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237742237821_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237740237826_))
                                      (let ((_e237745237829_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237740237826_))))
                                        (let ((_hd237744237832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237745237829_)))
                                              (_tl237743237834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237745237829_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237744237832_))
                                              (let ((_e237748237837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237744237832_))))
                                                (let ((_hd237747237840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237748237837_)))
                                                      (_tl237746237842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237748237837_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd237747237840_))
                                                      (let ((_e237751237845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd237747237840_))))
                (let ((_hd237750237848_
                       (let () (declare (not safe)) (##car _e237751237845_)))
                      (_tl237749237850_
                       (let () (declare (not safe)) (##cdr _e237751237845_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237750237848_))
                      (let ((_e237754237853_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237750237848_))))
                        (let ((_hd237753237856_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237754237853_)))
                              (_tl237752237858_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237754237853_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237752237858_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237749237850_))
                                  (let ((_e237757237861_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237749237850_))))
                                    (let ((_hd237756237864_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237757237861_)))
                                          (_tl237755237866_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237757237861_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237755237866_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237746237842_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237743237834_))
                                                  (let ((_e237760237869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237743237834_))))
                                                    (let ((_hd237759237872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237760237869_)))
                                                          (_tl237758237874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237760237869_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237758237874_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl237737237818_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237728237794_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237725237786_))
                              (let ((_e237763237877_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237725237786_))))
                                (let ((_hd237762237880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237763237877_)))
                                      (_tl237761237882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237763237877_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237761237882_))
                                      ((lambda (_L237885_
                                                _L237886_
                                                _L237887_
                                                _L237888_
                                                _L237889_)
                                         (let* ((_get-kws-id237929_
                                                 (let ((__tmp251589
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237701_)))
                                                       (__tmp251588
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251589
                                                    __tmp251588)))
                                                (_get-kws-id237931_
                                                 (let ((__tmp251590
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237402_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id237929_
                                                    __tmp251590)))
                                                (_main-id237933_
                                                 (let ((__tmp251592
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237701_)))
                                                       (__tmp251591
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251592
                                                    __tmp251591)))
                                                (_main-id237935_
                                                 (let ((__tmp251593
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237402_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id237933_
                                                    __tmp251593)))
                                                (_g251594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id237931_)))
                                                (_g251595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id237935_)))
                                                (_new-kw-dispatch237939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237885_
                                                    _L237889_
                                                    _get-kws-id237931_)))
                                                (_new-get-kws237941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237886_
                                                    _L237888_
                                                    _main-id237935_))))
                                           (let ((__tmp251598
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L237701_)))
                                                 (__tmp251597
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id237931_)))
                                                 (__tmp251596
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id237935_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp251598
                                              '" => "
                                              __tmp251597
                                              '" => "
                                              __tmp251596))
                                           (let ((__tmp251603
                                                  (let ((__tmp251604
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249224249225_
                                                            _main-id237935_
                                                            _L237887_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251604
                                                          _lift1237579_)))
                                                 (__tmp251601
                                                  (let ((__tmp251602
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249224249225_
                                                            _get-kws-id237931_
                                                            _new-get-kws237941_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251602
                                                          _lift2237580_)))
                                                 (__tmp251599
                                                  (let ((__tmp251600
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249224249225_
                                                            _L237701_
                                                            _new-kw-dispatch237939_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251600
                                                          _bind237581_))))
                                             (declare (not safe))
                                             (_lp237576_
                                              _rest237601_
                                              __tmp251603
                                              __tmp251601
                                              __tmp251599))))
                                       _hd237762237880_
                                       _hd237759237872_
                                       _hd237756237864_
                                       _hd237753237856_
                                       _hd237735237808_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237715237768_ _g237716237771_)))))
                              (let ()
                                (declare (not safe))
                                (_g237715237768_ _g237716237771_)))
                          (let ()
                            (declare (not safe))
                            (_g237715237768_ _g237716237771_)))
                      (let ()
                        (declare (not safe))
                        (_g237715237768_ _g237716237771_)))
                  (let ()
                    (declare (not safe))
                    (_g237715237768_ _g237716237771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237715237768_
                                                     _g237716237771_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237715237768_
                                                 _g237716237771_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g237715237768_
                                             _g237716237771_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237715237768_ _g237716237771_)))
                              (let ()
                                (declare (not safe))
                                (_g237715237768_ _g237716237771_)))))
                      (let ()
                        (declare (not safe))
                        (_g237715237768_ _g237716237771_)))))
              (let ()
                (declare (not safe))
                (_g237715237768_ _g237716237771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237715237768_
                                                 _g237716237771_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237715237768_ _g237716237771_)))))
                              (let ()
                                (declare (not safe))
                                (_g237715237768_ _g237716237771_)))))
                      (let ()
                        (declare (not safe))
                        (_g237715237768_ _g237716237771_)))
                  (let ()
                    (declare (not safe))
                    (_g237715237768_ _g237716237771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237715237768_
                                                     _g237716237771_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237715237768_
                                             _g237716237771_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237715237768_ _g237716237771_)))))
                          (let ()
                            (declare (not safe))
                            (_g237715237768_ _g237716237771_)))))
                  (let ()
                    (declare (not safe))
                    (_g237715237768_ _g237716237771_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237714237944_ _L237700_))))
                                         (___kont251066251067_
                                          (lambda (_L237651_ _L237652_)
                                            (let ((__tmp251605
                                                   (let ((__tmp251606
                                                          (let ((__tmp251607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L237651_ '()))))
                    (declare (not safe))
                    (cons _L237652_ __tmp251607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251606
                                                           _bind237581_))))
                                              (declare (not safe))
                                              (_lp237576_
                                               _rest237601_
                                               _lift1237579_
                                               _lift2237580_
                                               __tmp251605)))))
                                     (let ((___match251089251090_
                                            (lambda (_e237611237676_
                                                     _hd237610237679_
                                                     _tl237609237681_
                                                     _e237614237684_
                                                     _hd237613237687_
                                                     _tl237612237689_
                                                     _e237617237692_
                                                     _hd237616237695_
                                                     _tl237615237697_)
                                              (let ((_L237700_
                                                     _hd237616237695_)
                                                    (_L237701_
                                                     _hd237613237687_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L237701_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L237700_)))
                                                    (___kont251064251065_
                                                     _L237700_
                                                     _L237701_)
                                                    (___kont251066251067_
                                                     _hd237616237695_
                                                     _hd237610237679_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251062251063_))
                                           (let ((_e237611237676_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251062251063_))))
                                             (let ((_tl237609237681_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237611237676_)))
                                                   (_hd237610237679_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237611237676_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237610237679_))
                                                   (let ((_e237614237684_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237610237679_))))
                                                     (let ((_tl237612237689_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237614237684_)))
                                                           (_hd237613237687_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237614237684_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237612237689_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237609237681_))
                       (let ((_e237617237692_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237609237681_))))
                         (let ((_tl237615237697_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237617237692_)))
                               (_hd237616237695_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237617237692_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237615237697_))
                               (___match251089251090_
                                _e237611237676_
                                _hd237610237679_
                                _tl237609237681_
                                _e237614237684_
                                _hd237613237687_
                                _tl237612237689_
                                _e237617237692_
                                _hd237616237695_
                                _tl237615237697_)
                               (let ()
                                 (declare (not safe))
                                 (_g237605237630_)))))
                       (let () (declare (not safe)) (_g237605237630_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl237609237681_))
                       (let ((_e237625237643_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237609237681_))))
                         (let ((_tl237623237648_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237625237643_)))
                               (_hd237624237646_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237625237643_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237623237648_))
                               (___kont251066251067_
                                _hd237624237646_
                                _hd237610237679_)
                               (let ()
                                 (declare (not safe))
                                 (_g237605237630_)))))
                       (let () (declare (not safe)) (_g237605237630_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237609237681_))
                                                       (let ((_e237625237643_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237609237681_))))
                 (let ((_tl237623237648_
                        (let () (declare (not safe)) (##cdr _e237625237643_)))
                       (_hd237624237646_
                        (let () (declare (not safe)) (##car _e237625237643_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237623237648_))
                       (___kont251066251067_ _hd237624237646_ _hd237610237679_)
                       (let () (declare (not safe)) (_g237605237630_)))))
               (let () (declare (not safe)) (_g237605237630_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g237605237630_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest237582237590_))
                             (let ((_hd237587237953_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest237582237590_)))
                                   (_tl237588237955_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest237582237590_))))
                               (let* ((_hd237958_ _hd237587237953_)
                                      (_rest237960_ _tl237588237955_))
                                 (declare (not safe))
                                 (_K237586237950_ _rest237960_ _hd237958_)))
                             (let ()
                               (declare (not safe))
                               (_else237584237598_))))))))
          (let* ((___stx251106251107_ _stx237402_)
                 (_g237410237436_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251106251107_)))))
            (let ((___kont251108251109_
                   (lambda (_L237496_ _L237497_)
                     (let ((__tmp251609
                            (lambda ()
                              (if (let ((__tmp251636
                                         (let ((__tmp251637
                                                (lambda (_g237525237528_
                                                         _g237526237530_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g237525237528_
                                                          _g237526237530_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp251637
                                                   '()
                                                   _L237497_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?237406_
                                            __tmp251636))
                                  (let ((_g251623_
                                         (let ((__tmp251625
                                                (let ((__tmp251626
                                                       (lambda (_g237532237535_
                                                                _g237533237537_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237532237535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237533237537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp251626
                                                          '()
                                                          _L237497_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings237407_
                                            __tmp251625))))
                                    (begin
                                      (let ((_g251624_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g251623_)
                                                   (##vector-length _g251623_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g251624_ 3)))
                                            (error "Context expects 3 values"
                                                   _g251624_)))
                                      (let ((_lift1237540_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251623_ 0)))
                                            (_lift2237541_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251623_ 1)))
                                            (_hd237542_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251623_ 2))))
                                        (let* ((_expr237544_
                                                (let ((__tmp251627
                                                       (let ((__tmp251628
                                                              (let ((__tmp251629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L237496_ '()))))
                        (declare (not safe))
                        (cons _hd237542_ __tmp251629))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251627
                                                   _stx237402_)))
                                               (_expr237546_
                                                (let ((__tmp251630
                                                       (let ((__tmp251631
                                                              (let ((__tmp251632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237544_ '()))))
                        (declare (not safe))
                        (cons _lift2237541_ __tmp251632))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251630
                                                   _stx237402_)))
                                               (_expr237548_
                                                (let ((__tmp251633
                                                       (let ((__tmp251634
                                                              (let ((__tmp251635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237546_ '()))))
                        (declare (not safe))
                        (cons _lift1237540_ __tmp251635))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251633
                                                   _stx237402_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr237548_))))))
                                  (let ((_g251610_
                                         (let ((__tmp251612
                                                (let ((__tmp251613
                                                       (lambda (_g237550237553_
                                                                _g237551237555_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237550237553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237551237555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp251613
                                                          '()
                                                          _L237497_))))
                                           (declare (not safe))
                                           (_compile-bindings237405_
                                            __tmp251612))))
                                    (begin
                                      (let ((_g251611_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g251610_)
                                                   (##vector-length _g251610_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g251611_ 3)))
                                            (error "Context expects 3 values"
                                                   _g251611_)))
                                      (let ((_lift1237558_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251610_ 0)))
                                            (_lift2237559_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251610_ 1)))
                                            (_hd237560_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251610_ 2))))
                                        (let* ((_body237562_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L237496_)))
                                               (_expr237564_
                                                (let ((__tmp251614
                                                       (let ((__tmp251615
                                                              (let ((__tmp251616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body237562_ '()))))
                        (declare (not safe))
                        (cons _hd237560_ __tmp251616))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251614
                                                   _stx237402_)))
                                               (_expr237566_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2237559_))
                                                    _expr237564_
                                                    (let ((__tmp251617
                                                           (let ((__tmp251618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251619
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr237564_ '()))))
                            (declare (not safe))
                            (cons _lift2237559_ __tmp251619))))
                     (declare (not safe))
                     (cons '%#let-values __tmp251618))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251617 _stx237402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr237568_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1237558_))
                                                    _expr237566_
                                                    (let ((__tmp251620
                                                           (let ((__tmp251621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251622
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr237566_ '()))))
                            (declare (not safe))
                            (cons _lift1237558_ __tmp251622))))
                     (declare (not safe))
                     (cons '%#let-values __tmp251621))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251620 _stx237402_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr237568_)))))))
                           (__tmp251608
                            (let ((__obj251312
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251312)
                              __obj251312)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp251609
                        gx#current-expander-context
                        __tmp251608))))
                  (___kont251112251113_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx237402_)))))
              (let ((___match251133251134_
                     (lambda (_e237416237448_
                              _hd237415237451_
                              _tl237414237453_
                              _e237419237456_
                              _hd237418237459_
                              _tl237417237461_
                              ___splice251110251111_
                              _target237420237464_
                              _tl237422237466_)
                       (letrec ((_loop237423237469_
                                 (lambda (_hd237421237472_ _bind237427237474_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237421237472_))
                                       (let ((_e237424237477_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237421237472_))))
                                         (let ((_lp-tl237426237482_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237424237477_)))
                                               (_lp-hd237425237480_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237424237477_))))
                                           (let ((__tmp251640
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd237425237480_
                                                          _bind237427237474_))))
                                             (declare (not safe))
                                             (_loop237423237469_
                                              _lp-tl237426237482_
                                              __tmp251640))))
                                       (let ((_bind237428237485_
                                              (reverse _bind237427237474_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl237417237461_))
                                             (let ((_e237431237488_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl237417237461_))))
                                               (let ((_tl237429237493_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e237431237488_)))
                                                     (_hd237430237491_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e237431237488_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl237429237493_))
                                                     (let ((_L237496_
                                                            _hd237430237491_)
                                                           (_L237497_
                                                            _bind237428237485_))
                                                       (if (let ((__tmp251638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251639
                                 (lambda (_g237517237520_ _g237518237522_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g237517237520_ _g237518237522_)))))
                            (declare (not safe))
                            (foldr1 __tmp251639 '() _L237497_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp251638))
                   (___kont251108251109_ _L237496_ _L237497_)
                   (___kont251112251113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251112251113_))))
                                             (___kont251112251113_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop237423237469_ _target237420237464_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251106251107_))
                    (let ((_e237416237448_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251106251107_))))
                      (let ((_tl237414237453_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237416237448_)))
                            (_hd237415237451_
                             (let ()
                               (declare (not safe))
                               (##car _e237416237448_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237414237453_))
                            (let ((_e237419237456_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237414237453_))))
                              (let ((_tl237417237461_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237419237456_)))
                                    (_hd237418237459_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237419237456_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd237418237459_))
                                    (let ((___splice251110251111_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd237418237459_
                                              '0))))
                                      (let ((_tl237422237466_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251110251111_
                                                '1)))
                                            (_target237420237464_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251110251111_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237422237466_))
                                            (___match251133251134_
                                             _e237416237448_
                                             _hd237415237451_
                                             _tl237414237453_
                                             _e237419237456_
                                             _hd237418237459_
                                             _tl237417237461_
                                             ___splice251110251111_
                                             _target237420237464_
                                             _tl237422237466_)
                                            (___kont251112251113_))))
                                    (___kont251112251113_))))
                            (___kont251112251113_))))
                    (___kont251112251113_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx236546_)
        (letrec* ((_bind-e__249229249230_
                   (lambda (_id237386_ _expr237387_ _compile?237388_)
                     (let ((__tmp251643
                            (let ()
                              (declare (not safe))
                              (cons _id237386_ '())))
                           (__tmp251641
                            (let ((__tmp251642
                                   (if _compile?237388_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr237387_))
                                       _expr237387_)))
                              (declare (not safe))
                              (cons __tmp251642 '()))))
                       (declare (not safe))
                       (cons __tmp251643 __tmp251641))))
                  (_bind-e__0__249231249232_
                   (lambda (_id237393_ _expr237394_)
                     (let ((_compile?237396_ '#t))
                       (declare (not safe))
                       (_bind-e__249229249230_
                        _id237393_
                        _expr237394_
                        _compile?237396_))))
                  (_bind-e236548_
                   (lambda _g251645_
                     (let ((_g251644_
                            (let ()
                              (declare (not safe))
                              (##length _g251645_))))
                       (cond ((let () (declare (not safe)) (##fx= _g251644_ 2))
                              (apply (lambda (_id237393_ _expr237394_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249231249232_
                                          _id237393_
                                          _expr237394_)))
                                     _g251645_))
                             ((let () (declare (not safe)) (##fx= _g251644_ 3))
                              (apply (lambda (_id237398_
                                              _expr237399_
                                              _compile?237400_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249229249230_
                                          _id237398_
                                          _expr237399_
                                          _compile?237400_)))
                                     _g251645_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g251645_))))))
                  (_compile-bindings236549_
                   (lambda (_rest236684_)
                     (let _lp236686_ ((_rest236688_ _rest236684_)
                                      (_bind236689_ '()))
                       (let* ((_rest236690236698_ _rest236688_)
                              (_else236692236706_
                               (lambda () (reverse _bind236689_)))
                              (_K236694237373_
                               (lambda (_rest236709_ _hd236710_)
                                 (let* ((___stx251156251157_ _hd236710_)
                                        (_g236715236762_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx251156251157_)))))
                                   (let ((___kont251158251159_
                                          (lambda (_L237280_ _L237281_)
                                            (let* ((___stx251136251137_
                                                    _L237280_)
                                                   (_g237296237310_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251136251137_)))))
                                              (let ((___kont251138251139_
                                                     (lambda (_L237358_)
                                                       (let ((__tmp251646
                                                              (let ((__tmp251647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249229249230_
                                _L237281_
                                _L237280_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp251647 _bind236689_))))
                 (declare (not safe))
                 (_lp236686_ _rest236709_ __tmp251646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251140251141_
                                                     (lambda (_L237323_)
                                                       (let ((_g251648_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx236546_
                         _L237281_
                         _L237323_
                         '#t))))
                 (begin
                   (let ((_g251649_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g251648_)
                                (##vector-length _g251648_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g251649_ 3)))
                         (error "Context expects 3 values" _g251649_)))
                   (let ((_ids237333_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251648_ 0)))
                         (_impls237334_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251648_ 1)))
                         (_clauses237335_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251648_ 2))))
                     (let* ((_g251650_
                             (for-each gx#core-bind-runtime! _ids237333_))
                            (_xbind237338_
                             (map _bind-e236548_ _ids237333_ _impls237334_))
                            (_expr*237340_
                             (let ((__tmp251652
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses237335_)))
                                   (__tmp251651
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp251652
                                __tmp251651)))
                            (_bind*237342_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249229249230_
                                _L237281_
                                _expr*237340_
                                '#f))))
                       (let ((__tmp251654
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L237281_)))
                             (__tmp251653
                              (map gxc#identifier-symbol _ids237333_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp251654
                          '" => "
                          __tmp251653))
                       (let ((__tmp251655
                              (let ((__tmp251656
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind236689_
                                               _xbind237338_))))
                                (declare (not safe))
                                (cons _bind*237342_ __tmp251656))))
                         (declare (not safe))
                         (_lp236686_ _rest236709_ __tmp251655)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match251147251148_
                                                       (lambda (_e237301237350_
                                                                _hd237300237353_
                                                                _tl237299237355_)
                                                         (let ((_L237358_
                                                                _tl237299237355_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L237358_))
                       (___kont251138251139_ _L237358_)
                       (___kont251140251141_ _tl237299237355_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx251136251137_))
                                                      (let ((_e237301237350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx251136251137_))))
                (let ((_tl237299237355_
                       (let () (declare (not safe)) (##cdr _e237301237350_)))
                      (_hd237300237353_
                       (let () (declare (not safe)) (##car _e237301237350_))))
                  (___match251147251148_
                   _e237301237350_
                   _hd237300237353_
                   _tl237299237355_)))
              (let () (declare (not safe)) (_g237296237310_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont251160251161_
                                          (lambda (_L237108_ _L237109_)
                                            (let* ((_g237123237153_
                                                    (lambda (_g237124237150_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237124237150_))))
                                                   (_g237122237248_
                                                    (lambda (_g237124237156_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237124237156_))
                                                          (let ((_e237130237158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237124237156_))))
                    (let ((_hd237129237161_
                           (let ()
                             (declare (not safe))
                             (##car _e237130237158_)))
                          (_tl237128237163_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237130237158_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237128237163_))
                          (let ((_e237133237166_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237128237163_))))
                            (let ((_hd237132237169_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237133237166_)))
                                  (_tl237131237171_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237133237166_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237132237169_))
                                  (let ((_e237136237174_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237132237169_))))
                                    (let ((_hd237135237177_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237136237174_)))
                                          (_tl237134237179_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237136237174_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237135237177_))
                                          (let ((_e237139237182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237135237177_))))
                                            (let ((_hd237138237185_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237139237182_)))
                                                  (_tl237137237187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237139237182_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237138237185_))
                                                  (let ((_e237142237190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237138237185_))))
                                                    (let ((_hd237141237193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237142237190_)))
                                                          (_tl237140237195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237142237190_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237140237195_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237137237187_))
                      (let ((_e237145237198_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237137237187_))))
                        (let ((_hd237144237201_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237145237198_)))
                              (_tl237143237203_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237145237198_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237143237203_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237134237179_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237131237171_))
                                      (let ((_e237148237206_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237131237171_))))
                                        (let ((_hd237147237209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237148237206_)))
                                              (_tl237146237211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237148237206_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237146237211_))
                                              ((lambda (_L237214_
                                                        _L237215_
                                                        _L237216_)
                                                 (let* ((_lambda-id237240_
                                                         (let ((__tmp251658
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L237109_)))
                       (__tmp251657 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp251658 __tmp251657)))
                (_lambda-id237242_
                 (let ((__tmp251659
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx236546_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id237240_ __tmp251659)))
                (_g251660_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id237242_)))
                (_new-case-lambda-expr237245_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L237214_
                    _L237216_
                    _lambda-id237242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp251662
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L237109_)))
                                                         (__tmp251661
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id237242_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp251662
                                                      '" => "
                                                      __tmp251661))
                                                   (let ((__tmp251665
                                                          (let ((__tmp251666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249229249230_
                            _L237109_
                            _new-case-lambda-expr237245_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp251666 _rest236709_)))
                 (__tmp251663
                  (let ((__tmp251664
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249231249232_
                            _lambda-id237242_
                            _L237215_))))
                    (declare (not safe))
                    (cons __tmp251664 _bind236689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp236686_
                                                      __tmp251665
                                                      __tmp251663))))
                                               _hd237147237209_
                                               _hd237144237201_
                                               _hd237141237193_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237123237153_
                                                 _g237124237156_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237123237153_ _g237124237156_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g237123237153_ _g237124237156_)))
                              (let ()
                                (declare (not safe))
                                (_g237123237153_ _g237124237156_)))))
                      (let ()
                        (declare (not safe))
                        (_g237123237153_ _g237124237156_)))
                  (let ()
                    (declare (not safe))
                    (_g237123237153_ _g237124237156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237123237153_
                                                     _g237124237156_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237123237153_
                                             _g237124237156_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237123237153_ _g237124237156_)))))
                          (let ()
                            (declare (not safe))
                            (_g237123237153_ _g237124237156_)))))
                  (let ()
                    (declare (not safe))
                    (_g237123237153_ _g237124237156_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237122237248_ _L237108_))))
                                         (___kont251162251163_
                                          (lambda (_L236832_ _L236833_)
                                            (let* ((_g236847236900_
                                                    (lambda (_g236848236897_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g236848236897_))))
                                                   (_g236846237076_
                                                    (lambda (_g236848236903_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g236848236903_))
                                                          (let ((_e236856236905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g236848236903_))))
                    (let ((_hd236855236908_
                           (let ()
                             (declare (not safe))
                             (##car _e236856236905_)))
                          (_tl236854236910_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236856236905_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236854236910_))
                          (let ((_e236859236913_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236854236910_))))
                            (let ((_hd236858236916_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236859236913_)))
                                  (_tl236857236918_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236859236913_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236858236916_))
                                  (let ((_e236862236921_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236858236916_))))
                                    (let ((_hd236861236924_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236862236921_)))
                                          (_tl236860236926_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236862236921_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd236861236924_))
                                          (let ((_e236865236929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd236861236924_))))
                                            (let ((_hd236864236932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236865236929_)))
                                                  (_tl236863236934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236865236929_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236864236932_))
                                                  (let ((_e236868236937_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236864236932_))))
                                                    (let ((_hd236867236940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236868236937_)))
                                                          (_tl236866236942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236868236937_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236866236942_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236863236934_))
                      (let ((_e236871236945_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236863236934_))))
                        (let ((_hd236870236948_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236871236945_)))
                              (_tl236869236950_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236871236945_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236870236948_))
                              (let ((_e236874236953_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236870236948_))))
                                (let ((_hd236873236956_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236874236953_)))
                                      (_tl236872236958_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236874236953_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236872236958_))
                                      (let ((_e236877236961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236872236958_))))
                                        (let ((_hd236876236964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236877236961_)))
                                              (_tl236875236966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236877236961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd236876236964_))
                                              (let ((_e236880236969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd236876236964_))))
                                                (let ((_hd236879236972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236880236969_)))
                                                      (_tl236878236974_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236880236969_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236879236972_))
                                                      (let ((_e236883236977_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd236879236972_))))
                (let ((_hd236882236980_
                       (let () (declare (not safe)) (##car _e236883236977_)))
                      (_tl236881236982_
                       (let () (declare (not safe)) (##cdr _e236883236977_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236882236980_))
                      (let ((_e236886236985_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236882236980_))))
                        (let ((_hd236885236988_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236886236985_)))
                              (_tl236884236990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236886236985_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236884236990_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236881236982_))
                                  (let ((_e236889236993_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236881236982_))))
                                    (let ((_hd236888236996_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236889236993_)))
                                          (_tl236887236998_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236889236993_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236887236998_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236878236974_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236875236966_))
                                                  (let ((_e236892237001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236875236966_))))
                                                    (let ((_hd236891237004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236892237001_)))
                                                          (_tl236890237006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236892237001_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236890237006_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl236869236950_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236860236926_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236857236918_))
                              (let ((_e236895237009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236857236918_))))
                                (let ((_hd236894237012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236895237009_)))
                                      (_tl236893237014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236895237009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236893237014_))
                                      ((lambda (_L237017_
                                                _L237018_
                                                _L237019_
                                                _L237020_
                                                _L237021_)
                                         (let* ((_get-kws-id237061_
                                                 (let ((__tmp251668
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236833_)))
                                                       (__tmp251667
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251668
                                                    __tmp251667)))
                                                (_get-kws-id237063_
                                                 (let ((__tmp251669
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236546_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id237061_
                                                    __tmp251669)))
                                                (_main-id237065_
                                                 (let ((__tmp251671
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236833_)))
                                                       (__tmp251670
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251671
                                                    __tmp251670)))
                                                (_main-id237067_
                                                 (let ((__tmp251672
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236546_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id237065_
                                                    __tmp251672)))
                                                (_g251673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id237063_)))
                                                (_g251674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id237067_)))
                                                (_new-kw-dispatch237071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237017_
                                                    _L237021_
                                                    _get-kws-id237063_)))
                                                (_new-get-kws237073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237018_
                                                    _L237020_
                                                    _main-id237067_))))
                                           (let ((__tmp251677
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L236833_)))
                                                 (__tmp251676
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id237063_)))
                                                 (__tmp251675
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id237067_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp251677
                                              '" => "
                                              __tmp251676
                                              '" => "
                                              __tmp251675))
                                           (let ((__tmp251678
                                                  (let ((__tmp251683
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249229249230_
                                                            _main-id237067_
                                                            _L237019_
                                                            '#f)))
                                                        (__tmp251679
                                                         (let ((__tmp251682
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__249229249230_
                           _get-kws-id237063_
                           _new-get-kws237073_
                           '#f)))
                       (__tmp251680
                        (let ((__tmp251681
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__249229249230_
                                  _L236833_
                                  _new-kw-dispatch237071_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp251681 _rest236709_))))
                   (declare (not safe))
                   (cons __tmp251682 __tmp251680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251683
                                                          __tmp251679))))
                                             (declare (not safe))
                                             (_lp236686_
                                              __tmp251678
                                              _bind236689_))))
                                       _hd236894237012_
                                       _hd236891237004_
                                       _hd236888236996_
                                       _hd236885236988_
                                       _hd236867236940_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236847236900_ _g236848236903_)))))
                              (let ()
                                (declare (not safe))
                                (_g236847236900_ _g236848236903_)))
                          (let ()
                            (declare (not safe))
                            (_g236847236900_ _g236848236903_)))
                      (let ()
                        (declare (not safe))
                        (_g236847236900_ _g236848236903_)))
                  (let ()
                    (declare (not safe))
                    (_g236847236900_ _g236848236903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236847236900_
                                                     _g236848236903_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g236847236900_
                                                 _g236848236903_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g236847236900_
                                             _g236848236903_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236847236900_ _g236848236903_)))
                              (let ()
                                (declare (not safe))
                                (_g236847236900_ _g236848236903_)))))
                      (let ()
                        (declare (not safe))
                        (_g236847236900_ _g236848236903_)))))
              (let ()
                (declare (not safe))
                (_g236847236900_ _g236848236903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236847236900_
                                                 _g236848236903_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236847236900_ _g236848236903_)))))
                              (let ()
                                (declare (not safe))
                                (_g236847236900_ _g236848236903_)))))
                      (let ()
                        (declare (not safe))
                        (_g236847236900_ _g236848236903_)))
                  (let ()
                    (declare (not safe))
                    (_g236847236900_ _g236848236903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236847236900_
                                                     _g236848236903_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236847236900_
                                             _g236848236903_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236847236900_ _g236848236903_)))))
                          (let ()
                            (declare (not safe))
                            (_g236847236900_ _g236848236903_)))))
                  (let ()
                    (declare (not safe))
                    (_g236847236900_ _g236848236903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g236846237076_ _L236832_))))
                                         (___kont251164251165_
                                          (lambda (_L236783_ _L236784_)
                                            (let ((__tmp251684
                                                   (let ((__tmp251685
                                                          (let ((__tmp251686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251687
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L236783_))))
                           (declare (not safe))
                           (cons __tmp251687 '()))))
                    (declare (not safe))
                    (cons _L236784_ __tmp251686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251685
                                                           _bind236689_))))
                                              (declare (not safe))
                                              (_lp236686_
                                               _rest236709_
                                               __tmp251684)))))
                                     (let* ((___match251231251232_
                                             (lambda (_e236743236808_
                                                      _hd236742236811_
                                                      _tl236741236813_
                                                      _e236746236816_
                                                      _hd236745236819_
                                                      _tl236744236821_
                                                      _e236749236824_
                                                      _hd236748236827_
                                                      _tl236747236829_)
                                               (let ((_L236832_
                                                      _hd236748236827_)
                                                     (_L236833_
                                                      _hd236745236819_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236833_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L236832_)))
                                                     (___kont251162251163_
                                                      _L236832_
                                                      _L236833_)
                                                     (___kont251164251165_
                                                      _hd236748236827_
                                                      _hd236742236811_)))))
                                            (___match251209251210_
                                             (lambda (_e236732237084_
                                                      _hd236731237087_
                                                      _tl236730237089_
                                                      _e236735237092_
                                                      _hd236734237095_
                                                      _tl236733237097_
                                                      _e236738237100_
                                                      _hd236737237103_
                                                      _tl236736237105_)
                                               (let ((_L237108_
                                                      _hd236737237103_)
                                                     (_L237109_
                                                      _hd236734237095_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237109_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L237108_)))
                                                     (___kont251160251161_
                                                      _L237108_
                                                      _L237109_)
                                                     (___match251231251232_
                                                      _e236732237084_
                                                      _hd236731237087_
                                                      _tl236730237089_
                                                      _e236735237092_
                                                      _hd236734237095_
                                                      _tl236733237097_
                                                      _e236738237100_
                                                      _hd236737237103_
                                                      _tl236736237105_)))))
                                            (___match251187251188_
                                             (lambda (_e236721237256_
                                                      _hd236720237259_
                                                      _tl236719237261_
                                                      _e236724237264_
                                                      _hd236723237267_
                                                      _tl236722237269_
                                                      _e236727237272_
                                                      _hd236726237275_
                                                      _tl236725237277_)
                                               (let ((_L237280_
                                                      _hd236726237275_)
                                                     (_L237281_
                                                      _hd236723237267_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237281_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L237280_)))
                                                     (___kont251158251159_
                                                      _L237280_
                                                      _L237281_)
                                                     (___match251209251210_
                                                      _e236721237256_
                                                      _hd236720237259_
                                                      _tl236719237261_
                                                      _e236724237264_
                                                      _hd236723237267_
                                                      _tl236722237269_
                                                      _e236727237272_
                                                      _hd236726237275_
                                                      _tl236725237277_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251156251157_))
                                           (let ((_e236721237256_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251156251157_))))
                                             (let ((_tl236719237261_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236721237256_)))
                                                   (_hd236720237259_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236721237256_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236720237259_))
                                                   (let ((_e236724237264_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236720237259_))))
                                                     (let ((_tl236722237269_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236724237264_)))
                                                           (_hd236723237267_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236724237264_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl236722237269_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl236719237261_))
                       (let ((_e236727237272_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236719237261_))))
                         (let ((_tl236725237277_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236727237272_)))
                               (_hd236726237275_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236727237272_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236725237277_))
                               (___match251187251188_
                                _e236721237256_
                                _hd236720237259_
                                _tl236719237261_
                                _e236724237264_
                                _hd236723237267_
                                _tl236722237269_
                                _e236727237272_
                                _hd236726237275_
                                _tl236725237277_)
                               (let ()
                                 (declare (not safe))
                                 (_g236715236762_)))))
                       (let () (declare (not safe)) (_g236715236762_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl236719237261_))
                       (let ((_e236757236775_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236719237261_))))
                         (let ((_tl236755236780_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236757236775_)))
                               (_hd236756236778_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236757236775_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl236755236780_))
                               (___kont251164251165_
                                _hd236756236778_
                                _hd236720237259_)
                               (let ()
                                 (declare (not safe))
                                 (_g236715236762_)))))
                       (let () (declare (not safe)) (_g236715236762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236719237261_))
                                                       (let ((_e236757236775_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236719237261_))))
                 (let ((_tl236755236780_
                        (let () (declare (not safe)) (##cdr _e236757236775_)))
                       (_hd236756236778_
                        (let () (declare (not safe)) (##car _e236757236775_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236755236780_))
                       (___kont251164251165_ _hd236756236778_ _hd236720237259_)
                       (let () (declare (not safe)) (_g236715236762_)))))
               (let () (declare (not safe)) (_g236715236762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g236715236762_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest236690236698_))
                             (let ((_hd236695237376_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest236690236698_)))
                                   (_tl236696237378_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest236690236698_))))
                               (let* ((_hd237381_ _hd236695237376_)
                                      (_rest237383_ _tl236696237378_))
                                 (declare (not safe))
                                 (_K236694237373_ _rest237383_ _hd237381_)))
                             (let ()
                               (declare (not safe))
                               (_else236692236706_))))))))
          (let* ((___stx251248251249_ _stx236546_)
                 (_g236552236579_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251248251249_)))))
            (let ((___kont251250251251_
                   (lambda (_L236639_ _L236640_ _L236641_)
                     (let ((__tmp251689
                            (lambda ()
                              (let ((_hd236678_
                                     (let ((__tmp251690
                                            (let ((__tmp251691
                                                   (lambda (_g236670236673_
                                                            _g236671236675_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236670236673_
                                                             _g236671236675_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251691
                                                      '()
                                                      _L236640_))))
                                       (declare (not safe))
                                       (_compile-bindings236549_ __tmp251690)))
                                    (_body236679_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L236639_))))
                                (let ((__tmp251692
                                       (let ((__tmp251693
                                              (let ((__tmp251694
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body236679_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd236678_
                                                      __tmp251694))))
                                         (declare (not safe))
                                         (cons _L236641_ __tmp251693))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp251692
                                   _stx236546_)))))
                           (__tmp251688
                            (let ((__obj251313
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251313)
                              __obj251313)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp251689
                        gx#current-expander-context
                        __tmp251688))))
                  (___kont251254251255_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx236546_)))))
              (let ((___match251275251276_
                     (lambda (_e236559236591_
                              _hd236558236594_
                              _tl236557236596_
                              _e236562236599_
                              _hd236561236602_
                              _tl236560236604_
                              ___splice251252251253_
                              _target236563236607_
                              _tl236565236609_)
                       (letrec ((_loop236566236612_
                                 (lambda (_hd236564236615_ _bind236570236617_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd236564236615_))
                                       (let ((_e236567236620_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd236564236615_))))
                                         (let ((_lp-tl236569236625_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e236567236620_)))
                                               (_lp-hd236568236623_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e236567236620_))))
                                           (let ((__tmp251697
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd236568236623_
                                                          _bind236570236617_))))
                                             (declare (not safe))
                                             (_loop236566236612_
                                              _lp-tl236569236625_
                                              __tmp251697))))
                                       (let ((_bind236571236628_
                                              (reverse _bind236570236617_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236560236604_))
                                             (let ((_e236574236631_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236560236604_))))
                                               (let ((_tl236572236636_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e236574236631_)))
                                                     (_hd236573236634_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e236574236631_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl236572236636_))
                                                     (let ((_L236639_
                                                            _hd236573236634_)
                                                           (_L236640_
                                                            _bind236571236628_)
                                                           (_L236641_
                                                            _hd236558236594_))
                                                       (if (let ((__tmp251695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251696
                                 (lambda (_g236662236665_ _g236663236667_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g236662236665_ _g236663236667_)))))
                            (declare (not safe))
                            (foldr1 __tmp251696 '() _L236640_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp251695))
                   (___kont251250251251_ _L236639_ _L236640_ _L236641_)
                   (___kont251254251255_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251254251255_))))
                                             (___kont251254251255_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop236566236612_ _target236563236607_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251248251249_))
                    (let ((_e236559236591_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251248251249_))))
                      (let ((_tl236557236596_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236559236591_)))
                            (_hd236558236594_
                             (let ()
                               (declare (not safe))
                               (##car _e236559236591_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl236557236596_))
                            (let ((_e236562236599_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl236557236596_))))
                              (let ((_tl236560236604_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e236562236599_)))
                                    (_hd236561236602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e236562236599_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd236561236602_))
                                    (let ((___splice251252251253_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd236561236602_
                                              '0))))
                                      (let ((_tl236565236609_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251252251253_
                                                '1)))
                                            (_target236563236607_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251252251253_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236565236609_))
                                            (___match251275251276_
                                             _e236559236591_
                                             _hd236558236594_
                                             _tl236557236596_
                                             _e236562236599_
                                             _hd236561236602_
                                             _tl236560236604_
                                             ___splice251252251253_
                                             _target236563236607_
                                             _tl236565236609_)
                                            (___kont251254251255_))))
                                    (___kont251254251255_))))
                            (___kont251254251255_))))
                    (___kont251254251255_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind236464_)
        (let* ((___stx251278251279_ _bind236464_)
               (_g236467236484_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251278251279_)))))
          (let ((___kont251280251281_
                 (lambda (_L236520_ _L236521_)
                   (if (let () (declare (not safe)) (gx#identifier? _L236521_))
                       (let ((_$e236537_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L236520_))))
                         (if _$e236537_
                             _$e236537_
                             (let ((_$e236540_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L236520_))))
                               (if _$e236540_
                                   _$e236540_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L236520_))))))
                       '#f)))
                (___kont251282251283_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx251278251279_))
                (let ((_e236473236496_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx251278251279_))))
                  (let ((_tl236471236501_
                         (let () (declare (not safe)) (##cdr _e236473236496_)))
                        (_hd236472236499_
                         (let ()
                           (declare (not safe))
                           (##car _e236473236496_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd236472236499_))
                        (let ((_e236476236504_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd236472236499_))))
                          (let ((_tl236474236509_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236476236504_)))
                                (_hd236475236507_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236476236504_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl236474236509_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl236471236501_))
                                    (let ((_e236479236512_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl236471236501_))))
                                      (let ((_tl236477236517_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e236479236512_)))
                                            (_hd236478236515_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e236479236512_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236477236517_))
                                            (___kont251280251281_
                                             _hd236478236515_
                                             _hd236475236507_)
                                            (___kont251282251283_))))
                                    (___kont251282251283_))
                                (___kont251282251283_))))
                        (___kont251282251283_))))
                (___kont251282251283_))))))))
