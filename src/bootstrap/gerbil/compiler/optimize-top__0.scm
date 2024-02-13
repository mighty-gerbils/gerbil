(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707840758)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238504_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245165 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238504_ __tmp245165))
           (let ()
             (declare (not safe))
             (table-set! _tbl238504_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238504_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238504_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238504_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl238504_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx238487_ . _args238489_)
        (let ((__tmp245167
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238489_)
                     (gxc#compile-e__0 _stx238487_)
                     (let ((_arg1238494_ (car _args238489_))
                           (_rest238496_ (cdr _args238489_)))
                       (if (null? _rest238496_)
                           (gxc#compile-e__1 _stx238487_ _arg1238494_)
                           (let ((_arg2238499_ (car _rest238496_))
                                 (_rest238501_ (cdr _rest238496_)))
                             (if (null? _rest238501_)
                                 (gxc#compile-e__2
                                  _stx238487_
                                  _arg1238494_
                                  _arg2238499_)
                                 (apply gxc#compile-e
                                        _stx238487_
                                        _arg1238494_
                                        _arg2238499_
                                        _rest238501_))))))))
              (__tmp245166 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245167
           gxc#current-compile-methods
           __tmp245166))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl238484_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245168 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238484_ __tmp245168))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238484_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238484_ '%#call gxc#basic-expression-type-call%))
           _tbl238484_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx238467_ . _args238469_)
        (let ((__tmp245170
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238469_)
                     (gxc#compile-e__0 _stx238467_)
                     (let ((_arg1238474_ (car _args238469_))
                           (_rest238476_ (cdr _args238469_)))
                       (if (null? _rest238476_)
                           (gxc#compile-e__1 _stx238467_ _arg1238474_)
                           (let ((_arg2238479_ (car _rest238476_))
                                 (_rest238481_ (cdr _rest238476_)))
                             (if (null? _rest238481_)
                                 (gxc#compile-e__2
                                  _stx238467_
                                  _arg1238474_
                                  _arg2238479_)
                                 (apply gxc#compile-e
                                        _stx238467_
                                        _arg1238474_
                                        _arg2238479_
                                        _rest238481_))))))))
              (__tmp245169 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245170
           gxc#current-compile-methods
           __tmp245169))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238464_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245171 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238464_ __tmp245171))
           (let ()
             (declare (not safe))
             (table-set! _tbl238464_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238464_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238464_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238464_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238464_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238464_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238464_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238464_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238464_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238464_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238464_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238464_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238464_ '%#set! gxc#collect-body-setq%))
           _tbl238464_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx238447_ . _args238449_)
        (let ((__tmp245173
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238449_)
                     (gxc#compile-e__0 _stx238447_)
                     (let ((_arg1238454_ (car _args238449_))
                           (_rest238456_ (cdr _args238449_)))
                       (if (null? _rest238456_)
                           (gxc#compile-e__1 _stx238447_ _arg1238454_)
                           (let ((_arg2238459_ (car _rest238456_))
                                 (_rest238461_ (cdr _rest238456_)))
                             (if (null? _rest238461_)
                                 (gxc#compile-e__2
                                  _stx238447_
                                  _arg1238454_
                                  _arg2238459_)
                                 (apply gxc#compile-e
                                        _stx238447_
                                        _arg1238454_
                                        _arg2238459_
                                        _rest238461_))))))))
              (__tmp245172 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245173
           gxc#current-compile-methods
           __tmp245172))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl238444_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245174 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238444_ __tmp245174))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238444_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238444_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238444_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238444_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238444_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238444_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238444_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238444_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238444_ '%#ref gxc#basic-expression-type-ref%))
           _tbl238444_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx238427_ . _args238429_)
        (let ((__tmp245176
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238429_)
                     (gxc#compile-e__0 _stx238427_)
                     (let ((_arg1238434_ (car _args238429_))
                           (_rest238436_ (cdr _args238429_)))
                       (if (null? _rest238436_)
                           (gxc#compile-e__1 _stx238427_ _arg1238434_)
                           (let ((_arg2238439_ (car _rest238436_))
                                 (_rest238441_ (cdr _rest238436_)))
                             (if (null? _rest238441_)
                                 (gxc#compile-e__2
                                  _stx238427_
                                  _arg1238434_
                                  _arg2238439_)
                                 (apply gxc#compile-e
                                        _stx238427_
                                        _arg1238434_
                                        _arg2238439_
                                        _rest238441_))))))))
              (__tmp245175 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245176
           gxc#current-compile-methods
           __tmp245175))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl238424_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245177 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl238424_ __tmp245177))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238424_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238424_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238424_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238424_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl238424_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx238407_ . _args238409_)
        (let ((__tmp245179
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238409_)
                     (gxc#compile-e__0 _stx238407_)
                     (let ((_arg1238414_ (car _args238409_))
                           (_rest238416_ (cdr _args238409_)))
                       (if (null? _rest238416_)
                           (gxc#compile-e__1 _stx238407_ _arg1238414_)
                           (let ((_arg2238419_ (car _rest238416_))
                                 (_rest238421_ (cdr _rest238416_)))
                             (if (null? _rest238421_)
                                 (gxc#compile-e__2
                                  _stx238407_
                                  _arg1238414_
                                  _arg2238419_)
                                 (apply gxc#compile-e
                                        _stx238407_
                                        _arg1238414_
                                        _arg2238419_
                                        _rest238421_))))))))
              (__tmp245178 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp245179
           gxc#current-compile-methods
           __tmp245178))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx238310_)
        (let* ((___stx243085243086_ _stx238310_)
               (_g238313238333_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243085243086_)))))
          (let ((___kont243087243088_
                 (lambda (_L238377_ _L238378_)
                   (let ((_sym238396_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238378_))))
                     (if (let ((__tmp245180 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245180 _sym238396_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238396_))
                         (let ((_type238397238399_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L238377_))))
                           (if _type238397238399_
                               (let ((_type238402_ _type238397238399_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym238396_
                                  _type238402_))
                               '#f))))))
                (___kont243089243090_ (lambda () '#!void)))
            (let ((___match243118243119_
                   (lambda (_e238319238345_
                            _hd238318238348_
                            _tl238317238350_
                            _e238322238353_
                            _hd238321238356_
                            _tl238320238358_
                            _e238325238361_
                            _hd238324238364_
                            _tl238323238366_
                            _e238328238369_
                            _hd238327238372_
                            _tl238326238374_)
                     (let ((_L238377_ _hd238327238372_)
                           (_L238378_ _hd238324238364_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238378_))
                           (___kont243087243088_ _L238377_ _L238378_)
                           (___kont243089243090_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243085243086_))
                  (let ((_e238319238345_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243085243086_))))
                    (let ((_tl238317238350_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238319238345_)))
                          (_hd238318238348_
                           (let ()
                             (declare (not safe))
                             (##car _e238319238345_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238317238350_))
                          (let ((_e238322238353_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238317238350_))))
                            (let ((_tl238320238358_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238322238353_)))
                                  (_hd238321238356_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238322238353_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238321238356_))
                                  (let ((_e238325238361_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238321238356_))))
                                    (let ((_tl238323238366_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238325238361_)))
                                          (_hd238324238364_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238325238361_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238323238366_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238320238358_))
                                              (let ((_e238328238369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238320238358_))))
                                                (let ((_tl238326238374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238328238369_)))
                                                      (_hd238327238372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238328238369_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238326238374_))
                                                      (___match243118243119_
                                                       _e238319238345_
                                                       _hd238318238348_
                                                       _tl238317238350_
                                                       _e238322238353_
                                                       _hd238321238356_
                                                       _tl238320238358_
                                                       _e238325238361_
                                                       _hd238324238364_
                                                       _tl238323238366_
                                                       _e238328238369_
                                                       _hd238327238372_
                                                       _tl238326238374_)
                                                      (___kont243089243090_))))
                                              (___kont243089243090_))
                                          (___kont243089243090_))))
                                  (___kont243089243090_))))
                          (___kont243089243090_))))
                  (___kont243089243090_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx238166_)
        (let* ((___stx243121243122_ _stx238166_)
               (_g238169238200_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243121243122_)))))
          (let ((___kont243123243124_
                 (lambda (_L238282_ _L238283_)
                   (let ((_sym238299_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238283_))))
                     (if (let ((__tmp245181 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245181 _sym238299_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238299_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym238299_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym238299_))
                             (let ((_type238300238302_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L238282_))))
                               (if _type238300238302_
                                   (let ((_type238305_ _type238300238302_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym238299_
                                      _type238305_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L238282_)))))
                (___kont243125243126_
                 (lambda (_L238229_ _L238230_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L238229_)))))
            (let ((___match243154243155_
                   (lambda (_e238175238250_
                            _hd238174238253_
                            _tl238173238255_
                            _e238178238258_
                            _hd238177238261_
                            _tl238176238263_
                            _e238181238266_
                            _hd238180238269_
                            _tl238179238271_
                            _e238184238274_
                            _hd238183238277_
                            _tl238182238279_)
                     (let ((_L238282_ _hd238183238277_)
                           (_L238283_ _hd238180238269_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238283_))
                           (___kont243123243124_ _L238282_ _L238283_)
                           (___kont243125243126_
                            _hd238183238277_
                            _hd238177238261_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243121243122_))
                  (let ((_e238175238250_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243121243122_))))
                    (let ((_tl238173238255_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238175238250_)))
                          (_hd238174238253_
                           (let ()
                             (declare (not safe))
                             (##car _e238175238250_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238173238255_))
                          (let ((_e238178238258_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238173238255_))))
                            (let ((_tl238176238263_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238178238258_)))
                                  (_hd238177238261_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238178238258_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238177238261_))
                                  (let ((_e238181238266_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238177238261_))))
                                    (let ((_tl238179238271_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238181238266_)))
                                          (_hd238180238269_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238181238266_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238179238271_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238176238263_))
                                              (let ((_e238184238274_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238176238263_))))
                                                (let ((_tl238182238279_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238184238274_)))
                                                      (_hd238183238277_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238184238274_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238182238279_))
                                                      (___match243154243155_
                                                       _e238175238250_
                                                       _hd238174238253_
                                                       _tl238173238255_
                                                       _e238178238258_
                                                       _hd238177238261_
                                                       _tl238176238263_
                                                       _e238181238266_
                                                       _hd238180238269_
                                                       _tl238179238271_
                                                       _e238184238274_
                                                       _hd238183238277_
                                                       _tl238182238279_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238169238200_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238169238200_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238176238263_))
                                              (let ((_e238195238221_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238176238263_))))
                                                (let ((_tl238193238226_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238195238221_)))
                                                      (_hd238194238224_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238195238221_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238193238226_))
                                                      (___kont243125243126_
                                                       _hd238194238224_
                                                       _hd238177238261_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238169238200_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238169238200_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238176238263_))
                                      (let ((_e238195238221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238176238263_))))
                                        (let ((_tl238193238226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238195238221_)))
                                              (_hd238194238224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238195238221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238193238226_))
                                              (___kont243125243126_
                                               _hd238194238224_
                                               _hd238177238261_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238169238200_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238169238200_))))))
                          (let () (declare (not safe)) (_g238169238200_)))))
                  (let () (declare (not safe)) (_g238169238200_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx237951_)
        (letrec ((_collect-e237953_
                  (lambda (_hd238110_ _expr238111_)
                    (let* ((___stx243177243178_ _hd238110_)
                           (_g238114238124_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx243177243178_)))))
                      (let ((___kont243179243180_
                             (lambda (_L238144_)
                               (let ((_sym238155_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L238144_))))
                                 (if (let ((__tmp245182
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp245182 _sym238155_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym238155_))
                                     (let ((_type238156238158_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr238111_))))
                                       (if _type238156238158_
                                           (let ((_type238161_
                                                  _type238156238158_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym238155_
                                              _type238161_
                                              '#t))
                                           '#f))))))
                            (___kont243181243182_ (lambda () '#!void)))
                        (let ((___match243190243191_
                               (lambda (_e238119238136_
                                        _hd238118238139_
                                        _tl238117238141_)
                                 (let ((_L238144_ _hd238118238139_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L238144_))
                                       (___kont243179243180_ _L238144_)
                                       (___kont243181243182_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx243177243178_))
                              (let ((_e238119238136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx243177243178_))))
                                (let ((_tl238117238141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238119238136_)))
                                      (_hd238118238139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238119238136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238117238141_))
                                      (___match243190243191_
                                       _e238119238136_
                                       _hd238118238139_
                                       _tl238117238141_)
                                      (___kont243181243182_))))
                              (___kont243181243182_))))))))
          (let* ((_g237955237990_
                  (lambda (_g237956237987_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g237956237987_))))
                 (_g237954238107_
                  (lambda (_g237956237993_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g237956237993_))
                        (let ((_e237962237995_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g237956237993_))))
                          (let ((_hd237961237998_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237962237995_)))
                                (_tl237960238000_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237962237995_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237960238000_))
                                (let ((_e237965238003_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237960238000_))))
                                  (let ((_hd237964238006_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237965238003_)))
                                        (_tl237963238008_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237965238003_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd237964238006_))
                                        (let ((_g245183_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd237964238006_
                                                  '0))))
                                          (begin
                                            (let ((_g245184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g245183_)
                                                         (##vector-length
                                                          _g245183_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g245184_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g245184_)))
                                            (let ((_target237966238011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245183_
                                                      0)))
                                                  (_tl237968238013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245183_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237968238013_))
                                                  (letrec ((_loop237969238016_
                                                            (lambda (_hd237967238019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr237973238021_
                             _hd237974238023_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237967238019_))
                          (let ((_e237970238026_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237967238019_))))
                            (let ((_lp-hd237971238029_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237970238026_)))
                                  (_lp-tl237972238031_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237970238026_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd237971238029_))
                                  (let ((_e237979238034_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd237971238029_))))
                                    (let ((_hd237978238037_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237979238034_)))
                                          (_tl237977238039_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237979238034_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237977238039_))
                                          (let ((_e237982238042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237977238039_))))
                                            (let ((_hd237981238045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237982238042_)))
                                                  (_tl237980238047_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237982238042_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237980238047_))
                                                  (let ((__tmp245189
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd237981238045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr237973238021_)))
                (__tmp245188
                 (let ()
                   (declare (not safe))
                   (cons _hd237978238037_ _hd237974238023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop237969238016_
                                                     _lp-tl237972238031_
                                                     __tmp245189
                                                     __tmp245188))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237955237990_
                                                     _g237956237993_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237955237990_
                                             _g237956237993_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237955237990_ _g237956237993_)))))
                          (let ((_expr237975238050_
                                 (reverse _expr237973238021_))
                                (_hd237976238052_ (reverse _hd237974238023_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237963238008_))
                                (let ((_e237985238055_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237963238008_))))
                                  (let ((_hd237984238058_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237985238055_)))
                                        (_tl237983238060_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237985238055_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237983238060_))
                                        ((lambda (_L238063_
                                                  _L238064_
                                                  _L238065_)
                                           (for-each
                                            _collect-e237953_
                                            (let ((__tmp245185
                                                   (lambda (_g238085238088_
                                                            _g238086238090_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g238085238088_
                                                             _g238086238090_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245185
                                                      '()
                                                      _L238065_))
                                            (let ((__tmp245186
                                                   (lambda (_g238092238095_
                                                            _g238093238097_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g238092238095_
                                                             _g238093238097_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245186
                                                      '()
                                                      _L238064_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp245187
                                                   (lambda (_g238099238102_
                                                            _g238100238104_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g238099238102_
                                                             _g238100238104_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245187
                                                      '()
                                                      _L238064_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L238063_)))
                                         _hd237984238058_
                                         _expr237975238050_
                                         _hd237976238052_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237955237990_ _g237956237993_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237955237990_ _g237956237993_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop237969238016_
                                                       _target237966238011_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237955237990_
                                                     _g237956237993_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237955237990_ _g237956237993_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237955237990_ _g237956237993_)))))
                        (let ()
                          (declare (not safe))
                          (_g237955237990_ _g237956237993_))))))
            (declare (not safe))
            (_g237954238107_ _stx237951_)))))
    (define gxc#collect-type-call%
      (lambda (_stx237443_)
        (let* ((___stx243193243194_ _stx237443_)
               (_g237447237562_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243193243194_)))))
          (let ((___kont243195243196_
                 (lambda (_L237901_ _L237902_ _L237903_ _L237904_ _L237905_)
                   (let ((__tmp245193
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237904_)))
                         (__tmp245192
                          (let () (declare (not safe)) (gx#stx-e _L237903_)))
                         (__tmp245191
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237902_)))
                         (__tmp245190
                          (let () (declare (not safe)) (gx#stx-e _L237901_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245193
                      __tmp245192
                      __tmp245191
                      __tmp245190))))
                (___kont243197243198_
                 (lambda (_L237729_ _L237730_ _L237731_ _L237732_)
                   (let ((__tmp245196
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237731_)))
                         (__tmp245195
                          (let () (declare (not safe)) (gx#stx-e _L237730_)))
                         (__tmp245194
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237729_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245196
                      __tmp245195
                      __tmp245194
                      '#f))))
                (___kont243199243200_
                 (lambda (_L237599_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp245197
                           (lambda (_g237612237615_ _g237613237617_)
                             (let ()
                               (declare (not safe))
                               (cons _g237612237615_ _g237613237617_)))))
                      (declare (not safe))
                      (foldr1 __tmp245197 '() _L237599_))))))
            (let* ((___match243450243451_
                    (lambda (_e237548237567_
                             _hd237547237570_
                             _tl237546237572_
                             ___splice243201243202_
                             _target237549237575_
                             _tl237551237577_)
                      (letrec ((_loop237552237580_
                                (lambda (_hd237550237583_ _expr237556237585_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd237550237583_))
                                      (let ((_e237553237588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd237550237583_))))
                                        (let ((_lp-tl237555237593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237553237588_)))
                                              (_lp-hd237554237591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237553237588_))))
                                          (let ((__tmp245198
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd237554237591_
                                                         _expr237556237585_))))
                                            (declare (not safe))
                                            (_loop237552237580_
                                             _lp-tl237555237593_
                                             __tmp245198))))
                                      (let ((_expr237557237596_
                                             (reverse _expr237556237585_)))
                                        (___kont243199243200_
                                         _expr237557237596_))))))
                        (let ()
                          (declare (not safe))
                          (_loop237552237580_ _target237549237575_ '())))))
                   (___match243330243331_
                    (lambda (_e237456237773_
                             _hd237455237776_
                             _tl237454237778_
                             _e237459237781_
                             _hd237458237784_
                             _tl237457237786_
                             _e237462237789_
                             _hd237461237792_
                             _tl237460237794_
                             _e237465237797_
                             _hd237464237800_
                             _tl237463237802_
                             _e237468237805_
                             _hd237467237808_
                             _tl237466237810_
                             _e237471237813_
                             _hd237470237816_
                             _tl237469237818_
                             _e237474237821_
                             _hd237473237824_
                             _tl237472237826_
                             _e237477237829_
                             _hd237476237832_
                             _tl237475237834_
                             _e237480237837_
                             _hd237479237840_
                             _tl237478237842_
                             _e237483237845_
                             _hd237482237848_
                             _tl237481237850_
                             _e237486237853_
                             _hd237485237856_
                             _tl237484237858_
                             _e237489237861_
                             _hd237488237864_
                             _tl237487237866_
                             _e237492237869_
                             _hd237491237872_
                             _tl237490237874_
                             _e237495237877_
                             _hd237494237880_
                             _tl237493237882_
                             _e237498237885_
                             _hd237497237888_
                             _tl237496237890_
                             _e237501237893_
                             _hd237500237896_
                             _tl237499237898_)
                      (let ((_L237901_ _hd237500237896_)
                            (_L237902_ _hd237491237872_)
                            (_L237903_ _hd237482237848_)
                            (_L237904_ _hd237473237824_)
                            (_L237905_ _hd237464237800_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L237905_
                               'bind-method!))
                            (___kont243195243196_
                             _L237901_
                             _L237902_
                             _L237903_
                             _L237904_
                             _L237905_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl237454237778_))
                                (let ((___splice243201243202_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl237454237778_
                                          '0))))
                                  (let ((_tl237551237577_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243201243202_
                                            '1)))
                                        (_target237549237575_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243201243202_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237551237577_))
                                        (___match243450243451_
                                         _e237456237773_
                                         _hd237455237776_
                                         _tl237454237778_
                                         ___splice243201243202_
                                         _target237549237575_
                                         _tl237551237577_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237447237562_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237447237562_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243193243194_))
                  (let ((_e237456237773_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243193243194_))))
                    (let ((_tl237454237778_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237456237773_)))
                          (_hd237455237776_
                           (let ()
                             (declare (not safe))
                             (##car _e237456237773_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237454237778_))
                          (let ((_e237459237781_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237454237778_))))
                            (let ((_tl237457237786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237459237781_)))
                                  (_hd237458237784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237459237781_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237458237784_))
                                  (let ((_e237462237789_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237458237784_))))
                                    (let ((_tl237460237794_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237462237789_)))
                                          (_hd237461237792_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237462237789_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd237461237792_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd237461237792_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237460237794_))
                                                  (let ((_e237465237797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237460237794_))))
                                                    (let ((_tl237463237802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237465237797_)))
                                                          (_hd237464237800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237465237797_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237463237802_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237457237786_))
                      (let ((_e237468237805_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237457237786_))))
                        (let ((_tl237466237810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237468237805_)))
                              (_hd237467237808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237468237805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237467237808_))
                              (let ((_e237471237813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237467237808_))))
                                (let ((_tl237469237818_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237471237813_)))
                                      (_hd237470237816_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237471237813_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd237470237816_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd237470237816_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237469237818_))
                                              (let ((_e237474237821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237469237818_))))
                                                (let ((_tl237472237826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237474237821_)))
                                                      (_hd237473237824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237474237821_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237472237826_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl237466237810_))
                                                          (let ((_e237477237829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl237466237810_))))
                    (let ((_tl237475237834_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237477237829_)))
                          (_hd237476237832_
                           (let ()
                             (declare (not safe))
                             (##car _e237477237829_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237476237832_))
                          (let ((_e237480237837_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237476237832_))))
                            (let ((_tl237478237842_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237480237837_)))
                                  (_hd237479237840_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237480237837_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd237479237840_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd237479237840_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237478237842_))
                                          (let ((_e237483237845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237478237842_))))
                                            (let ((_tl237481237850_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237483237845_)))
                                                  (_hd237482237848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237483237845_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237481237850_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237475237834_))
                                                      (let ((_e237486237853_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237475237834_))))
                (let ((_tl237484237858_
                       (let () (declare (not safe)) (##cdr _e237486237853_)))
                      (_hd237485237856_
                       (let () (declare (not safe)) (##car _e237486237853_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237485237856_))
                      (let ((_e237489237861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237485237856_))))
                        (let ((_tl237487237866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237489237861_)))
                              (_hd237488237864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237489237861_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd237488237864_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd237488237864_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237487237866_))
                                      (let ((_e237492237869_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237487237866_))))
                                        (let ((_tl237490237874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237492237869_)))
                                              (_hd237491237872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237492237869_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237490237874_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237484237858_))
                                                  (let ((_e237495237877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237484237858_))))
                                                    (let ((_tl237493237882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237495237877_)))
                                                          (_hd237494237880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237495237877_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd237494237880_))
                                                          (let ((_e237498237885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd237494237880_))))
                    (let ((_tl237496237890_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237498237885_)))
                          (_hd237497237888_
                           (let ()
                             (declare (not safe))
                             (##car _e237498237885_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd237497237888_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd237497237888_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237496237890_))
                                  (let ((_e237501237893_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237496237890_))))
                                    (let ((_tl237499237898_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237501237893_)))
                                          (_hd237500237896_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237501237893_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237499237898_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237493237882_))
                                              (___match243330243331_
                                               _e237456237773_
                                               _hd237455237776_
                                               _tl237454237778_
                                               _e237459237781_
                                               _hd237458237784_
                                               _tl237457237786_
                                               _e237462237789_
                                               _hd237461237792_
                                               _tl237460237794_
                                               _e237465237797_
                                               _hd237464237800_
                                               _tl237463237802_
                                               _e237468237805_
                                               _hd237467237808_
                                               _tl237466237810_
                                               _e237471237813_
                                               _hd237470237816_
                                               _tl237469237818_
                                               _e237474237821_
                                               _hd237473237824_
                                               _tl237472237826_
                                               _e237477237829_
                                               _hd237476237832_
                                               _tl237475237834_
                                               _e237480237837_
                                               _hd237479237840_
                                               _tl237478237842_
                                               _e237483237845_
                                               _hd237482237848_
                                               _tl237481237850_
                                               _e237486237853_
                                               _hd237485237856_
                                               _tl237484237858_
                                               _e237489237861_
                                               _hd237488237864_
                                               _tl237487237866_
                                               _e237492237869_
                                               _hd237491237872_
                                               _tl237490237874_
                                               _e237495237877_
                                               _hd237494237880_
                                               _tl237493237882_
                                               _e237498237885_
                                               _hd237497237888_
                                               _tl237496237890_
                                               _e237501237893_
                                               _hd237500237896_
                                               _tl237499237898_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237454237778_))
                                                  (let ((___splice243201243202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237454237778_
                                                            '0))))
                                                    (let ((_tl237551237577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '1)))
                                                          (_target237549237575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237551237577_))
                                                          (___match243450243451_
                                                           _e237456237773_
                                                           _hd237455237776_
                                                           _tl237454237778_
                                                           ___splice243201243202_
                                                           _target237549237575_
                                                           _tl237551237577_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237447237562_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237447237562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237454237778_))
                                              (let ((___splice243201243202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237454237778_
                                                        '0))))
                                                (let ((_tl237551237577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '1)))
                                                      (_target237549237575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237551237577_))
                                                      (___match243450243451_
                                                       _e237456237773_
                                                       _hd237455237776_
                                                       _tl237454237778_
                                                       ___splice243201243202_
                                                       _target237549237575_
                                                       _tl237551237577_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237447237562_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237454237778_))
                                      (let ((___splice243201243202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237454237778_
                                                '0))))
                                        (let ((_tl237551237577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '1)))
                                              (_target237549237575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237551237577_))
                                              (___match243450243451_
                                               _e237456237773_
                                               _hd237455237776_
                                               _tl237454237778_
                                               ___splice243201243202_
                                               _target237549237575_
                                               _tl237551237577_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237447237562_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237454237778_))
                                  (let ((___splice243201243202_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237454237778_
                                            '0))))
                                    (let ((_tl237551237577_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243201243202_
                                              '1)))
                                          (_target237549237575_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243201243202_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237551237577_))
                                          (___match243450243451_
                                           _e237456237773_
                                           _hd237455237776_
                                           _tl237454237778_
                                           ___splice243201243202_
                                           _target237549237575_
                                           _tl237551237577_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237447237562_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237447237562_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237454237778_))
                              (let ((___splice243201243202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237454237778_
                                        '0))))
                                (let ((_tl237551237577_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243201243202_
                                          '1)))
                                      (_target237549237575_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243201243202_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237551237577_))
                                      (___match243450243451_
                                       _e237456237773_
                                       _hd237455237776_
                                       _tl237454237778_
                                       ___splice243201243202_
                                       _target237549237575_
                                       _tl237551237577_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237447237562_)))))
                              (let ()
                                (declare (not safe))
                                (_g237447237562_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237454237778_))
                      (let ((___splice243201243202_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237454237778_ '0))))
                        (let ((_tl237551237577_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '1)))
                              (_target237549237575_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237551237577_))
                              (___match243450243451_
                               _e237456237773_
                               _hd237455237776_
                               _tl237454237778_
                               ___splice243201243202_
                               _target237549237575_
                               _tl237551237577_)
                              (let ()
                                (declare (not safe))
                                (_g237447237562_)))))
                      (let () (declare (not safe)) (_g237447237562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237484237858_))
                                                      (if (let ((__tmp245199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp245199 'bind-method!))
                  (let ((_L237729_ _hd237491237872_)
                        (_L237730_ _hd237482237848_)
                        (_L237731_ _hd237473237824_)
                        (_L237732_ _hd237464237800_))
                    (___kont243197243198_
                     _L237729_
                     _L237730_
                     _L237731_
                     _L237732_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237454237778_))
                      (let ((___splice243201243202_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237454237778_ '0))))
                        (let ((_tl237551237577_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '1)))
                              (_target237549237575_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237551237577_))
                              (___match243450243451_
                               _e237456237773_
                               _hd237455237776_
                               _tl237454237778_
                               ___splice243201243202_
                               _target237549237575_
                               _tl237551237577_)
                              (let ()
                                (declare (not safe))
                                (_g237447237562_)))))
                      (let () (declare (not safe)) (_g237447237562_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237454237778_))
                  (let ((___splice243201243202_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237454237778_ '0))))
                    (let ((_tl237551237577_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243201243202_ '1)))
                          (_target237549237575_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243201243202_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237551237577_))
                          (___match243450243451_
                           _e237456237773_
                           _hd237455237776_
                           _tl237454237778_
                           ___splice243201243202_
                           _target237549237575_
                           _tl237551237577_)
                          (let () (declare (not safe)) (_g237447237562_)))))
                  (let () (declare (not safe)) (_g237447237562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237454237778_))
                                                  (let ((___splice243201243202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237454237778_
                                                            '0))))
                                                    (let ((_tl237551237577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '1)))
                                                          (_target237549237575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237551237577_))
                                                          (___match243450243451_
                                                           _e237456237773_
                                                           _hd237455237776_
                                                           _tl237454237778_
                                                           ___splice243201243202_
                                                           _target237549237575_
                                                           _tl237551237577_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237447237562_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237447237562_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237454237778_))
                                          (let ((___splice243201243202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237454237778_
                                                    '0))))
                                            (let ((_tl237551237577_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243201243202_
                                                      '1)))
                                                  (_target237549237575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243201243202_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237551237577_))
                                                  (___match243450243451_
                                                   _e237456237773_
                                                   _hd237455237776_
                                                   _tl237454237778_
                                                   ___splice243201243202_
                                                   _target237549237575_
                                                   _tl237551237577_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237447237562_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237447237562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237454237778_))
                                      (let ((___splice243201243202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237454237778_
                                                '0))))
                                        (let ((_tl237551237577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '1)))
                                              (_target237549237575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237551237577_))
                                              (___match243450243451_
                                               _e237456237773_
                                               _hd237455237776_
                                               _tl237454237778_
                                               ___splice243201243202_
                                               _target237549237575_
                                               _tl237551237577_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237447237562_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237454237778_))
                                  (let ((___splice243201243202_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237454237778_
                                            '0))))
                                    (let ((_tl237551237577_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243201243202_
                                              '1)))
                                          (_target237549237575_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243201243202_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237551237577_))
                                          (___match243450243451_
                                           _e237456237773_
                                           _hd237455237776_
                                           _tl237454237778_
                                           ___splice243201243202_
                                           _target237549237575_
                                           _tl237551237577_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237447237562_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237447237562_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237454237778_))
                          (let ((___splice243201243202_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237454237778_
                                    '0))))
                            (let ((_tl237551237577_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243201243202_ '1)))
                                  (_target237549237575_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243201243202_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237551237577_))
                                  (___match243450243451_
                                   _e237456237773_
                                   _hd237455237776_
                                   _tl237454237778_
                                   ___splice243201243202_
                                   _target237549237575_
                                   _tl237551237577_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237447237562_)))))
                          (let () (declare (not safe)) (_g237447237562_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237454237778_))
                  (let ((___splice243201243202_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237454237778_ '0))))
                    (let ((_tl237551237577_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243201243202_ '1)))
                          (_target237549237575_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243201243202_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237551237577_))
                          (___match243450243451_
                           _e237456237773_
                           _hd237455237776_
                           _tl237454237778_
                           ___splice243201243202_
                           _target237549237575_
                           _tl237551237577_)
                          (let () (declare (not safe)) (_g237447237562_)))))
                  (let () (declare (not safe)) (_g237447237562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237454237778_))
                                                      (let ((___splice243201243202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237454237778_ '0))))
                (let ((_tl237551237577_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243201243202_ '1)))
                      (_target237549237575_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243201243202_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237551237577_))
                      (___match243450243451_
                       _e237456237773_
                       _hd237455237776_
                       _tl237454237778_
                       ___splice243201243202_
                       _target237549237575_
                       _tl237551237577_)
                      (let () (declare (not safe)) (_g237447237562_)))))
              (let () (declare (not safe)) (_g237447237562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237454237778_))
                                              (let ((___splice243201243202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237454237778_
                                                        '0))))
                                                (let ((_tl237551237577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '1)))
                                                      (_target237549237575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237551237577_))
                                                      (___match243450243451_
                                                       _e237456237773_
                                                       _hd237455237776_
                                                       _tl237454237778_
                                                       ___splice243201243202_
                                                       _target237549237575_
                                                       _tl237551237577_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237447237562_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237454237778_))
                                          (let ((___splice243201243202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237454237778_
                                                    '0))))
                                            (let ((_tl237551237577_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243201243202_
                                                      '1)))
                                                  (_target237549237575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243201243202_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237551237577_))
                                                  (___match243450243451_
                                                   _e237456237773_
                                                   _hd237455237776_
                                                   _tl237454237778_
                                                   ___splice243201243202_
                                                   _target237549237575_
                                                   _tl237551237577_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237447237562_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237447237562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237454237778_))
                                      (let ((___splice243201243202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237454237778_
                                                '0))))
                                        (let ((_tl237551237577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '1)))
                                              (_target237549237575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237551237577_))
                                              (___match243450243451_
                                               _e237456237773_
                                               _hd237455237776_
                                               _tl237454237778_
                                               ___splice243201243202_
                                               _target237549237575_
                                               _tl237551237577_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237447237562_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237454237778_))
                              (let ((___splice243201243202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237454237778_
                                        '0))))
                                (let ((_tl237551237577_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243201243202_
                                          '1)))
                                      (_target237549237575_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243201243202_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237551237577_))
                                      (___match243450243451_
                                       _e237456237773_
                                       _hd237455237776_
                                       _tl237454237778_
                                       ___splice243201243202_
                                       _target237549237575_
                                       _tl237551237577_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237447237562_)))))
                              (let ()
                                (declare (not safe))
                                (_g237447237562_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237454237778_))
                      (let ((___splice243201243202_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237454237778_ '0))))
                        (let ((_tl237551237577_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '1)))
                              (_target237549237575_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237551237577_))
                              (___match243450243451_
                               _e237456237773_
                               _hd237455237776_
                               _tl237454237778_
                               ___splice243201243202_
                               _target237549237575_
                               _tl237551237577_)
                              (let ()
                                (declare (not safe))
                                (_g237447237562_)))))
                      (let () (declare (not safe)) (_g237447237562_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237454237778_))
                  (let ((___splice243201243202_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237454237778_ '0))))
                    (let ((_tl237551237577_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243201243202_ '1)))
                          (_target237549237575_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243201243202_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237551237577_))
                          (___match243450243451_
                           _e237456237773_
                           _hd237455237776_
                           _tl237454237778_
                           ___splice243201243202_
                           _target237549237575_
                           _tl237551237577_)
                          (let () (declare (not safe)) (_g237447237562_)))))
                  (let () (declare (not safe)) (_g237447237562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237454237778_))
                                                  (let ((___splice243201243202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237454237778_
                                                            '0))))
                                                    (let ((_tl237551237577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '1)))
                                                          (_target237549237575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237551237577_))
                                                          (___match243450243451_
                                                           _e237456237773_
                                                           _hd237455237776_
                                                           _tl237454237778_
                                                           ___splice243201243202_
                                                           _target237549237575_
                                                           _tl237551237577_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237447237562_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237447237562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237454237778_))
                                              (let ((___splice243201243202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237454237778_
                                                        '0))))
                                                (let ((_tl237551237577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '1)))
                                                      (_target237549237575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237551237577_))
                                                      (___match243450243451_
                                                       _e237456237773_
                                                       _hd237455237776_
                                                       _tl237454237778_
                                                       ___splice243201243202_
                                                       _target237549237575_
                                                       _tl237551237577_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237447237562_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237454237778_))
                                          (let ((___splice243201243202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237454237778_
                                                    '0))))
                                            (let ((_tl237551237577_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243201243202_
                                                      '1)))
                                                  (_target237549237575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243201243202_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237551237577_))
                                                  (___match243450243451_
                                                   _e237456237773_
                                                   _hd237455237776_
                                                   _tl237454237778_
                                                   ___splice243201243202_
                                                   _target237549237575_
                                                   _tl237551237577_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237447237562_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237447237562_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237454237778_))
                                  (let ((___splice243201243202_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237454237778_
                                            '0))))
                                    (let ((_tl237551237577_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243201243202_
                                              '1)))
                                          (_target237549237575_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243201243202_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237551237577_))
                                          (___match243450243451_
                                           _e237456237773_
                                           _hd237455237776_
                                           _tl237454237778_
                                           ___splice243201243202_
                                           _target237549237575_
                                           _tl237551237577_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237447237562_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237447237562_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237454237778_))
                          (let ((___splice243201243202_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237454237778_
                                    '0))))
                            (let ((_tl237551237577_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243201243202_ '1)))
                                  (_target237549237575_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243201243202_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237551237577_))
                                  (___match243450243451_
                                   _e237456237773_
                                   _hd237455237776_
                                   _tl237454237778_
                                   ___splice243201243202_
                                   _target237549237575_
                                   _tl237551237577_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237447237562_)))))
                          (let () (declare (not safe)) (_g237447237562_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237454237778_))
                      (let ((___splice243201243202_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237454237778_ '0))))
                        (let ((_tl237551237577_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '1)))
                              (_target237549237575_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243201243202_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237551237577_))
                              (___match243450243451_
                               _e237456237773_
                               _hd237455237776_
                               _tl237454237778_
                               ___splice243201243202_
                               _target237549237575_
                               _tl237551237577_)
                              (let ()
                                (declare (not safe))
                                (_g237447237562_)))))
                      (let () (declare (not safe)) (_g237447237562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237454237778_))
                                                      (let ((___splice243201243202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237454237778_ '0))))
                (let ((_tl237551237577_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243201243202_ '1)))
                      (_target237549237575_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243201243202_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237551237577_))
                      (___match243450243451_
                       _e237456237773_
                       _hd237455237776_
                       _tl237454237778_
                       ___splice243201243202_
                       _target237549237575_
                       _tl237551237577_)
                      (let () (declare (not safe)) (_g237447237562_)))))
              (let () (declare (not safe)) (_g237447237562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237454237778_))
                                                  (let ((___splice243201243202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237454237778_
                                                            '0))))
                                                    (let ((_tl237551237577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '1)))
                                                          (_target237549237575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243201243202_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237551237577_))
                                                          (___match243450243451_
                                                           _e237456237773_
                                                           _hd237455237776_
                                                           _tl237454237778_
                                                           ___splice243201243202_
                                                           _target237549237575_
                                                           _tl237551237577_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237447237562_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237447237562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237454237778_))
                                              (let ((___splice243201243202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237454237778_
                                                        '0))))
                                                (let ((_tl237551237577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '1)))
                                                      (_target237549237575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243201243202_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237551237577_))
                                                      (___match243450243451_
                                                       _e237456237773_
                                                       _hd237455237776_
                                                       _tl237454237778_
                                                       ___splice243201243202_
                                                       _target237549237575_
                                                       _tl237551237577_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237447237562_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237454237778_))
                                      (let ((___splice243201243202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237454237778_
                                                '0))))
                                        (let ((_tl237551237577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '1)))
                                              (_target237549237575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243201243202_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237551237577_))
                                              (___match243450243451_
                                               _e237456237773_
                                               _hd237455237776_
                                               _tl237454237778_
                                               ___splice243201243202_
                                               _target237549237575_
                                               _tl237551237577_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237447237562_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237447237562_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237454237778_))
                              (let ((___splice243201243202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237454237778_
                                        '0))))
                                (let ((_tl237551237577_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243201243202_
                                          '1)))
                                      (_target237549237575_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243201243202_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237551237577_))
                                      (___match243450243451_
                                       _e237456237773_
                                       _hd237455237776_
                                       _tl237454237778_
                                       ___splice243201243202_
                                       _target237549237575_
                                       _tl237551237577_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237447237562_)))))
                              (let ()
                                (declare (not safe))
                                (_g237447237562_))))))
                  (let () (declare (not safe)) (_g237447237562_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx237383_)
        (let* ((___stx243453243454_ _stx237383_)
               (_g237386237399_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243453243454_)))))
          (let ((___kont243455243456_
                 (lambda (_L237427_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L237427_))))
                (___kont243457243458_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243453243454_))
                (let ((_e237391237411_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243453243454_))))
                  (let ((_tl237389237416_
                         (let () (declare (not safe)) (##cdr _e237391237411_)))
                        (_hd237390237414_
                         (let ()
                           (declare (not safe))
                           (##car _e237391237411_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237389237416_))
                        (let ((_e237394237419_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237389237416_))))
                          (let ((_tl237392237424_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237394237419_)))
                                (_hd237393237422_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237394237419_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl237392237424_))
                                (___kont243455243456_ _hd237393237422_)
                                (___kont243457243458_))))
                        (___kont243457243458_))))
                (___kont243457243458_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx237263_)
        (let* ((_g237265237282_
                (lambda (_g237266237279_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237266237279_))))
               (_g237264237380_
                (lambda (_g237266237285_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237266237285_))
                      (let ((_e237271237287_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237266237285_))))
                        (let ((_hd237270237290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237271237287_)))
                              (_tl237269237292_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237271237287_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237269237292_))
                              (let ((_e237274237295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237269237292_))))
                                (let ((_hd237273237298_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237274237295_)))
                                      (_tl237272237300_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237274237295_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237272237300_))
                                      (let ((_e237277237303_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237272237300_))))
                                        (let ((_hd237276237306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237277237303_)))
                                              (_tl237275237308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237277237303_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237275237308_))
                                              ((lambda (_L237311_ _L237312_)
                                                 (let* ((___stx243475243476_
                                                         _L237312_)
                                                        (_g237328237339_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx243475243476_)))))
                                                   (let ((___kont243477243478_
                                                          (lambda (_L237359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L237360_)
                    (let ((_$e237372_
                           (let ((__tmp245200
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L237360_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp245200
                              '#f))))
                      (if _$e237372_
                          ((lambda (_type-e237375_)
                             (_type-e237375_ _stx237263_ _L237312_))
                           _$e237372_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L237311_))))))
                 (___kont243479243480_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L237311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match243486243487_
                                                            (lambda (_e237334237351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd237333237354_
                             _tl237332237356_)
                      (let ((_L237359_ _tl237332237356_)
                            (_L237360_ _hd237333237354_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L237360_))
                            (___kont243477243478_ _L237359_ _L237360_)
                            (___kont243479243480_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx243475243476_))
                   (let ((_e237334237351_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx243475243476_))))
                     (let ((_tl237332237356_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237334237351_)))
                           (_hd237333237354_
                            (let ()
                              (declare (not safe))
                              (##car _e237334237351_))))
                       (___match243486243487_
                        _e237334237351_
                        _hd237333237354_
                        _tl237332237356_)))
                   (___kont243479243480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd237276237306_
                                               _hd237273237298_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237265237282_
                                                 _g237266237285_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237265237282_ _g237266237285_)))))
                              (let ()
                                (declare (not safe))
                                (_g237265237282_ _g237266237285_)))))
                      (let ()
                        (declare (not safe))
                        (_g237265237282_ _g237266237285_))))))
          (declare (not safe))
          (_g237264237380_ _stx237263_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx237107_ _ann237108_)
        (let* ((_g237110237147_
                (lambda (_g237111237144_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237111237144_))))
               (_g237109237260_
                (lambda (_g237111237150_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237111237150_))
                      (let ((_e237121237152_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237111237150_))))
                        (let ((_hd237120237155_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237121237152_)))
                              (_tl237119237157_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237121237152_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237119237157_))
                              (let ((_e237124237160_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237119237157_))))
                                (let ((_hd237123237163_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237124237160_)))
                                      (_tl237122237165_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237124237160_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237122237165_))
                                      (let ((_e237127237168_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237122237165_))))
                                        (let ((_hd237126237171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237127237168_)))
                                              (_tl237125237173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237127237168_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237125237173_))
                                              (let ((_e237130237176_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237125237173_))))
                                                (let ((_hd237129237179_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237130237176_)))
                                                      (_tl237128237181_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237130237176_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237128237181_))
                                                      (let ((_e237133237184_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237128237181_))))
                (let ((_hd237132237187_
                       (let () (declare (not safe)) (##car _e237133237184_)))
                      (_tl237131237189_
                       (let () (declare (not safe)) (##cdr _e237133237184_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl237131237189_))
                      (let ((_e237136237192_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237131237189_))))
                        (let ((_hd237135237195_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237136237192_)))
                              (_tl237134237197_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237136237192_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237134237197_))
                              (let ((_e237139237200_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237134237197_))))
                                (let ((_hd237138237203_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237139237200_)))
                                      (_tl237137237205_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237139237200_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237137237205_))
                                      (let ((_e237142237208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237137237205_))))
                                        (let ((_hd237141237211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237142237208_)))
                                              (_tl237140237213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237142237208_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237140237213_))
                                              ((lambda (_L237216_
                                                        _L237217_
                                                        _L237218_
                                                        _L237219_
                                                        _L237220_
                                                        _L237221_
                                                        _L237222_)
                                                 (let ((_type-id237252_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237222_)))
                                                       (_super237253_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L237221_)))
                                                       (_slots237254_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L237220_)))
                                                       (_ctor-method237255_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237219_)))
                                                       (_struct?237256_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237218_)))
                                                       (_final?237257_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237217_)))
                                                       (_metaclass237258_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L237216_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L237216_))
                                                            '#f)))
                                                   (let ((__obj245158
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
                                                      __obj245158
                                                      _type-id237252_
                                                      _super237253_
                                                      _slots237254_
                                                      _ctor-method237255_
                                                      _struct?237256_
                                                      _final?237257_
                                                      _metaclass237258_)
                                                     __obj245158)))
                                               _hd237141237211_
                                               _hd237138237203_
                                               _hd237135237195_
                                               _hd237132237187_
                                               _hd237129237179_
                                               _hd237126237171_
                                               _hd237123237163_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237110237147_
                                                 _g237111237150_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237110237147_ _g237111237150_)))))
                              (let ()
                                (declare (not safe))
                                (_g237110237147_ _g237111237150_)))))
                      (let ()
                        (declare (not safe))
                        (_g237110237147_ _g237111237150_)))))
              (let ()
                (declare (not safe))
                (_g237110237147_ _g237111237150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237110237147_
                                                 _g237111237150_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237110237147_ _g237111237150_)))))
                              (let ()
                                (declare (not safe))
                                (_g237110237147_ _g237111237150_)))))
                      (let ()
                        (declare (not safe))
                        (_g237110237147_ _g237111237150_))))))
          (declare (not safe))
          (_g237109237260_ _ann237108_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx237055_ _ann237056_)
        (let* ((_g237058237071_
                (lambda (_g237059237068_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237059237068_))))
               (_g237057237104_
                (lambda (_g237059237074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237059237074_))
                      (let ((_e237063237076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237059237074_))))
                        (let ((_hd237062237079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237063237076_)))
                              (_tl237061237081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237063237076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237061237081_))
                              (let ((_e237066237084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237061237081_))))
                                (let ((_hd237065237087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237066237084_)))
                                      (_tl237064237089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237066237084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237064237089_))
                                      ((lambda (_L237092_)
                                         (let ((__tmp245201
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L237092_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp245201)))
                                       _hd237065237087_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237058237071_ _g237059237074_)))))
                              (let ()
                                (declare (not safe))
                                (_g237058237071_ _g237059237074_)))))
                      (let ()
                        (declare (not safe))
                        (_g237058237071_ _g237059237074_))))))
          (declare (not safe))
          (_g237057237104_ _ann237056_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx237003_ _ann237004_)
        (let* ((_g237006237019_
                (lambda (_g237007237016_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237007237016_))))
               (_g237005237052_
                (lambda (_g237007237022_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237007237022_))
                      (let ((_e237011237024_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237007237022_))))
                        (let ((_hd237010237027_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237011237024_)))
                              (_tl237009237029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237011237024_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237009237029_))
                              (let ((_e237014237032_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237009237029_))))
                                (let ((_hd237013237035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237014237032_)))
                                      (_tl237012237037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237014237032_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237012237037_))
                                      ((lambda (_L237040_)
                                         (let ((__tmp245202
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L237040_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp245202)))
                                       _hd237013237035_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237006237019_ _g237007237022_)))))
                              (let ()
                                (declare (not safe))
                                (_g237006237019_ _g237007237022_)))))
                      (let ()
                        (declare (not safe))
                        (_g237006237019_ _g237007237022_))))))
          (declare (not safe))
          (_g237005237052_ _ann237004_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx236919_ _ann236920_)
        (let* ((_g236922236943_
                (lambda (_g236923236940_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236923236940_))))
               (_g236921237000_
                (lambda (_g236923236946_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236923236946_))
                      (let ((_e236929236948_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236923236946_))))
                        (let ((_hd236928236951_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236929236948_)))
                              (_tl236927236953_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236929236948_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236927236953_))
                              (let ((_e236932236956_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236927236953_))))
                                (let ((_hd236931236959_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236932236956_)))
                                      (_tl236930236961_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236932236956_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236930236961_))
                                      (let ((_e236935236964_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236930236961_))))
                                        (let ((_hd236934236967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236935236964_)))
                                              (_tl236933236969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236935236964_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236933236969_))
                                              (let ((_e236938236972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236933236969_))))
                                                (let ((_hd236937236975_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236938236972_)))
                                                      (_tl236936236977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236938236972_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236936236977_))
                                                      ((lambda (_L236980_
                                                                _L236981_
                                                                _L236982_)
                                                         (let ((__tmp245205
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236982_)))
                       (__tmp245204
                        (let () (declare (not safe)) (gx#stx-e _L236981_)))
                       (__tmp245203
                        (let () (declare (not safe)) (gx#stx-e _L236980_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp245205
                    __tmp245204
                    __tmp245203)))
               _hd236937236975_
               _hd236934236967_
               _hd236931236959_)
              (let ()
                (declare (not safe))
                (_g236922236943_ _g236923236946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236922236943_
                                                 _g236923236946_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236922236943_ _g236923236946_)))))
                              (let ()
                                (declare (not safe))
                                (_g236922236943_ _g236923236946_)))))
                      (let ()
                        (declare (not safe))
                        (_g236922236943_ _g236923236946_))))))
          (declare (not safe))
          (_g236921237000_ _ann236920_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx236835_ _ann236836_)
        (let* ((_g236838236859_
                (lambda (_g236839236856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236839236856_))))
               (_g236837236916_
                (lambda (_g236839236862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236839236862_))
                      (let ((_e236845236864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236839236862_))))
                        (let ((_hd236844236867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236845236864_)))
                              (_tl236843236869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236845236864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236843236869_))
                              (let ((_e236848236872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236843236869_))))
                                (let ((_hd236847236875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236848236872_)))
                                      (_tl236846236877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236848236872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236846236877_))
                                      (let ((_e236851236880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236846236877_))))
                                        (let ((_hd236850236883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236851236880_)))
                                              (_tl236849236885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236851236880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236849236885_))
                                              (let ((_e236854236888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236849236885_))))
                                                (let ((_hd236853236891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236854236888_)))
                                                      (_tl236852236893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236854236888_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236852236893_))
                                                      ((lambda (_L236896_
                                                                _L236897_
                                                                _L236898_)
                                                         (let ((__tmp245208
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236898_)))
                       (__tmp245207
                        (let () (declare (not safe)) (gx#stx-e _L236897_)))
                       (__tmp245206
                        (let () (declare (not safe)) (gx#stx-e _L236896_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp245208
                    __tmp245207
                    __tmp245206)))
               _hd236853236891_
               _hd236850236883_
               _hd236847236875_)
              (let ()
                (declare (not safe))
                (_g236838236859_ _g236839236862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236838236859_
                                                 _g236839236862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236838236859_ _g236839236862_)))))
                              (let ()
                                (declare (not safe))
                                (_g236838236859_ _g236839236862_)))))
                      (let ()
                        (declare (not safe))
                        (_g236838236859_ _g236839236862_))))))
          (declare (not safe))
          (_g236837236916_ _ann236836_))))
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
      (lambda (_stx235955_)
        (let* ((___stx243489243490_ _stx235955_)
               (_g235961236157_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243489243490_)))))
          (let ((___kont243491243492_
                 (lambda (_L236823_)
                   (let ((__obj245159
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245159
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236823_))
                      '#f)
                     __obj245159)))
                (___kont243493243494_
                 (lambda (_L236750_
                          _L236751_
                          _L236752_
                          _L236753_
                          _L236754_
                          _L236755_)
                   (let* ((_tab236805_
                           (let () (declare (not safe)) (gx#stx-e _L236752_)))
                          (_keys236807_
                           (if _tab236805_
                               (let ((__tmp245209 (vector->list _tab236805_)))
                                 (declare (not safe))
                                 (filter values __tmp245209))
                               '#f)))
                     (let ((__tmp245210
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L236751_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys236807_
                        __tmp245210)))))
                (___kont243495243496_
                 (lambda (_L236483_
                          _L236484_
                          _L236485_
                          _L236486_
                          _L236487_
                          _L236488_
                          _L236489_
                          _L236490_
                          _L236491_
                          _L236492_)
                   (let ((__tmp245212
                          (map gx#stx-e
                               (let ((__tmp245213
                                      (lambda (_g236585236588_ _g236586236590_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g236585236588_
                                                _g236586236590_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp245213 '() _L236485_))))
                         (__tmp245211
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236489_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp245212
                      __tmp245211))))
                (___kont243499243500_
                 (lambda (_L236193_)
                   (let ((__obj245160
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245160
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236193_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L236193_)))
                     __obj245160)))
                (___kont243501243502_
                 (lambda (_L236170_)
                   (let ((__obj245161
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245161
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236170_))
                      '#f)
                     __obj245161))))
            (let* ((___match243808243809_
                    (lambda (_e236148236185_ _hd236147236188_ _tl236146236190_)
                      (let ((_L236193_ _tl236146236190_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L236193_))
                            (___kont243499243500_ _L236193_)
                            (___kont243501243502_ _tl236146236190_)))))
                   (___match243802243803_
                    (lambda (_e236042236207_
                             _hd236041236210_
                             _tl236040236212_
                             _e236045236215_
                             _hd236044236218_
                             _tl236043236220_
                             _e236048236223_
                             _hd236047236226_
                             _tl236046236228_
                             _e236051236231_
                             _hd236050236234_
                             _tl236049236236_
                             _e236054236239_
                             _hd236053236242_
                             _tl236052236244_
                             _e236057236247_
                             _hd236056236250_
                             _tl236055236252_
                             _e236060236255_
                             _hd236059236258_
                             _tl236058236260_
                             _e236063236263_
                             _hd236062236266_
                             _tl236061236268_
                             _e236066236271_
                             _hd236065236274_
                             _tl236064236276_
                             _e236069236279_
                             _hd236068236282_
                             _tl236067236284_
                             _e236072236287_
                             _hd236071236290_
                             _tl236070236292_
                             _e236075236295_
                             _hd236074236298_
                             _tl236073236300_
                             _e236078236303_
                             _hd236077236306_
                             _tl236076236308_
                             _e236081236311_
                             _hd236080236314_
                             _tl236079236316_
                             ___splice243497243498_
                             _target236082236319_
                             _tl236084236321_
                             _e236099236324_
                             _hd236098236327_
                             _tl236097236329_
                             _e236102236332_
                             _hd236101236335_
                             _tl236100236337_
                             _e236105236340_
                             _hd236104236343_
                             _tl236103236345_)
                      (letrec ((_loop236085236348_
                                (lambda (_hd236083236351_
                                         _-absent-value236089236353_
                                         _key236090236355_
                                         _-xkwvar236091236357_
                                         _-hash-ref236092236359_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd236083236351_))
                                      (let ((_e236086236362_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd236083236351_))))
                                        (let ((_lp-tl236088236367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236086236362_)))
                                              (_lp-hd236087236365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236086236362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd236087236365_))
                                              (let ((_e236108236370_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd236087236365_))))
                                                (let ((_tl236106236375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236108236370_)))
                                                      (_hd236107236373_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236108236370_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd236107236373_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd236107236373_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236106236375_))
                      (let ((_e236111236378_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236106236375_))))
                        (let ((_tl236109236383_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236111236378_)))
                              (_hd236110236381_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236111236378_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236110236381_))
                              (let ((_e236114236386_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236110236381_))))
                                (let ((_tl236112236391_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236114236386_)))
                                      (_hd236113236389_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236114236386_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd236113236389_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd236113236389_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236112236391_))
                                              (let ((_e236117236394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236112236391_))))
                                                (let ((_tl236115236399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236117236394_)))
                                                      (_hd236116236397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236117236394_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236115236399_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236109236383_))
                                                          (let ((_e236120236402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236109236383_))))
                    (let ((_tl236118236407_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236120236402_)))
                          (_hd236119236405_
                           (let ()
                             (declare (not safe))
                             (##car _e236120236402_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236119236405_))
                          (let ((_e236123236410_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236119236405_))))
                            (let ((_tl236121236415_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236123236410_)))
                                  (_hd236122236413_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236123236410_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236122236413_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd236122236413_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236121236415_))
                                          (let ((_e236126236418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236121236415_))))
                                            (let ((_tl236124236423_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236126236418_)))
                                                  (_hd236125236421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236126236418_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236124236423_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236118236407_))
                                                      (let ((_e236129236426_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236118236407_))))
                (let ((_tl236127236431_
                       (let () (declare (not safe)) (##cdr _e236129236426_)))
                      (_hd236128236429_
                       (let () (declare (not safe)) (##car _e236129236426_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236128236429_))
                      (let ((_e236132236434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236128236429_))))
                        (let ((_tl236130236439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236132236434_)))
                              (_hd236131236437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236132236434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd236131236437_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd236131236437_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236130236439_))
                                      (let ((_e236135236442_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236130236439_))))
                                        (let ((_tl236133236447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236135236442_)))
                                              (_hd236134236445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236135236442_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236133236447_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236127236431_))
                                                  (let ((_e236138236450_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236127236431_))))
                                                    (let ((_tl236136236455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236138236450_)))
                                                          (_hd236137236453_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236138236450_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236137236453_))
                                                          (let ((_e236141236458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236137236453_))))
                    (let ((_tl236139236463_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236141236458_)))
                          (_hd236140236461_
                           (let ()
                             (declare (not safe))
                             (##car _e236141236458_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236140236461_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd236140236461_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236139236463_))
                                  (let ((_e236144236466_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236139236463_))))
                                    (let ((_tl236142236471_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236144236466_)))
                                          (_hd236143236469_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236144236466_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236142236471_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236136236455_))
                                              (let ((__tmp245228
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236143236469_
                                                             _-absent-value236089236353_)))
                                                    (__tmp245227
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236134236445_
                                                             _key236090236355_)))
                                                    (__tmp245226
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236125236421_
                                                             _-xkwvar236091236357_)))
                                                    (__tmp245225
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236116236397_
                                                             _-hash-ref236092236359_))))
                                                (declare (not safe))
                                                (_loop236085236348_
                                                 _lp-tl236088236367_
                                                 __tmp245228
                                                 __tmp245227
                                                 __tmp245226
                                                 __tmp245225))
                                              (___match243808243809_
                                               _e236042236207_
                                               _hd236041236210_
                                               _tl236040236212_))
                                          (___match243808243809_
                                           _e236042236207_
                                           _hd236041236210_
                                           _tl236040236212_))))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))
                              (___match243808243809_
                               _e236042236207_
                               _hd236041236210_
                               _tl236040236212_))
                          (___match243808243809_
                           _e236042236207_
                           _hd236041236210_
                           _tl236040236212_))))
                  (___match243808243809_
                   _e236042236207_
                   _hd236041236210_
                   _tl236040236212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_))
                                              (___match243808243809_
                                               _e236042236207_
                                               _hd236041236210_
                                               _tl236040236212_))))
                                      (___match243808243809_
                                       _e236042236207_
                                       _hd236041236210_
                                       _tl236040236212_))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))
                              (___match243808243809_
                               _e236042236207_
                               _hd236041236210_
                               _tl236040236212_))))
                      (___match243808243809_
                       _e236042236207_
                       _hd236041236210_
                       _tl236040236212_))))
              (___match243808243809_
               _e236042236207_
               _hd236041236210_
               _tl236040236212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_))))
                                          (___match243808243809_
                                           _e236042236207_
                                           _hd236041236210_
                                           _tl236040236212_))
                                      (___match243808243809_
                                       _e236042236207_
                                       _hd236041236210_
                                       _tl236040236212_))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))))
                          (___match243808243809_
                           _e236042236207_
                           _hd236041236210_
                           _tl236040236212_))))
                  (___match243808243809_
                   _e236042236207_
                   _hd236041236210_
                   _tl236040236212_))
              (___match243808243809_
               _e236042236207_
               _hd236041236210_
               _tl236040236212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243808243809_
                                               _e236042236207_
                                               _hd236041236210_
                                               _tl236040236212_))
                                          (___match243808243809_
                                           _e236042236207_
                                           _hd236041236210_
                                           _tl236040236212_))
                                      (___match243808243809_
                                       _e236042236207_
                                       _hd236041236210_
                                       _tl236040236212_))))
                              (___match243808243809_
                               _e236042236207_
                               _hd236041236210_
                               _tl236040236212_))))
                      (___match243808243809_
                       _e236042236207_
                       _hd236041236210_
                       _tl236040236212_))
                  (___match243808243809_
                   _e236042236207_
                   _hd236041236210_
                   _tl236040236212_))
              (___match243808243809_
               _e236042236207_
               _hd236041236210_
               _tl236040236212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243808243809_
                                               _e236042236207_
                                               _hd236041236210_
                                               _tl236040236212_))))
                                      (let ((_-hash-ref236096236480_
                                             (reverse _-hash-ref236092236359_))
                                            (_-xkwvar236095236478_
                                             (reverse _-xkwvar236091236357_))
                                            (_key236094236476_
                                             (reverse _key236090236355_))
                                            (_-absent-value236093236474_
                                             (reverse _-absent-value236089236353_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236049236236_))
                                            (let ((_L236483_ _hd236104236343_)
                                                  (_L236484_
                                                   _-absent-value236093236474_)
                                                  (_L236485_ _key236094236476_)
                                                  (_L236486_
                                                   _-xkwvar236095236478_)
                                                  (_L236487_
                                                   _-hash-ref236096236480_)
                                                  (_L236488_ _hd236080236314_)
                                                  (_L236489_ _hd236071236290_)
                                                  (_L236490_ _hd236062236266_)
                                                  (_L236491_ _tl236046236228_)
                                                  (_L236492_ _hd236047236226_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236492_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236491_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L236490_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L236492_
                                                          _L236488_))
                                                       (let ((__tmp245223
                                                              (let ((__tmp245224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g236545236548_ _g236546236550_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236545236548_ _g236546236550_)))))
                        (declare (not safe))
                        (foldr1 __tmp245224 '() _L236485_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp245223))
               (let ((__tmp245222
                      (lambda (_g236552236554_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236552236554_
                           'hash-ref))))
                     (__tmp245220
                      (let ((__tmp245221
                             (lambda (_g236556236559_ _g236557236561_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236556236559_ _g236557236561_)))))
                        (declare (not safe))
                        (foldr1 __tmp245221 '() _L236487_))))
                 (declare (not safe))
                 (andmap1 __tmp245222 __tmp245220))
               (let ((__tmp245219
                      (lambda (_g236563236565_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236563236565_
                           'absent-value))))
                     (__tmp245217
                      (let ((__tmp245218
                             (lambda (_g236567236570_ _g236568236572_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236567236570_ _g236568236572_)))))
                        (declare (not safe))
                        (foldr1 __tmp245218 '() _L236484_))))
                 (declare (not safe))
                 (andmap1 __tmp245219 __tmp245217))
               (let ((__tmp245216
                      (lambda (_g236574236576_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g236574236576_ _L236492_))))
                     (__tmp245214
                      (let ((__tmp245215
                             (lambda (_g236578236581_ _g236579236583_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236578236581_ _g236579236583_)))))
                        (declare (not safe))
                        (foldr1 __tmp245215 '() _L236486_))))
                 (declare (not safe))
                 (andmap1 __tmp245216 __tmp245214)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243495243496_
                                                   _L236483_
                                                   _L236484_
                                                   _L236485_
                                                   _L236486_
                                                   _L236487_
                                                   _L236488_
                                                   _L236489_
                                                   _L236490_
                                                   _L236491_
                                                   _L236492_)
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_)))
                                            (___match243808243809_
                                             _e236042236207_
                                             _hd236041236210_
                                             _tl236040236212_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop236085236348_
                           _target236082236319_
                           '()
                           '()
                           '()
                           '())))))
                   (___match243674243675_
                    (lambda (_e236042236207_
                             _hd236041236210_
                             _tl236040236212_
                             _e236045236215_
                             _hd236044236218_
                             _tl236043236220_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236044236218_))
                          (let ((_e236048236223_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236044236218_))))
                            (let ((_tl236046236228_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236048236223_)))
                                  (_hd236047236226_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236048236223_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236043236220_))
                                  (let ((_e236051236231_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236043236220_))))
                                    (let ((_tl236049236236_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236051236231_)))
                                          (_hd236050236234_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236051236231_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd236050236234_))
                                          (let ((_e236054236239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd236050236234_))))
                                            (let ((_tl236052236244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236054236239_)))
                                                  (_hd236053236242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236054236239_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd236053236242_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd236053236242_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236052236244_))
                                                          (let ((_e236057236247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236052236244_))))
                    (let ((_tl236055236252_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236057236247_)))
                          (_hd236056236250_
                           (let ()
                             (declare (not safe))
                             (##car _e236057236247_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236056236250_))
                          (let ((_e236060236255_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236056236250_))))
                            (let ((_tl236058236260_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236060236255_)))
                                  (_hd236059236258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236060236255_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236059236258_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd236059236258_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236058236260_))
                                          (let ((_e236063236263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236058236260_))))
                                            (let ((_tl236061236268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236063236263_)))
                                                  (_hd236062236266_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236063236263_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236061236268_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236055236252_))
                                                      (let ((_e236066236271_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236055236252_))))
                (let ((_tl236064236276_
                       (let () (declare (not safe)) (##cdr _e236066236271_)))
                      (_hd236065236274_
                       (let () (declare (not safe)) (##car _e236066236271_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236065236274_))
                      (let ((_e236069236279_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236065236274_))))
                        (let ((_tl236067236284_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236069236279_)))
                              (_hd236068236282_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236069236279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd236068236282_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd236068236282_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236067236284_))
                                      (let ((_e236072236287_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236067236284_))))
                                        (let ((_tl236070236292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236072236287_)))
                                              (_hd236071236290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236072236287_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236070236292_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236064236276_))
                                                  (let ((_e236075236295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236064236276_))))
                                                    (let ((_tl236073236300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236075236295_)))
                                                          (_hd236074236298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236075236295_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236074236298_))
                                                          (let ((_e236078236303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236074236298_))))
                    (let ((_tl236076236308_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236078236303_)))
                          (_hd236077236306_
                           (let ()
                             (declare (not safe))
                             (##car _e236078236303_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236077236306_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd236077236306_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236076236308_))
                                  (let ((_e236081236311_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236076236308_))))
                                    (let ((_tl236079236316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236081236311_)))
                                          (_hd236080236314_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236081236311_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236079236316_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236073236300_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl236073236300_))
                                                        '1)
                                                  (let ((___splice243497243498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236073236300_
                                                            '1))))
                                                    (let ((_tl236084236321_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243497243498_
                                                              '1)))
                                                          (_target236082236319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243497243498_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236084236321_))
                                                          (let ((_e236099236324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236084236321_))))
                    (let ((_tl236097236329_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236099236324_)))
                          (_hd236098236327_
                           (let ()
                             (declare (not safe))
                             (##car _e236099236324_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236098236327_))
                          (let ((_e236102236332_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236098236327_))))
                            (let ((_tl236100236337_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236102236332_)))
                                  (_hd236101236335_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236102236332_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236101236335_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd236101236335_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236100236337_))
                                          (let ((_e236105236340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236100236337_))))
                                            (let ((_tl236103236345_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236105236340_)))
                                                  (_hd236104236343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236105236340_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236103236345_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236097236329_))
                                                      (___match243802243803_
                                                       _e236042236207_
                                                       _hd236041236210_
                                                       _tl236040236212_
                                                       _e236045236215_
                                                       _hd236044236218_
                                                       _tl236043236220_
                                                       _e236048236223_
                                                       _hd236047236226_
                                                       _tl236046236228_
                                                       _e236051236231_
                                                       _hd236050236234_
                                                       _tl236049236236_
                                                       _e236054236239_
                                                       _hd236053236242_
                                                       _tl236052236244_
                                                       _e236057236247_
                                                       _hd236056236250_
                                                       _tl236055236252_
                                                       _e236060236255_
                                                       _hd236059236258_
                                                       _tl236058236260_
                                                       _e236063236263_
                                                       _hd236062236266_
                                                       _tl236061236268_
                                                       _e236066236271_
                                                       _hd236065236274_
                                                       _tl236064236276_
                                                       _e236069236279_
                                                       _hd236068236282_
                                                       _tl236067236284_
                                                       _e236072236287_
                                                       _hd236071236290_
                                                       _tl236070236292_
                                                       _e236075236295_
                                                       _hd236074236298_
                                                       _tl236073236300_
                                                       _e236078236303_
                                                       _hd236077236306_
                                                       _tl236076236308_
                                                       _e236081236311_
                                                       _hd236080236314_
                                                       _tl236079236316_
                                                       ___splice243497243498_
                                                       _target236082236319_
                                                       _tl236084236321_
                                                       _e236099236324_
                                                       _hd236098236327_
                                                       _tl236097236329_
                                                       _e236102236332_
                                                       _hd236101236335_
                                                       _tl236100236337_
                                                       _e236105236340_
                                                       _hd236104236343_
                                                       _tl236103236345_)
                                                      (___match243808243809_
                                                       _e236042236207_
                                                       _hd236041236210_
                                                       _tl236040236212_))
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_))))
                                          (___match243808243809_
                                           _e236042236207_
                                           _hd236041236210_
                                           _tl236040236212_))
                                      (___match243808243809_
                                       _e236042236207_
                                       _hd236041236210_
                                       _tl236040236212_))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))))
                          (___match243808243809_
                           _e236042236207_
                           _hd236041236210_
                           _tl236040236212_))))
                  (___match243808243809_
                   _e236042236207_
                   _hd236041236210_
                   _tl236040236212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_))
                                              (___match243808243809_
                                               _e236042236207_
                                               _hd236041236210_
                                               _tl236040236212_))
                                          (___match243808243809_
                                           _e236042236207_
                                           _hd236041236210_
                                           _tl236040236212_))))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))
                              (___match243808243809_
                               _e236042236207_
                               _hd236041236210_
                               _tl236040236212_))
                          (___match243808243809_
                           _e236042236207_
                           _hd236041236210_
                           _tl236040236212_))))
                  (___match243808243809_
                   _e236042236207_
                   _hd236041236210_
                   _tl236040236212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_))
                                              (___match243808243809_
                                               _e236042236207_
                                               _hd236041236210_
                                               _tl236040236212_))))
                                      (___match243808243809_
                                       _e236042236207_
                                       _hd236041236210_
                                       _tl236040236212_))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))
                              (___match243808243809_
                               _e236042236207_
                               _hd236041236210_
                               _tl236040236212_))))
                      (___match243808243809_
                       _e236042236207_
                       _hd236041236210_
                       _tl236040236212_))))
              (___match243808243809_
               _e236042236207_
               _hd236041236210_
               _tl236040236212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_))))
                                          (___match243808243809_
                                           _e236042236207_
                                           _hd236041236210_
                                           _tl236040236212_))
                                      (___match243808243809_
                                       _e236042236207_
                                       _hd236041236210_
                                       _tl236040236212_))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))))
                          (___match243808243809_
                           _e236042236207_
                           _hd236041236210_
                           _tl236040236212_))))
                  (___match243808243809_
                   _e236042236207_
                   _hd236041236210_
                   _tl236040236212_))
              (___match243808243809_
               _e236042236207_
               _hd236041236210_
               _tl236040236212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243808243809_
                                                   _e236042236207_
                                                   _hd236041236210_
                                                   _tl236040236212_))))
                                          (___match243808243809_
                                           _e236042236207_
                                           _hd236041236210_
                                           _tl236040236212_))))
                                  (___match243808243809_
                                   _e236042236207_
                                   _hd236041236210_
                                   _tl236040236212_))))
                          (___match243808243809_
                           _e236042236207_
                           _hd236041236210_
                           _tl236040236212_))))
                   (___match243662243663_
                    (lambda (_e235975236598_
                             _hd235974236601_
                             _tl235973236603_
                             _e235978236606_
                             _hd235977236609_
                             _tl235976236611_
                             _e235981236614_
                             _hd235980236617_
                             _tl235979236619_
                             _e235984236622_
                             _hd235983236625_
                             _tl235982236627_
                             _e235987236630_
                             _hd235986236633_
                             _tl235985236635_
                             _e235990236638_
                             _hd235989236641_
                             _tl235988236643_
                             _e235993236646_
                             _hd235992236649_
                             _tl235991236651_
                             _e235996236654_
                             _hd235995236657_
                             _tl235994236659_
                             _e235999236662_
                             _hd235998236665_
                             _tl235997236667_
                             _e236002236670_
                             _hd236001236673_
                             _tl236000236675_
                             _e236005236678_
                             _hd236004236681_
                             _tl236003236683_
                             _e236008236686_
                             _hd236007236689_
                             _tl236006236691_
                             _e236011236694_
                             _hd236010236697_
                             _tl236009236699_
                             _e236014236702_
                             _hd236013236705_
                             _tl236012236707_
                             _e236017236710_
                             _hd236016236713_
                             _tl236015236715_
                             _e236020236718_
                             _hd236019236721_
                             _tl236018236723_
                             _e236023236726_
                             _hd236022236729_
                             _tl236021236731_
                             _e236026236734_
                             _hd236025236737_
                             _tl236024236739_
                             _e236029236742_
                             _hd236028236745_
                             _tl236027236747_)
                      (let ((_L236750_ _hd236028236745_)
                            (_L236751_ _hd236019236721_)
                            (_L236752_ _hd236010236697_)
                            (_L236753_ _hd236001236673_)
                            (_L236754_ _hd235992236649_)
                            (_L236755_ _hd235977236609_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L236755_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L236754_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L236753_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L236755_ _L236750_)))
                            (___kont243493243494_
                             _L236750_
                             _L236751_
                             _L236752_
                             _L236753_
                             _L236754_
                             _L236755_)
                            (___match243674243675_
                             _e235975236598_
                             _hd235974236601_
                             _tl235973236603_
                             _e235978236606_
                             _hd235977236609_
                             _tl235976236611_)))))
                   (___match243516243517_
                    (lambda (_e235975236598_ _hd235974236601_ _tl235973236603_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235973236603_))
                          (let ((_e235978236606_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235973236603_))))
                            (let ((_tl235976236611_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235978236606_)))
                                  (_hd235977236609_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235978236606_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235976236611_))
                                  (let ((_e235981236614_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235976236611_))))
                                    (let ((_tl235979236619_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235981236614_)))
                                          (_hd235980236617_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235981236614_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235980236617_))
                                          (let ((_e235984236622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235980236617_))))
                                            (let ((_tl235982236627_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235984236622_)))
                                                  (_hd235983236625_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235984236622_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235983236625_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235983236625_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235982236627_))
                                                          (let ((_e235987236630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235982236627_))))
                    (let ((_tl235985236635_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235987236630_)))
                          (_hd235986236633_
                           (let ()
                             (declare (not safe))
                             (##car _e235987236630_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235986236633_))
                          (let ((_e235990236638_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235986236633_))))
                            (let ((_tl235988236643_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235990236638_)))
                                  (_hd235989236641_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235990236638_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235989236641_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235989236641_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235988236643_))
                                          (let ((_e235993236646_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235988236643_))))
                                            (let ((_tl235991236651_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235993236646_)))
                                                  (_hd235992236649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235993236646_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235991236651_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235985236635_))
                                                      (let ((_e235996236654_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235985236635_))))
                (let ((_tl235994236659_
                       (let () (declare (not safe)) (##cdr _e235996236654_)))
                      (_hd235995236657_
                       (let () (declare (not safe)) (##car _e235996236654_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235995236657_))
                      (let ((_e235999236662_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235995236657_))))
                        (let ((_tl235997236667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235999236662_)))
                              (_hd235998236665_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235999236662_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235998236665_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235998236665_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235997236667_))
                                      (let ((_e236002236670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235997236667_))))
                                        (let ((_tl236000236675_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236002236670_)))
                                              (_hd236001236673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236002236670_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236000236675_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235994236659_))
                                                  (let ((_e236005236678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235994236659_))))
                                                    (let ((_tl236003236683_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236005236678_)))
                                                          (_hd236004236681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236005236678_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236004236681_))
                                                          (let ((_e236008236686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236004236681_))))
                    (let ((_tl236006236691_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236008236686_)))
                          (_hd236007236689_
                           (let ()
                             (declare (not safe))
                             (##car _e236008236686_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236007236689_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd236007236689_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236006236691_))
                                  (let ((_e236011236694_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236006236691_))))
                                    (let ((_tl236009236699_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236011236694_)))
                                          (_hd236010236697_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236011236694_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236009236699_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236003236683_))
                                              (let ((_e236014236702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236003236683_))))
                                                (let ((_tl236012236707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236014236702_)))
                                                      (_hd236013236705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236014236702_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236013236705_))
                                                      (let ((_e236017236710_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd236013236705_))))
                (let ((_tl236015236715_
                       (let () (declare (not safe)) (##cdr _e236017236710_)))
                      (_hd236016236713_
                       (let () (declare (not safe)) (##car _e236017236710_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd236016236713_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd236016236713_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236015236715_))
                              (let ((_e236020236718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236015236715_))))
                                (let ((_tl236018236723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236020236718_)))
                                      (_hd236019236721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236020236718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236018236723_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236012236707_))
                                          (let ((_e236023236726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236012236707_))))
                                            (let ((_tl236021236731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236023236726_)))
                                                  (_hd236022236729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236023236726_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236022236729_))
                                                  (let ((_e236026236734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236022236729_))))
                                                    (let ((_tl236024236739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236026236734_)))
                                                          (_hd236025236737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236026236734_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd236025236737_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd236025236737_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236024236739_))
                          (let ((_e236029236742_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236024236739_))))
                            (let ((_tl236027236747_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236029236742_)))
                                  (_hd236028236745_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236029236742_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236027236747_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236021236731_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235979236619_))
                                          (___match243662243663_
                                           _e235975236598_
                                           _hd235974236601_
                                           _tl235973236603_
                                           _e235978236606_
                                           _hd235977236609_
                                           _tl235976236611_
                                           _e235981236614_
                                           _hd235980236617_
                                           _tl235979236619_
                                           _e235984236622_
                                           _hd235983236625_
                                           _tl235982236627_
                                           _e235987236630_
                                           _hd235986236633_
                                           _tl235985236635_
                                           _e235990236638_
                                           _hd235989236641_
                                           _tl235988236643_
                                           _e235993236646_
                                           _hd235992236649_
                                           _tl235991236651_
                                           _e235996236654_
                                           _hd235995236657_
                                           _tl235994236659_
                                           _e235999236662_
                                           _hd235998236665_
                                           _tl235997236667_
                                           _e236002236670_
                                           _hd236001236673_
                                           _tl236000236675_
                                           _e236005236678_
                                           _hd236004236681_
                                           _tl236003236683_
                                           _e236008236686_
                                           _hd236007236689_
                                           _tl236006236691_
                                           _e236011236694_
                                           _hd236010236697_
                                           _tl236009236699_
                                           _e236014236702_
                                           _hd236013236705_
                                           _tl236012236707_
                                           _e236017236710_
                                           _hd236016236713_
                                           _tl236015236715_
                                           _e236020236718_
                                           _hd236019236721_
                                           _tl236018236723_
                                           _e236023236726_
                                           _hd236022236729_
                                           _tl236021236731_
                                           _e236026236734_
                                           _hd236025236737_
                                           _tl236024236739_
                                           _e236029236742_
                                           _hd236028236745_
                                           _tl236027236747_)
                                          (___match243674243675_
                                           _e235975236598_
                                           _hd235974236601_
                                           _tl235973236603_
                                           _e235978236606_
                                           _hd235977236609_
                                           _tl235976236611_))
                                      (___match243674243675_
                                       _e235975236598_
                                       _hd235974236601_
                                       _tl235973236603_
                                       _e235978236606_
                                       _hd235977236609_
                                       _tl235976236611_))
                                  (___match243674243675_
                                   _e235975236598_
                                   _hd235974236601_
                                   _tl235973236603_
                                   _e235978236606_
                                   _hd235977236609_
                                   _tl235976236611_))))
                          (___match243674243675_
                           _e235975236598_
                           _hd235974236601_
                           _tl235973236603_
                           _e235978236606_
                           _hd235977236609_
                           _tl235976236611_))
                      (___match243674243675_
                       _e235975236598_
                       _hd235974236601_
                       _tl235973236603_
                       _e235978236606_
                       _hd235977236609_
                       _tl235976236611_))
                  (___match243674243675_
                   _e235975236598_
                   _hd235974236601_
                   _tl235973236603_
                   _e235978236606_
                   _hd235977236609_
                   _tl235976236611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243674243675_
                                                   _e235975236598_
                                                   _hd235974236601_
                                                   _tl235973236603_
                                                   _e235978236606_
                                                   _hd235977236609_
                                                   _tl235976236611_))))
                                          (___match243674243675_
                                           _e235975236598_
                                           _hd235974236601_
                                           _tl235973236603_
                                           _e235978236606_
                                           _hd235977236609_
                                           _tl235976236611_))
                                      (___match243674243675_
                                       _e235975236598_
                                       _hd235974236601_
                                       _tl235973236603_
                                       _e235978236606_
                                       _hd235977236609_
                                       _tl235976236611_))))
                              (___match243674243675_
                               _e235975236598_
                               _hd235974236601_
                               _tl235973236603_
                               _e235978236606_
                               _hd235977236609_
                               _tl235976236611_))
                          (___match243674243675_
                           _e235975236598_
                           _hd235974236601_
                           _tl235973236603_
                           _e235978236606_
                           _hd235977236609_
                           _tl235976236611_))
                      (___match243674243675_
                       _e235975236598_
                       _hd235974236601_
                       _tl235973236603_
                       _e235978236606_
                       _hd235977236609_
                       _tl235976236611_))))
              (___match243674243675_
               _e235975236598_
               _hd235974236601_
               _tl235973236603_
               _e235978236606_
               _hd235977236609_
               _tl235976236611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243674243675_
                                               _e235975236598_
                                               _hd235974236601_
                                               _tl235973236603_
                                               _e235978236606_
                                               _hd235977236609_
                                               _tl235976236611_))
                                          (___match243674243675_
                                           _e235975236598_
                                           _hd235974236601_
                                           _tl235973236603_
                                           _e235978236606_
                                           _hd235977236609_
                                           _tl235976236611_))))
                                  (___match243674243675_
                                   _e235975236598_
                                   _hd235974236601_
                                   _tl235973236603_
                                   _e235978236606_
                                   _hd235977236609_
                                   _tl235976236611_))
                              (___match243674243675_
                               _e235975236598_
                               _hd235974236601_
                               _tl235973236603_
                               _e235978236606_
                               _hd235977236609_
                               _tl235976236611_))
                          (___match243674243675_
                           _e235975236598_
                           _hd235974236601_
                           _tl235973236603_
                           _e235978236606_
                           _hd235977236609_
                           _tl235976236611_))))
                  (___match243674243675_
                   _e235975236598_
                   _hd235974236601_
                   _tl235973236603_
                   _e235978236606_
                   _hd235977236609_
                   _tl235976236611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243674243675_
                                                   _e235975236598_
                                                   _hd235974236601_
                                                   _tl235973236603_
                                                   _e235978236606_
                                                   _hd235977236609_
                                                   _tl235976236611_))
                                              (___match243674243675_
                                               _e235975236598_
                                               _hd235974236601_
                                               _tl235973236603_
                                               _e235978236606_
                                               _hd235977236609_
                                               _tl235976236611_))))
                                      (___match243674243675_
                                       _e235975236598_
                                       _hd235974236601_
                                       _tl235973236603_
                                       _e235978236606_
                                       _hd235977236609_
                                       _tl235976236611_))
                                  (___match243674243675_
                                   _e235975236598_
                                   _hd235974236601_
                                   _tl235973236603_
                                   _e235978236606_
                                   _hd235977236609_
                                   _tl235976236611_))
                              (___match243674243675_
                               _e235975236598_
                               _hd235974236601_
                               _tl235973236603_
                               _e235978236606_
                               _hd235977236609_
                               _tl235976236611_))))
                      (___match243674243675_
                       _e235975236598_
                       _hd235974236601_
                       _tl235973236603_
                       _e235978236606_
                       _hd235977236609_
                       _tl235976236611_))))
              (___match243674243675_
               _e235975236598_
               _hd235974236601_
               _tl235973236603_
               _e235978236606_
               _hd235977236609_
               _tl235976236611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243674243675_
                                                   _e235975236598_
                                                   _hd235974236601_
                                                   _tl235973236603_
                                                   _e235978236606_
                                                   _hd235977236609_
                                                   _tl235976236611_))))
                                          (___match243674243675_
                                           _e235975236598_
                                           _hd235974236601_
                                           _tl235973236603_
                                           _e235978236606_
                                           _hd235977236609_
                                           _tl235976236611_))
                                      (___match243674243675_
                                       _e235975236598_
                                       _hd235974236601_
                                       _tl235973236603_
                                       _e235978236606_
                                       _hd235977236609_
                                       _tl235976236611_))
                                  (___match243674243675_
                                   _e235975236598_
                                   _hd235974236601_
                                   _tl235973236603_
                                   _e235978236606_
                                   _hd235977236609_
                                   _tl235976236611_))))
                          (___match243674243675_
                           _e235975236598_
                           _hd235974236601_
                           _tl235973236603_
                           _e235978236606_
                           _hd235977236609_
                           _tl235976236611_))))
                  (___match243674243675_
                   _e235975236598_
                   _hd235974236601_
                   _tl235973236603_
                   _e235978236606_
                   _hd235977236609_
                   _tl235976236611_))
              (___match243674243675_
               _e235975236598_
               _hd235974236601_
               _tl235973236603_
               _e235978236606_
               _hd235977236609_
               _tl235976236611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243674243675_
                                                   _e235975236598_
                                                   _hd235974236601_
                                                   _tl235973236603_
                                                   _e235978236606_
                                                   _hd235977236609_
                                                   _tl235976236611_))))
                                          (___match243674243675_
                                           _e235975236598_
                                           _hd235974236601_
                                           _tl235973236603_
                                           _e235978236606_
                                           _hd235977236609_
                                           _tl235976236611_))))
                                  (___match243674243675_
                                   _e235975236598_
                                   _hd235974236601_
                                   _tl235973236603_
                                   _e235978236606_
                                   _hd235977236609_
                                   _tl235976236611_))))
                          (___match243808243809_
                           _e235975236598_
                           _hd235974236601_
                           _tl235973236603_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243489243490_))
                  (let ((_e235966236815_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243489243490_))))
                    (let ((_tl235964236820_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235966236815_)))
                          (_hd235965236818_
                           (let ()
                             (declare (not safe))
                             (##car _e235966236815_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L236823_ _tl235964236820_))
                            (___kont243491243492_ _L236823_))
                          (___match243516243517_
                           _e235966236815_
                           _hd235965236818_
                           _tl235964236820_))))
                  (let () (declare (not safe)) (_g235961236157_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx235910_)
        (letrec ((_clause-e235912_
                  (lambda (_form235953_)
                    (let ((__obj245162
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
                       __obj245162
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form235953_))
                       (if (let ((__tmp245229
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp245229))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form235953_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form235953_))
                               '#f)
                           '#f))
                      __obj245162))))
          (let* ((_g235914235924_
                  (lambda (_g235915235921_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g235915235921_))))
                 (_g235913235950_
                  (lambda (_g235915235927_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g235915235927_))
                        (let ((_e235919235929_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g235915235927_))))
                          (let ((_hd235918235932_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235919235929_)))
                                (_tl235917235934_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235919235929_))))
                            ((lambda (_L235937_)
                               (let ((_clauses235948_
                                      (map _clause-e235912_ _L235937_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses235948_)))
                             _tl235917235934_)))
                        (let ()
                          (declare (not safe))
                          (_g235914235924_ _g235915235927_))))))
            (declare (not safe))
            (_g235913235950_ _stx235910_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx235842_)
        (let* ((_g235844235861_
                (lambda (_g235845235858_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235845235858_))))
               (_g235843235907_
                (lambda (_g235845235864_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235845235864_))
                      (let ((_e235850235866_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235845235864_))))
                        (let ((_hd235849235869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235850235866_)))
                              (_tl235848235871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235850235866_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235848235871_))
                              (let ((_e235853235874_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235848235871_))))
                                (let ((_hd235852235877_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235853235874_)))
                                      (_tl235851235879_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235853235874_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235851235879_))
                                      (let ((_e235856235882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235851235879_))))
                                        (let ((_hd235855235885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235856235882_)))
                                              (_tl235854235887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235856235882_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235854235887_))
                                              ((lambda (_L235890_ _L235891_)
                                                 (let ((__tmp245230
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L235890_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp245230
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd235855235885_
                                               _hd235852235877_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235844235861_
                                                 _g235845235864_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235844235861_ _g235845235864_)))))
                              (let ()
                                (declare (not safe))
                                (_g235844235861_ _g235845235864_)))))
                      (let ()
                        (declare (not safe))
                        (_g235844235861_ _g235845235864_))))))
          (declare (not safe))
          (_g235843235907_ _stx235842_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx235747_)
        (let* ((___stx243817243818_ _stx235747_)
               (_g235750235770_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243817243818_)))))
          (let ((___kont243819243820_
                 (lambda (_L235814_ _L235815_)
                   (let ((_type-e235832235834_
                          (let ((__tmp245231
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L235815_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp245231
                             '#f))))
                     (if _type-e235832235834_
                         (let ((_type-e235837_ _type-e235832235834_))
                           (_type-e235837_ _stx235747_ _L235814_))
                         '#f))))
                (___kont243821243822_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243817243818_))
                (let ((_e235756235782_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243817243818_))))
                  (let ((_tl235754235787_
                         (let () (declare (not safe)) (##cdr _e235756235782_)))
                        (_hd235755235785_
                         (let ()
                           (declare (not safe))
                           (##car _e235756235782_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235754235787_))
                        (let ((_e235759235790_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235754235787_))))
                          (let ((_tl235757235795_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235759235790_)))
                                (_hd235758235793_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235759235790_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd235758235793_))
                                (let ((_e235762235798_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd235758235793_))))
                                  (let ((_tl235760235803_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235762235798_)))
                                        (_hd235761235801_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235762235798_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd235761235801_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd235761235801_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235760235803_))
                                                (let ((_e235765235806_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235760235803_))))
                                                  (let ((_tl235763235811_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235765235806_)))
                                                        (_hd235764235809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235765235806_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235763235811_))
                                                        (___kont243819243820_
                                                         _tl235757235795_
                                                         _hd235764235809_)
                                                        (___kont243821243822_))))
                                                (___kont243821243822_))
                                            (___kont243821243822_))
                                        (___kont243821243822_))))
                                (___kont243821243822_))))
                        (___kont243821243822_))))
                (___kont243821243822_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx235696_)
        (let* ((_g235698235711_
                (lambda (_g235699235708_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235699235708_))))
               (_g235697235744_
                (lambda (_g235699235714_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235699235714_))
                      (let ((_e235703235716_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235699235714_))))
                        (let ((_hd235702235719_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235703235716_)))
                              (_tl235701235721_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235703235716_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235701235721_))
                              (let ((_e235706235724_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235701235721_))))
                                (let ((_hd235705235727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235706235724_)))
                                      (_tl235704235729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235706235724_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235704235729_))
                                      ((lambda (_L235732_)
                                         (let ((__tmp245232
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235732_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp245232)))
                                       _hd235705235727_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235698235711_ _g235699235714_)))))
                              (let ()
                                (declare (not safe))
                                (_g235698235711_ _g235699235714_)))))
                      (let ()
                        (declare (not safe))
                        (_g235698235711_ _g235699235714_))))))
          (declare (not safe))
          (_g235697235744_ _stx235696_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form234930_)
        (let* ((___stx243855243856_ _form234930_)
               (_g234935235092_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243855243856_)))))
          (let ((___kont243857243858_
                 (lambda (_L235616_ _L235617_ _L235618_) '#t))
                (___kont243863243864_
                 (lambda (_L235404_
                          _L235405_
                          _L235406_
                          _L235407_
                          _L235408_
                          _L235409_)
                   '#t))
                (___kont243869243870_
                 (lambda (_L235200_ _L235201_ _L235202_ _L235203_) '#t))
                (___kont243871243872_ (lambda () '#f)))
            (let* ((___match243996243997_
                    (lambda (_e235054235104_
                             _hd235053235107_
                             _tl235052235109_
                             _e235057235112_
                             _hd235056235115_
                             _tl235055235117_
                             _e235060235120_
                             _hd235059235123_
                             _tl235058235125_
                             _e235063235128_
                             _hd235062235131_
                             _tl235061235133_
                             _e235066235136_
                             _hd235065235139_
                             _tl235064235141_
                             _e235069235144_
                             _hd235068235147_
                             _tl235067235149_
                             _e235072235152_
                             _hd235071235155_
                             _tl235070235157_
                             _e235075235160_
                             _hd235074235163_
                             _tl235073235165_
                             _e235078235168_
                             _hd235077235171_
                             _tl235076235173_
                             _e235081235176_
                             _hd235080235179_
                             _tl235079235181_
                             _e235084235184_
                             _hd235083235187_
                             _tl235082235189_
                             _e235087235192_
                             _hd235086235195_
                             _tl235085235197_)
                      (let ((_L235200_ _hd235086235195_)
                            (_L235201_ _hd235077235171_)
                            (_L235202_ _hd235068235147_)
                            (_L235203_ _hd235053235107_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235203_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235202_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235203_ _L235200_))
                                 (let ((__tmp245233
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L235201_
                                           _L235203_))))
                                   (declare (not safe))
                                   (not __tmp245233)))
                            (___kont243869243870_
                             _L235200_
                             _L235201_
                             _L235202_
                             _L235203_)
                            (___kont243871243872_)))))
                   (___match243968243969_
                    (lambda (_e235054235104_
                             _hd235053235107_
                             _tl235052235109_
                             _e235057235112_
                             _hd235056235115_
                             _tl235055235117_
                             _e235060235120_
                             _hd235059235123_
                             _tl235058235125_
                             _e235063235128_
                             _hd235062235131_
                             _tl235061235133_
                             _e235066235136_
                             _hd235065235139_
                             _tl235064235141_
                             _e235069235144_
                             _hd235068235147_
                             _tl235067235149_
                             _e235072235152_
                             _hd235071235155_
                             _tl235070235157_
                             _e235075235160_
                             _hd235074235163_
                             _tl235073235165_
                             _e235078235168_
                             _hd235077235171_
                             _tl235076235173_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235070235157_))
                          (let ((_e235081235176_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235070235157_))))
                            (let ((_tl235079235181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235081235176_)))
                                  (_hd235080235179_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235081235176_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235080235179_))
                                  (let ((_e235084235184_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235080235179_))))
                                    (let ((_tl235082235189_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235084235184_)))
                                          (_hd235083235187_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235084235184_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd235083235187_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd235083235187_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235082235189_))
                                                  (let ((_e235087235192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235082235189_))))
                                                    (let ((_tl235085235197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235087235192_)))
                                                          (_hd235086235195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235087235192_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235085235197_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl235079235181_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl235055235117_))
                          (___match243996243997_
                           _e235054235104_
                           _hd235053235107_
                           _tl235052235109_
                           _e235057235112_
                           _hd235056235115_
                           _tl235055235117_
                           _e235060235120_
                           _hd235059235123_
                           _tl235058235125_
                           _e235063235128_
                           _hd235062235131_
                           _tl235061235133_
                           _e235066235136_
                           _hd235065235139_
                           _tl235064235141_
                           _e235069235144_
                           _hd235068235147_
                           _tl235067235149_
                           _e235072235152_
                           _hd235071235155_
                           _tl235070235157_
                           _e235075235160_
                           _hd235074235163_
                           _tl235073235165_
                           _e235078235168_
                           _hd235077235171_
                           _tl235076235173_
                           _e235081235176_
                           _hd235080235179_
                           _tl235079235181_
                           _e235084235184_
                           _hd235083235187_
                           _tl235082235189_
                           _e235087235192_
                           _hd235086235195_
                           _tl235085235197_)
                          (___kont243871243872_))
                      (___kont243871243872_))
                  (___kont243871243872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243871243872_))
                                              (___kont243871243872_))
                                          (___kont243871243872_))))
                                  (___kont243871243872_))))
                          (___kont243871243872_))))
                   (___match243898243899_
                    (lambda (_e234990235244_
                             _hd234989235247_
                             _tl234988235249_
                             ___splice243865243866_
                             _target234991235252_
                             _tl234993235254_)
                      (letrec ((_loop234994235257_
                                (lambda (_hd234992235260_ _arg234998235262_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234992235260_))
                                      (let ((_e234995235265_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234992235260_))))
                                        (let ((_lp-tl234997235270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234995235265_)))
                                              (_lp-hd234996235268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234995235265_))))
                                          (let ((__tmp245248
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234996235268_
                                                         _arg234998235262_))))
                                            (declare (not safe))
                                            (_loop234994235257_
                                             _lp-tl234997235270_
                                             __tmp245248))))
                                      (let ((_arg234999235273_
                                             (reverse _arg234998235262_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234988235249_))
                                            (let ((_e235002235276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234988235249_))))
                                              (let ((_tl235000235281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e235002235276_)))
                                                    (_hd235001235279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e235002235276_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd235001235279_))
                                                    (let ((_e235005235284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd235001235279_))))
                                                      (let ((_tl235003235289_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e235005235284_)))
                    (_hd235004235287_
                     (let () (declare (not safe)) (##car _e235005235284_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd235004235287_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd235004235287_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235003235289_))
                            (let ((_e235008235292_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235003235289_))))
                              (let ((_tl235006235297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235008235292_)))
                                    (_hd235007235295_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235008235292_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd235007235295_))
                                    (let ((_e235011235300_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd235007235295_))))
                                      (let ((_tl235009235305_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e235011235300_)))
                                            (_hd235010235303_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e235011235300_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd235010235303_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd235010235303_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl235009235305_))
                                                    (let ((_e235014235308_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl235009235305_))))
                                                      (let ((_tl235012235313_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e235014235308_)))
                    (_hd235013235311_
                     (let () (declare (not safe)) (##car _e235014235308_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl235012235313_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235006235297_))
                        (let ((_e235017235316_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235006235297_))))
                          (let ((_tl235015235321_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235017235316_)))
                                (_hd235016235319_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235017235316_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd235016235319_))
                                (let ((_e235020235324_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd235016235319_))))
                                  (let ((_tl235018235329_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235020235324_)))
                                        (_hd235019235327_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235020235324_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd235019235327_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd235019235327_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235018235329_))
                                                (let ((_e235023235332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235018235329_))))
                                                  (let ((_tl235021235337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235023235332_)))
                                                        (_hd235022235335_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235023235332_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235021235337_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl235015235321_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl235015235321_))
                              '1)
                        (let ((___splice243867243868_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl235015235321_
                                  '1))))
                          (let ((_tl235026235342_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243867243868_ '1)))
                                (_target235024235340_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243867243868_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl235026235342_))
                                (let ((_e235035235345_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl235026235342_))))
                                  (let ((_tl235033235350_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235035235345_)))
                                        (_hd235034235348_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235035235345_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd235034235348_))
                                        (let ((_e235038235353_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd235034235348_))))
                                          (let ((_tl235036235358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e235038235353_)))
                                                (_hd235037235356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e235038235353_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd235037235356_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd235037235356_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl235036235358_))
                                                        (let ((_e235041235361_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl235036235358_))))
                  (let ((_tl235039235366_
                         (let () (declare (not safe)) (##cdr _e235041235361_)))
                        (_hd235040235364_
                         (let ()
                           (declare (not safe))
                           (##car _e235041235361_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl235039235366_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl235033235350_))
                            (letrec ((_loop235027235369_
                                      (lambda (_hd235025235372_
                                               _xarg235031235374_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd235025235372_))
                                            (let ((_e235028235377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd235025235372_))))
                                              (let ((_lp-tl235030235382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e235028235377_)))
                                                    (_lp-hd235029235380_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e235028235377_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd235029235380_))
                                                    (let ((_e235044235385_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd235029235380_))))
                                                      (let ((_tl235042235390_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e235044235385_)))
                    (_hd235043235388_
                     (let () (declare (not safe)) (##car _e235044235385_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd235043235388_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd235043235388_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235042235390_))
                            (let ((_e235047235393_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235042235390_))))
                              (let ((_tl235045235398_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235047235393_)))
                                    (_hd235046235396_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235047235393_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl235045235398_))
                                    (let ((__tmp245247
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd235046235396_
                                                   _xarg235031235374_))))
                                      (declare (not safe))
                                      (_loop235027235369_
                                       _lp-tl235030235382_
                                       __tmp245247))
                                    (___match243968243969_
                                     _e234990235244_
                                     _hd234989235247_
                                     _tl234988235249_
                                     _e235002235276_
                                     _hd235001235279_
                                     _tl235000235281_
                                     _e235005235284_
                                     _hd235004235287_
                                     _tl235003235289_
                                     _e235008235292_
                                     _hd235007235295_
                                     _tl235006235297_
                                     _e235011235300_
                                     _hd235010235303_
                                     _tl235009235305_
                                     _e235014235308_
                                     _hd235013235311_
                                     _tl235012235313_
                                     _e235017235316_
                                     _hd235016235319_
                                     _tl235015235321_
                                     _e235020235324_
                                     _hd235019235327_
                                     _tl235018235329_
                                     _e235023235332_
                                     _hd235022235335_
                                     _tl235021235337_))))
                            (___match243968243969_
                             _e234990235244_
                             _hd234989235247_
                             _tl234988235249_
                             _e235002235276_
                             _hd235001235279_
                             _tl235000235281_
                             _e235005235284_
                             _hd235004235287_
                             _tl235003235289_
                             _e235008235292_
                             _hd235007235295_
                             _tl235006235297_
                             _e235011235300_
                             _hd235010235303_
                             _tl235009235305_
                             _e235014235308_
                             _hd235013235311_
                             _tl235012235313_
                             _e235017235316_
                             _hd235016235319_
                             _tl235015235321_
                             _e235020235324_
                             _hd235019235327_
                             _tl235018235329_
                             _e235023235332_
                             _hd235022235335_
                             _tl235021235337_))
                        (___match243968243969_
                         _e234990235244_
                         _hd234989235247_
                         _tl234988235249_
                         _e235002235276_
                         _hd235001235279_
                         _tl235000235281_
                         _e235005235284_
                         _hd235004235287_
                         _tl235003235289_
                         _e235008235292_
                         _hd235007235295_
                         _tl235006235297_
                         _e235011235300_
                         _hd235010235303_
                         _tl235009235305_
                         _e235014235308_
                         _hd235013235311_
                         _tl235012235313_
                         _e235017235316_
                         _hd235016235319_
                         _tl235015235321_
                         _e235020235324_
                         _hd235019235327_
                         _tl235018235329_
                         _e235023235332_
                         _hd235022235335_
                         _tl235021235337_))
                    (___match243968243969_
                     _e234990235244_
                     _hd234989235247_
                     _tl234988235249_
                     _e235002235276_
                     _hd235001235279_
                     _tl235000235281_
                     _e235005235284_
                     _hd235004235287_
                     _tl235003235289_
                     _e235008235292_
                     _hd235007235295_
                     _tl235006235297_
                     _e235011235300_
                     _hd235010235303_
                     _tl235009235305_
                     _e235014235308_
                     _hd235013235311_
                     _tl235012235313_
                     _e235017235316_
                     _hd235016235319_
                     _tl235015235321_
                     _e235020235324_
                     _hd235019235327_
                     _tl235018235329_
                     _e235023235332_
                     _hd235022235335_
                     _tl235021235337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243968243969_
                                                     _e234990235244_
                                                     _hd234989235247_
                                                     _tl234988235249_
                                                     _e235002235276_
                                                     _hd235001235279_
                                                     _tl235000235281_
                                                     _e235005235284_
                                                     _hd235004235287_
                                                     _tl235003235289_
                                                     _e235008235292_
                                                     _hd235007235295_
                                                     _tl235006235297_
                                                     _e235011235300_
                                                     _hd235010235303_
                                                     _tl235009235305_
                                                     _e235014235308_
                                                     _hd235013235311_
                                                     _tl235012235313_
                                                     _e235017235316_
                                                     _hd235016235319_
                                                     _tl235015235321_
                                                     _e235020235324_
                                                     _hd235019235327_
                                                     _tl235018235329_
                                                     _e235023235332_
                                                     _hd235022235335_
                                                     _tl235021235337_))))
                                            (let ((_xarg235032235401_
                                                   (reverse _xarg235031235374_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235000235281_))
                                                  (let ((_L235404_
                                                         _hd235040235364_)
                                                        (_L235405_
                                                         _xarg235032235401_)
                                                        (_L235406_
                                                         _hd235022235335_)
                                                        (_L235407_
                                                         _hd235013235311_)
                                                        (_L235408_
                                                         _tl234993235254_)
                                                        (_L235409_
                                                         _arg234999235273_))
                                                    (if (and (let ((__tmp245245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245246
                                   (lambda (_g235452235455_ _g235453235457_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235452235455_
                                             _g235453235457_)))))
                              (declare (not safe))
                              (foldr1 __tmp245246 '() _L235409_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp245245))
                     (let () (declare (not safe)) (gx#identifier? _L235408_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L235407_ 'apply))
                     (fx= (length (let ((__tmp245243
                                         (lambda (_g235459235462_
                                                  _g235460235464_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235459235462_
                                                   _g235460235464_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245243 '() _L235409_)))
                          (length (let ((__tmp245244
                                         (lambda (_g235466235469_
                                                  _g235467235471_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235466235469_
                                                   _g235467235471_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245244 '() _L235405_))))
                     (let ((__tmp245241
                            (let ((__tmp245242
                                   (lambda (_g235473235476_ _g235474235478_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235473235476_
                                             _g235474235478_)))))
                              (declare (not safe))
                              (foldr1 __tmp245242 '() _L235409_)))
                           (__tmp245239
                            (let ((__tmp245240
                                   (lambda (_g235480235483_ _g235481235485_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235480235483_
                                             _g235481235485_)))))
                              (declare (not safe))
                              (foldr1 __tmp245240 '() _L235405_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp245241 __tmp245239))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L235408_ _L235404_))
                     (let ((__tmp245234
                            (let ((__tmp245238
                                   (lambda (_g235487235489_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g235487235489_
                                        _L235406_))))
                                  (__tmp245235
                                   (let ((__tmp245237
                                          (lambda (_g235491235494_
                                                   _g235492235496_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g235491235494_
                                                    _g235492235496_))))
                                         (__tmp245236
                                          (let ()
                                            (declare (not safe))
                                            (cons _L235408_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp245237
                                             __tmp245236
                                             _L235409_))))
                              (declare (not safe))
                              (find __tmp245238 __tmp245235))))
                       (declare (not safe))
                       (not __tmp245234)))
                (___kont243863243864_
                 _L235404_
                 _L235405_
                 _L235406_
                 _L235407_
                 _L235408_
                 _L235409_)
                (___match243968243969_
                 _e234990235244_
                 _hd234989235247_
                 _tl234988235249_
                 _e235002235276_
                 _hd235001235279_
                 _tl235000235281_
                 _e235005235284_
                 _hd235004235287_
                 _tl235003235289_
                 _e235008235292_
                 _hd235007235295_
                 _tl235006235297_
                 _e235011235300_
                 _hd235010235303_
                 _tl235009235305_
                 _e235014235308_
                 _hd235013235311_
                 _tl235012235313_
                 _e235017235316_
                 _hd235016235319_
                 _tl235015235321_
                 _e235020235324_
                 _hd235019235327_
                 _tl235018235329_
                 _e235023235332_
                 _hd235022235335_
                 _tl235021235337_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243968243969_
                                                   _e234990235244_
                                                   _hd234989235247_
                                                   _tl234988235249_
                                                   _e235002235276_
                                                   _hd235001235279_
                                                   _tl235000235281_
                                                   _e235005235284_
                                                   _hd235004235287_
                                                   _tl235003235289_
                                                   _e235008235292_
                                                   _hd235007235295_
                                                   _tl235006235297_
                                                   _e235011235300_
                                                   _hd235010235303_
                                                   _tl235009235305_
                                                   _e235014235308_
                                                   _hd235013235311_
                                                   _tl235012235313_
                                                   _e235017235316_
                                                   _hd235016235319_
                                                   _tl235015235321_
                                                   _e235020235324_
                                                   _hd235019235327_
                                                   _tl235018235329_
                                                   _e235023235332_
                                                   _hd235022235335_
                                                   _tl235021235337_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop235027235369_ _target235024235340_ '())))
                            (___match243968243969_
                             _e234990235244_
                             _hd234989235247_
                             _tl234988235249_
                             _e235002235276_
                             _hd235001235279_
                             _tl235000235281_
                             _e235005235284_
                             _hd235004235287_
                             _tl235003235289_
                             _e235008235292_
                             _hd235007235295_
                             _tl235006235297_
                             _e235011235300_
                             _hd235010235303_
                             _tl235009235305_
                             _e235014235308_
                             _hd235013235311_
                             _tl235012235313_
                             _e235017235316_
                             _hd235016235319_
                             _tl235015235321_
                             _e235020235324_
                             _hd235019235327_
                             _tl235018235329_
                             _e235023235332_
                             _hd235022235335_
                             _tl235021235337_))
                        (___match243968243969_
                         _e234990235244_
                         _hd234989235247_
                         _tl234988235249_
                         _e235002235276_
                         _hd235001235279_
                         _tl235000235281_
                         _e235005235284_
                         _hd235004235287_
                         _tl235003235289_
                         _e235008235292_
                         _hd235007235295_
                         _tl235006235297_
                         _e235011235300_
                         _hd235010235303_
                         _tl235009235305_
                         _e235014235308_
                         _hd235013235311_
                         _tl235012235313_
                         _e235017235316_
                         _hd235016235319_
                         _tl235015235321_
                         _e235020235324_
                         _hd235019235327_
                         _tl235018235329_
                         _e235023235332_
                         _hd235022235335_
                         _tl235021235337_))))
                (___match243968243969_
                 _e234990235244_
                 _hd234989235247_
                 _tl234988235249_
                 _e235002235276_
                 _hd235001235279_
                 _tl235000235281_
                 _e235005235284_
                 _hd235004235287_
                 _tl235003235289_
                 _e235008235292_
                 _hd235007235295_
                 _tl235006235297_
                 _e235011235300_
                 _hd235010235303_
                 _tl235009235305_
                 _e235014235308_
                 _hd235013235311_
                 _tl235012235313_
                 _e235017235316_
                 _hd235016235319_
                 _tl235015235321_
                 _e235020235324_
                 _hd235019235327_
                 _tl235018235329_
                 _e235023235332_
                 _hd235022235335_
                 _tl235021235337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243968243969_
                                                     _e234990235244_
                                                     _hd234989235247_
                                                     _tl234988235249_
                                                     _e235002235276_
                                                     _hd235001235279_
                                                     _tl235000235281_
                                                     _e235005235284_
                                                     _hd235004235287_
                                                     _tl235003235289_
                                                     _e235008235292_
                                                     _hd235007235295_
                                                     _tl235006235297_
                                                     _e235011235300_
                                                     _hd235010235303_
                                                     _tl235009235305_
                                                     _e235014235308_
                                                     _hd235013235311_
                                                     _tl235012235313_
                                                     _e235017235316_
                                                     _hd235016235319_
                                                     _tl235015235321_
                                                     _e235020235324_
                                                     _hd235019235327_
                                                     _tl235018235329_
                                                     _e235023235332_
                                                     _hd235022235335_
                                                     _tl235021235337_))
                                                (___match243968243969_
                                                 _e234990235244_
                                                 _hd234989235247_
                                                 _tl234988235249_
                                                 _e235002235276_
                                                 _hd235001235279_
                                                 _tl235000235281_
                                                 _e235005235284_
                                                 _hd235004235287_
                                                 _tl235003235289_
                                                 _e235008235292_
                                                 _hd235007235295_
                                                 _tl235006235297_
                                                 _e235011235300_
                                                 _hd235010235303_
                                                 _tl235009235305_
                                                 _e235014235308_
                                                 _hd235013235311_
                                                 _tl235012235313_
                                                 _e235017235316_
                                                 _hd235016235319_
                                                 _tl235015235321_
                                                 _e235020235324_
                                                 _hd235019235327_
                                                 _tl235018235329_
                                                 _e235023235332_
                                                 _hd235022235335_
                                                 _tl235021235337_))))
                                        (___match243968243969_
                                         _e234990235244_
                                         _hd234989235247_
                                         _tl234988235249_
                                         _e235002235276_
                                         _hd235001235279_
                                         _tl235000235281_
                                         _e235005235284_
                                         _hd235004235287_
                                         _tl235003235289_
                                         _e235008235292_
                                         _hd235007235295_
                                         _tl235006235297_
                                         _e235011235300_
                                         _hd235010235303_
                                         _tl235009235305_
                                         _e235014235308_
                                         _hd235013235311_
                                         _tl235012235313_
                                         _e235017235316_
                                         _hd235016235319_
                                         _tl235015235321_
                                         _e235020235324_
                                         _hd235019235327_
                                         _tl235018235329_
                                         _e235023235332_
                                         _hd235022235335_
                                         _tl235021235337_))))
                                (___match243968243969_
                                 _e234990235244_
                                 _hd234989235247_
                                 _tl234988235249_
                                 _e235002235276_
                                 _hd235001235279_
                                 _tl235000235281_
                                 _e235005235284_
                                 _hd235004235287_
                                 _tl235003235289_
                                 _e235008235292_
                                 _hd235007235295_
                                 _tl235006235297_
                                 _e235011235300_
                                 _hd235010235303_
                                 _tl235009235305_
                                 _e235014235308_
                                 _hd235013235311_
                                 _tl235012235313_
                                 _e235017235316_
                                 _hd235016235319_
                                 _tl235015235321_
                                 _e235020235324_
                                 _hd235019235327_
                                 _tl235018235329_
                                 _e235023235332_
                                 _hd235022235335_
                                 _tl235021235337_))))
                        (___match243968243969_
                         _e234990235244_
                         _hd234989235247_
                         _tl234988235249_
                         _e235002235276_
                         _hd235001235279_
                         _tl235000235281_
                         _e235005235284_
                         _hd235004235287_
                         _tl235003235289_
                         _e235008235292_
                         _hd235007235295_
                         _tl235006235297_
                         _e235011235300_
                         _hd235010235303_
                         _tl235009235305_
                         _e235014235308_
                         _hd235013235311_
                         _tl235012235313_
                         _e235017235316_
                         _hd235016235319_
                         _tl235015235321_
                         _e235020235324_
                         _hd235019235327_
                         _tl235018235329_
                         _e235023235332_
                         _hd235022235335_
                         _tl235021235337_))
                    (___match243968243969_
                     _e234990235244_
                     _hd234989235247_
                     _tl234988235249_
                     _e235002235276_
                     _hd235001235279_
                     _tl235000235281_
                     _e235005235284_
                     _hd235004235287_
                     _tl235003235289_
                     _e235008235292_
                     _hd235007235295_
                     _tl235006235297_
                     _e235011235300_
                     _hd235010235303_
                     _tl235009235305_
                     _e235014235308_
                     _hd235013235311_
                     _tl235012235313_
                     _e235017235316_
                     _hd235016235319_
                     _tl235015235321_
                     _e235020235324_
                     _hd235019235327_
                     _tl235018235329_
                     _e235023235332_
                     _hd235022235335_
                     _tl235021235337_))
                (___kont243871243872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243871243872_))
                                            (___kont243871243872_))
                                        (___kont243871243872_))))
                                (___kont243871243872_))))
                        (___kont243871243872_))
                    (___kont243871243872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243871243872_))
                                                (___kont243871243872_))
                                            (___kont243871243872_))))
                                    (___kont243871243872_))))
                            (___kont243871243872_))
                        (___kont243871243872_))
                    (___kont243871243872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243871243872_))))
                                            (___kont243871243872_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234994235257_ _target234991235252_ '())))))
                   (___match243886243887_
                    (lambda (_e234942235504_
                             _hd234941235507_
                             _tl234940235509_
                             ___splice243859243860_
                             _target234943235512_
                             _tl234945235514_)
                      (letrec ((_loop234946235517_
                                (lambda (_hd234944235520_ _arg234950235522_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234944235520_))
                                      (let ((_e234947235525_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234944235520_))))
                                        (let ((_lp-tl234949235530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234947235525_)))
                                              (_lp-hd234948235528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234947235525_))))
                                          (let ((__tmp245262
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234948235528_
                                                         _arg234950235522_))))
                                            (declare (not safe))
                                            (_loop234946235517_
                                             _lp-tl234949235530_
                                             __tmp245262))))
                                      (let ((_arg234951235533_
                                             (reverse _arg234950235522_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234940235509_))
                                            (let ((_e234954235536_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234940235509_))))
                                              (let ((_tl234952235541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234954235536_)))
                                                    (_hd234953235539_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234954235536_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234953235539_))
                                                    (let ((_e234957235544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234953235539_))))
                                                      (let ((_tl234955235549_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234957235544_)))
                    (_hd234956235547_
                     (let () (declare (not safe)) (##car _e234957235544_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234956235547_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234956235547_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234955235549_))
                            (let ((_e234960235552_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234955235549_))))
                              (let ((_tl234958235557_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234960235552_)))
                                    (_hd234959235555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234960235552_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234959235555_))
                                    (let ((_e234963235560_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234959235555_))))
                                      (let ((_tl234961235565_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234963235560_)))
                                            (_hd234962235563_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234963235560_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234962235563_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234962235563_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234961235565_))
                                                    (let ((_e234966235568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234961235565_))))
                                                      (let ((_tl234964235573_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234966235568_)))
                    (_hd234965235571_
                     (let () (declare (not safe)) (##car _e234966235568_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234964235573_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234958235557_))
                        (let ((___splice243861243862_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234958235557_
                                  '0))))
                          (let ((_tl234969235578_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243861243862_ '1)))
                                (_target234967235576_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243861243862_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234969235578_))
                                (letrec ((_loop234970235581_
                                          (lambda (_hd234968235584_
                                                   _xarg234974235586_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234968235584_))
                                                (let ((_e234971235589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234968235584_))))
                                                  (let ((_lp-tl234973235594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234971235589_)))
                                                        (_lp-hd234972235592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234971235589_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234972235592_))
                                                        (let ((_e234978235597_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234972235592_))))
                  (let ((_tl234976235602_
                         (let () (declare (not safe)) (##cdr _e234978235597_)))
                        (_hd234977235600_
                         (let ()
                           (declare (not safe))
                           (##car _e234978235597_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234977235600_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234977235600_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234976235602_))
                                (let ((_e234981235605_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234976235602_))))
                                  (let ((_tl234979235610_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234981235605_)))
                                        (_hd234980235608_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234981235605_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234979235610_))
                                        (let ((__tmp245261
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234980235608_
                                                       _xarg234974235586_))))
                                          (declare (not safe))
                                          (_loop234970235581_
                                           _lp-tl234973235594_
                                           __tmp245261))
                                        (___match243898243899_
                                         _e234942235504_
                                         _hd234941235507_
                                         _tl234940235509_
                                         ___splice243859243860_
                                         _target234943235512_
                                         _tl234945235514_))))
                                (___match243898243899_
                                 _e234942235504_
                                 _hd234941235507_
                                 _tl234940235509_
                                 ___splice243859243860_
                                 _target234943235512_
                                 _tl234945235514_))
                            (___match243898243899_
                             _e234942235504_
                             _hd234941235507_
                             _tl234940235509_
                             ___splice243859243860_
                             _target234943235512_
                             _tl234945235514_))
                        (___match243898243899_
                         _e234942235504_
                         _hd234941235507_
                         _tl234940235509_
                         ___splice243859243860_
                         _target234943235512_
                         _tl234945235514_))))
                (___match243898243899_
                 _e234942235504_
                 _hd234941235507_
                 _tl234940235509_
                 ___splice243859243860_
                 _target234943235512_
                 _tl234945235514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234975235613_
                                                       (reverse _xarg234974235586_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234952235541_))
                                                      (let ((_L235616_
                                                             _xarg234975235613_)
                                                            (_L235617_
                                                             _hd234965235571_)
                                                            (_L235618_
                                                             _arg234951235533_))
                                                        (if (and (let ((__tmp245259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp245260
                                       (lambda (_g235646235649_
                                                _g235647235651_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235646235649_
                                                 _g235647235651_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245260 '() _L235618_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp245259))
                         (fx= (length (let ((__tmp245257
                                             (lambda (_g235653235656_
                                                      _g235654235658_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235653235656_
                                                       _g235654235658_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245257 '() _L235618_)))
                              (length (let ((__tmp245258
                                             (lambda (_g235660235663_
                                                      _g235661235665_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235660235663_
                                                       _g235661235665_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245258 '() _L235616_))))
                         (let ((__tmp245255
                                (let ((__tmp245256
                                       (lambda (_g235667235670_
                                                _g235668235672_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235667235670_
                                                 _g235668235672_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245256 '() _L235618_)))
                               (__tmp245253
                                (let ((__tmp245254
                                       (lambda (_g235674235677_
                                                _g235675235679_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235674235677_
                                                 _g235675235679_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245254 '() _L235616_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp245255
                                    __tmp245253))
                         (let ((__tmp245249
                                (let ((__tmp245252
                                       (lambda (_g235681235683_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g235681235683_
                                            _L235617_))))
                                      (__tmp245250
                                       (let ((__tmp245251
                                              (lambda (_g235685235688_
                                                       _g235686235690_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g235685235688_
                                                        _g235686235690_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp245251 '() _L235618_))))
                                  (declare (not safe))
                                  (find __tmp245252 __tmp245250))))
                           (declare (not safe))
                           (not __tmp245249)))
                    (___kont243857243858_ _L235616_ _L235617_ _L235618_)
                    (___match243898243899_
                     _e234942235504_
                     _hd234941235507_
                     _tl234940235509_
                     ___splice243859243860_
                     _target234943235512_
                     _tl234945235514_)))
              (___match243898243899_
               _e234942235504_
               _hd234941235507_
               _tl234940235509_
               ___splice243859243860_
               _target234943235512_
               _tl234945235514_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop234970235581_
                                     _target234967235576_
                                     '())))
                                (___match243898243899_
                                 _e234942235504_
                                 _hd234941235507_
                                 _tl234940235509_
                                 ___splice243859243860_
                                 _target234943235512_
                                 _tl234945235514_))))
                        (___match243898243899_
                         _e234942235504_
                         _hd234941235507_
                         _tl234940235509_
                         ___splice243859243860_
                         _target234943235512_
                         _tl234945235514_))
                    (___match243898243899_
                     _e234942235504_
                     _hd234941235507_
                     _tl234940235509_
                     ___splice243859243860_
                     _target234943235512_
                     _tl234945235514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243898243899_
                                                     _e234942235504_
                                                     _hd234941235507_
                                                     _tl234940235509_
                                                     ___splice243859243860_
                                                     _target234943235512_
                                                     _tl234945235514_))
                                                (___match243898243899_
                                                 _e234942235504_
                                                 _hd234941235507_
                                                 _tl234940235509_
                                                 ___splice243859243860_
                                                 _target234943235512_
                                                 _tl234945235514_))
                                            (___match243898243899_
                                             _e234942235504_
                                             _hd234941235507_
                                             _tl234940235509_
                                             ___splice243859243860_
                                             _target234943235512_
                                             _tl234945235514_))))
                                    (___match243898243899_
                                     _e234942235504_
                                     _hd234941235507_
                                     _tl234940235509_
                                     ___splice243859243860_
                                     _target234943235512_
                                     _tl234945235514_))))
                            (___match243898243899_
                             _e234942235504_
                             _hd234941235507_
                             _tl234940235509_
                             ___splice243859243860_
                             _target234943235512_
                             _tl234945235514_))
                        (___match243898243899_
                         _e234942235504_
                         _hd234941235507_
                         _tl234940235509_
                         ___splice243859243860_
                         _target234943235512_
                         _tl234945235514_))
                    (___match243898243899_
                     _e234942235504_
                     _hd234941235507_
                     _tl234940235509_
                     ___splice243859243860_
                     _target234943235512_
                     _tl234945235514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243898243899_
                                                     _e234942235504_
                                                     _hd234941235507_
                                                     _tl234940235509_
                                                     ___splice243859243860_
                                                     _target234943235512_
                                                     _tl234945235514_))))
                                            (___match243898243899_
                                             _e234942235504_
                                             _hd234941235507_
                                             _tl234940235509_
                                             ___splice243859243860_
                                             _target234943235512_
                                             _tl234945235514_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234946235517_ _target234943235512_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243855243856_))
                  (let ((_e234942235504_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243855243856_))))
                    (let ((_tl234940235509_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234942235504_)))
                          (_hd234941235507_
                           (let ()
                             (declare (not safe))
                             (##car _e234942235504_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234941235507_))
                          (let ((___splice243859243860_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234941235507_
                                    '0))))
                            (let ((_tl234945235514_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243859243860_ '1)))
                                  (_target234943235512_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243859243860_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234945235514_))
                                  (___match243886243887_
                                   _e234942235504_
                                   _hd234941235507_
                                   _tl234940235509_
                                   ___splice243859243860_
                                   _target234943235512_
                                   _tl234945235514_)
                                  (___match243898243899_
                                   _e234942235504_
                                   _hd234941235507_
                                   _tl234940235509_
                                   ___splice243859243860_
                                   _target234943235512_
                                   _tl234945235514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234940235509_))
                              (let ((_e235057235112_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234940235509_))))
                                (let ((_tl235055235117_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235057235112_)))
                                      (_hd235056235115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235057235112_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd235056235115_))
                                      (let ((_e235060235120_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd235056235115_))))
                                        (let ((_tl235058235125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235060235120_)))
                                              (_hd235059235123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235060235120_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd235059235123_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd235059235123_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235058235125_))
                                                      (let ((_e235063235128_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235058235125_))))
                (let ((_tl235061235133_
                       (let () (declare (not safe)) (##cdr _e235063235128_)))
                      (_hd235062235131_
                       (let () (declare (not safe)) (##car _e235063235128_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235062235131_))
                      (let ((_e235066235136_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235062235131_))))
                        (let ((_tl235064235141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235066235136_)))
                              (_hd235065235139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235066235136_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235065235139_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235065235139_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235064235141_))
                                      (let ((_e235069235144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235064235141_))))
                                        (let ((_tl235067235149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235069235144_)))
                                              (_hd235068235147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235069235144_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235067235149_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235061235133_))
                                                  (let ((_e235072235152_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235061235133_))))
                                                    (let ((_tl235070235157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235072235152_)))
                                                          (_hd235071235155_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235072235152_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235071235155_))
                                                          (let ((_e235075235160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235071235155_))))
                    (let ((_tl235073235165_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235075235160_)))
                          (_hd235074235163_
                           (let ()
                             (declare (not safe))
                             (##car _e235075235160_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235074235163_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd235074235163_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235073235165_))
                                  (let ((_e235078235168_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235073235165_))))
                                    (let ((_tl235076235173_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235078235168_)))
                                          (_hd235077235171_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235078235168_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235076235173_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235070235157_))
                                              (let ((_e235081235176_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235070235157_))))
                                                (let ((_tl235079235181_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235081235176_)))
                                                      (_hd235080235179_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235081235176_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235080235179_))
                                                      (let ((_e235084235184_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd235080235179_))))
                (let ((_tl235082235189_
                       (let () (declare (not safe)) (##cdr _e235084235184_)))
                      (_hd235083235187_
                       (let () (declare (not safe)) (##car _e235084235184_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd235083235187_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd235083235187_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235082235189_))
                              (let ((_e235087235192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235082235189_))))
                                (let ((_tl235085235197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235087235192_)))
                                      (_hd235086235195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235087235192_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235085235197_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235079235181_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235055235117_))
                                              (___match243996243997_
                                               _e234942235504_
                                               _hd234941235507_
                                               _tl234940235509_
                                               _e235057235112_
                                               _hd235056235115_
                                               _tl235055235117_
                                               _e235060235120_
                                               _hd235059235123_
                                               _tl235058235125_
                                               _e235063235128_
                                               _hd235062235131_
                                               _tl235061235133_
                                               _e235066235136_
                                               _hd235065235139_
                                               _tl235064235141_
                                               _e235069235144_
                                               _hd235068235147_
                                               _tl235067235149_
                                               _e235072235152_
                                               _hd235071235155_
                                               _tl235070235157_
                                               _e235075235160_
                                               _hd235074235163_
                                               _tl235073235165_
                                               _e235078235168_
                                               _hd235077235171_
                                               _tl235076235173_
                                               _e235081235176_
                                               _hd235080235179_
                                               _tl235079235181_
                                               _e235084235184_
                                               _hd235083235187_
                                               _tl235082235189_
                                               _e235087235192_
                                               _hd235086235195_
                                               _tl235085235197_)
                                              (___kont243871243872_))
                                          (___kont243871243872_))
                                      (___kont243871243872_))))
                              (___kont243871243872_))
                          (___kont243871243872_))
                      (___kont243871243872_))))
              (___kont243871243872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243871243872_))
                                          (___kont243871243872_))))
                                  (___kont243871243872_))
                              (___kont243871243872_))
                          (___kont243871243872_))))
                  (___kont243871243872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243871243872_))
                                              (___kont243871243872_))))
                                      (___kont243871243872_))
                                  (___kont243871243872_))
                              (___kont243871243872_))))
                      (___kont243871243872_))))
              (___kont243871243872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243871243872_))
                                              (___kont243871243872_))))
                                      (___kont243871243872_))))
                              (___kont243871243872_)))))
                  (___kont243871243872_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form234398_)
        (let* ((___stx243999244000_ _form234398_)
               (_g234402234526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243999244000_)))))
          (let ((___kont244001244002_
                 (lambda (_L234896_ _L234897_ _L234898_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234897_))))
                (___kont244007244008_
                 (lambda (_L234744_ _L234745_ _L234746_ _L234747_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234744_))))
                (___kont244011244012_
                 (lambda (_L234611_ _L234612_ _L234613_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234611_)))))
            (let* ((___match244108244109_
                    (lambda (_e234494234531_
                             _hd234493234534_
                             _tl234492234536_
                             _e234497234539_
                             _hd234496234542_
                             _tl234495234544_
                             _e234500234547_
                             _hd234499234550_
                             _tl234498234552_
                             _e234503234555_
                             _hd234502234558_
                             _tl234501234560_
                             _e234506234563_
                             _hd234505234566_
                             _tl234504234568_
                             _e234509234571_
                             _hd234508234574_
                             _tl234507234576_
                             _e234512234579_
                             _hd234511234582_
                             _tl234510234584_
                             _e234515234587_
                             _hd234514234590_
                             _tl234513234592_
                             _e234518234595_
                             _hd234517234598_
                             _tl234516234600_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234510234584_))
                          (let ((_e234521234603_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234510234584_))))
                            (let ((_tl234519234608_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234521234603_)))
                                  (_hd234520234606_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234521234603_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234519234608_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234495234544_))
                                      (___kont244011244012_
                                       _hd234517234598_
                                       _hd234508234574_
                                       _hd234493234534_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234402234526_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234402234526_)))))
                          (let () (declare (not safe)) (_g234402234526_)))))
                   (___match244038244039_
                    (lambda (_e234455234648_
                             _hd234454234651_
                             _tl234453234653_
                             ___splice244009244010_
                             _target234456234656_
                             _tl234458234658_)
                      (letrec ((_loop234459234661_
                                (lambda (_hd234457234664_ _arg234463234666_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234457234664_))
                                      (let ((_e234460234669_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234457234664_))))
                                        (let ((_lp-tl234462234674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234460234669_)))
                                              (_lp-hd234461234672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234460234669_))))
                                          (let ((__tmp245263
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234461234672_
                                                         _arg234463234666_))))
                                            (declare (not safe))
                                            (_loop234459234661_
                                             _lp-tl234462234674_
                                             __tmp245263))))
                                      (let ((_arg234464234677_
                                             (reverse _arg234463234666_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234453234653_))
                                            (let ((_e234467234680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234453234653_))))
                                              (let ((_tl234465234685_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234467234680_)))
                                                    (_hd234466234683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234467234680_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234466234683_))
                                                    (let ((_e234470234688_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234466234683_))))
                                                      (let ((_tl234468234693_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234470234688_)))
                    (_hd234469234691_
                     (let () (declare (not safe)) (##car _e234470234688_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234469234691_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234469234691_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234468234693_))
                            (let ((_e234473234696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234468234693_))))
                              (let ((_tl234471234701_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234473234696_)))
                                    (_hd234472234699_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234473234696_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234472234699_))
                                    (let ((_e234476234704_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234472234699_))))
                                      (let ((_tl234474234709_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234476234704_)))
                                            (_hd234475234707_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234476234704_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234475234707_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234475234707_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234474234709_))
                                                    (let ((_e234479234712_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234474234709_))))
                                                      (let ((_tl234477234717_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234479234712_)))
                    (_hd234478234715_
                     (let () (declare (not safe)) (##car _e234479234712_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234477234717_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234471234701_))
                        (let ((_e234482234720_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234471234701_))))
                          (let ((_tl234480234725_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234482234720_)))
                                (_hd234481234723_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234482234720_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234481234723_))
                                (let ((_e234485234728_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234481234723_))))
                                  (let ((_tl234483234733_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234485234728_)))
                                        (_hd234484234731_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234485234728_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234484234731_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234484234731_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234483234733_))
                                                (let ((_e234488234736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234483234733_))))
                                                  (let ((_tl234486234741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234488234736_)))
                                                        (_hd234487234739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234488234736_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234486234741_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl234465234685_))
                                                            (___kont244007244008_
                                                             _hd234487234739_
                                                             _hd234478234715_
                                                             _tl234458234658_
                                                             _arg234464234677_)
                                                            (___match244108244109_
                                                             _e234455234648_
                                                             _hd234454234651_
                                                             _tl234453234653_
                                                             _e234467234680_
                                                             _hd234466234683_
                                                             _tl234465234685_
                                                             _e234470234688_
                                                             _hd234469234691_
                                                             _tl234468234693_
                                                             _e234473234696_
                                                             _hd234472234699_
                                                             _tl234471234701_
                                                             _e234476234704_
                                                             _hd234475234707_
                                                             _tl234474234709_
                                                             _e234479234712_
                                                             _hd234478234715_
                                                             _tl234477234717_
                                                             _e234482234720_
                                                             _hd234481234723_
                                                             _tl234480234725_
                                                             _e234485234728_
                                                             _hd234484234731_
                                                             _tl234483234733_
                                                             _e234488234736_
                                                             _hd234487234739_
                                                             _tl234486234741_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g234402234526_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234402234526_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234402234526_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g234402234526_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234402234526_)))))
                        (let () (declare (not safe)) (_g234402234526_)))
                    (let () (declare (not safe)) (_g234402234526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234402234526_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234402234526_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234402234526_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g234402234526_)))))
                            (let () (declare (not safe)) (_g234402234526_)))
                        (let () (declare (not safe)) (_g234402234526_)))
                    (let () (declare (not safe)) (_g234402234526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234402234526_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g234402234526_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234459234661_ _target234456234656_ '())))))
                   (___match244026244027_
                    (lambda (_e234409234784_
                             _hd234408234787_
                             _tl234407234789_
                             ___splice244003244004_
                             _target234410234792_
                             _tl234412234794_)
                      (letrec ((_loop234413234797_
                                (lambda (_hd234411234800_ _arg234417234802_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234411234800_))
                                      (let ((_e234414234805_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234411234800_))))
                                        (let ((_lp-tl234416234810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234414234805_)))
                                              (_lp-hd234415234808_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234414234805_))))
                                          (let ((__tmp245265
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234415234808_
                                                         _arg234417234802_))))
                                            (declare (not safe))
                                            (_loop234413234797_
                                             _lp-tl234416234810_
                                             __tmp245265))))
                                      (let ((_arg234418234813_
                                             (reverse _arg234417234802_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234407234789_))
                                            (let ((_e234421234816_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234407234789_))))
                                              (let ((_tl234419234821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234421234816_)))
                                                    (_hd234420234819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234421234816_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234420234819_))
                                                    (let ((_e234424234824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234420234819_))))
                                                      (let ((_tl234422234829_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234424234824_)))
                    (_hd234423234827_
                     (let () (declare (not safe)) (##car _e234424234824_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234423234827_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234423234827_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234422234829_))
                            (let ((_e234427234832_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234422234829_))))
                              (let ((_tl234425234837_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234427234832_)))
                                    (_hd234426234835_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234427234832_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234426234835_))
                                    (let ((_e234430234840_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234426234835_))))
                                      (let ((_tl234428234845_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234430234840_)))
                                            (_hd234429234843_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234430234840_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234429234843_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234429234843_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234428234845_))
                                                    (let ((_e234433234848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234428234845_))))
                                                      (let ((_tl234431234853_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234433234848_)))
                    (_hd234432234851_
                     (let () (declare (not safe)) (##car _e234433234848_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234431234853_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234425234837_))
                        (let ((___splice244005244006_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234425234837_
                                  '0))))
                          (let ((_tl234436234858_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice244005244006_ '1)))
                                (_target234434234856_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice244005244006_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234436234858_))
                                (letrec ((_loop234437234861_
                                          (lambda (_hd234435234864_
                                                   _xarg234441234866_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234435234864_))
                                                (let ((_e234438234869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234435234864_))))
                                                  (let ((_lp-tl234440234874_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234438234869_)))
                                                        (_lp-hd234439234872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234438234869_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234439234872_))
                                                        (let ((_e234445234877_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234439234872_))))
                  (let ((_tl234443234882_
                         (let () (declare (not safe)) (##cdr _e234445234877_)))
                        (_hd234444234880_
                         (let ()
                           (declare (not safe))
                           (##car _e234445234877_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234444234880_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234444234880_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234443234882_))
                                (let ((_e234448234885_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234443234882_))))
                                  (let ((_tl234446234890_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234448234885_)))
                                        (_hd234447234888_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234448234885_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234446234890_))
                                        (let ((__tmp245264
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234447234888_
                                                       _xarg234441234866_))))
                                          (declare (not safe))
                                          (_loop234437234861_
                                           _lp-tl234440234874_
                                           __tmp245264))
                                        (___match244038244039_
                                         _e234409234784_
                                         _hd234408234787_
                                         _tl234407234789_
                                         ___splice244003244004_
                                         _target234410234792_
                                         _tl234412234794_))))
                                (___match244038244039_
                                 _e234409234784_
                                 _hd234408234787_
                                 _tl234407234789_
                                 ___splice244003244004_
                                 _target234410234792_
                                 _tl234412234794_))
                            (___match244038244039_
                             _e234409234784_
                             _hd234408234787_
                             _tl234407234789_
                             ___splice244003244004_
                             _target234410234792_
                             _tl234412234794_))
                        (___match244038244039_
                         _e234409234784_
                         _hd234408234787_
                         _tl234407234789_
                         ___splice244003244004_
                         _target234410234792_
                         _tl234412234794_))))
                (___match244038244039_
                 _e234409234784_
                 _hd234408234787_
                 _tl234407234789_
                 ___splice244003244004_
                 _target234410234792_
                 _tl234412234794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234442234893_
                                                       (reverse _xarg234441234866_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234419234821_))
                                                      (___kont244001244002_
                                                       _xarg234442234893_
                                                       _hd234432234851_
                                                       _arg234418234813_)
                                                      (___match244038244039_
                                                       _e234409234784_
                                                       _hd234408234787_
                                                       _tl234407234789_
                                                       ___splice244003244004_
                                                       _target234410234792_
                                                       _tl234412234794_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop234437234861_
                                     _target234434234856_
                                     '())))
                                (___match244038244039_
                                 _e234409234784_
                                 _hd234408234787_
                                 _tl234407234789_
                                 ___splice244003244004_
                                 _target234410234792_
                                 _tl234412234794_))))
                        (___match244038244039_
                         _e234409234784_
                         _hd234408234787_
                         _tl234407234789_
                         ___splice244003244004_
                         _target234410234792_
                         _tl234412234794_))
                    (___match244038244039_
                     _e234409234784_
                     _hd234408234787_
                     _tl234407234789_
                     ___splice244003244004_
                     _target234410234792_
                     _tl234412234794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244038244039_
                                                     _e234409234784_
                                                     _hd234408234787_
                                                     _tl234407234789_
                                                     ___splice244003244004_
                                                     _target234410234792_
                                                     _tl234412234794_))
                                                (___match244038244039_
                                                 _e234409234784_
                                                 _hd234408234787_
                                                 _tl234407234789_
                                                 ___splice244003244004_
                                                 _target234410234792_
                                                 _tl234412234794_))
                                            (___match244038244039_
                                             _e234409234784_
                                             _hd234408234787_
                                             _tl234407234789_
                                             ___splice244003244004_
                                             _target234410234792_
                                             _tl234412234794_))))
                                    (___match244038244039_
                                     _e234409234784_
                                     _hd234408234787_
                                     _tl234407234789_
                                     ___splice244003244004_
                                     _target234410234792_
                                     _tl234412234794_))))
                            (___match244038244039_
                             _e234409234784_
                             _hd234408234787_
                             _tl234407234789_
                             ___splice244003244004_
                             _target234410234792_
                             _tl234412234794_))
                        (___match244038244039_
                         _e234409234784_
                         _hd234408234787_
                         _tl234407234789_
                         ___splice244003244004_
                         _target234410234792_
                         _tl234412234794_))
                    (___match244038244039_
                     _e234409234784_
                     _hd234408234787_
                     _tl234407234789_
                     ___splice244003244004_
                     _target234410234792_
                     _tl234412234794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244038244039_
                                                     _e234409234784_
                                                     _hd234408234787_
                                                     _tl234407234789_
                                                     ___splice244003244004_
                                                     _target234410234792_
                                                     _tl234412234794_))))
                                            (___match244038244039_
                                             _e234409234784_
                                             _hd234408234787_
                                             _tl234407234789_
                                             ___splice244003244004_
                                             _target234410234792_
                                             _tl234412234794_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234413234797_ _target234410234792_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243999244000_))
                  (let ((_e234409234784_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243999244000_))))
                    (let ((_tl234407234789_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234409234784_)))
                          (_hd234408234787_
                           (let ()
                             (declare (not safe))
                             (##car _e234409234784_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234408234787_))
                          (let ((___splice244003244004_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234408234787_
                                    '0))))
                            (let ((_tl234412234794_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice244003244004_ '1)))
                                  (_target234410234792_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice244003244004_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234412234794_))
                                  (___match244026244027_
                                   _e234409234784_
                                   _hd234408234787_
                                   _tl234407234789_
                                   ___splice244003244004_
                                   _target234410234792_
                                   _tl234412234794_)
                                  (___match244038244039_
                                   _e234409234784_
                                   _hd234408234787_
                                   _tl234407234789_
                                   ___splice244003244004_
                                   _target234410234792_
                                   _tl234412234794_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234407234789_))
                              (let ((_e234497234539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234407234789_))))
                                (let ((_tl234495234544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234497234539_)))
                                      (_hd234496234542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234497234539_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234496234542_))
                                      (let ((_e234500234547_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234496234542_))))
                                        (let ((_tl234498234552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234500234547_)))
                                              (_hd234499234550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234500234547_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234499234550_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234499234550_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234498234552_))
                                                      (let ((_e234503234555_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234498234552_))))
                (let ((_tl234501234560_
                       (let () (declare (not safe)) (##cdr _e234503234555_)))
                      (_hd234502234558_
                       (let () (declare (not safe)) (##car _e234503234555_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234502234558_))
                      (let ((_e234506234563_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234502234558_))))
                        (let ((_tl234504234568_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234506234563_)))
                              (_hd234505234566_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234506234563_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234505234566_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234505234566_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234504234568_))
                                      (let ((_e234509234571_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234504234568_))))
                                        (let ((_tl234507234576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234509234571_)))
                                              (_hd234508234574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234509234571_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234507234576_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234501234560_))
                                                  (let ((_e234512234579_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234501234560_))))
                                                    (let ((_tl234510234584_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234512234579_)))
                                                          (_hd234511234582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234512234579_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234511234582_))
                                                          (let ((_e234515234587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234511234582_))))
                    (let ((_tl234513234592_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234515234587_)))
                          (_hd234514234590_
                           (let ()
                             (declare (not safe))
                             (##car _e234515234587_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234514234590_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234514234590_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234513234592_))
                                  (let ((_e234518234595_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234513234592_))))
                                    (let ((_tl234516234600_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234518234595_)))
                                          (_hd234517234598_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234518234595_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234516234600_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234510234584_))
                                              (let ((_e234521234603_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234510234584_))))
                                                (let ((_tl234519234608_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234521234603_)))
                                                      (_hd234520234606_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234521234603_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234519234608_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234495234544_))
                                                          (___kont244011244012_
                                                           _hd234517234598_
                                                           _hd234508234574_
                                                           _hd234408234787_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g234402234526_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234402234526_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234402234526_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g234402234526_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234402234526_)))
                              (let () (declare (not safe)) (_g234402234526_)))
                          (let () (declare (not safe)) (_g234402234526_)))))
                  (let () (declare (not safe)) (_g234402234526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234402234526_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234402234526_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234402234526_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234402234526_)))
                              (let ()
                                (declare (not safe))
                                (_g234402234526_)))))
                      (let () (declare (not safe)) (_g234402234526_)))))
              (let () (declare (not safe)) (_g234402234526_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234402234526_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234402234526_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234402234526_)))))
                              (let ()
                                (declare (not safe))
                                (_g234402234526_))))))
                  (let () (declare (not safe)) (_g234402234526_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form234202_)
        (let* ((_g234204234218_
                (lambda (_g234205234215_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234205234215_))))
               (_g234203234395_
                (lambda (_g234205234221_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234205234221_))
                      (let ((_e234210234223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234205234221_))))
                        (let ((_hd234209234226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234210234223_)))
                              (_tl234208234228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234210234223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234208234228_))
                              (let ((_e234213234231_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234208234228_))))
                                (let ((_hd234212234234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234213234231_)))
                                      (_tl234211234236_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234213234231_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234211234236_))
                                      ((lambda (_L234239_ _L234240_)
                                         (let* ((___stx244121244122_ _L234240_)
                                                (_g234255234283_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx244121244122_)))))
                                           (let ((___kont244123244124_
                                                  (lambda (_L234374_)
                                                    (length (let ((__tmp245266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g234384234387_ _g234385234389_)
                             (let ()
                               (declare (not safe))
                               (cons _g234384234387_ _g234385234389_)))))
                      (declare (not safe))
                      (foldr1 __tmp245266 '() _L234374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244127244128_
                                                  (lambda (_L234325_ _L234326_)
                                                    (let ((__tmp245267
                                                           (length (let ((__tmp245268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g234337234340_ _g234338234342_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g234337234340_
                                            _g234338234342_)))))
                             (declare (not safe))
                             (foldr1 __tmp245268 '() _L234326_)))))
              (declare (not safe))
              (cons __tmp245267 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244131244132_
                                                  (lambda (_L234288_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match244146244147_
                                                     (lambda (___splice244129244130_
                                                              _target234269234301_
                                                              _tl234271234303_)
                                                       (letrec ((_loop234272234306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234270234309_ _arg234276234311_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234270234309_))
                               (let ((_e234273234314_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234270234309_))))
                                 (let ((_lp-tl234275234319_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234273234314_)))
                                       (_lp-hd234274234317_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234273234314_))))
                                   (let ((__tmp245269
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234274234317_
                                                  _arg234276234311_))))
                                     (declare (not safe))
                                     (_loop234272234306_
                                      _lp-tl234275234319_
                                      __tmp245269))))
                               (let ((_arg234277234322_
                                      (reverse _arg234276234311_)))
                                 (___kont244127244128_
                                  _tl234271234303_
                                  _arg234277234322_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234272234306_ _target234269234301_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244140244141_
                                                     (lambda (___splice244125244126_
                                                              _target234258234350_
                                                              _tl234260234352_)
                                                       (letrec ((_loop234261234355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234259234358_ _arg234265234360_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234259234358_))
                               (let ((_e234262234363_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234259234358_))))
                                 (let ((_lp-tl234264234368_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234262234363_)))
                                       (_lp-hd234263234366_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234262234363_))))
                                   (let ((__tmp245270
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234263234366_
                                                  _arg234265234360_))))
                                     (declare (not safe))
                                     (_loop234261234355_
                                      _lp-tl234264234368_
                                      __tmp245270))))
                               (let ((_arg234266234371_
                                      (reverse _arg234265234360_)))
                                 (___kont244123244124_ _arg234266234371_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234261234355_ _target234258234350_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx244121244122_))
                                                   (let ((___splice244125244126_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx244121244122_
                                                             '0))))
                                                     (let ((_tl234260234352_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244125244126_
                                                               '1)))
                                                           (_target234258234350_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244125244126_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl234260234352_))
                                                           (___match244140244141_
                                                            ___splice244125244126_
                                                            _target234258234350_
                                                            _tl234260234352_)
                                                           (___match244146244147_
                                                            ___splice244125244126_
                                                            _target234258234350_
                                                            _tl234260234352_))))
                                                   (___kont244131244132_
                                                    ___stx244121244122_))))))
                                       _hd234212234234_
                                       _hd234209234226_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234204234218_ _g234205234221_)))))
                              (let ()
                                (declare (not safe))
                                (_g234204234218_ _g234205234221_)))))
                      (let ()
                        (declare (not safe))
                        (_g234204234218_ _g234205234221_))))))
          (declare (not safe))
          (_g234203234395_ _form234202_))))
    (define gxc#lambda-expr?
      (lambda (_expr234155_)
        (let* ((___stx244149244150_ _expr234155_)
               (_g234158234168_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244149244150_)))))
          (let ((___kont244151244152_ (lambda (_L234188_) '#t))
                (___kont244153244154_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244149244150_))
                (let ((_e234163234180_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244149244150_))))
                  (let ((_tl234161234185_
                         (let () (declare (not safe)) (##cdr _e234163234180_)))
                        (_hd234162234183_
                         (let ()
                           (declare (not safe))
                           (##car _e234163234180_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234162234183_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd234162234183_))
                            (___kont244151244152_ _tl234161234185_)
                            (___kont244153244154_))
                        (___kont244153244154_))))
                (___kont244153244154_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr234108_)
        (let* ((___stx244167244168_ _expr234108_)
               (_g234111234121_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244167244168_)))))
          (let ((___kont244169244170_ (lambda (_L234141_) '#t))
                (___kont244171244172_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244167244168_))
                (let ((_e234116234133_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244167244168_))))
                  (let ((_tl234114234138_
                         (let () (declare (not safe)) (##cdr _e234116234133_)))
                        (_hd234115234136_
                         (let ()
                           (declare (not safe))
                           (##car _e234116234133_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234115234136_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd234115234136_))
                            (___kont244169244170_ _tl234114234138_)
                            (___kont244171244172_))
                        (___kont244171244172_))))
                (___kont244171244172_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr233977_)
        (let* ((___stx244185244186_ _expr233977_)
               (_g233980234010_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244185244186_)))))
          (let ((___kont244187244188_
                 (lambda (_L234078_ _L234079_ _L234080_)
                   (if (let () (declare (not safe)) (gx#identifier? _L234080_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L234079_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L234078_))
                           '#f)
                       '#f)))
                (___kont244189244190_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244185244186_))
                (let ((_e233987234022_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244185244186_))))
                  (let ((_tl233985234027_
                         (let () (declare (not safe)) (##cdr _e233987234022_)))
                        (_hd233986234025_
                         (let ()
                           (declare (not safe))
                           (##car _e233987234022_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233986234025_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233986234025_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233985234027_))
                                (let ((_e233990234030_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233985234027_))))
                                  (let ((_tl233988234035_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233990234030_)))
                                        (_hd233989234033_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233990234030_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233989234033_))
                                        (let ((_e233993234038_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233989234033_))))
                                          (let ((_tl233991234043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233993234038_)))
                                                (_hd233992234041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233993234038_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233992234041_))
                                                (let ((_e233996234046_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233992234041_))))
                                                  (let ((_tl233994234051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233996234046_)))
                                                        (_hd233995234049_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233996234046_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233995234049_))
                                                        (let ((_e233999234054_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233995234049_))))
                  (let ((_tl233997234059_
                         (let () (declare (not safe)) (##cdr _e233999234054_)))
                        (_hd233998234057_
                         (let ()
                           (declare (not safe))
                           (##car _e233999234054_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233997234059_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233994234051_))
                            (let ((_e234002234062_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233994234051_))))
                              (let ((_tl234000234067_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234002234062_)))
                                    (_hd234001234065_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234002234062_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl234000234067_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233991234043_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233988234035_))
                                            (let ((_e234005234070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233988234035_))))
                                              (let ((_tl234003234075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234005234070_)))
                                                    (_hd234004234073_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234005234070_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl234003234075_))
                                                    (___kont244187244188_
                                                     _hd234004234073_
                                                     _hd234001234065_
                                                     _hd233998234057_)
                                                    (___kont244189244190_))))
                                            (___kont244189244190_))
                                        (___kont244189244190_))
                                    (___kont244189244190_))))
                            (___kont244189244190_))
                        (___kont244189244190_))))
                (___kont244189244190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244189244190_))))
                                        (___kont244189244190_))))
                                (___kont244189244190_))
                            (___kont244189244190_))
                        (___kont244189244190_))))
                (___kont244189244190_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr233302_)
        (let* ((___stx244247244248_ _expr233302_)
               (_g233305233463_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244247244248_)))))
          (let ((___kont244249244250_
                 (lambda (_L233851_
                          _L233852_
                          _L233853_
                          _L233854_
                          _L233855_
                          _L233856_
                          _L233857_
                          _L233858_
                          _L233859_
                          _L233860_
                          _L233861_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L233858_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L233854_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L233853_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233861_
                                      _L233852_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L233860_
                                          _L233857_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233855_
                                              _L233851_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233859_
                                              _L233856_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont244251244252_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244247244248_))
                (let ((_e233320233475_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244247244248_))))
                  (let ((_tl233318233480_
                         (let () (declare (not safe)) (##cdr _e233320233475_)))
                        (_hd233319233478_
                         (let ()
                           (declare (not safe))
                           (##car _e233320233475_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233319233478_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233319233478_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233318233480_))
                                (let ((_e233323233483_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233318233480_))))
                                  (let ((_tl233321233488_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233323233483_)))
                                        (_hd233322233486_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233323233483_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233322233486_))
                                        (let ((_e233326233491_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233322233486_))))
                                          (let ((_tl233324233496_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233326233491_)))
                                                (_hd233325233494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233326233491_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233325233494_))
                                                (let ((_e233329233499_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233325233494_))))
                                                  (let ((_tl233327233504_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233329233499_)))
                                                        (_hd233328233502_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233329233499_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233328233502_))
                                                        (let ((_e233332233507_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233328233502_))))
                  (let ((_tl233330233512_
                         (let () (declare (not safe)) (##cdr _e233332233507_)))
                        (_hd233331233510_
                         (let ()
                           (declare (not safe))
                           (##car _e233332233507_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233330233512_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233327233504_))
                            (let ((_e233335233515_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233327233504_))))
                              (let ((_tl233333233520_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233335233515_)))
                                    (_hd233334233518_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233335233515_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233334233518_))
                                    (let ((_e233338233523_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233334233518_))))
                                      (let ((_tl233336233528_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233338233523_)))
                                            (_hd233337233526_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233338233523_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233337233526_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd233337233526_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233336233528_))
                                                    (let ((_e233341233531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233336233528_))))
                                                      (let ((_tl233339233536_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233341233531_)))
                    (_hd233340233534_
                     (let () (declare (not safe)) (##car _e233341233531_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233340233534_))
                    (let ((_e233344233539_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233340233534_))))
                      (let ((_tl233342233544_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233344233539_)))
                            (_hd233343233542_
                             (let ()
                               (declare (not safe))
                               (##car _e233344233539_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233343233542_))
                            (let ((_e233347233547_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233343233542_))))
                              (let ((_tl233345233552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233347233547_)))
                                    (_hd233346233550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233347233547_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233346233550_))
                                    (let ((_e233350233555_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233346233550_))))
                                      (let ((_tl233348233560_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233350233555_)))
                                            (_hd233349233558_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233350233555_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233348233560_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233345233552_))
                                                (let ((_e233353233563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233345233552_))))
                                                  (let ((_tl233351233568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233353233563_)))
                                                        (_hd233352233566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233353233563_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233351233568_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl233342233544_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233339233536_))
                        (let ((_e233356233571_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233339233536_))))
                          (let ((_tl233354233576_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233356233571_)))
                                (_hd233355233574_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233356233571_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233355233574_))
                                (let ((_e233359233579_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233355233574_))))
                                  (let ((_tl233357233584_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233359233579_)))
                                        (_hd233358233582_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233359233579_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233358233582_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd233358233582_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233357233584_))
                                                (let ((_e233362233587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233357233584_))))
                                                  (let ((_tl233360233592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233362233587_)))
                                                        (_hd233361233590_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233362233587_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233361233590_))
                                                        (let ((_e233365233595_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233361233590_))))
                  (let ((_tl233363233600_
                         (let () (declare (not safe)) (##cdr _e233365233595_)))
                        (_hd233364233598_
                         (let ()
                           (declare (not safe))
                           (##car _e233365233595_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233360233592_))
                        (let ((_e233368233603_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233360233592_))))
                          (let ((_tl233366233608_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233368233603_)))
                                (_hd233367233606_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233368233603_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233367233606_))
                                (let ((_e233371233611_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233367233606_))))
                                  (let ((_tl233369233616_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233371233611_)))
                                        (_hd233370233614_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233371233611_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233370233614_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd233370233614_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233369233616_))
                                                (let ((_e233374233619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233369233616_))))
                                                  (let ((_tl233372233624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233374233619_)))
                                                        (_hd233373233622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233374233619_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233373233622_))
                                                        (let ((_e233377233627_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233373233622_))))
                  (let ((_tl233375233632_
                         (let () (declare (not safe)) (##cdr _e233377233627_)))
                        (_hd233376233630_
                         (let ()
                           (declare (not safe))
                           (##car _e233377233627_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233376233630_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233376233630_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233375233632_))
                                (let ((_e233380233635_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233375233632_))))
                                  (let ((_tl233378233640_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233380233635_)))
                                        (_hd233379233638_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233380233635_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233378233640_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233372233624_))
                                            (let ((_e233383233643_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233372233624_))))
                                              (let ((_tl233381233648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233383233643_)))
                                                    (_hd233382233646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233383233643_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233382233646_))
                                                    (let ((_e233386233651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233382233646_))))
                                                      (let ((_tl233384233656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233386233651_)))
                    (_hd233385233654_
                     (let () (declare (not safe)) (##car _e233386233651_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233385233654_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233385233654_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233384233656_))
                            (let ((_e233389233659_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233384233656_))))
                              (let ((_tl233387233664_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233389233659_)))
                                    (_hd233388233662_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233389233659_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233387233664_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233381233648_))
                                        (let ((_e233392233667_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233381233648_))))
                                          (let ((_tl233390233672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233392233667_)))
                                                (_hd233391233670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233392233667_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233391233670_))
                                                (let ((_e233395233675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233391233670_))))
                                                  (let ((_tl233393233680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233395233675_)))
                                                        (_hd233394233678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233395233675_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd233394233678_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd233394233678_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233393233680_))
                        (let ((_e233398233683_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233393233680_))))
                          (let ((_tl233396233688_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233398233683_)))
                                (_hd233397233686_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233398233683_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233396233688_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233366233608_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233354233576_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233333233520_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233324233496_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233321233488_))
                                                    (let ((_e233401233691_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233321233488_))))
                                                      (let ((_tl233399233696_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233401233691_)))
                    (_hd233400233694_
                     (let () (declare (not safe)) (##car _e233401233691_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233400233694_))
                    (let ((_e233404233699_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233400233694_))))
                      (let ((_tl233402233704_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233404233699_)))
                            (_hd233403233702_
                             (let ()
                               (declare (not safe))
                               (##car _e233404233699_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233403233702_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd233403233702_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233402233704_))
                                    (let ((_e233407233707_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233402233704_))))
                                      (let ((_tl233405233712_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233407233707_)))
                                            (_hd233406233710_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233407233707_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233405233712_))
                                            (let ((_e233410233715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233405233712_))))
                                              (let ((_tl233408233720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233410233715_)))
                                                    (_hd233409233718_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233410233715_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233409233718_))
                                                    (let ((_e233413233723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233409233718_))))
                                                      (let ((_tl233411233728_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233413233723_)))
                    (_hd233412233726_
                     (let () (declare (not safe)) (##car _e233413233723_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233412233726_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233412233726_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233411233728_))
                            (let ((_e233416233731_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233411233728_))))
                              (let ((_tl233414233736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233416233731_)))
                                    (_hd233415233734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233416233731_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233415233734_))
                                    (let ((_e233419233739_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233415233734_))))
                                      (let ((_tl233417233744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233419233739_)))
                                            (_hd233418233742_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233419233739_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233418233742_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233418233742_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233417233744_))
                                                    (let ((_e233422233747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233417233744_))))
                                                      (let ((_tl233420233752_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233422233747_)))
                    (_hd233421233750_
                     (let () (declare (not safe)) (##car _e233422233747_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233420233752_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233414233736_))
                        (let ((_e233425233755_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233414233736_))))
                          (let ((_tl233423233760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233425233755_)))
                                (_hd233424233758_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233425233755_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233424233758_))
                                (let ((_e233428233763_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233424233758_))))
                                  (let ((_tl233426233768_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233428233763_)))
                                        (_hd233427233766_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233428233763_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233427233766_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233427233766_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233426233768_))
                                                (let ((_e233431233771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233426233768_))))
                                                  (let ((_tl233429233776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233431233771_)))
                                                        (_hd233430233774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233431233771_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233429233776_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl233423233760_))
                                                            (let ((_e233434233779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl233423233760_))))
                      (let ((_tl233432233784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233434233779_)))
                            (_hd233433233782_
                             (let ()
                               (declare (not safe))
                               (##car _e233434233779_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233433233782_))
                            (let ((_e233437233787_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233433233782_))))
                              (let ((_tl233435233792_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233437233787_)))
                                    (_hd233436233790_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233437233787_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd233436233790_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd233436233790_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233435233792_))
                                            (let ((_e233440233795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233435233792_))))
                                              (let ((_tl233438233800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233440233795_)))
                                                    (_hd233439233798_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233440233795_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233438233800_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233432233784_))
                                                        (let ((_e233443233803_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233432233784_))))
                  (let ((_tl233441233808_
                         (let () (declare (not safe)) (##cdr _e233443233803_)))
                        (_hd233442233806_
                         (let ()
                           (declare (not safe))
                           (##car _e233443233803_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd233442233806_))
                        (let ((_e233446233811_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd233442233806_))))
                          (let ((_tl233444233816_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233446233811_)))
                                (_hd233445233814_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233446233811_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd233445233814_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd233445233814_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233444233816_))
                                        (let ((_e233449233819_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233444233816_))))
                                          (let ((_tl233447233824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233449233819_)))
                                                (_hd233448233822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233449233819_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233447233824_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233441233808_))
                                                    (let ((_e233452233827_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233441233808_))))
                                                      (let ((_tl233450233832_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233452233827_)))
                    (_hd233451233830_
                     (let () (declare (not safe)) (##car _e233452233827_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233451233830_))
                    (let ((_e233455233835_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233451233830_))))
                      (let ((_tl233453233840_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233455233835_)))
                            (_hd233454233838_
                             (let ()
                               (declare (not safe))
                               (##car _e233455233835_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233454233838_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd233454233838_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233453233840_))
                                    (let ((_e233458233843_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233453233840_))))
                                      (let ((_tl233456233848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233458233843_)))
                                            (_hd233457233846_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233458233843_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233456233848_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233450233832_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233408233720_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233399233696_))
                                                        (___kont244249244250_
                                                         _hd233457233846_
                                                         _hd233448233822_
                                                         _hd233430233774_
                                                         _hd233421233750_
                                                         _hd233406233710_
                                                         _hd233397233686_
                                                         _hd233388233662_
                                                         _hd233379233638_
                                                         _hd233364233598_
                                                         _hd233349233558_
                                                         _hd233331233510_)
                                                        (___kont244251244252_))
                                                    (___kont244251244252_))
                                                (___kont244251244252_))
                                            (___kont244251244252_))))
                                    (___kont244251244252_))
                                (___kont244251244252_))
                            (___kont244251244252_))))
                    (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244251244252_))
                                                (___kont244251244252_))))
                                        (___kont244251244252_))
                                    (___kont244251244252_))
                                (___kont244251244252_))))
                        (___kont244251244252_))))
                (___kont244251244252_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244251244252_))))
                                            (___kont244251244252_))
                                        (___kont244251244252_))
                                    (___kont244251244252_))))
                            (___kont244251244252_))))
                    (___kont244251244252_))
                (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244251244252_))
                                            (___kont244251244252_))
                                        (___kont244251244252_))))
                                (___kont244251244252_))))
                        (___kont244251244252_))
                    (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244251244252_))
                                                (___kont244251244252_))
                                            (___kont244251244252_))))
                                    (___kont244251244252_))))
                            (___kont244251244252_))
                        (___kont244251244252_))
                    (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244251244252_))))
                                            (___kont244251244252_))))
                                    (___kont244251244252_))
                                (___kont244251244252_))
                            (___kont244251244252_))))
                    (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244251244252_))
                                                (___kont244251244252_))
                                            (___kont244251244252_))
                                        (___kont244251244252_))
                                    (___kont244251244252_))
                                (___kont244251244252_))))
                        (___kont244251244252_))
                    (___kont244251244252_))
                (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244251244252_))))
                                        (___kont244251244252_))
                                    (___kont244251244252_))))
                            (___kont244251244252_))
                        (___kont244251244252_))
                    (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244251244252_))))
                                            (___kont244251244252_))
                                        (___kont244251244252_))))
                                (___kont244251244252_))
                            (___kont244251244252_))
                        (___kont244251244252_))))
                (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244251244252_))
                                            (___kont244251244252_))
                                        (___kont244251244252_))))
                                (___kont244251244252_))))
                        (___kont244251244252_))))
                (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244251244252_))
                                            (___kont244251244252_))
                                        (___kont244251244252_))))
                                (___kont244251244252_))))
                        (___kont244251244252_))
                    (___kont244251244252_))
                (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244251244252_))
                                            (___kont244251244252_))))
                                    (___kont244251244252_))))
                            (___kont244251244252_))))
                    (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244251244252_))
                                                (___kont244251244252_))
                                            (___kont244251244252_))))
                                    (___kont244251244252_))))
                            (___kont244251244252_))
                        (___kont244251244252_))))
                (___kont244251244252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244251244252_))))
                                        (___kont244251244252_))))
                                (___kont244251244252_))
                            (___kont244251244252_))
                        (___kont244251244252_))))
                (___kont244251244252_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx233044_ _id233045_ _clauses233046_ _gensym?233047_)
        (let _lp233049_ ((_rest233051_ _clauses233046_)
                         (_ids233052_ '())
                         (_impls233053_ '())
                         (_clauses233054_ '()))
          (let* ((_rest233055233063_ _rest233051_)
                 (_else233057233071_
                  (lambda ()
                    (values (reverse _ids233052_)
                            (reverse _impls233053_)
                            (reverse _clauses233054_))))
                 (_K233059233276_
                  (lambda (_rest233074_ _clause233075_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause233075_))
                        (let ((__tmp245326
                               (let ()
                                 (declare (not safe))
                                 (cons _clause233075_ _clauses233054_))))
                          (declare (not safe))
                          (_lp233049_
                           _rest233074_
                           _ids233052_
                           _impls233053_
                           __tmp245326))
                        (let* ((_g233077233088_
                                (lambda (_g233078233085_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g233078233085_))))
                               (_g233076233273_
                                (lambda (_g233078233091_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g233078233091_))
                                      (let ((_e233083233093_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g233078233091_))))
                                        (let ((_hd233082233096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233083233093_)))
                                              (_tl233081233098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233083233093_))))
                                          ((lambda (_L233101_ _L233102_)
                                             (let* ((_id233119_
                                                     (let ((__tmp245273
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id233045_)))
                                                           (__tmp245272
                                                            (length _clauses233054_))
                                                           (__tmp245271
                                                            (if _gensym?233047_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp245273
                                                        '"__"
                                                        __tmp245272
                                                        __tmp245271)))
                                                    (_id233121_
                                                     (let ((__tmp245274
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx233044_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id233119_
                                                        __tmp245274)))
                                                    (_impl233123_
                                                     (let ((__tmp245275
                                                            (let ((__tmp245277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp245276
                           (let ()
                             (declare (not safe))
                             (cons _L233102_ _L233101_))))
                      (declare (not safe))
                      (cons __tmp245277 __tmp245276))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp245275 _stx233044_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause233270_
                                                     (let* ((___stx244631244632_
                                                             _L233102_)
                                                            (_g233127233155_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx244631244632_)))))
               (let ((___kont244633244634_
                      (lambda (_L233249_)
                        (let ((__tmp245278
                               (let ((__tmp245279
                                      (let ((__tmp245280
                                             (let ((__tmp245281
                                                    (let ((__tmp245287
                                                           (let ((__tmp245288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id233121_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245288)))
                  (__tmp245282
                   (let ((__tmp245283
                          (lambda (_g233259233262_ _g233260233264_)
                            (let ((__tmp245284
                                   (let ((__tmp245286
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp245285
                                          (let ()
                                            (declare (not safe))
                                            (cons _g233259233262_ '()))))
                                     (declare (not safe))
                                     (cons __tmp245286 __tmp245285))))
                              (declare (not safe))
                              (cons __tmp245284 _g233260233264_)))))
                     (declare (not safe))
                     (foldr1 __tmp245283 '() _L233249_))))
              (declare (not safe))
              (cons __tmp245287 __tmp245282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245281))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245280
                                         _stx233044_))))
                                 (declare (not safe))
                                 (cons __tmp245279 '()))))
                          (declare (not safe))
                          (cons _L233102_ __tmp245278))))
                     (___kont244637244638_
                      (lambda (_L233200_ _L233201_)
                        (let ((__tmp245289
                               (let ((__tmp245290
                                      (let ((__tmp245291
                                             (let ((__tmp245292
                                                    (let ((__tmp245306
                                                           (let ((__tmp245307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245307)))
                  (__tmp245293
                   (let ((__tmp245304
                          (let ((__tmp245305
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233121_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245305)))
                         (__tmp245294
                          (let ((__tmp245300
                                 (let ((__tmp245301
                                        (let ((__tmp245303
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp245302
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L233200_ '()))))
                                          (declare (not safe))
                                          (cons __tmp245303 __tmp245302))))
                                   (declare (not safe))
                                   (cons __tmp245301 '())))
                                (__tmp245295
                                 (let ((__tmp245296
                                        (lambda (_g233212233215_
                                                 _g233213233217_)
                                          (let ((__tmp245297
                                                 (let ((__tmp245299
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp245298
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g233212233215_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp245299
                                                         __tmp245298))))
                                            (declare (not safe))
                                            (cons __tmp245297
                                                  _g233213233217_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp245296 '() _L233201_))))
                            (declare (not safe))
                            (foldr1 cons __tmp245300 __tmp245295))))
                     (declare (not safe))
                     (cons __tmp245304 __tmp245294))))
              (declare (not safe))
              (cons __tmp245306 __tmp245293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245292))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245291
                                         _stx233044_))))
                                 (declare (not safe))
                                 (cons __tmp245290 '()))))
                          (declare (not safe))
                          (cons _L233102_ __tmp245289))))
                     (___kont244641244642_
                      (lambda (_L233160_)
                        (let ((__tmp245308
                               (let ((__tmp245309
                                      (let ((__tmp245310
                                             (let ((__tmp245311
                                                    (let ((__tmp245319
                                                           (let ((__tmp245320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245320)))
                  (__tmp245312
                   (let ((__tmp245317
                          (let ((__tmp245318
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233121_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245318)))
                         (__tmp245313
                          (let ((__tmp245314
                                 (let ((__tmp245316
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp245315
                                        (let ()
                                          (declare (not safe))
                                          (cons _L233160_ '()))))
                                   (declare (not safe))
                                   (cons __tmp245316 __tmp245315))))
                            (declare (not safe))
                            (cons __tmp245314 '()))))
                     (declare (not safe))
                     (cons __tmp245317 __tmp245313))))
              (declare (not safe))
              (cons __tmp245319 __tmp245312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245311))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245310
                                         _stx233044_))))
                                 (declare (not safe))
                                 (cons __tmp245309 '()))))
                          (declare (not safe))
                          (cons _L233102_ __tmp245308)))))
                 (let* ((___match244656244657_
                         (lambda (___splice244639244640_
                                  _target233141233176_
                                  _tl233143233178_)
                           (letrec ((_loop233144233181_
                                     (lambda (_hd233142233184_
                                              _arg233148233186_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233142233184_))
                                           (let ((_e233145233189_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233142233184_))))
                                             (let ((_lp-tl233147233194_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233145233189_)))
                                                   (_lp-hd233146233192_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233145233189_))))
                                               (let ((__tmp245321
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233146233192_
                                                              _arg233148233186_))))
                                                 (declare (not safe))
                                                 (_loop233144233181_
                                                  _lp-tl233147233194_
                                                  __tmp245321))))
                                           (let ((_arg233149233197_
                                                  (reverse _arg233148233186_)))
                                             (___kont244637244638_
                                              _tl233143233178_
                                              _arg233149233197_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233144233181_
                                _target233141233176_
                                '())))))
                        (___match244650244651_
                         (lambda (___splice244635244636_
                                  _target233130233225_
                                  _tl233132233227_)
                           (letrec ((_loop233133233230_
                                     (lambda (_hd233131233233_
                                              _arg233137233235_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233131233233_))
                                           (let ((_e233134233238_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233131233233_))))
                                             (let ((_lp-tl233136233243_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233134233238_)))
                                                   (_lp-hd233135233241_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233134233238_))))
                                               (let ((__tmp245322
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233135233241_
                                                              _arg233137233235_))))
                                                 (declare (not safe))
                                                 (_loop233133233230_
                                                  _lp-tl233136233243_
                                                  __tmp245322))))
                                           (let ((_arg233138233246_
                                                  (reverse _arg233137233235_)))
                                             (___kont244633244634_
                                              _arg233138233246_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233133233230_
                                _target233130233225_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx244631244632_))
                       (let ((___splice244635244636_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx244631244632_
                                 '0))))
                         (let ((_tl233132233227_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244635244636_ '1)))
                               (_target233130233225_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244635244636_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl233132233227_))
                               (___match244650244651_
                                ___splice244635244636_
                                _target233130233225_
                                _tl233132233227_)
                               (___match244656244657_
                                ___splice244635244636_
                                _target233130233225_
                                _tl233132233227_))))
                       (___kont244641244642_ ___stx244631244632_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp245325
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id233121_
                                                              _ids233052_)))
                                                     (__tmp245324
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl233123_
                                                              _impls233053_)))
                                                     (__tmp245323
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause233270_
                                                              _clauses233054_))))
                                                 (declare (not safe))
                                                 (_lp233049_
                                                  _rest233074_
                                                  __tmp245325
                                                  __tmp245324
                                                  __tmp245323))))
                                           _tl233081233098_
                                           _hd233082233096_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g233077233088_ _g233078233091_))))))
                          (declare (not safe))
                          (_g233076233273_ _clause233075_))))))
            (if (let () (declare (not safe)) (##pair? _rest233055233063_))
                (let ((_hd233060233279_
                       (let ()
                         (declare (not safe))
                         (##car _rest233055233063_)))
                      (_tl233061233281_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest233055233063_))))
                  (let* ((_clause233284_ _hd233060233279_)
                         (_rest233286_ _tl233061233281_))
                    (declare (not safe))
                    (_K233059233276_ _rest233286_ _clause233284_)))
                (let () (declare (not safe)) (_else233057233071_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx233291_ _id233292_ _clauses233293_)
        (let ((_gensym?233295_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx233291_
           _id233292_
           _clauses233293_
           _gensym?233295_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g245328_
        (let ((_g245327_ (let () (declare (not safe)) (##length _g245328_))))
          (cond ((let () (declare (not safe)) (##fx= _g245327_ 3))
                 (apply (lambda (_stx233291_ _id233292_ _clauses233293_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx233291_
                             _id233292_
                             _clauses233293_)))
                        _g245328_))
                ((let () (declare (not safe)) (##fx= _g245327_ 4))
                 (apply (lambda (_stx233297_
                                 _id233298_
                                 _clauses233299_
                                 _gensym?233300_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx233297_
                             _id233298_
                             _clauses233299_
                             _gensym?233300_)))
                        _g245328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g245328_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx232321_)
        (letrec ((_case-lambda-clause-def232323_
                  (lambda (_id233040_ _impl233041_)
                    (let ((__tmp245329
                           (let ((__tmp245330
                                  (let ((__tmp245333
                                         (let ()
                                           (declare (not safe))
                                           (cons _id233040_ '())))
                                        (__tmp245331
                                         (let ((__tmp245332
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl233041_))))
                                           (declare (not safe))
                                           (cons __tmp245332 '()))))
                                    (declare (not safe))
                                    (cons __tmp245333 __tmp245331))))
                             (declare (not safe))
                             (cons '%#define-values __tmp245330))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245329 _stx232321_))))
                 (_opt-lambda-dispatch-name232324_
                  (lambda (_id233036_)
                    (if (uninterned-symbol? _id233036_)
                        (let ((_str233038_ (symbol->string _id233036_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str233038_))
                              '"%"
                              _id233036_))
                        _id233036_)))
                 (_kw-lambda-dispatch-name232325_
                  (lambda (_id233031_ _name233032_)
                    (if (uninterned-symbol? _id233031_)
                        (let ((_str233034_ (symbol->string _id233031_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str233034_))
                              _name233032_
                              _id233031_))
                        _id233031_))))
          (let* ((___stx244679244680_ _stx232321_)
                 (_g232330232389_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244679244680_)))))
            (let ((___kont244681244682_
                   (lambda (_L232940_ _L232941_)
                     (let* ((___stx244659244660_ _L232940_)
                            (_g232958232972_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244659244660_)))))
                       (let ((___kont244661244662_
                              (lambda (_L233016_) _stx232321_))
                             (___kont244663244664_
                              (lambda (_L232985_)
                                (let ((_g245334_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx232321_
                                          _L232941_
                                          _L232985_))))
                                  (begin
                                    (let ((_g245335_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g245334_)
                                                 (##vector-length _g245334_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g245335_ 3)))
                                          (error "Context expects 3 values"
                                                 _g245335_)))
                                    (let ((_ids232995_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245334_ 0)))
                                          (_impls232996_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245334_ 1)))
                                          (_clauses232997_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245334_ 2))))
                                      (let* ((_g245336_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids232995_))
                                             (_defs233000_
                                              (map _case-lambda-clause-def232323_
                                                   _ids232995_
                                                   _impls232996_)))
                                        (let ((__tmp245338
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L232941_)))
                                              (__tmp245337
                                               (map gxc#identifier-symbol
                                                    _ids232995_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp245338
                                           '" => "
                                           __tmp245337))
                                        (let ((__tmp245339
                                               (let ((__tmp245340
                                                      (let ((__tmp245341
                                                             (let ((__tmp245342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245343
                                   (let ((__tmp245344
                                          (let ((__tmp245349
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L232941_ '())))
                                                (__tmp245345
                                                 (let ((__tmp245346
                                                        (let ((__tmp245348
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses232997_)))
                      (__tmp245347
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp245348 __tmp245347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245346 '()))))
                                            (declare (not safe))
                                            (cons __tmp245349 __tmp245345))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp245344))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245343
                               _stx232321_))))
                       (declare (not safe))
                       (cons __tmp245342 '()))))
                (declare (not safe))
                (foldr1 cons __tmp245341 _defs233000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp245340))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp245339
                                           _stx232321_)))))))))
                         (let ((___match244670244671_
                                (lambda (_e232963233008_
                                         _hd232962233011_
                                         _tl232961233013_)
                                  (let ((_L233016_ _tl232961233013_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L233016_))
                                        (___kont244661244662_ _L233016_)
                                        (___kont244663244664_
                                         _tl232961233013_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx244659244660_))
                               (let ((_e232963233008_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx244659244660_))))
                                 (let ((_tl232961233013_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232963233008_)))
                                       (_hd232962233011_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232963233008_))))
                                   (___match244670244671_
                                    _e232963233008_
                                    _hd232962233011_
                                    _tl232961233013_)))
                               (let ()
                                 (declare (not safe))
                                 (_g232958232972_))))))))
                  (___kont244683244684_
                   (lambda (_L232758_ _L232759_)
                     (let* ((_g232775232805_
                             (lambda (_g232776232802_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232776232802_))))
                            (_g232774232900_
                             (lambda (_g232776232808_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232776232808_))
                                   (let ((_e232782232810_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232776232808_))))
                                     (let ((_hd232781232813_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232782232810_)))
                                           (_tl232780232815_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232782232810_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232780232815_))
                                           (let ((_e232785232818_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232780232815_))))
                                             (let ((_hd232784232821_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232785232818_)))
                                                   (_tl232783232823_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232785232818_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232784232821_))
                                                   (let ((_e232788232826_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232784232821_))))
                                                     (let ((_hd232787232829_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232788232826_)))
                                                           (_tl232786232831_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232788232826_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232787232829_))
                                                           (let ((_e232791232834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232787232829_))))
                     (let ((_hd232790232837_
                            (let ()
                              (declare (not safe))
                              (##car _e232791232834_)))
                           (_tl232789232839_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232791232834_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232790232837_))
                           (let ((_e232794232842_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232790232837_))))
                             (let ((_hd232793232845_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232794232842_)))
                                   (_tl232792232847_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232794232842_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232792232847_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232789232839_))
                                       (let ((_e232797232850_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232789232839_))))
                                         (let ((_hd232796232853_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232797232850_)))
                                               (_tl232795232855_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232797232850_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232795232855_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl232786232831_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232783232823_))
                                                       (let ((_e232800232858_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232783232823_))))
                 (let ((_hd232799232861_
                        (let () (declare (not safe)) (##car _e232800232858_)))
                       (_tl232798232863_
                        (let () (declare (not safe)) (##cdr _e232800232858_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl232798232863_))
                       ((lambda (_L232866_ _L232867_ _L232868_)
                          (let* ((_lambda-id232892_
                                  (let ((__tmp245352
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L232759_)))
                                        (__tmp245350
                                         (let ((__tmp245351
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232868_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name232324_
                                            __tmp245351))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp245352
                                     '"__"
                                     __tmp245350)))
                                 (_lambda-id232894_
                                  (let ((__tmp245353
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx232321_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id232892_
                                     __tmp245353)))
                                 (_g245354_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id232894_)))
                                 (_new-case-lambda-expr232897_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L232866_
                                     _L232868_
                                     _lambda-id232894_))))
                            (let ((__tmp245356
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L232759_)))
                                  (__tmp245355
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id232894_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp245356
                               '" => "
                               __tmp245355))
                            (let ((__tmp245357
                                   (let ((__tmp245358
                                          (let ((__tmp245366
                                                 (let ((__tmp245367
                                                        (let ((__tmp245368
                                                               (let ((__tmp245371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id232894_ '())))
                             (__tmp245369
                              (let ((__tmp245370
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L232867_))))
                                (declare (not safe))
                                (cons __tmp245370 '()))))
                         (declare (not safe))
                         (cons __tmp245371 __tmp245369))))
                  (declare (not safe))
                  (cons '%#define-values __tmp245368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp245367
                                                    _stx232321_)))
                                                (__tmp245359
                                                 (let ((__tmp245360
                                                        (let ((__tmp245361
                                                               (let ((__tmp245362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp245363
                                     (let ((__tmp245365
                                            (let ()
                                              (declare (not safe))
                                              (cons _L232759_ '())))
                                           (__tmp245364
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr232897_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp245365 __tmp245364))))
                                (declare (not safe))
                                (cons '%#define-values __tmp245363))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp245362 _stx232321_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp245361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245360 '()))))
                                            (declare (not safe))
                                            (cons __tmp245366 __tmp245359))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp245358))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245357
                               _stx232321_))))
                        _hd232799232861_
                        _hd232796232853_
                        _hd232793232845_)
                       (let ()
                         (declare (not safe))
                         (_g232775232805_ _g232776232808_)))))
               (let () (declare (not safe)) (_g232775232805_ _g232776232808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232775232805_
                                                      _g232776232808_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232775232805_
                                                  _g232776232808_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232775232805_ _g232776232808_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232775232805_ _g232776232808_)))))
                           (let ()
                             (declare (not safe))
                             (_g232775232805_ _g232776232808_)))))
                   (let ()
                     (declare (not safe))
                     (_g232775232805_ _g232776232808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232775232805_
                                                      _g232776232808_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232775232805_
                                              _g232776232808_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232775232805_ _g232776232808_))))))
                       (declare (not safe))
                       (_g232774232900_ _L232758_))))
                  (___kont244685244686_
                   (lambda (_L232472_ _L232473_)
                     (let* ((_g232489232542_
                             (lambda (_g232490232539_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232490232539_))))
                            (_g232488232718_
                             (lambda (_g232490232545_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232490232545_))
                                   (let ((_e232498232547_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232490232545_))))
                                     (let ((_hd232497232550_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232498232547_)))
                                           (_tl232496232552_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232498232547_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232496232552_))
                                           (let ((_e232501232555_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232496232552_))))
                                             (let ((_hd232500232558_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232501232555_)))
                                                   (_tl232499232560_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232501232555_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232500232558_))
                                                   (let ((_e232504232563_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232500232558_))))
                                                     (let ((_hd232503232566_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232504232563_)))
                                                           (_tl232502232568_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232504232563_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232503232566_))
                                                           (let ((_e232507232571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232503232566_))))
                     (let ((_hd232506232574_
                            (let ()
                              (declare (not safe))
                              (##car _e232507232571_)))
                           (_tl232505232576_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232507232571_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232506232574_))
                           (let ((_e232510232579_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232506232574_))))
                             (let ((_hd232509232582_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232510232579_)))
                                   (_tl232508232584_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232510232579_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232508232584_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232505232576_))
                                       (let ((_e232513232587_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232505232576_))))
                                         (let ((_hd232512232590_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232513232587_)))
                                               (_tl232511232592_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232513232587_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd232512232590_))
                                               (let ((_e232516232595_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd232512232590_))))
                                                 (let ((_hd232515232598_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232516232595_)))
                                                       (_tl232514232600_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232516232595_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232514232600_))
                                                       (let ((_e232519232603_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232514232600_))))
                 (let ((_hd232518232606_
                        (let () (declare (not safe)) (##car _e232519232603_)))
                       (_tl232517232608_
                        (let () (declare (not safe)) (##cdr _e232519232603_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd232518232606_))
                       (let ((_e232522232611_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd232518232606_))))
                         (let ((_hd232521232614_
                                (let ()
                                  (declare (not safe))
                                  (##car _e232522232611_)))
                               (_tl232520232616_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e232522232611_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232521232614_))
                               (let ((_e232525232619_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232521232614_))))
                                 (let ((_hd232524232622_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232525232619_)))
                                       (_tl232523232624_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232525232619_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd232524232622_))
                                       (let ((_e232528232627_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd232524232622_))))
                                         (let ((_hd232527232630_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232528232627_)))
                                               (_tl232526232632_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232528232627_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232526232632_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl232523232624_))
                                                   (let ((_e232531232635_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl232523232624_))))
                                                     (let ((_hd232530232638_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232531232635_)))
                                                           (_tl232529232640_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232531232635_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232529232640_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl232520232616_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl232517232608_))
                           (let ((_e232534232643_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl232517232608_))))
                             (let ((_hd232533232646_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232534232643_)))
                                   (_tl232532232648_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232534232643_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232532232648_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl232511232592_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl232502232568_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl232499232560_))
                                               (let ((_e232537232651_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl232499232560_))))
                                                 (let ((_hd232536232654_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232537232651_)))
                                                       (_tl232535232656_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232537232651_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl232535232656_))
                                                       ((lambda (_L232659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L232660_
                         _L232661_
                         _L232662_
                         _L232663_)
                  (let* ((_get-kws-id232703_
                          (let ((__tmp245374
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232473_)))
                                (__tmp245372
                                 (let ((__tmp245373
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232663_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232325_
                                    __tmp245373
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245374 '"__" __tmp245372)))
                         (_get-kws-id232705_
                          (let ((__tmp245375
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232321_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id232703_
                             __tmp245375)))
                         (_main-id232707_
                          (let ((__tmp245378
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232473_)))
                                (__tmp245376
                                 (let ((__tmp245377
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232662_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232325_
                                    __tmp245377
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245378 '"__" __tmp245376)))
                         (_main-id232709_
                          (let ((__tmp245379
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232321_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id232707_
                             __tmp245379)))
                         (_g245380_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id232705_)))
                         (_g245381_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id232709_)))
                         (_new-kw-dispatch232713_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232659_
                             _L232663_
                             _get-kws-id232705_)))
                         (_new-get-kws232715_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232660_
                             _L232662_
                             _main-id232709_))))
                    (let ((__tmp245384
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L232473_)))
                          (__tmp245383
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id232705_)))
                          (__tmp245382
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id232709_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp245384
                       '" => "
                       __tmp245383
                       '" => "
                       __tmp245382))
                    (let ((__tmp245385
                           (let ((__tmp245386
                                  (let ((__tmp245399
                                         (let ((__tmp245400
                                                (let ((__tmp245401
                                                       (let ((__tmp245402
                                                              (let ((__tmp245404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id232709_ '())))
                            (__tmp245403
                             (let ()
                               (declare (not safe))
                               (cons _L232661_ '()))))
                        (declare (not safe))
                        (cons __tmp245404 __tmp245403))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245401
                                                   _stx232321_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp245400)))
                                        (__tmp245387
                                         (let ((__tmp245394
                                                (let ((__tmp245395
                                                       (let ((__tmp245396
                                                              (let ((__tmp245398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id232705_ '())))
                            (__tmp245397
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws232715_ '()))))
                        (declare (not safe))
                        (cons __tmp245398 __tmp245397))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245395
                                                   _stx232321_)))
                                               (__tmp245388
                                                (let ((__tmp245389
                                                       (let ((__tmp245390
                                                              (let ((__tmp245391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp245393
                                    (let ()
                                      (declare (not safe))
                                      (cons _L232473_ '())))
                                   (__tmp245392
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch232713_ '()))))
                               (declare (not safe))
                               (cons __tmp245393 __tmp245392))))
                        (declare (not safe))
                        (cons '%#define-values __tmp245391))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp245390 _stx232321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp245389 '()))))
                                           (declare (not safe))
                                           (cons __tmp245394 __tmp245388))))
                                    (declare (not safe))
                                    (cons __tmp245399 __tmp245387))))
                             (declare (not safe))
                             (cons '%#begin __tmp245386))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245385 _stx232321_))))
                _hd232536232654_
                _hd232533232646_
                _hd232530232638_
                _hd232527232630_
                _hd232509232582_)
               (let ()
                 (declare (not safe))
                 (_g232489232542_ _g232490232545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232489232542_
                                                  _g232490232545_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g232489232542_
                                              _g232490232545_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g232489232542_ _g232490232545_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232489232542_ _g232490232545_)))))
                           (let ()
                             (declare (not safe))
                             (_g232489232542_ _g232490232545_)))
                       (let ()
                         (declare (not safe))
                         (_g232489232542_ _g232490232545_)))
                   (let ()
                     (declare (not safe))
                     (_g232489232542_ _g232490232545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232489232542_
                                                      _g232490232545_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232489232542_
                                                  _g232490232545_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232489232542_ _g232490232545_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g232489232542_ _g232490232545_)))))
                       (let ()
                         (declare (not safe))
                         (_g232489232542_ _g232490232545_)))))
               (let ()
                 (declare (not safe))
                 (_g232489232542_ _g232490232545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232489232542_
                                                  _g232490232545_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232489232542_ _g232490232545_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232489232542_ _g232490232545_)))))
                           (let ()
                             (declare (not safe))
                             (_g232489232542_ _g232490232545_)))))
                   (let ()
                     (declare (not safe))
                     (_g232489232542_ _g232490232545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232489232542_
                                                      _g232490232545_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232489232542_
                                              _g232490232545_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232489232542_ _g232490232545_))))))
                       (declare (not safe))
                       (_g232488232718_ _L232472_))))
                  (___kont244687244688_
                   (lambda (_L232418_ _L232419_)
                     (let ((__tmp245405
                            (let ((__tmp245406
                                   (let ((__tmp245407
                                          (let ((__tmp245408
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L232418_))))
                                            (declare (not safe))
                                            (cons __tmp245408 '()))))
                                     (declare (not safe))
                                     (cons _L232419_ __tmp245407))))
                              (declare (not safe))
                              (cons '%#define-values __tmp245406))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp245405 _stx232321_)))))
              (let* ((___match244772244773_
                      (lambda (_e232364232440_
                               _hd232363232443_
                               _tl232362232445_
                               _e232367232448_
                               _hd232366232451_
                               _tl232365232453_
                               _e232370232456_
                               _hd232369232459_
                               _tl232368232461_
                               _e232373232464_
                               _hd232372232467_
                               _tl232371232469_)
                        (let ((_L232472_ _hd232372232467_)
                              (_L232473_ _hd232369232459_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232473_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L232472_)))
                              (___kont244685244686_ _L232472_ _L232473_)
                              (___kont244687244688_
                               _hd232372232467_
                               _hd232366232451_)))))
                     (___match244744244745_
                      (lambda (_e232350232726_
                               _hd232349232729_
                               _tl232348232731_
                               _e232353232734_
                               _hd232352232737_
                               _tl232351232739_
                               _e232356232742_
                               _hd232355232745_
                               _tl232354232747_
                               _e232359232750_
                               _hd232358232753_
                               _tl232357232755_)
                        (let ((_L232758_ _hd232358232753_)
                              (_L232759_ _hd232355232745_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232759_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L232758_)))
                              (___kont244683244684_ _L232758_ _L232759_)
                              (___match244772244773_
                               _e232350232726_
                               _hd232349232729_
                               _tl232348232731_
                               _e232353232734_
                               _hd232352232737_
                               _tl232351232739_
                               _e232356232742_
                               _hd232355232745_
                               _tl232354232747_
                               _e232359232750_
                               _hd232358232753_
                               _tl232357232755_)))))
                     (___match244716244717_
                      (lambda (_e232336232908_
                               _hd232335232911_
                               _tl232334232913_
                               _e232339232916_
                               _hd232338232919_
                               _tl232337232921_
                               _e232342232924_
                               _hd232341232927_
                               _tl232340232929_
                               _e232345232932_
                               _hd232344232935_
                               _tl232343232937_)
                        (let ((_L232940_ _hd232344232935_)
                              (_L232941_ _hd232341232927_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232941_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L232940_)))
                              (___kont244681244682_ _L232940_ _L232941_)
                              (___match244744244745_
                               _e232336232908_
                               _hd232335232911_
                               _tl232334232913_
                               _e232339232916_
                               _hd232338232919_
                               _tl232337232921_
                               _e232342232924_
                               _hd232341232927_
                               _tl232340232929_
                               _e232345232932_
                               _hd232344232935_
                               _tl232343232937_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244679244680_))
                    (let ((_e232336232908_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244679244680_))))
                      (let ((_tl232334232913_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232336232908_)))
                            (_hd232335232911_
                             (let ()
                               (declare (not safe))
                               (##car _e232336232908_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232334232913_))
                            (let ((_e232339232916_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232334232913_))))
                              (let ((_tl232337232921_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232339232916_)))
                                    (_hd232338232919_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232339232916_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232338232919_))
                                    (let ((_e232342232924_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232338232919_))))
                                      (let ((_tl232340232929_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232342232924_)))
                                            (_hd232341232927_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232342232924_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232340232929_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232337232921_))
                                                (let ((_e232345232932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232337232921_))))
                                                  (let ((_tl232343232937_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232345232932_)))
                                                        (_hd232344232935_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232345232932_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232343232937_))
                                                        (___match244716244717_
                                                         _e232336232908_
                                                         _hd232335232911_
                                                         _tl232334232913_
                                                         _e232339232916_
                                                         _hd232338232919_
                                                         _tl232337232921_
                                                         _e232342232924_
                                                         _hd232341232927_
                                                         _tl232340232929_
                                                         _e232345232932_
                                                         _hd232344232935_
                                                         _tl232343232937_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232330232389_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232330232389_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232337232921_))
                                                (let ((_e232384232410_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232337232921_))))
                                                  (let ((_tl232382232415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232384232410_)))
                                                        (_hd232383232413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232384232410_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232382232415_))
                                                        (___kont244687244688_
                                                         _hd232383232413_
                                                         _hd232338232919_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232330232389_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232330232389_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232337232921_))
                                        (let ((_e232384232410_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232337232921_))))
                                          (let ((_tl232382232415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232384232410_)))
                                                (_hd232383232413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232384232410_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232382232415_))
                                                (___kont244687244688_
                                                 _hd232383232413_
                                                 _hd232338232919_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232330232389_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g232330232389_))))))
                            (let () (declare (not safe)) (_g232330232389_)))))
                    (let () (declare (not safe)) (_g232330232389_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx231253_)
        (letrec* ((_bind-e__243075243076_
                   (lambda (_id232305_ _expr232306_ _compile?232307_)
                     (let ((__tmp245411
                            (let ()
                              (declare (not safe))
                              (cons _id232305_ '())))
                           (__tmp245409
                            (let ((__tmp245410
                                   (if _compile?232307_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr232306_))
                                       _expr232306_)))
                              (declare (not safe))
                              (cons __tmp245410 '()))))
                       (declare (not safe))
                       (cons __tmp245411 __tmp245409))))
                  (_bind-e__0__243077243078_
                   (lambda (_id232312_ _expr232313_)
                     (let ((_compile?232315_ '#t))
                       (declare (not safe))
                       (_bind-e__243075243076_
                        _id232312_
                        _expr232313_
                        _compile?232315_))))
                  (_bind-e231255_
                   (lambda _g245413_
                     (let ((_g245412_
                            (let ()
                              (declare (not safe))
                              (##length _g245413_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245412_ 2))
                              (apply (lambda (_id232312_ _expr232313_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__243077243078_
                                          _id232312_
                                          _expr232313_)))
                                     _g245413_))
                             ((let () (declare (not safe)) (##fx= _g245412_ 3))
                              (apply (lambda (_id232317_
                                              _expr232318_
                                              _compile?232319_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__243075243076_
                                          _id232317_
                                          _expr232318_
                                          _compile?232319_)))
                                     _g245413_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245413_))))))
                  (_compile-bindings231256_
                   (lambda (_bindings231889_)
                     (let _lp231891_ ((_rest231893_ _bindings231889_)
                                      (_lift1231894_ '())
                                      (_lift2231895_ '())
                                      (_bind231896_ '()))
                       (let* ((_rest231897231905_ _rest231893_)
                              (_else231899231913_
                               (lambda ()
                                 (values (reverse _lift1231894_)
                                         (reverse _lift2231895_)
                                         (reverse _bind231896_))))
                              (_K231901232292_
                               (lambda (_rest231916_ _hd231917_)
                                 (let* ((___stx244815244816_ _hd231917_)
                                        (_g231921231957_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244815244816_)))))
                                   (let ((___kont244817244818_
                                          (lambda (_L232199_ _L232200_)
                                            (let* ((___stx244795244796_
                                                    _L232199_)
                                                   (_g232215232229_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244795244796_)))))
                                              (let ((___kont244797244798_
                                                     (lambda (_L232277_)
                                                       (let ((__tmp245414
                                                              (let ((__tmp245415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__243075243076_
                                _L232200_
                                _L232199_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245415 _bind231896_))))
                 (declare (not safe))
                 (_lp231891_
                  _rest231916_
                  _lift1231894_
                  _lift2231895_
                  __tmp245414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244799244800_
                                                     (lambda (_L232242_)
                                                       (let ((_g245416_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx231253_
                         _L232200_
                         _L232242_
                         '#t))))
                 (begin
                   (let ((_g245417_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245416_)
                                (##vector-length _g245416_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245417_ 3)))
                         (error "Context expects 3 values" _g245417_)))
                   (let ((_ids232252_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245416_ 0)))
                         (_impls232253_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245416_ 1)))
                         (_clauses232254_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245416_ 2))))
                     (let* ((_g245418_
                             (for-each gx#core-bind-runtime! _ids232252_))
                            (_xbind232257_
                             (map _bind-e231255_ _ids232252_ _impls232253_))
                            (_expr*232259_
                             (let ((__tmp245420
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses232254_)))
                                   (__tmp245419
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245420
                                __tmp245419)))
                            (_bind*232261_
                             (let ()
                               (declare (not safe))
                               (_bind-e__243075243076_
                                _L232200_
                                _expr*232259_
                                '#f))))
                       (let ((__tmp245422
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L232200_)))
                             (__tmp245421
                              (map gxc#identifier-symbol _ids232252_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245422
                          '" => "
                          __tmp245421))
                       (let ((__tmp245424
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2231895_ _xbind232257_)))
                             (__tmp245423
                              (let ()
                                (declare (not safe))
                                (cons _bind*232261_ _bind231896_))))
                         (declare (not safe))
                         (_lp231891_
                          _rest231916_
                          _lift1231894_
                          __tmp245424
                          __tmp245423)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244806244807_
                                                       (lambda (_e232220232269_
                                                                _hd232219232272_
                                                                _tl232218232274_)
                                                         (let ((_L232277_
                                                                _tl232218232274_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L232277_))
                       (___kont244797244798_ _L232277_)
                       (___kont244799244800_ _tl232218232274_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244795244796_))
                                                      (let ((_e232220232269_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244795244796_))))
                (let ((_tl232218232274_
                       (let () (declare (not safe)) (##cdr _e232220232269_)))
                      (_hd232219232272_
                       (let () (declare (not safe)) (##car _e232220232269_))))
                  (___match244806244807_
                   _e232220232269_
                   _hd232219232272_
                   _tl232218232274_)))
              (let () (declare (not safe)) (_g232215232229_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244819244820_
                                          (lambda (_L232027_ _L232028_)
                                            (let* ((_g232042232072_
                                                    (lambda (_g232043232069_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g232043232069_))))
                                                   (_g232041232167_
                                                    (lambda (_g232043232075_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g232043232075_))
                                                          (let ((_e232049232077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g232043232075_))))
                    (let ((_hd232048232080_
                           (let ()
                             (declare (not safe))
                             (##car _e232049232077_)))
                          (_tl232047232082_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232049232077_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232047232082_))
                          (let ((_e232052232085_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232047232082_))))
                            (let ((_hd232051232088_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232052232085_)))
                                  (_tl232050232090_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232052232085_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd232051232088_))
                                  (let ((_e232055232093_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd232051232088_))))
                                    (let ((_hd232054232096_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232055232093_)))
                                          (_tl232053232098_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232055232093_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232054232096_))
                                          (let ((_e232058232101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232054232096_))))
                                            (let ((_hd232057232104_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232058232101_)))
                                                  (_tl232056232106_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232058232101_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd232057232104_))
                                                  (let ((_e232061232109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd232057232104_))))
                                                    (let ((_hd232060232112_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232061232109_)))
                                                          (_tl232059232114_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232061232109_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl232059232114_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl232056232106_))
                      (let ((_e232064232117_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232056232106_))))
                        (let ((_hd232063232120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232064232117_)))
                              (_tl232062232122_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232064232117_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl232062232122_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232053232098_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232050232090_))
                                      (let ((_e232067232125_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232050232090_))))
                                        (let ((_hd232066232128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232067232125_)))
                                              (_tl232065232130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232067232125_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232065232130_))
                                              ((lambda (_L232133_
                                                        _L232134_
                                                        _L232135_)
                                                 (let* ((_lambda-id232159_
                                                         (let ((__tmp245426
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L232028_)))
                       (__tmp245425 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245426 __tmp245425)))
                (_lambda-id232161_
                 (let ((__tmp245427
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx231253_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id232159_ __tmp245427)))
                (_g245428_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id232161_)))
                (_new-case-lambda-expr232164_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L232133_
                    _L232135_
                    _lambda-id232161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245430
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L232028_)))
                                                         (__tmp245429
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id232161_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245430
                                                      '" => "
                                                      __tmp245429))
                                                   (let ((__tmp245433
                                                          (let ((__tmp245434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__243075243076_
                            _L232028_
                            _new-case-lambda-expr232164_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245434 _rest231916_)))
                 (__tmp245431
                  (let ((__tmp245432
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__243077243078_
                            _lambda-id232161_
                            _L232134_))))
                    (declare (not safe))
                    (cons __tmp245432 _lift1231894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp231891_
                                                      __tmp245433
                                                      __tmp245431
                                                      _lift2231895_
                                                      _bind231896_))))
                                               _hd232066232128_
                                               _hd232063232120_
                                               _hd232060232112_)
                                              (let ()
                                                (declare (not safe))
                                                (_g232042232072_
                                                 _g232043232075_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232042232072_ _g232043232075_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232042232072_ _g232043232075_)))
                              (let ()
                                (declare (not safe))
                                (_g232042232072_ _g232043232075_)))))
                      (let ()
                        (declare (not safe))
                        (_g232042232072_ _g232043232075_)))
                  (let ()
                    (declare (not safe))
                    (_g232042232072_ _g232043232075_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232042232072_
                                                     _g232043232075_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g232042232072_
                                             _g232043232075_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g232042232072_ _g232043232075_)))))
                          (let ()
                            (declare (not safe))
                            (_g232042232072_ _g232043232075_)))))
                  (let ()
                    (declare (not safe))
                    (_g232042232072_ _g232043232075_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g232041232167_ _L232027_))))
                                         (___kont244821244822_
                                          (lambda (_L231978_ _L231979_)
                                            (let ((__tmp245435
                                                   (let ((__tmp245436
                                                          (let ((__tmp245437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245438
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L231978_))))
                           (declare (not safe))
                           (cons __tmp245438 '()))))
                    (declare (not safe))
                    (cons _L231979_ __tmp245437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245436
                                                           _bind231896_))))
                                              (declare (not safe))
                                              (_lp231891_
                                               _rest231916_
                                               _lift1231894_
                                               _lift2231895_
                                               __tmp245435)))))
                                     (let* ((___match244866244867_
                                             (lambda (_e231938232003_
                                                      _hd231937232006_
                                                      _tl231936232008_
                                                      _e231941232011_
                                                      _hd231940232014_
                                                      _tl231939232016_
                                                      _e231944232019_
                                                      _hd231943232022_
                                                      _tl231942232024_)
                                               (let ((_L232027_
                                                      _hd231943232022_)
                                                     (_L232028_
                                                      _hd231940232014_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L232028_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L232027_)))
                                                     (___kont244819244820_
                                                      _L232027_
                                                      _L232028_)
                                                     (___kont244821244822_
                                                      _hd231943232022_
                                                      _hd231937232006_)))))
                                            (___match244844244845_
                                             (lambda (_e231927232175_
                                                      _hd231926232178_
                                                      _tl231925232180_
                                                      _e231930232183_
                                                      _hd231929232186_
                                                      _tl231928232188_
                                                      _e231933232191_
                                                      _hd231932232194_
                                                      _tl231931232196_)
                                               (let ((_L232199_
                                                      _hd231932232194_)
                                                     (_L232200_
                                                      _hd231929232186_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L232200_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L232199_)))
                                                     (___kont244817244818_
                                                      _L232199_
                                                      _L232200_)
                                                     (___match244866244867_
                                                      _e231927232175_
                                                      _hd231926232178_
                                                      _tl231925232180_
                                                      _e231930232183_
                                                      _hd231929232186_
                                                      _tl231928232188_
                                                      _e231933232191_
                                                      _hd231932232194_
                                                      _tl231931232196_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244815244816_))
                                           (let ((_e231927232175_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244815244816_))))
                                             (let ((_tl231925232180_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231927232175_)))
                                                   (_hd231926232178_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231927232175_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231926232178_))
                                                   (let ((_e231930232183_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231926232178_))))
                                                     (let ((_tl231928232188_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231930232183_)))
                                                           (_hd231929232186_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231930232183_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231928232188_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231925232180_))
                       (let ((_e231933232191_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231925232180_))))
                         (let ((_tl231931232196_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231933232191_)))
                               (_hd231932232194_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231933232191_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231931232196_))
                               (___match244844244845_
                                _e231927232175_
                                _hd231926232178_
                                _tl231925232180_
                                _e231930232183_
                                _hd231929232186_
                                _tl231928232188_
                                _e231933232191_
                                _hd231932232194_
                                _tl231931232196_)
                               (let ()
                                 (declare (not safe))
                                 (_g231921231957_)))))
                       (let () (declare (not safe)) (_g231921231957_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231925232180_))
                       (let ((_e231952231970_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231925232180_))))
                         (let ((_tl231950231975_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231952231970_)))
                               (_hd231951231973_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231952231970_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231950231975_))
                               (___kont244821244822_
                                _hd231951231973_
                                _hd231926232178_)
                               (let ()
                                 (declare (not safe))
                                 (_g231921231957_)))))
                       (let () (declare (not safe)) (_g231921231957_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231925232180_))
                                                       (let ((_e231952231970_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231925232180_))))
                 (let ((_tl231950231975_
                        (let () (declare (not safe)) (##cdr _e231952231970_)))
                       (_hd231951231973_
                        (let () (declare (not safe)) (##car _e231952231970_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231950231975_))
                       (___kont244821244822_ _hd231951231973_ _hd231926232178_)
                       (let () (declare (not safe)) (_g231921231957_)))))
               (let () (declare (not safe)) (_g231921231957_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231921231957_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231897231905_))
                             (let ((_hd231902232295_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231897231905_)))
                                   (_tl231903232297_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231897231905_))))
                               (let* ((_hd232300_ _hd231902232295_)
                                      (_rest232302_ _tl231903232297_))
                                 (declare (not safe))
                                 (_K231901232292_ _rest232302_ _hd232300_)))
                             (let ()
                               (declare (not safe))
                               (_else231899231913_)))))))
                  (_lift-kw-lambda?231257_
                   (lambda (_bind231813_)
                     (let* ((___stx244883244884_ _bind231813_)
                            (_g231816231833_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244883244884_)))))
                       (let ((___kont244885244886_
                              (lambda (_L231869_ _L231870_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L231870_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L231869_))
                                    '#f)))
                             (___kont244887244888_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx244883244884_))
                             (let ((_e231822231845_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx244883244884_))))
                               (let ((_tl231820231850_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e231822231845_)))
                                     (_hd231821231848_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e231822231845_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd231821231848_))
                                     (let ((_e231825231853_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd231821231848_))))
                                       (let ((_tl231823231858_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e231825231853_)))
                                             (_hd231824231856_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e231825231853_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl231823231858_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl231820231850_))
                                                 (let ((_e231828231861_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl231820231850_))))
                                                   (let ((_tl231826231866_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e231828231861_)))
                                                         (_hd231827231864_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e231828231861_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl231826231866_))
                                                         (___kont244885244886_
                                                          _hd231827231864_
                                                          _hd231824231856_)
                                                         (___kont244887244888_))))
                                                 (___kont244887244888_))
                                             (___kont244887244888_))))
                                     (___kont244887244888_))))
                             (___kont244887244888_))))))
                  (_lift-kw-lambda-bindings231258_
                   (lambda (_bindings231425_)
                     (let _lp231427_ ((_rest231429_ _bindings231425_)
                                      (_lift1231430_ '())
                                      (_lift2231431_ '())
                                      (_bind231432_ '()))
                       (let* ((_rest231433231441_ _rest231429_)
                              (_else231435231449_
                               (lambda ()
                                 (values (reverse _lift1231430_)
                                         (reverse _lift2231431_)
                                         (reverse _bind231432_))))
                              (_K231437231801_
                               (lambda (_rest231452_ _hd231453_)
                                 (let* ((___stx244913244914_ _hd231453_)
                                        (_g231456231481_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244913244914_)))))
                                   (let ((___kont244915244916_
                                          (lambda (_L231551_ _L231552_)
                                            (let* ((_g231566231619_
                                                    (lambda (_g231567231616_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231567231616_))))
                                                   (_g231565231795_
                                                    (lambda (_g231567231622_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231567231622_))
                                                          (let ((_e231575231624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231567231622_))))
                    (let ((_hd231574231627_
                           (let ()
                             (declare (not safe))
                             (##car _e231575231624_)))
                          (_tl231573231629_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231575231624_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231573231629_))
                          (let ((_e231578231632_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231573231629_))))
                            (let ((_hd231577231635_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231578231632_)))
                                  (_tl231576231637_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231578231632_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231577231635_))
                                  (let ((_e231581231640_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231577231635_))))
                                    (let ((_hd231580231643_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231581231640_)))
                                          (_tl231579231645_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231581231640_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231580231643_))
                                          (let ((_e231584231648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231580231643_))))
                                            (let ((_hd231583231651_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231584231648_)))
                                                  (_tl231582231653_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231584231648_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231583231651_))
                                                  (let ((_e231587231656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231583231651_))))
                                                    (let ((_hd231586231659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231587231656_)))
                                                          (_tl231585231661_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231587231656_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231585231661_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231582231653_))
                      (let ((_e231590231664_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231582231653_))))
                        (let ((_hd231589231667_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231590231664_)))
                              (_tl231588231669_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231590231664_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd231589231667_))
                              (let ((_e231593231672_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd231589231667_))))
                                (let ((_hd231592231675_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231593231672_)))
                                      (_tl231591231677_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231593231672_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231591231677_))
                                      (let ((_e231596231680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231591231677_))))
                                        (let ((_hd231595231683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231596231680_)))
                                              (_tl231594231685_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231596231680_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd231595231683_))
                                              (let ((_e231599231688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd231595231683_))))
                                                (let ((_hd231598231691_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231599231688_)))
                                                      (_tl231597231693_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231599231688_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231598231691_))
                                                      (let ((_e231602231696_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231598231691_))))
                (let ((_hd231601231699_
                       (let () (declare (not safe)) (##car _e231602231696_)))
                      (_tl231600231701_
                       (let () (declare (not safe)) (##cdr _e231602231696_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231601231699_))
                      (let ((_e231605231704_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231601231699_))))
                        (let ((_hd231604231707_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231605231704_)))
                              (_tl231603231709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231605231704_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231603231709_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231600231701_))
                                  (let ((_e231608231712_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231600231701_))))
                                    (let ((_hd231607231715_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231608231712_)))
                                          (_tl231606231717_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231608231712_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231606231717_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231597231693_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231594231685_))
                                                  (let ((_e231611231720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231594231685_))))
                                                    (let ((_hd231610231723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231611231720_)))
                                                          (_tl231609231725_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231611231720_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231609231725_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231588231669_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231579231645_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231576231637_))
                              (let ((_e231614231728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231576231637_))))
                                (let ((_hd231613231731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231614231728_)))
                                      (_tl231612231733_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231614231728_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231612231733_))
                                      ((lambda (_L231736_
                                                _L231737_
                                                _L231738_
                                                _L231739_
                                                _L231740_)
                                         (let* ((_get-kws-id231780_
                                                 (let ((__tmp245440
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231552_)))
                                                       (__tmp245439
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245440
                                                    __tmp245439)))
                                                (_get-kws-id231782_
                                                 (let ((__tmp245441
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231253_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id231780_
                                                    __tmp245441)))
                                                (_main-id231784_
                                                 (let ((__tmp245443
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231552_)))
                                                       (__tmp245442
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245443
                                                    __tmp245442)))
                                                (_main-id231786_
                                                 (let ((__tmp245444
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231253_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id231784_
                                                    __tmp245444)))
                                                (_g245445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id231782_)))
                                                (_g245446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id231786_)))
                                                (_new-kw-dispatch231790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231736_
                                                    _L231740_
                                                    _get-kws-id231782_)))
                                                (_new-get-kws231792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231737_
                                                    _L231739_
                                                    _main-id231786_))))
                                           (let ((__tmp245449
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L231552_)))
                                                 (__tmp245448
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id231782_)))
                                                 (__tmp245447
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id231786_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245449
                                              '" => "
                                              __tmp245448
                                              '" => "
                                              __tmp245447))
                                           (let ((__tmp245454
                                                  (let ((__tmp245455
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__243075243076_
                                                            _main-id231786_
                                                            _L231738_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245455
                                                          _lift1231430_)))
                                                 (__tmp245452
                                                  (let ((__tmp245453
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__243075243076_
                                                            _get-kws-id231782_
                                                            _new-get-kws231792_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245453
                                                          _lift2231431_)))
                                                 (__tmp245450
                                                  (let ((__tmp245451
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__243075243076_
                                                            _L231552_
                                                            _new-kw-dispatch231790_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245451
                                                          _bind231432_))))
                                             (declare (not safe))
                                             (_lp231427_
                                              _rest231452_
                                              __tmp245454
                                              __tmp245452
                                              __tmp245450))))
                                       _hd231613231731_
                                       _hd231610231723_
                                       _hd231607231715_
                                       _hd231604231707_
                                       _hd231586231659_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231566231619_ _g231567231622_)))))
                              (let ()
                                (declare (not safe))
                                (_g231566231619_ _g231567231622_)))
                          (let ()
                            (declare (not safe))
                            (_g231566231619_ _g231567231622_)))
                      (let ()
                        (declare (not safe))
                        (_g231566231619_ _g231567231622_)))
                  (let ()
                    (declare (not safe))
                    (_g231566231619_ _g231567231622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231566231619_
                                                     _g231567231622_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g231566231619_
                                                 _g231567231622_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g231566231619_
                                             _g231567231622_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231566231619_ _g231567231622_)))
                              (let ()
                                (declare (not safe))
                                (_g231566231619_ _g231567231622_)))))
                      (let ()
                        (declare (not safe))
                        (_g231566231619_ _g231567231622_)))))
              (let ()
                (declare (not safe))
                (_g231566231619_ _g231567231622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g231566231619_
                                                 _g231567231622_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231566231619_ _g231567231622_)))))
                              (let ()
                                (declare (not safe))
                                (_g231566231619_ _g231567231622_)))))
                      (let ()
                        (declare (not safe))
                        (_g231566231619_ _g231567231622_)))
                  (let ()
                    (declare (not safe))
                    (_g231566231619_ _g231567231622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231566231619_
                                                     _g231567231622_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231566231619_
                                             _g231567231622_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231566231619_ _g231567231622_)))))
                          (let ()
                            (declare (not safe))
                            (_g231566231619_ _g231567231622_)))))
                  (let ()
                    (declare (not safe))
                    (_g231566231619_ _g231567231622_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231565231795_ _L231551_))))
                                         (___kont244917244918_
                                          (lambda (_L231502_ _L231503_)
                                            (let ((__tmp245456
                                                   (let ((__tmp245457
                                                          (let ((__tmp245458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L231502_ '()))))
                    (declare (not safe))
                    (cons _L231503_ __tmp245458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245457
                                                           _bind231432_))))
                                              (declare (not safe))
                                              (_lp231427_
                                               _rest231452_
                                               _lift1231430_
                                               _lift2231431_
                                               __tmp245456)))))
                                     (let ((___match244940244941_
                                            (lambda (_e231462231527_
                                                     _hd231461231530_
                                                     _tl231460231532_
                                                     _e231465231535_
                                                     _hd231464231538_
                                                     _tl231463231540_
                                                     _e231468231543_
                                                     _hd231467231546_
                                                     _tl231466231548_)
                                              (let ((_L231551_
                                                     _hd231467231546_)
                                                    (_L231552_
                                                     _hd231464231538_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L231552_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L231551_)))
                                                    (___kont244915244916_
                                                     _L231551_
                                                     _L231552_)
                                                    (___kont244917244918_
                                                     _hd231467231546_
                                                     _hd231461231530_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244913244914_))
                                           (let ((_e231462231527_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244913244914_))))
                                             (let ((_tl231460231532_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231462231527_)))
                                                   (_hd231461231530_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231462231527_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231461231530_))
                                                   (let ((_e231465231535_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231461231530_))))
                                                     (let ((_tl231463231540_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231465231535_)))
                                                           (_hd231464231538_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231465231535_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231463231540_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231460231532_))
                       (let ((_e231468231543_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231460231532_))))
                         (let ((_tl231466231548_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231468231543_)))
                               (_hd231467231546_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231468231543_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231466231548_))
                               (___match244940244941_
                                _e231462231527_
                                _hd231461231530_
                                _tl231460231532_
                                _e231465231535_
                                _hd231464231538_
                                _tl231463231540_
                                _e231468231543_
                                _hd231467231546_
                                _tl231466231548_)
                               (let ()
                                 (declare (not safe))
                                 (_g231456231481_)))))
                       (let () (declare (not safe)) (_g231456231481_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231460231532_))
                       (let ((_e231476231494_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231460231532_))))
                         (let ((_tl231474231499_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231476231494_)))
                               (_hd231475231497_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231476231494_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231474231499_))
                               (___kont244917244918_
                                _hd231475231497_
                                _hd231461231530_)
                               (let ()
                                 (declare (not safe))
                                 (_g231456231481_)))))
                       (let () (declare (not safe)) (_g231456231481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231460231532_))
                                                       (let ((_e231476231494_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231460231532_))))
                 (let ((_tl231474231499_
                        (let () (declare (not safe)) (##cdr _e231476231494_)))
                       (_hd231475231497_
                        (let () (declare (not safe)) (##car _e231476231494_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231474231499_))
                       (___kont244917244918_ _hd231475231497_ _hd231461231530_)
                       (let () (declare (not safe)) (_g231456231481_)))))
               (let () (declare (not safe)) (_g231456231481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231456231481_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231433231441_))
                             (let ((_hd231438231804_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231433231441_)))
                                   (_tl231439231806_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231433231441_))))
                               (let* ((_hd231809_ _hd231438231804_)
                                      (_rest231811_ _tl231439231806_))
                                 (declare (not safe))
                                 (_K231437231801_ _rest231811_ _hd231809_)))
                             (let ()
                               (declare (not safe))
                               (_else231435231449_))))))))
          (let* ((___stx244957244958_ _stx231253_)
                 (_g231261231287_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244957244958_)))))
            (let ((___kont244959244960_
                   (lambda (_L231347_ _L231348_)
                     (let ((__tmp245460
                            (lambda ()
                              (if (let ((__tmp245487
                                         (let ((__tmp245488
                                                (lambda (_g231376231379_
                                                         _g231377231381_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g231376231379_
                                                          _g231377231381_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp245488
                                                   '()
                                                   _L231348_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?231257_
                                            __tmp245487))
                                  (let ((_g245474_
                                         (let ((__tmp245476
                                                (let ((__tmp245477
                                                       (lambda (_g231383231386_
                                                                _g231384231388_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231383231386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231384231388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245477
                                                          '()
                                                          _L231348_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings231258_
                                            __tmp245476))))
                                    (begin
                                      (let ((_g245475_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245474_)
                                                   (##vector-length _g245474_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245475_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245475_)))
                                      (let ((_lift1231391_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245474_ 0)))
                                            (_lift2231392_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245474_ 1)))
                                            (_hd231393_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245474_ 2))))
                                        (let* ((_expr231395_
                                                (let ((__tmp245478
                                                       (let ((__tmp245479
                                                              (let ((__tmp245480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L231347_ '()))))
                        (declare (not safe))
                        (cons _hd231393_ __tmp245480))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245478
                                                   _stx231253_)))
                                               (_expr231397_
                                                (let ((__tmp245481
                                                       (let ((__tmp245482
                                                              (let ((__tmp245483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231395_ '()))))
                        (declare (not safe))
                        (cons _lift2231392_ __tmp245483))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245481
                                                   _stx231253_)))
                                               (_expr231399_
                                                (let ((__tmp245484
                                                       (let ((__tmp245485
                                                              (let ((__tmp245486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231397_ '()))))
                        (declare (not safe))
                        (cons _lift1231391_ __tmp245486))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245484
                                                   _stx231253_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr231399_))))))
                                  (let ((_g245461_
                                         (let ((__tmp245463
                                                (let ((__tmp245464
                                                       (lambda (_g231401231404_
                                                                _g231402231406_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231401231404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231402231406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245464
                                                          '()
                                                          _L231348_))))
                                           (declare (not safe))
                                           (_compile-bindings231256_
                                            __tmp245463))))
                                    (begin
                                      (let ((_g245462_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245461_)
                                                   (##vector-length _g245461_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245462_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245462_)))
                                      (let ((_lift1231409_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245461_ 0)))
                                            (_lift2231410_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245461_ 1)))
                                            (_hd231411_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245461_ 2))))
                                        (let* ((_body231413_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L231347_)))
                                               (_expr231415_
                                                (let ((__tmp245465
                                                       (let ((__tmp245466
                                                              (let ((__tmp245467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body231413_ '()))))
                        (declare (not safe))
                        (cons _hd231411_ __tmp245467))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245465
                                                   _stx231253_)))
                                               (_expr231417_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2231410_))
                                                    _expr231415_
                                                    (let ((__tmp245468
                                                           (let ((__tmp245469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245470
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231415_ '()))))
                            (declare (not safe))
                            (cons _lift2231410_ __tmp245470))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245469))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245468 _stx231253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr231419_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1231409_))
                                                    _expr231417_
                                                    (let ((__tmp245471
                                                           (let ((__tmp245472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245473
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231417_ '()))))
                            (declare (not safe))
                            (cons _lift1231409_ __tmp245473))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245472))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245471 _stx231253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr231419_)))))))
                           (__tmp245459
                            (let ((__obj245163
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245163)
                              __obj245163)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245460
                        gx#current-expander-context
                        __tmp245459))))
                  (___kont244963244964_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx231253_)))))
              (let ((___match244984244985_
                     (lambda (_e231267231299_
                              _hd231266231302_
                              _tl231265231304_
                              _e231270231307_
                              _hd231269231310_
                              _tl231268231312_
                              ___splice244961244962_
                              _target231271231315_
                              _tl231273231317_)
                       (letrec ((_loop231274231320_
                                 (lambda (_hd231272231323_ _bind231278231325_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231272231323_))
                                       (let ((_e231275231328_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231272231323_))))
                                         (let ((_lp-tl231277231333_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231275231328_)))
                                               (_lp-hd231276231331_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231275231328_))))
                                           (let ((__tmp245491
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd231276231331_
                                                          _bind231278231325_))))
                                             (declare (not safe))
                                             (_loop231274231320_
                                              _lp-tl231277231333_
                                              __tmp245491))))
                                       (let ((_bind231279231336_
                                              (reverse _bind231278231325_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl231268231312_))
                                             (let ((_e231282231339_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl231268231312_))))
                                               (let ((_tl231280231344_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e231282231339_)))
                                                     (_hd231281231342_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e231282231339_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl231280231344_))
                                                     (let ((_L231347_
                                                            _hd231281231342_)
                                                           (_L231348_
                                                            _bind231279231336_))
                                                       (if (let ((__tmp245489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245490
                                 (lambda (_g231368231371_ _g231369231373_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g231368231371_ _g231369231373_)))))
                            (declare (not safe))
                            (foldr1 __tmp245490 '() _L231348_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245489))
                   (___kont244959244960_ _L231347_ _L231348_)
                   (___kont244963244964_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont244963244964_))))
                                             (___kont244963244964_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop231274231320_ _target231271231315_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244957244958_))
                    (let ((_e231267231299_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244957244958_))))
                      (let ((_tl231265231304_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231267231299_)))
                            (_hd231266231302_
                             (let ()
                               (declare (not safe))
                               (##car _e231267231299_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231265231304_))
                            (let ((_e231270231307_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231265231304_))))
                              (let ((_tl231268231312_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231270231307_)))
                                    (_hd231269231310_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231270231307_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd231269231310_))
                                    (let ((___splice244961244962_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd231269231310_
                                              '0))))
                                      (let ((_tl231273231317_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244961244962_
                                                '1)))
                                            (_target231271231315_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244961244962_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231273231317_))
                                            (___match244984244985_
                                             _e231267231299_
                                             _hd231266231302_
                                             _tl231265231304_
                                             _e231270231307_
                                             _hd231269231310_
                                             _tl231268231312_
                                             ___splice244961244962_
                                             _target231271231315_
                                             _tl231273231317_)
                                            (___kont244963244964_))))
                                    (___kont244963244964_))))
                            (___kont244963244964_))))
                    (___kont244963244964_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx230397_)
        (letrec* ((_bind-e__243080243081_
                   (lambda (_id231237_ _expr231238_ _compile?231239_)
                     (let ((__tmp245494
                            (let ()
                              (declare (not safe))
                              (cons _id231237_ '())))
                           (__tmp245492
                            (let ((__tmp245493
                                   (if _compile?231239_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr231238_))
                                       _expr231238_)))
                              (declare (not safe))
                              (cons __tmp245493 '()))))
                       (declare (not safe))
                       (cons __tmp245494 __tmp245492))))
                  (_bind-e__0__243082243083_
                   (lambda (_id231244_ _expr231245_)
                     (let ((_compile?231247_ '#t))
                       (declare (not safe))
                       (_bind-e__243080243081_
                        _id231244_
                        _expr231245_
                        _compile?231247_))))
                  (_bind-e230399_
                   (lambda _g245496_
                     (let ((_g245495_
                            (let ()
                              (declare (not safe))
                              (##length _g245496_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245495_ 2))
                              (apply (lambda (_id231244_ _expr231245_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__243082243083_
                                          _id231244_
                                          _expr231245_)))
                                     _g245496_))
                             ((let () (declare (not safe)) (##fx= _g245495_ 3))
                              (apply (lambda (_id231249_
                                              _expr231250_
                                              _compile?231251_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__243080243081_
                                          _id231249_
                                          _expr231250_
                                          _compile?231251_)))
                                     _g245496_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245496_))))))
                  (_compile-bindings230400_
                   (lambda (_rest230535_)
                     (let _lp230537_ ((_rest230539_ _rest230535_)
                                      (_bind230540_ '()))
                       (let* ((_rest230541230549_ _rest230539_)
                              (_else230543230557_
                               (lambda () (reverse _bind230540_)))
                              (_K230545231224_
                               (lambda (_rest230560_ _hd230561_)
                                 (let* ((___stx245007245008_ _hd230561_)
                                        (_g230566230613_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx245007245008_)))))
                                   (let ((___kont245009245010_
                                          (lambda (_L231131_ _L231132_)
                                            (let* ((___stx244987244988_
                                                    _L231131_)
                                                   (_g231147231161_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244987244988_)))))
                                              (let ((___kont244989244990_
                                                     (lambda (_L231209_)
                                                       (let ((__tmp245497
                                                              (let ((__tmp245498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__243080243081_
                                _L231132_
                                _L231131_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245498 _bind230540_))))
                 (declare (not safe))
                 (_lp230537_ _rest230560_ __tmp245497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244991244992_
                                                     (lambda (_L231174_)
                                                       (let ((_g245499_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx230397_
                         _L231132_
                         _L231174_
                         '#t))))
                 (begin
                   (let ((_g245500_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245499_)
                                (##vector-length _g245499_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245500_ 3)))
                         (error "Context expects 3 values" _g245500_)))
                   (let ((_ids231184_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245499_ 0)))
                         (_impls231185_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245499_ 1)))
                         (_clauses231186_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245499_ 2))))
                     (let* ((_g245501_
                             (for-each gx#core-bind-runtime! _ids231184_))
                            (_xbind231189_
                             (map _bind-e230399_ _ids231184_ _impls231185_))
                            (_expr*231191_
                             (let ((__tmp245503
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses231186_)))
                                   (__tmp245502
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245503
                                __tmp245502)))
                            (_bind*231193_
                             (let ()
                               (declare (not safe))
                               (_bind-e__243080243081_
                                _L231132_
                                _expr*231191_
                                '#f))))
                       (let ((__tmp245505
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L231132_)))
                             (__tmp245504
                              (map gxc#identifier-symbol _ids231184_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245505
                          '" => "
                          __tmp245504))
                       (let ((__tmp245506
                              (let ((__tmp245507
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind230540_
                                               _xbind231189_))))
                                (declare (not safe))
                                (cons _bind*231193_ __tmp245507))))
                         (declare (not safe))
                         (_lp230537_ _rest230560_ __tmp245506)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244998244999_
                                                       (lambda (_e231152231201_
                                                                _hd231151231204_
                                                                _tl231150231206_)
                                                         (let ((_L231209_
                                                                _tl231150231206_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L231209_))
                       (___kont244989244990_ _L231209_)
                       (___kont244991244992_ _tl231150231206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244987244988_))
                                                      (let ((_e231152231201_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244987244988_))))
                (let ((_tl231150231206_
                       (let () (declare (not safe)) (##cdr _e231152231201_)))
                      (_hd231151231204_
                       (let () (declare (not safe)) (##car _e231152231201_))))
                  (___match244998244999_
                   _e231152231201_
                   _hd231151231204_
                   _tl231150231206_)))
              (let () (declare (not safe)) (_g231147231161_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont245011245012_
                                          (lambda (_L230959_ _L230960_)
                                            (let* ((_g230974231004_
                                                    (lambda (_g230975231001_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230975231001_))))
                                                   (_g230973231099_
                                                    (lambda (_g230975231007_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230975231007_))
                                                          (let ((_e230981231009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230975231007_))))
                    (let ((_hd230980231012_
                           (let ()
                             (declare (not safe))
                             (##car _e230981231009_)))
                          (_tl230979231014_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230981231009_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230979231014_))
                          (let ((_e230984231017_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230979231014_))))
                            (let ((_hd230983231020_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230984231017_)))
                                  (_tl230982231022_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230984231017_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230983231020_))
                                  (let ((_e230987231025_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230983231020_))))
                                    (let ((_hd230986231028_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230987231025_)))
                                          (_tl230985231030_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230987231025_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230986231028_))
                                          (let ((_e230990231033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230986231028_))))
                                            (let ((_hd230989231036_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230990231033_)))
                                                  (_tl230988231038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230990231033_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230989231036_))
                                                  (let ((_e230993231041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230989231036_))))
                                                    (let ((_hd230992231044_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230993231041_)))
                                                          (_tl230991231046_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230993231041_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230991231046_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230988231038_))
                      (let ((_e230996231049_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230988231038_))))
                        (let ((_hd230995231052_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230996231049_)))
                              (_tl230994231054_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230996231049_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230994231054_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230985231030_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230982231022_))
                                      (let ((_e230999231057_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230982231022_))))
                                        (let ((_hd230998231060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230999231057_)))
                                              (_tl230997231062_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230999231057_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230997231062_))
                                              ((lambda (_L231065_
                                                        _L231066_
                                                        _L231067_)
                                                 (let* ((_lambda-id231091_
                                                         (let ((__tmp245509
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230960_)))
                       (__tmp245508 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245509 __tmp245508)))
                (_lambda-id231093_
                 (let ((__tmp245510
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx230397_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id231091_ __tmp245510)))
                (_g245511_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id231093_)))
                (_new-case-lambda-expr231096_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L231065_
                    _L231067_
                    _lambda-id231093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245513
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230960_)))
                                                         (__tmp245512
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id231093_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245513
                                                      '" => "
                                                      __tmp245512))
                                                   (let ((__tmp245516
                                                          (let ((__tmp245517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__243080243081_
                            _L230960_
                            _new-case-lambda-expr231096_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245517 _rest230560_)))
                 (__tmp245514
                  (let ((__tmp245515
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__243082243083_
                            _lambda-id231093_
                            _L231066_))))
                    (declare (not safe))
                    (cons __tmp245515 _bind230540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230537_
                                                      __tmp245516
                                                      __tmp245514))))
                                               _hd230998231060_
                                               _hd230995231052_
                                               _hd230992231044_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230974231004_
                                                 _g230975231007_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230974231004_ _g230975231007_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230974231004_ _g230975231007_)))
                              (let ()
                                (declare (not safe))
                                (_g230974231004_ _g230975231007_)))))
                      (let ()
                        (declare (not safe))
                        (_g230974231004_ _g230975231007_)))
                  (let ()
                    (declare (not safe))
                    (_g230974231004_ _g230975231007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230974231004_
                                                     _g230975231007_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230974231004_
                                             _g230975231007_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230974231004_ _g230975231007_)))))
                          (let ()
                            (declare (not safe))
                            (_g230974231004_ _g230975231007_)))))
                  (let ()
                    (declare (not safe))
                    (_g230974231004_ _g230975231007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230973231099_ _L230959_))))
                                         (___kont245013245014_
                                          (lambda (_L230683_ _L230684_)
                                            (let* ((_g230698230751_
                                                    (lambda (_g230699230748_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230699230748_))))
                                                   (_g230697230927_
                                                    (lambda (_g230699230754_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230699230754_))
                                                          (let ((_e230707230756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230699230754_))))
                    (let ((_hd230706230759_
                           (let ()
                             (declare (not safe))
                             (##car _e230707230756_)))
                          (_tl230705230761_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230707230756_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230705230761_))
                          (let ((_e230710230764_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230705230761_))))
                            (let ((_hd230709230767_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230710230764_)))
                                  (_tl230708230769_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230710230764_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230709230767_))
                                  (let ((_e230713230772_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230709230767_))))
                                    (let ((_hd230712230775_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230713230772_)))
                                          (_tl230711230777_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230713230772_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230712230775_))
                                          (let ((_e230716230780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230712230775_))))
                                            (let ((_hd230715230783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230716230780_)))
                                                  (_tl230714230785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230716230780_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230715230783_))
                                                  (let ((_e230719230788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230715230783_))))
                                                    (let ((_hd230718230791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230719230788_)))
                                                          (_tl230717230793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230719230788_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230717230793_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230714230785_))
                      (let ((_e230722230796_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230714230785_))))
                        (let ((_hd230721230799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230722230796_)))
                              (_tl230720230801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230722230796_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230721230799_))
                              (let ((_e230725230804_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230721230799_))))
                                (let ((_hd230724230807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230725230804_)))
                                      (_tl230723230809_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230725230804_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230723230809_))
                                      (let ((_e230728230812_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230723230809_))))
                                        (let ((_hd230727230815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230728230812_)))
                                              (_tl230726230817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230728230812_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230727230815_))
                                              (let ((_e230731230820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230727230815_))))
                                                (let ((_hd230730230823_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230731230820_)))
                                                      (_tl230729230825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230731230820_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230730230823_))
                                                      (let ((_e230734230828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230730230823_))))
                (let ((_hd230733230831_
                       (let () (declare (not safe)) (##car _e230734230828_)))
                      (_tl230732230833_
                       (let () (declare (not safe)) (##cdr _e230734230828_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230733230831_))
                      (let ((_e230737230836_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230733230831_))))
                        (let ((_hd230736230839_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230737230836_)))
                              (_tl230735230841_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230737230836_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230735230841_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230732230833_))
                                  (let ((_e230740230844_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230732230833_))))
                                    (let ((_hd230739230847_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230740230844_)))
                                          (_tl230738230849_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230740230844_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230738230849_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230729230825_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230726230817_))
                                                  (let ((_e230743230852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230726230817_))))
                                                    (let ((_hd230742230855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230743230852_)))
                                                          (_tl230741230857_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230743230852_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230741230857_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230720230801_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230711230777_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230708230769_))
                              (let ((_e230746230860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230708230769_))))
                                (let ((_hd230745230863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230746230860_)))
                                      (_tl230744230865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230746230860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230744230865_))
                                      ((lambda (_L230868_
                                                _L230869_
                                                _L230870_
                                                _L230871_
                                                _L230872_)
                                         (let* ((_get-kws-id230912_
                                                 (let ((__tmp245519
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230684_)))
                                                       (__tmp245518
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245519
                                                    __tmp245518)))
                                                (_get-kws-id230914_
                                                 (let ((__tmp245520
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230397_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230912_
                                                    __tmp245520)))
                                                (_main-id230916_
                                                 (let ((__tmp245522
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230684_)))
                                                       (__tmp245521
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245522
                                                    __tmp245521)))
                                                (_main-id230918_
                                                 (let ((__tmp245523
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230397_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230916_
                                                    __tmp245523)))
                                                (_g245524_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230914_)))
                                                (_g245525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230918_)))
                                                (_new-kw-dispatch230922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230868_
                                                    _L230872_
                                                    _get-kws-id230914_)))
                                                (_new-get-kws230924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230869_
                                                    _L230871_
                                                    _main-id230918_))))
                                           (let ((__tmp245528
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230684_)))
                                                 (__tmp245527
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230914_)))
                                                 (__tmp245526
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230918_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245528
                                              '" => "
                                              __tmp245527
                                              '" => "
                                              __tmp245526))
                                           (let ((__tmp245529
                                                  (let ((__tmp245534
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__243080243081_
                                                            _main-id230918_
                                                            _L230870_
                                                            '#f)))
                                                        (__tmp245530
                                                         (let ((__tmp245533
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__243080243081_
                           _get-kws-id230914_
                           _new-get-kws230924_
                           '#f)))
                       (__tmp245531
                        (let ((__tmp245532
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__243080243081_
                                  _L230684_
                                  _new-kw-dispatch230922_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp245532 _rest230560_))))
                   (declare (not safe))
                   (cons __tmp245533 __tmp245531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp245534
                                                          __tmp245530))))
                                             (declare (not safe))
                                             (_lp230537_
                                              __tmp245529
                                              _bind230540_))))
                                       _hd230745230863_
                                       _hd230742230855_
                                       _hd230739230847_
                                       _hd230736230839_
                                       _hd230718230791_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230698230751_ _g230699230754_)))))
                              (let ()
                                (declare (not safe))
                                (_g230698230751_ _g230699230754_)))
                          (let ()
                            (declare (not safe))
                            (_g230698230751_ _g230699230754_)))
                      (let ()
                        (declare (not safe))
                        (_g230698230751_ _g230699230754_)))
                  (let ()
                    (declare (not safe))
                    (_g230698230751_ _g230699230754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230698230751_
                                                     _g230699230754_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230698230751_
                                                 _g230699230754_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230698230751_
                                             _g230699230754_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230698230751_ _g230699230754_)))
                              (let ()
                                (declare (not safe))
                                (_g230698230751_ _g230699230754_)))))
                      (let ()
                        (declare (not safe))
                        (_g230698230751_ _g230699230754_)))))
              (let ()
                (declare (not safe))
                (_g230698230751_ _g230699230754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230698230751_
                                                 _g230699230754_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230698230751_ _g230699230754_)))))
                              (let ()
                                (declare (not safe))
                                (_g230698230751_ _g230699230754_)))))
                      (let ()
                        (declare (not safe))
                        (_g230698230751_ _g230699230754_)))
                  (let ()
                    (declare (not safe))
                    (_g230698230751_ _g230699230754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230698230751_
                                                     _g230699230754_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230698230751_
                                             _g230699230754_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230698230751_ _g230699230754_)))))
                          (let ()
                            (declare (not safe))
                            (_g230698230751_ _g230699230754_)))))
                  (let ()
                    (declare (not safe))
                    (_g230698230751_ _g230699230754_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230697230927_ _L230683_))))
                                         (___kont245015245016_
                                          (lambda (_L230634_ _L230635_)
                                            (let ((__tmp245535
                                                   (let ((__tmp245536
                                                          (let ((__tmp245537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245538
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230634_))))
                           (declare (not safe))
                           (cons __tmp245538 '()))))
                    (declare (not safe))
                    (cons _L230635_ __tmp245537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245536
                                                           _bind230540_))))
                                              (declare (not safe))
                                              (_lp230537_
                                               _rest230560_
                                               __tmp245535)))))
                                     (let* ((___match245082245083_
                                             (lambda (_e230594230659_
                                                      _hd230593230662_
                                                      _tl230592230664_
                                                      _e230597230667_
                                                      _hd230596230670_
                                                      _tl230595230672_
                                                      _e230600230675_
                                                      _hd230599230678_
                                                      _tl230598230680_)
                                               (let ((_L230683_
                                                      _hd230599230678_)
                                                     (_L230684_
                                                      _hd230596230670_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230684_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L230683_)))
                                                     (___kont245013245014_
                                                      _L230683_
                                                      _L230684_)
                                                     (___kont245015245016_
                                                      _hd230599230678_
                                                      _hd230593230662_)))))
                                            (___match245060245061_
                                             (lambda (_e230583230935_
                                                      _hd230582230938_
                                                      _tl230581230940_
                                                      _e230586230943_
                                                      _hd230585230946_
                                                      _tl230584230948_
                                                      _e230589230951_
                                                      _hd230588230954_
                                                      _tl230587230956_)
                                               (let ((_L230959_
                                                      _hd230588230954_)
                                                     (_L230960_
                                                      _hd230585230946_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230960_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230959_)))
                                                     (___kont245011245012_
                                                      _L230959_
                                                      _L230960_)
                                                     (___match245082245083_
                                                      _e230583230935_
                                                      _hd230582230938_
                                                      _tl230581230940_
                                                      _e230586230943_
                                                      _hd230585230946_
                                                      _tl230584230948_
                                                      _e230589230951_
                                                      _hd230588230954_
                                                      _tl230587230956_)))))
                                            (___match245038245039_
                                             (lambda (_e230572231107_
                                                      _hd230571231110_
                                                      _tl230570231112_
                                                      _e230575231115_
                                                      _hd230574231118_
                                                      _tl230573231120_
                                                      _e230578231123_
                                                      _hd230577231126_
                                                      _tl230576231128_)
                                               (let ((_L231131_
                                                      _hd230577231126_)
                                                     (_L231132_
                                                      _hd230574231118_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231132_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L231131_)))
                                                     (___kont245009245010_
                                                      _L231131_
                                                      _L231132_)
                                                     (___match245060245061_
                                                      _e230572231107_
                                                      _hd230571231110_
                                                      _tl230570231112_
                                                      _e230575231115_
                                                      _hd230574231118_
                                                      _tl230573231120_
                                                      _e230578231123_
                                                      _hd230577231126_
                                                      _tl230576231128_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx245007245008_))
                                           (let ((_e230572231107_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx245007245008_))))
                                             (let ((_tl230570231112_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230572231107_)))
                                                   (_hd230571231110_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230572231107_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230571231110_))
                                                   (let ((_e230575231115_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230571231110_))))
                                                     (let ((_tl230573231120_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230575231115_)))
                                                           (_hd230574231118_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230575231115_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230573231120_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230570231112_))
                       (let ((_e230578231123_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230570231112_))))
                         (let ((_tl230576231128_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230578231123_)))
                               (_hd230577231126_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230578231123_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230576231128_))
                               (___match245038245039_
                                _e230572231107_
                                _hd230571231110_
                                _tl230570231112_
                                _e230575231115_
                                _hd230574231118_
                                _tl230573231120_
                                _e230578231123_
                                _hd230577231126_
                                _tl230576231128_)
                               (let ()
                                 (declare (not safe))
                                 (_g230566230613_)))))
                       (let () (declare (not safe)) (_g230566230613_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230570231112_))
                       (let ((_e230608230626_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230570231112_))))
                         (let ((_tl230606230631_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230608230626_)))
                               (_hd230607230629_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230608230626_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230606230631_))
                               (___kont245015245016_
                                _hd230607230629_
                                _hd230571231110_)
                               (let ()
                                 (declare (not safe))
                                 (_g230566230613_)))))
                       (let () (declare (not safe)) (_g230566230613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230570231112_))
                                                       (let ((_e230608230626_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230570231112_))))
                 (let ((_tl230606230631_
                        (let () (declare (not safe)) (##cdr _e230608230626_)))
                       (_hd230607230629_
                        (let () (declare (not safe)) (##car _e230608230626_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230606230631_))
                       (___kont245015245016_ _hd230607230629_ _hd230571231110_)
                       (let () (declare (not safe)) (_g230566230613_)))))
               (let () (declare (not safe)) (_g230566230613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230566230613_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230541230549_))
                             (let ((_hd230546231227_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230541230549_)))
                                   (_tl230547231229_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230541230549_))))
                               (let* ((_hd231232_ _hd230546231227_)
                                      (_rest231234_ _tl230547231229_))
                                 (declare (not safe))
                                 (_K230545231224_ _rest231234_ _hd231232_)))
                             (let ()
                               (declare (not safe))
                               (_else230543230557_))))))))
          (let* ((___stx245099245100_ _stx230397_)
                 (_g230403230430_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx245099245100_)))))
            (let ((___kont245101245102_
                   (lambda (_L230490_ _L230491_ _L230492_)
                     (let ((__tmp245540
                            (lambda ()
                              (let ((_hd230529_
                                     (let ((__tmp245541
                                            (let ((__tmp245542
                                                   (lambda (_g230521230524_
                                                            _g230522230526_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230521230524_
                                                             _g230522230526_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245542
                                                      '()
                                                      _L230491_))))
                                       (declare (not safe))
                                       (_compile-bindings230400_ __tmp245541)))
                                    (_body230530_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L230490_))))
                                (let ((__tmp245543
                                       (let ((__tmp245544
                                              (let ((__tmp245545
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body230530_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd230529_
                                                      __tmp245545))))
                                         (declare (not safe))
                                         (cons _L230492_ __tmp245544))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp245543
                                   _stx230397_)))))
                           (__tmp245539
                            (let ((__obj245164
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245164)
                              __obj245164)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245540
                        gx#current-expander-context
                        __tmp245539))))
                  (___kont245105245106_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx230397_)))))
              (let ((___match245126245127_
                     (lambda (_e230410230442_
                              _hd230409230445_
                              _tl230408230447_
                              _e230413230450_
                              _hd230412230453_
                              _tl230411230455_
                              ___splice245103245104_
                              _target230414230458_
                              _tl230416230460_)
                       (letrec ((_loop230417230463_
                                 (lambda (_hd230415230466_ _bind230421230468_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd230415230466_))
                                       (let ((_e230418230471_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd230415230466_))))
                                         (let ((_lp-tl230420230476_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230418230471_)))
                                               (_lp-hd230419230474_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230418230471_))))
                                           (let ((__tmp245548
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd230419230474_
                                                          _bind230421230468_))))
                                             (declare (not safe))
                                             (_loop230417230463_
                                              _lp-tl230420230476_
                                              __tmp245548))))
                                       (let ((_bind230422230479_
                                              (reverse _bind230421230468_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl230411230455_))
                                             (let ((_e230425230482_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl230411230455_))))
                                               (let ((_tl230423230487_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e230425230482_)))
                                                     (_hd230424230485_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e230425230482_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl230423230487_))
                                                     (let ((_L230490_
                                                            _hd230424230485_)
                                                           (_L230491_
                                                            _bind230422230479_)
                                                           (_L230492_
                                                            _hd230409230445_))
                                                       (if (let ((__tmp245546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245547
                                 (lambda (_g230513230516_ _g230514230518_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g230513230516_ _g230514230518_)))))
                            (declare (not safe))
                            (foldr1 __tmp245547 '() _L230491_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245546))
                   (___kont245101245102_ _L230490_ _L230491_ _L230492_)
                   (___kont245105245106_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont245105245106_))))
                                             (___kont245105245106_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop230417230463_ _target230414230458_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx245099245100_))
                    (let ((_e230410230442_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx245099245100_))))
                      (let ((_tl230408230447_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230410230442_)))
                            (_hd230409230445_
                             (let ()
                               (declare (not safe))
                               (##car _e230410230442_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230408230447_))
                            (let ((_e230413230450_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230408230447_))))
                              (let ((_tl230411230455_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230413230450_)))
                                    (_hd230412230453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230413230450_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd230412230453_))
                                    (let ((___splice245103245104_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd230412230453_
                                              '0))))
                                      (let ((_tl230416230460_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice245103245104_
                                                '1)))
                                            (_target230414230458_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice245103245104_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230416230460_))
                                            (___match245126245127_
                                             _e230410230442_
                                             _hd230409230445_
                                             _tl230408230447_
                                             _e230413230450_
                                             _hd230412230453_
                                             _tl230411230455_
                                             ___splice245103245104_
                                             _target230414230458_
                                             _tl230416230460_)
                                            (___kont245105245106_))))
                                    (___kont245105245106_))))
                            (___kont245105245106_))))
                    (___kont245105245106_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind230315_)
        (let* ((___stx245129245130_ _bind230315_)
               (_g230318230335_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx245129245130_)))))
          (let ((___kont245131245132_
                 (lambda (_L230371_ _L230372_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230372_))
                       (let ((_$e230388_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L230371_))))
                         (if _$e230388_
                             _$e230388_
                             (let ((_$e230391_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L230371_))))
                               (if _$e230391_
                                   _$e230391_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230371_))))))
                       '#f)))
                (___kont245133245134_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx245129245130_))
                (let ((_e230324230347_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx245129245130_))))
                  (let ((_tl230322230352_
                         (let () (declare (not safe)) (##cdr _e230324230347_)))
                        (_hd230323230350_
                         (let ()
                           (declare (not safe))
                           (##car _e230324230347_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd230323230350_))
                        (let ((_e230327230355_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd230323230350_))))
                          (let ((_tl230325230360_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230327230355_)))
                                (_hd230326230358_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230327230355_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230325230360_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl230322230352_))
                                    (let ((_e230330230363_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl230322230352_))))
                                      (let ((_tl230328230368_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230330230363_)))
                                            (_hd230329230366_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230330230363_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230328230368_))
                                            (___kont245131245132_
                                             _hd230329230366_
                                             _hd230326230358_)
                                            (___kont245133245134_))))
                                    (___kont245133245134_))
                                (___kont245133245134_))))
                        (___kont245133245134_))))
                (___kont245133245134_))))))))
