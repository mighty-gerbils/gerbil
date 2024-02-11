(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707616240)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234701_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241262 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234701_ __tmp241262))
           (let ()
             (declare (not safe))
             (table-set! _tbl234701_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234701_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234701_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234701_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl234701_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx234684_ . _args234686_)
        (let ((__tmp241264
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234686_)
                     (gxc#compile-e__0 _stx234684_)
                     (let ((_arg1234691_ (car _args234686_))
                           (_rest234693_ (cdr _args234686_)))
                       (if (null? _rest234693_)
                           (gxc#compile-e__1 _stx234684_ _arg1234691_)
                           (let ((_arg2234696_ (car _rest234693_))
                                 (_rest234698_ (cdr _rest234693_)))
                             (if (null? _rest234698_)
                                 (gxc#compile-e__2
                                  _stx234684_
                                  _arg1234691_
                                  _arg2234696_)
                                 (apply gxc#compile-e
                                        _stx234684_
                                        _arg1234691_
                                        _arg2234696_
                                        _rest234698_))))))))
              (__tmp241263 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241264
           gxc#current-compile-methods
           __tmp241263))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl234681_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241265 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234681_ __tmp241265))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234681_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234681_ '%#call gxc#basic-expression-type-call%))
           _tbl234681_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx234664_ . _args234666_)
        (let ((__tmp241267
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234666_)
                     (gxc#compile-e__0 _stx234664_)
                     (let ((_arg1234671_ (car _args234666_))
                           (_rest234673_ (cdr _args234666_)))
                       (if (null? _rest234673_)
                           (gxc#compile-e__1 _stx234664_ _arg1234671_)
                           (let ((_arg2234676_ (car _rest234673_))
                                 (_rest234678_ (cdr _rest234673_)))
                             (if (null? _rest234678_)
                                 (gxc#compile-e__2
                                  _stx234664_
                                  _arg1234671_
                                  _arg2234676_)
                                 (apply gxc#compile-e
                                        _stx234664_
                                        _arg1234671_
                                        _arg2234676_
                                        _rest234678_))))))))
              (__tmp241266 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241267
           gxc#current-compile-methods
           __tmp241266))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234661_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241268 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234661_ __tmp241268))
           (let ()
             (declare (not safe))
             (table-set! _tbl234661_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234661_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234661_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234661_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234661_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234661_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234661_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234661_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234661_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234661_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234661_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234661_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl234661_ '%#set! gxc#collect-body-setq%))
           _tbl234661_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx234644_ . _args234646_)
        (let ((__tmp241270
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234646_)
                     (gxc#compile-e__0 _stx234644_)
                     (let ((_arg1234651_ (car _args234646_))
                           (_rest234653_ (cdr _args234646_)))
                       (if (null? _rest234653_)
                           (gxc#compile-e__1 _stx234644_ _arg1234651_)
                           (let ((_arg2234656_ (car _rest234653_))
                                 (_rest234658_ (cdr _rest234653_)))
                             (if (null? _rest234658_)
                                 (gxc#compile-e__2
                                  _stx234644_
                                  _arg1234651_
                                  _arg2234656_)
                                 (apply gxc#compile-e
                                        _stx234644_
                                        _arg1234651_
                                        _arg2234656_
                                        _rest234658_))))))))
              (__tmp241269 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241270
           gxc#current-compile-methods
           __tmp241269))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl234641_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241271 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234641_ __tmp241271))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234641_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234641_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234641_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234641_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234641_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234641_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234641_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234641_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234641_ '%#ref gxc#basic-expression-type-ref%))
           _tbl234641_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx234624_ . _args234626_)
        (let ((__tmp241273
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234626_)
                     (gxc#compile-e__0 _stx234624_)
                     (let ((_arg1234631_ (car _args234626_))
                           (_rest234633_ (cdr _args234626_)))
                       (if (null? _rest234633_)
                           (gxc#compile-e__1 _stx234624_ _arg1234631_)
                           (let ((_arg2234636_ (car _rest234633_))
                                 (_rest234638_ (cdr _rest234633_)))
                             (if (null? _rest234638_)
                                 (gxc#compile-e__2
                                  _stx234624_
                                  _arg1234631_
                                  _arg2234636_)
                                 (apply gxc#compile-e
                                        _stx234624_
                                        _arg1234631_
                                        _arg2234636_
                                        _rest234638_))))))))
              (__tmp241272 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241273
           gxc#current-compile-methods
           __tmp241272))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl234621_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241274 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl234621_ __tmp241274))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234621_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234621_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234621_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234621_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl234621_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx234604_ . _args234606_)
        (let ((__tmp241276
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234606_)
                     (gxc#compile-e__0 _stx234604_)
                     (let ((_arg1234611_ (car _args234606_))
                           (_rest234613_ (cdr _args234606_)))
                       (if (null? _rest234613_)
                           (gxc#compile-e__1 _stx234604_ _arg1234611_)
                           (let ((_arg2234616_ (car _rest234613_))
                                 (_rest234618_ (cdr _rest234613_)))
                             (if (null? _rest234618_)
                                 (gxc#compile-e__2
                                  _stx234604_
                                  _arg1234611_
                                  _arg2234616_)
                                 (apply gxc#compile-e
                                        _stx234604_
                                        _arg1234611_
                                        _arg2234616_
                                        _rest234618_))))))))
              (__tmp241275 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp241276
           gxc#current-compile-methods
           __tmp241275))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx234507_)
        (let* ((___stx239182239183_ _stx234507_)
               (_g234510234530_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239182239183_)))))
          (let ((___kont239184239185_
                 (lambda (_L234574_ _L234575_)
                   (let ((_sym234593_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234575_))))
                     (if (let ((__tmp241277 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241277 _sym234593_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234593_))
                         (let ((_type234594234596_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L234574_))))
                           (if _type234594234596_
                               (let ((_type234599_ _type234594234596_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym234593_
                                  _type234599_))
                               '#f))))))
                (___kont239186239187_ (lambda () '#!void)))
            (let ((___match239215239216_
                   (lambda (_e234516234542_
                            _hd234515234545_
                            _tl234514234547_
                            _e234519234550_
                            _hd234518234553_
                            _tl234517234555_
                            _e234522234558_
                            _hd234521234561_
                            _tl234520234563_
                            _e234525234566_
                            _hd234524234569_
                            _tl234523234571_)
                     (let ((_L234574_ _hd234524234569_)
                           (_L234575_ _hd234521234561_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234575_))
                           (___kont239184239185_ _L234574_ _L234575_)
                           (___kont239186239187_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239182239183_))
                  (let ((_e234516234542_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239182239183_))))
                    (let ((_tl234514234547_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234516234542_)))
                          (_hd234515234545_
                           (let ()
                             (declare (not safe))
                             (##car _e234516234542_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234514234547_))
                          (let ((_e234519234550_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234514234547_))))
                            (let ((_tl234517234555_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234519234550_)))
                                  (_hd234518234553_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234519234550_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234518234553_))
                                  (let ((_e234522234558_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234518234553_))))
                                    (let ((_tl234520234563_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234522234558_)))
                                          (_hd234521234561_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234522234558_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234520234563_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234517234555_))
                                              (let ((_e234525234566_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234517234555_))))
                                                (let ((_tl234523234571_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234525234566_)))
                                                      (_hd234524234569_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234525234566_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234523234571_))
                                                      (___match239215239216_
                                                       _e234516234542_
                                                       _hd234515234545_
                                                       _tl234514234547_
                                                       _e234519234550_
                                                       _hd234518234553_
                                                       _tl234517234555_
                                                       _e234522234558_
                                                       _hd234521234561_
                                                       _tl234520234563_
                                                       _e234525234566_
                                                       _hd234524234569_
                                                       _tl234523234571_)
                                                      (___kont239186239187_))))
                                              (___kont239186239187_))
                                          (___kont239186239187_))))
                                  (___kont239186239187_))))
                          (___kont239186239187_))))
                  (___kont239186239187_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx234363_)
        (let* ((___stx239218239219_ _stx234363_)
               (_g234366234397_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239218239219_)))))
          (let ((___kont239220239221_
                 (lambda (_L234479_ _L234480_)
                   (let ((_sym234496_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234480_))))
                     (if (let ((__tmp241278 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241278 _sym234496_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234496_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym234496_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym234496_))
                             (let ((_type234497234499_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L234479_))))
                               (if _type234497234499_
                                   (let ((_type234502_ _type234497234499_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym234496_
                                      _type234502_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L234479_)))))
                (___kont239222239223_
                 (lambda (_L234426_ _L234427_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L234426_)))))
            (let ((___match239251239252_
                   (lambda (_e234372234447_
                            _hd234371234450_
                            _tl234370234452_
                            _e234375234455_
                            _hd234374234458_
                            _tl234373234460_
                            _e234378234463_
                            _hd234377234466_
                            _tl234376234468_
                            _e234381234471_
                            _hd234380234474_
                            _tl234379234476_)
                     (let ((_L234479_ _hd234380234474_)
                           (_L234480_ _hd234377234466_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234480_))
                           (___kont239220239221_ _L234479_ _L234480_)
                           (___kont239222239223_
                            _hd234380234474_
                            _hd234374234458_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239218239219_))
                  (let ((_e234372234447_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239218239219_))))
                    (let ((_tl234370234452_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234372234447_)))
                          (_hd234371234450_
                           (let ()
                             (declare (not safe))
                             (##car _e234372234447_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234370234452_))
                          (let ((_e234375234455_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234370234452_))))
                            (let ((_tl234373234460_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234375234455_)))
                                  (_hd234374234458_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234375234455_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234374234458_))
                                  (let ((_e234378234463_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234374234458_))))
                                    (let ((_tl234376234468_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234378234463_)))
                                          (_hd234377234466_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234378234463_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234376234468_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234373234460_))
                                              (let ((_e234381234471_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234373234460_))))
                                                (let ((_tl234379234476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234381234471_)))
                                                      (_hd234380234474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234381234471_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234379234476_))
                                                      (___match239251239252_
                                                       _e234372234447_
                                                       _hd234371234450_
                                                       _tl234370234452_
                                                       _e234375234455_
                                                       _hd234374234458_
                                                       _tl234373234460_
                                                       _e234378234463_
                                                       _hd234377234466_
                                                       _tl234376234468_
                                                       _e234381234471_
                                                       _hd234380234474_
                                                       _tl234379234476_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234366234397_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234366234397_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234373234460_))
                                              (let ((_e234392234418_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234373234460_))))
                                                (let ((_tl234390234423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234392234418_)))
                                                      (_hd234391234421_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234392234418_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234390234423_))
                                                      (___kont239222239223_
                                                       _hd234391234421_
                                                       _hd234374234458_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234366234397_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234366234397_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234373234460_))
                                      (let ((_e234392234418_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234373234460_))))
                                        (let ((_tl234390234423_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234392234418_)))
                                              (_hd234391234421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234392234418_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234390234423_))
                                              (___kont239222239223_
                                               _hd234391234421_
                                               _hd234374234458_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234366234397_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234366234397_))))))
                          (let () (declare (not safe)) (_g234366234397_)))))
                  (let () (declare (not safe)) (_g234366234397_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx234148_)
        (letrec ((_collect-e234150_
                  (lambda (_hd234307_ _expr234308_)
                    (let* ((___stx239274239275_ _hd234307_)
                           (_g234311234321_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx239274239275_)))))
                      (let ((___kont239276239277_
                             (lambda (_L234341_)
                               (let ((_sym234352_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L234341_))))
                                 (if (let ((__tmp241279
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp241279 _sym234352_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym234352_))
                                     (let ((_type234353234355_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr234308_))))
                                       (if _type234353234355_
                                           (let ((_type234358_
                                                  _type234353234355_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym234352_
                                              _type234358_
                                              '#t))
                                           '#f))))))
                            (___kont239278239279_ (lambda () '#!void)))
                        (let ((___match239287239288_
                               (lambda (_e234316234333_
                                        _hd234315234336_
                                        _tl234314234338_)
                                 (let ((_L234341_ _hd234315234336_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L234341_))
                                       (___kont239276239277_ _L234341_)
                                       (___kont239278239279_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx239274239275_))
                              (let ((_e234316234333_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx239274239275_))))
                                (let ((_tl234314234338_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234316234333_)))
                                      (_hd234315234336_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234316234333_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234314234338_))
                                      (___match239287239288_
                                       _e234316234333_
                                       _hd234315234336_
                                       _tl234314234338_)
                                      (___kont239278239279_))))
                              (___kont239278239279_))))))))
          (let* ((_g234152234187_
                  (lambda (_g234153234184_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234153234184_))))
                 (_g234151234304_
                  (lambda (_g234153234190_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234153234190_))
                        (let ((_e234159234192_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234153234190_))))
                          (let ((_hd234158234195_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234159234192_)))
                                (_tl234157234197_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234159234192_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234157234197_))
                                (let ((_e234162234200_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234157234197_))))
                                  (let ((_hd234161234203_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234162234200_)))
                                        (_tl234160234205_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234162234200_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd234161234203_))
                                        (let ((_g241280_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd234161234203_
                                                  '0))))
                                          (begin
                                            (let ((_g241281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g241280_)
                                                         (##vector-length
                                                          _g241280_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g241281_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g241281_)))
                                            (let ((_target234163234208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241280_
                                                      0)))
                                                  (_tl234165234210_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241280_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234165234210_))
                                                  (letrec ((_loop234166234213_
                                                            (lambda (_hd234164234216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr234170234218_
                             _hd234171234220_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234164234216_))
                          (let ((_e234167234223_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234164234216_))))
                            (let ((_lp-hd234168234226_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234167234223_)))
                                  (_lp-tl234169234228_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234167234223_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd234168234226_))
                                  (let ((_e234176234231_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd234168234226_))))
                                    (let ((_hd234175234234_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234176234231_)))
                                          (_tl234174234236_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234176234231_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234174234236_))
                                          (let ((_e234179234239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234174234236_))))
                                            (let ((_hd234178234242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234179234239_)))
                                                  (_tl234177234244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234179234239_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234177234244_))
                                                  (let ((__tmp241286
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd234178234242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr234170234218_)))
                (__tmp241285
                 (let ()
                   (declare (not safe))
                   (cons _hd234175234234_ _hd234171234220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop234166234213_
                                                     _lp-tl234169234228_
                                                     __tmp241286
                                                     __tmp241285))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234152234187_
                                                     _g234153234190_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g234152234187_
                                             _g234153234190_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234152234187_ _g234153234190_)))))
                          (let ((_expr234172234247_
                                 (reverse _expr234170234218_))
                                (_hd234173234249_ (reverse _hd234171234220_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234160234205_))
                                (let ((_e234182234252_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234160234205_))))
                                  (let ((_hd234181234255_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234182234252_)))
                                        (_tl234180234257_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234182234252_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234180234257_))
                                        ((lambda (_L234260_
                                                  _L234261_
                                                  _L234262_)
                                           (for-each
                                            _collect-e234150_
                                            (let ((__tmp241282
                                                   (lambda (_g234282234285_
                                                            _g234283234287_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234282234285_
                                                             _g234283234287_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241282
                                                      '()
                                                      _L234262_))
                                            (let ((__tmp241283
                                                   (lambda (_g234289234292_
                                                            _g234290234294_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234289234292_
                                                             _g234290234294_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241283
                                                      '()
                                                      _L234261_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp241284
                                                   (lambda (_g234296234299_
                                                            _g234297234301_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234296234299_
                                                             _g234297234301_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241284
                                                      '()
                                                      _L234261_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L234260_)))
                                         _hd234181234255_
                                         _expr234172234247_
                                         _hd234173234249_)
                                        (let ()
                                          (declare (not safe))
                                          (_g234152234187_ _g234153234190_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234152234187_ _g234153234190_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop234166234213_
                                                       _target234163234208_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234152234187_
                                                     _g234153234190_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g234152234187_ _g234153234190_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234152234187_ _g234153234190_)))))
                        (let ()
                          (declare (not safe))
                          (_g234152234187_ _g234153234190_))))))
            (declare (not safe))
            (_g234151234304_ _stx234148_)))))
    (define gxc#collect-type-call%
      (lambda (_stx233640_)
        (let* ((___stx239290239291_ _stx233640_)
               (_g233644233759_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239290239291_)))))
          (let ((___kont239292239293_
                 (lambda (_L234098_ _L234099_ _L234100_ _L234101_ _L234102_)
                   (let ((__tmp241290
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234101_)))
                         (__tmp241289
                          (let () (declare (not safe)) (gx#stx-e _L234100_)))
                         (__tmp241288
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234099_)))
                         (__tmp241287
                          (let () (declare (not safe)) (gx#stx-e _L234098_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241290
                      __tmp241289
                      __tmp241288
                      __tmp241287))))
                (___kont239294239295_
                 (lambda (_L233926_ _L233927_ _L233928_ _L233929_)
                   (let ((__tmp241293
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233928_)))
                         (__tmp241292
                          (let () (declare (not safe)) (gx#stx-e _L233927_)))
                         (__tmp241291
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233926_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241293
                      __tmp241292
                      __tmp241291
                      '#f))))
                (___kont239296239297_
                 (lambda (_L233796_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp241294
                           (lambda (_g233809233812_ _g233810233814_)
                             (let ()
                               (declare (not safe))
                               (cons _g233809233812_ _g233810233814_)))))
                      (declare (not safe))
                      (foldr1 __tmp241294 '() _L233796_))))))
            (let* ((___match239547239548_
                    (lambda (_e233745233764_
                             _hd233744233767_
                             _tl233743233769_
                             ___splice239298239299_
                             _target233746233772_
                             _tl233748233774_)
                      (letrec ((_loop233749233777_
                                (lambda (_hd233747233780_ _expr233753233782_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233747233780_))
                                      (let ((_e233750233785_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233747233780_))))
                                        (let ((_lp-tl233752233790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233750233785_)))
                                              (_lp-hd233751233788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233750233785_))))
                                          (let ((__tmp241295
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233751233788_
                                                         _expr233753233782_))))
                                            (declare (not safe))
                                            (_loop233749233777_
                                             _lp-tl233752233790_
                                             __tmp241295))))
                                      (let ((_expr233754233793_
                                             (reverse _expr233753233782_)))
                                        (___kont239296239297_
                                         _expr233754233793_))))))
                        (let ()
                          (declare (not safe))
                          (_loop233749233777_ _target233746233772_ '())))))
                   (___match239427239428_
                    (lambda (_e233653233970_
                             _hd233652233973_
                             _tl233651233975_
                             _e233656233978_
                             _hd233655233981_
                             _tl233654233983_
                             _e233659233986_
                             _hd233658233989_
                             _tl233657233991_
                             _e233662233994_
                             _hd233661233997_
                             _tl233660233999_
                             _e233665234002_
                             _hd233664234005_
                             _tl233663234007_
                             _e233668234010_
                             _hd233667234013_
                             _tl233666234015_
                             _e233671234018_
                             _hd233670234021_
                             _tl233669234023_
                             _e233674234026_
                             _hd233673234029_
                             _tl233672234031_
                             _e233677234034_
                             _hd233676234037_
                             _tl233675234039_
                             _e233680234042_
                             _hd233679234045_
                             _tl233678234047_
                             _e233683234050_
                             _hd233682234053_
                             _tl233681234055_
                             _e233686234058_
                             _hd233685234061_
                             _tl233684234063_
                             _e233689234066_
                             _hd233688234069_
                             _tl233687234071_
                             _e233692234074_
                             _hd233691234077_
                             _tl233690234079_
                             _e233695234082_
                             _hd233694234085_
                             _tl233693234087_
                             _e233698234090_
                             _hd233697234093_
                             _tl233696234095_)
                      (let ((_L234098_ _hd233697234093_)
                            (_L234099_ _hd233688234069_)
                            (_L234100_ _hd233679234045_)
                            (_L234101_ _hd233670234021_)
                            (_L234102_ _hd233661233997_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L234102_
                               'bind-method!))
                            (___kont239292239293_
                             _L234098_
                             _L234099_
                             _L234100_
                             _L234101_
                             _L234102_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl233651233975_))
                                (let ((___splice239298239299_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl233651233975_
                                          '0))))
                                  (let ((_tl233748233774_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239298239299_
                                            '1)))
                                        (_target233746233772_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239298239299_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233748233774_))
                                        (___match239547239548_
                                         _e233653233970_
                                         _hd233652233973_
                                         _tl233651233975_
                                         ___splice239298239299_
                                         _target233746233772_
                                         _tl233748233774_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233644233759_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233644233759_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239290239291_))
                  (let ((_e233653233970_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239290239291_))))
                    (let ((_tl233651233975_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233653233970_)))
                          (_hd233652233973_
                           (let ()
                             (declare (not safe))
                             (##car _e233653233970_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233651233975_))
                          (let ((_e233656233978_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233651233975_))))
                            (let ((_tl233654233983_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233656233978_)))
                                  (_hd233655233981_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233656233978_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233655233981_))
                                  (let ((_e233659233986_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233655233981_))))
                                    (let ((_tl233657233991_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233659233986_)))
                                          (_hd233658233989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233659233986_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233658233989_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233658233989_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233657233991_))
                                                  (let ((_e233662233994_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233657233991_))))
                                                    (let ((_tl233660233999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233662233994_)))
                                                          (_hd233661233997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233662233994_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233660233999_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233654233983_))
                      (let ((_e233665234002_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233654233983_))))
                        (let ((_tl233663234007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233665234002_)))
                              (_hd233664234005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233665234002_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233664234005_))
                              (let ((_e233668234010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233664234005_))))
                                (let ((_tl233666234015_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233668234010_)))
                                      (_hd233667234013_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233668234010_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233667234013_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233667234013_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233666234015_))
                                              (let ((_e233671234018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233666234015_))))
                                                (let ((_tl233669234023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233671234018_)))
                                                      (_hd233670234021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233671234018_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233669234023_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233663234007_))
                                                          (let ((_e233674234026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233663234007_))))
                    (let ((_tl233672234031_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233674234026_)))
                          (_hd233673234029_
                           (let ()
                             (declare (not safe))
                             (##car _e233674234026_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233673234029_))
                          (let ((_e233677234034_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233673234029_))))
                            (let ((_tl233675234039_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233677234034_)))
                                  (_hd233676234037_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233677234034_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233676234037_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd233676234037_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233675234039_))
                                          (let ((_e233680234042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233675234039_))))
                                            (let ((_tl233678234047_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233680234042_)))
                                                  (_hd233679234045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233680234042_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233678234047_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233672234031_))
                                                      (let ((_e233683234050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233672234031_))))
                (let ((_tl233681234055_
                       (let () (declare (not safe)) (##cdr _e233683234050_)))
                      (_hd233682234053_
                       (let () (declare (not safe)) (##car _e233683234050_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233682234053_))
                      (let ((_e233686234058_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233682234053_))))
                        (let ((_tl233684234063_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233686234058_)))
                              (_hd233685234061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233686234058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233685234061_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233685234061_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233684234063_))
                                      (let ((_e233689234066_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233684234063_))))
                                        (let ((_tl233687234071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233689234066_)))
                                              (_hd233688234069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233689234066_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233687234071_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233681234055_))
                                                  (let ((_e233692234074_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233681234055_))))
                                                    (let ((_tl233690234079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233692234074_)))
                                                          (_hd233691234077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233692234074_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233691234077_))
                                                          (let ((_e233695234082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233691234077_))))
                    (let ((_tl233693234087_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233695234082_)))
                          (_hd233694234085_
                           (let ()
                             (declare (not safe))
                             (##car _e233695234082_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233694234085_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233694234085_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233693234087_))
                                  (let ((_e233698234090_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233693234087_))))
                                    (let ((_tl233696234095_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233698234090_)))
                                          (_hd233697234093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233698234090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233696234095_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233690234079_))
                                              (___match239427239428_
                                               _e233653233970_
                                               _hd233652233973_
                                               _tl233651233975_
                                               _e233656233978_
                                               _hd233655233981_
                                               _tl233654233983_
                                               _e233659233986_
                                               _hd233658233989_
                                               _tl233657233991_
                                               _e233662233994_
                                               _hd233661233997_
                                               _tl233660233999_
                                               _e233665234002_
                                               _hd233664234005_
                                               _tl233663234007_
                                               _e233668234010_
                                               _hd233667234013_
                                               _tl233666234015_
                                               _e233671234018_
                                               _hd233670234021_
                                               _tl233669234023_
                                               _e233674234026_
                                               _hd233673234029_
                                               _tl233672234031_
                                               _e233677234034_
                                               _hd233676234037_
                                               _tl233675234039_
                                               _e233680234042_
                                               _hd233679234045_
                                               _tl233678234047_
                                               _e233683234050_
                                               _hd233682234053_
                                               _tl233681234055_
                                               _e233686234058_
                                               _hd233685234061_
                                               _tl233684234063_
                                               _e233689234066_
                                               _hd233688234069_
                                               _tl233687234071_
                                               _e233692234074_
                                               _hd233691234077_
                                               _tl233690234079_
                                               _e233695234082_
                                               _hd233694234085_
                                               _tl233693234087_
                                               _e233698234090_
                                               _hd233697234093_
                                               _tl233696234095_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233651233975_))
                                                  (let ((___splice239298239299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233651233975_
                                                            '0))))
                                                    (let ((_tl233748233774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '1)))
                                                          (_target233746233772_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233748233774_))
                                                          (___match239547239548_
                                                           _e233653233970_
                                                           _hd233652233973_
                                                           _tl233651233975_
                                                           ___splice239298239299_
                                                           _target233746233772_
                                                           _tl233748233774_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233644233759_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233644233759_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233651233975_))
                                              (let ((___splice239298239299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233651233975_
                                                        '0))))
                                                (let ((_tl233748233774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '1)))
                                                      (_target233746233772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233748233774_))
                                                      (___match239547239548_
                                                       _e233653233970_
                                                       _hd233652233973_
                                                       _tl233651233975_
                                                       ___splice239298239299_
                                                       _target233746233772_
                                                       _tl233748233774_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233644233759_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233651233975_))
                                      (let ((___splice239298239299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233651233975_
                                                '0))))
                                        (let ((_tl233748233774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '1)))
                                              (_target233746233772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233748233774_))
                                              (___match239547239548_
                                               _e233653233970_
                                               _hd233652233973_
                                               _tl233651233975_
                                               ___splice239298239299_
                                               _target233746233772_
                                               _tl233748233774_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233644233759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233651233975_))
                                  (let ((___splice239298239299_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233651233975_
                                            '0))))
                                    (let ((_tl233748233774_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239298239299_
                                              '1)))
                                          (_target233746233772_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239298239299_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233748233774_))
                                          (___match239547239548_
                                           _e233653233970_
                                           _hd233652233973_
                                           _tl233651233975_
                                           ___splice239298239299_
                                           _target233746233772_
                                           _tl233748233774_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233644233759_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233644233759_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233651233975_))
                              (let ((___splice239298239299_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233651233975_
                                        '0))))
                                (let ((_tl233748233774_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239298239299_
                                          '1)))
                                      (_target233746233772_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239298239299_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233748233774_))
                                      (___match239547239548_
                                       _e233653233970_
                                       _hd233652233973_
                                       _tl233651233975_
                                       ___splice239298239299_
                                       _target233746233772_
                                       _tl233748233774_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233644233759_)))))
                              (let ()
                                (declare (not safe))
                                (_g233644233759_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233651233975_))
                      (let ((___splice239298239299_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233651233975_ '0))))
                        (let ((_tl233748233774_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '1)))
                              (_target233746233772_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233748233774_))
                              (___match239547239548_
                               _e233653233970_
                               _hd233652233973_
                               _tl233651233975_
                               ___splice239298239299_
                               _target233746233772_
                               _tl233748233774_)
                              (let ()
                                (declare (not safe))
                                (_g233644233759_)))))
                      (let () (declare (not safe)) (_g233644233759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233681234055_))
                                                      (if (let ((__tmp241296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp241296 'bind-method!))
                  (let ((_L233926_ _hd233688234069_)
                        (_L233927_ _hd233679234045_)
                        (_L233928_ _hd233670234021_)
                        (_L233929_ _hd233661233997_))
                    (___kont239294239295_
                     _L233926_
                     _L233927_
                     _L233928_
                     _L233929_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233651233975_))
                      (let ((___splice239298239299_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233651233975_ '0))))
                        (let ((_tl233748233774_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '1)))
                              (_target233746233772_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233748233774_))
                              (___match239547239548_
                               _e233653233970_
                               _hd233652233973_
                               _tl233651233975_
                               ___splice239298239299_
                               _target233746233772_
                               _tl233748233774_)
                              (let ()
                                (declare (not safe))
                                (_g233644233759_)))))
                      (let () (declare (not safe)) (_g233644233759_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233651233975_))
                  (let ((___splice239298239299_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233651233975_ '0))))
                    (let ((_tl233748233774_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239298239299_ '1)))
                          (_target233746233772_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239298239299_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233748233774_))
                          (___match239547239548_
                           _e233653233970_
                           _hd233652233973_
                           _tl233651233975_
                           ___splice239298239299_
                           _target233746233772_
                           _tl233748233774_)
                          (let () (declare (not safe)) (_g233644233759_)))))
                  (let () (declare (not safe)) (_g233644233759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233651233975_))
                                                  (let ((___splice239298239299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233651233975_
                                                            '0))))
                                                    (let ((_tl233748233774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '1)))
                                                          (_target233746233772_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233748233774_))
                                                          (___match239547239548_
                                                           _e233653233970_
                                                           _hd233652233973_
                                                           _tl233651233975_
                                                           ___splice239298239299_
                                                           _target233746233772_
                                                           _tl233748233774_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233644233759_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233644233759_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233651233975_))
                                          (let ((___splice239298239299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233651233975_
                                                    '0))))
                                            (let ((_tl233748233774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239298239299_
                                                      '1)))
                                                  (_target233746233772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239298239299_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233748233774_))
                                                  (___match239547239548_
                                                   _e233653233970_
                                                   _hd233652233973_
                                                   _tl233651233975_
                                                   ___splice239298239299_
                                                   _target233746233772_
                                                   _tl233748233774_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233644233759_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233644233759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233651233975_))
                                      (let ((___splice239298239299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233651233975_
                                                '0))))
                                        (let ((_tl233748233774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '1)))
                                              (_target233746233772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233748233774_))
                                              (___match239547239548_
                                               _e233653233970_
                                               _hd233652233973_
                                               _tl233651233975_
                                               ___splice239298239299_
                                               _target233746233772_
                                               _tl233748233774_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233644233759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233651233975_))
                                  (let ((___splice239298239299_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233651233975_
                                            '0))))
                                    (let ((_tl233748233774_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239298239299_
                                              '1)))
                                          (_target233746233772_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239298239299_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233748233774_))
                                          (___match239547239548_
                                           _e233653233970_
                                           _hd233652233973_
                                           _tl233651233975_
                                           ___splice239298239299_
                                           _target233746233772_
                                           _tl233748233774_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233644233759_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233644233759_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233651233975_))
                          (let ((___splice239298239299_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233651233975_
                                    '0))))
                            (let ((_tl233748233774_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239298239299_ '1)))
                                  (_target233746233772_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239298239299_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233748233774_))
                                  (___match239547239548_
                                   _e233653233970_
                                   _hd233652233973_
                                   _tl233651233975_
                                   ___splice239298239299_
                                   _target233746233772_
                                   _tl233748233774_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233644233759_)))))
                          (let () (declare (not safe)) (_g233644233759_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233651233975_))
                  (let ((___splice239298239299_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233651233975_ '0))))
                    (let ((_tl233748233774_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239298239299_ '1)))
                          (_target233746233772_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239298239299_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233748233774_))
                          (___match239547239548_
                           _e233653233970_
                           _hd233652233973_
                           _tl233651233975_
                           ___splice239298239299_
                           _target233746233772_
                           _tl233748233774_)
                          (let () (declare (not safe)) (_g233644233759_)))))
                  (let () (declare (not safe)) (_g233644233759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233651233975_))
                                                      (let ((___splice239298239299_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233651233975_ '0))))
                (let ((_tl233748233774_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239298239299_ '1)))
                      (_target233746233772_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239298239299_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233748233774_))
                      (___match239547239548_
                       _e233653233970_
                       _hd233652233973_
                       _tl233651233975_
                       ___splice239298239299_
                       _target233746233772_
                       _tl233748233774_)
                      (let () (declare (not safe)) (_g233644233759_)))))
              (let () (declare (not safe)) (_g233644233759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233651233975_))
                                              (let ((___splice239298239299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233651233975_
                                                        '0))))
                                                (let ((_tl233748233774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '1)))
                                                      (_target233746233772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233748233774_))
                                                      (___match239547239548_
                                                       _e233653233970_
                                                       _hd233652233973_
                                                       _tl233651233975_
                                                       ___splice239298239299_
                                                       _target233746233772_
                                                       _tl233748233774_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233644233759_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233651233975_))
                                          (let ((___splice239298239299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233651233975_
                                                    '0))))
                                            (let ((_tl233748233774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239298239299_
                                                      '1)))
                                                  (_target233746233772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239298239299_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233748233774_))
                                                  (___match239547239548_
                                                   _e233653233970_
                                                   _hd233652233973_
                                                   _tl233651233975_
                                                   ___splice239298239299_
                                                   _target233746233772_
                                                   _tl233748233774_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233644233759_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233644233759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233651233975_))
                                      (let ((___splice239298239299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233651233975_
                                                '0))))
                                        (let ((_tl233748233774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '1)))
                                              (_target233746233772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233748233774_))
                                              (___match239547239548_
                                               _e233653233970_
                                               _hd233652233973_
                                               _tl233651233975_
                                               ___splice239298239299_
                                               _target233746233772_
                                               _tl233748233774_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233644233759_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233651233975_))
                              (let ((___splice239298239299_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233651233975_
                                        '0))))
                                (let ((_tl233748233774_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239298239299_
                                          '1)))
                                      (_target233746233772_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239298239299_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233748233774_))
                                      (___match239547239548_
                                       _e233653233970_
                                       _hd233652233973_
                                       _tl233651233975_
                                       ___splice239298239299_
                                       _target233746233772_
                                       _tl233748233774_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233644233759_)))))
                              (let ()
                                (declare (not safe))
                                (_g233644233759_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233651233975_))
                      (let ((___splice239298239299_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233651233975_ '0))))
                        (let ((_tl233748233774_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '1)))
                              (_target233746233772_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233748233774_))
                              (___match239547239548_
                               _e233653233970_
                               _hd233652233973_
                               _tl233651233975_
                               ___splice239298239299_
                               _target233746233772_
                               _tl233748233774_)
                              (let ()
                                (declare (not safe))
                                (_g233644233759_)))))
                      (let () (declare (not safe)) (_g233644233759_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233651233975_))
                  (let ((___splice239298239299_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233651233975_ '0))))
                    (let ((_tl233748233774_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239298239299_ '1)))
                          (_target233746233772_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239298239299_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233748233774_))
                          (___match239547239548_
                           _e233653233970_
                           _hd233652233973_
                           _tl233651233975_
                           ___splice239298239299_
                           _target233746233772_
                           _tl233748233774_)
                          (let () (declare (not safe)) (_g233644233759_)))))
                  (let () (declare (not safe)) (_g233644233759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233651233975_))
                                                  (let ((___splice239298239299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233651233975_
                                                            '0))))
                                                    (let ((_tl233748233774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '1)))
                                                          (_target233746233772_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233748233774_))
                                                          (___match239547239548_
                                                           _e233653233970_
                                                           _hd233652233973_
                                                           _tl233651233975_
                                                           ___splice239298239299_
                                                           _target233746233772_
                                                           _tl233748233774_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233644233759_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233644233759_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233651233975_))
                                              (let ((___splice239298239299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233651233975_
                                                        '0))))
                                                (let ((_tl233748233774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '1)))
                                                      (_target233746233772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233748233774_))
                                                      (___match239547239548_
                                                       _e233653233970_
                                                       _hd233652233973_
                                                       _tl233651233975_
                                                       ___splice239298239299_
                                                       _target233746233772_
                                                       _tl233748233774_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233644233759_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233651233975_))
                                          (let ((___splice239298239299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233651233975_
                                                    '0))))
                                            (let ((_tl233748233774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239298239299_
                                                      '1)))
                                                  (_target233746233772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239298239299_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233748233774_))
                                                  (___match239547239548_
                                                   _e233653233970_
                                                   _hd233652233973_
                                                   _tl233651233975_
                                                   ___splice239298239299_
                                                   _target233746233772_
                                                   _tl233748233774_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233644233759_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233644233759_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233651233975_))
                                  (let ((___splice239298239299_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233651233975_
                                            '0))))
                                    (let ((_tl233748233774_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239298239299_
                                              '1)))
                                          (_target233746233772_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239298239299_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233748233774_))
                                          (___match239547239548_
                                           _e233653233970_
                                           _hd233652233973_
                                           _tl233651233975_
                                           ___splice239298239299_
                                           _target233746233772_
                                           _tl233748233774_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233644233759_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233644233759_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233651233975_))
                          (let ((___splice239298239299_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233651233975_
                                    '0))))
                            (let ((_tl233748233774_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239298239299_ '1)))
                                  (_target233746233772_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239298239299_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233748233774_))
                                  (___match239547239548_
                                   _e233653233970_
                                   _hd233652233973_
                                   _tl233651233975_
                                   ___splice239298239299_
                                   _target233746233772_
                                   _tl233748233774_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233644233759_)))))
                          (let () (declare (not safe)) (_g233644233759_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233651233975_))
                      (let ((___splice239298239299_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233651233975_ '0))))
                        (let ((_tl233748233774_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '1)))
                              (_target233746233772_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239298239299_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233748233774_))
                              (___match239547239548_
                               _e233653233970_
                               _hd233652233973_
                               _tl233651233975_
                               ___splice239298239299_
                               _target233746233772_
                               _tl233748233774_)
                              (let ()
                                (declare (not safe))
                                (_g233644233759_)))))
                      (let () (declare (not safe)) (_g233644233759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233651233975_))
                                                      (let ((___splice239298239299_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233651233975_ '0))))
                (let ((_tl233748233774_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239298239299_ '1)))
                      (_target233746233772_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239298239299_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233748233774_))
                      (___match239547239548_
                       _e233653233970_
                       _hd233652233973_
                       _tl233651233975_
                       ___splice239298239299_
                       _target233746233772_
                       _tl233748233774_)
                      (let () (declare (not safe)) (_g233644233759_)))))
              (let () (declare (not safe)) (_g233644233759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233651233975_))
                                                  (let ((___splice239298239299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233651233975_
                                                            '0))))
                                                    (let ((_tl233748233774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '1)))
                                                          (_target233746233772_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239298239299_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233748233774_))
                                                          (___match239547239548_
                                                           _e233653233970_
                                                           _hd233652233973_
                                                           _tl233651233975_
                                                           ___splice239298239299_
                                                           _target233746233772_
                                                           _tl233748233774_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233644233759_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233644233759_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233651233975_))
                                              (let ((___splice239298239299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233651233975_
                                                        '0))))
                                                (let ((_tl233748233774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '1)))
                                                      (_target233746233772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239298239299_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233748233774_))
                                                      (___match239547239548_
                                                       _e233653233970_
                                                       _hd233652233973_
                                                       _tl233651233975_
                                                       ___splice239298239299_
                                                       _target233746233772_
                                                       _tl233748233774_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233644233759_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233651233975_))
                                      (let ((___splice239298239299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233651233975_
                                                '0))))
                                        (let ((_tl233748233774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '1)))
                                              (_target233746233772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239298239299_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233748233774_))
                                              (___match239547239548_
                                               _e233653233970_
                                               _hd233652233973_
                                               _tl233651233975_
                                               ___splice239298239299_
                                               _target233746233772_
                                               _tl233748233774_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233644233759_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233644233759_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233651233975_))
                              (let ((___splice239298239299_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233651233975_
                                        '0))))
                                (let ((_tl233748233774_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239298239299_
                                          '1)))
                                      (_target233746233772_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239298239299_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233748233774_))
                                      (___match239547239548_
                                       _e233653233970_
                                       _hd233652233973_
                                       _tl233651233975_
                                       ___splice239298239299_
                                       _target233746233772_
                                       _tl233748233774_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233644233759_)))))
                              (let ()
                                (declare (not safe))
                                (_g233644233759_))))))
                  (let () (declare (not safe)) (_g233644233759_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx233580_)
        (let* ((___stx239550239551_ _stx233580_)
               (_g233583233596_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239550239551_)))))
          (let ((___kont239552239553_
                 (lambda (_L233624_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L233624_))))
                (___kont239554239555_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239550239551_))
                (let ((_e233588233608_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239550239551_))))
                  (let ((_tl233586233613_
                         (let () (declare (not safe)) (##cdr _e233588233608_)))
                        (_hd233587233611_
                         (let ()
                           (declare (not safe))
                           (##car _e233588233608_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233586233613_))
                        (let ((_e233591233616_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233586233613_))))
                          (let ((_tl233589233621_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233591233616_)))
                                (_hd233590233619_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233591233616_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233589233621_))
                                (___kont239552239553_ _hd233590233619_)
                                (___kont239554239555_))))
                        (___kont239554239555_))))
                (___kont239554239555_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx233460_)
        (let* ((_g233462233479_
                (lambda (_g233463233476_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233463233476_))))
               (_g233461233577_
                (lambda (_g233463233482_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233463233482_))
                      (let ((_e233468233484_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233463233482_))))
                        (let ((_hd233467233487_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233468233484_)))
                              (_tl233466233489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233468233484_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233466233489_))
                              (let ((_e233471233492_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233466233489_))))
                                (let ((_hd233470233495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233471233492_)))
                                      (_tl233469233497_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233471233492_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233469233497_))
                                      (let ((_e233474233500_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233469233497_))))
                                        (let ((_hd233473233503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233474233500_)))
                                              (_tl233472233505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233474233500_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233472233505_))
                                              ((lambda (_L233508_ _L233509_)
                                                 (let* ((___stx239572239573_
                                                         _L233509_)
                                                        (_g233525233536_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx239572239573_)))))
                                                   (let ((___kont239574239575_
                                                          (lambda (_L233556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L233557_)
                    (let ((_$e233569_
                           (let ((__tmp241297
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L233557_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp241297
                              '#f))))
                      (if _$e233569_
                          ((lambda (_type-e233572_)
                             (_type-e233572_ _stx233460_ _L233509_))
                           _$e233569_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L233508_))))))
                 (___kont239576239577_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L233508_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match239583239584_
                                                            (lambda (_e233531233548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd233530233551_
                             _tl233529233553_)
                      (let ((_L233556_ _tl233529233553_)
                            (_L233557_ _hd233530233551_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L233557_))
                            (___kont239574239575_ _L233556_ _L233557_)
                            (___kont239576239577_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx239572239573_))
                   (let ((_e233531233548_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx239572239573_))))
                     (let ((_tl233529233553_
                            (let ()
                              (declare (not safe))
                              (##cdr _e233531233548_)))
                           (_hd233530233551_
                            (let ()
                              (declare (not safe))
                              (##car _e233531233548_))))
                       (___match239583239584_
                        _e233531233548_
                        _hd233530233551_
                        _tl233529233553_)))
                   (___kont239576239577_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd233473233503_
                                               _hd233470233495_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233462233479_
                                                 _g233463233482_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233462233479_ _g233463233482_)))))
                              (let ()
                                (declare (not safe))
                                (_g233462233479_ _g233463233482_)))))
                      (let ()
                        (declare (not safe))
                        (_g233462233479_ _g233463233482_))))))
          (declare (not safe))
          (_g233461233577_ _stx233460_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx233321_ _ann233322_)
        (let* ((_g233324233357_
                (lambda (_g233325233354_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233325233354_))))
               (_g233323233457_
                (lambda (_g233325233360_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233325233360_))
                      (let ((_e233334233362_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233325233360_))))
                        (let ((_hd233333233365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233334233362_)))
                              (_tl233332233367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233334233362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233332233367_))
                              (let ((_e233337233370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233332233367_))))
                                (let ((_hd233336233373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233337233370_)))
                                      (_tl233335233375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233337233370_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233335233375_))
                                      (let ((_e233340233378_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233335233375_))))
                                        (let ((_hd233339233381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233340233378_)))
                                              (_tl233338233383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233340233378_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233338233383_))
                                              (let ((_e233343233386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233338233383_))))
                                                (let ((_hd233342233389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233343233386_)))
                                                      (_tl233341233391_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233343233386_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233341233391_))
                                                      (let ((_e233346233394_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233341233391_))))
                (let ((_hd233345233397_
                       (let () (declare (not safe)) (##car _e233346233394_)))
                      (_tl233344233399_
                       (let () (declare (not safe)) (##cdr _e233346233394_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl233344233399_))
                      (let ((_e233349233402_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233344233399_))))
                        (let ((_hd233348233405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233349233402_)))
                              (_tl233347233407_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233349233402_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233347233407_))
                              (let ((_e233352233410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233347233407_))))
                                (let ((_hd233351233413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233352233410_)))
                                      (_tl233350233415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233352233410_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233350233415_))
                                      ((lambda (_L233418_
                                                _L233419_
                                                _L233420_
                                                _L233421_
                                                _L233422_
                                                _L233423_)
                                         (let ((_type-id233450_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233423_)))
                                               (_super233451_
                                                (map gxc#identifier-symbol
                                                     _L233422_))
                                               (_slots233452_
                                                (map gx#stx-e _L233421_))
                                               (_ctor-method233453_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233420_)))
                                               (_struct?233454_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233419_)))
                                               (_final?233455_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233418_))))
                                           (let ((__obj241255
                                                  (let ()
                                                    (declare (not safe))
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
                                                     '#f))))
                                             (gxc#!class:::init!
                                              __obj241255
                                              _type-id233450_
                                              _super233451_
                                              _slots233452_
                                              _ctor-method233453_
                                              _struct?233454_
                                              _final?233455_)
                                             __obj241255)))
                                       _hd233351233413_
                                       _hd233348233405_
                                       _hd233345233397_
                                       _hd233342233389_
                                       _hd233339233381_
                                       _hd233336233373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233324233357_ _g233325233360_)))))
                              (let ()
                                (declare (not safe))
                                (_g233324233357_ _g233325233360_)))))
                      (let ()
                        (declare (not safe))
                        (_g233324233357_ _g233325233360_)))))
              (let ()
                (declare (not safe))
                (_g233324233357_ _g233325233360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233324233357_
                                                 _g233325233360_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233324233357_ _g233325233360_)))))
                              (let ()
                                (declare (not safe))
                                (_g233324233357_ _g233325233360_)))))
                      (let ()
                        (declare (not safe))
                        (_g233324233357_ _g233325233360_))))))
          (declare (not safe))
          (_g233323233457_ _ann233322_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx233269_ _ann233270_)
        (let* ((_g233272233285_
                (lambda (_g233273233282_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233273233282_))))
               (_g233271233318_
                (lambda (_g233273233288_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233273233288_))
                      (let ((_e233277233290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233273233288_))))
                        (let ((_hd233276233293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233277233290_)))
                              (_tl233275233295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233277233290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233275233295_))
                              (let ((_e233280233298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233275233295_))))
                                (let ((_hd233279233301_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233280233298_)))
                                      (_tl233278233303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233280233298_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233278233303_))
                                      ((lambda (_L233306_)
                                         (let ((__tmp241298
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233306_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp241298)))
                                       _hd233279233301_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233272233285_ _g233273233288_)))))
                              (let ()
                                (declare (not safe))
                                (_g233272233285_ _g233273233288_)))))
                      (let ()
                        (declare (not safe))
                        (_g233272233285_ _g233273233288_))))))
          (declare (not safe))
          (_g233271233318_ _ann233270_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx233217_ _ann233218_)
        (let* ((_g233220233233_
                (lambda (_g233221233230_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233221233230_))))
               (_g233219233266_
                (lambda (_g233221233236_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233221233236_))
                      (let ((_e233225233238_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233221233236_))))
                        (let ((_hd233224233241_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233225233238_)))
                              (_tl233223233243_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233225233238_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233223233243_))
                              (let ((_e233228233246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233223233243_))))
                                (let ((_hd233227233249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233228233246_)))
                                      (_tl233226233251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233228233246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233226233251_))
                                      ((lambda (_L233254_)
                                         (let ((__tmp241299
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233254_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp241299)))
                                       _hd233227233249_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233220233233_ _g233221233236_)))))
                              (let ()
                                (declare (not safe))
                                (_g233220233233_ _g233221233236_)))))
                      (let ()
                        (declare (not safe))
                        (_g233220233233_ _g233221233236_))))))
          (declare (not safe))
          (_g233219233266_ _ann233218_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx233133_ _ann233134_)
        (let* ((_g233136233157_
                (lambda (_g233137233154_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233137233154_))))
               (_g233135233214_
                (lambda (_g233137233160_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233137233160_))
                      (let ((_e233143233162_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233137233160_))))
                        (let ((_hd233142233165_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233143233162_)))
                              (_tl233141233167_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233143233162_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233141233167_))
                              (let ((_e233146233170_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233141233167_))))
                                (let ((_hd233145233173_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233146233170_)))
                                      (_tl233144233175_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233146233170_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233144233175_))
                                      (let ((_e233149233178_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233144233175_))))
                                        (let ((_hd233148233181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233149233178_)))
                                              (_tl233147233183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233149233178_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233147233183_))
                                              (let ((_e233152233186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233147233183_))))
                                                (let ((_hd233151233189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233152233186_)))
                                                      (_tl233150233191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233152233186_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233150233191_))
                                                      ((lambda (_L233194_
                                                                _L233195_
                                                                _L233196_)
                                                         (let ((__tmp241302
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L233196_)))
                       (__tmp241301
                        (let () (declare (not safe)) (gx#stx-e _L233195_)))
                       (__tmp241300
                        (let () (declare (not safe)) (gx#stx-e _L233194_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp241302
                    __tmp241301
                    __tmp241300)))
               _hd233151233189_
               _hd233148233181_
               _hd233145233173_)
              (let ()
                (declare (not safe))
                (_g233136233157_ _g233137233160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233136233157_
                                                 _g233137233160_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233136233157_ _g233137233160_)))))
                              (let ()
                                (declare (not safe))
                                (_g233136233157_ _g233137233160_)))))
                      (let ()
                        (declare (not safe))
                        (_g233136233157_ _g233137233160_))))))
          (declare (not safe))
          (_g233135233214_ _ann233134_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx233049_ _ann233050_)
        (let* ((_g233052233073_
                (lambda (_g233053233070_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233053233070_))))
               (_g233051233130_
                (lambda (_g233053233076_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233053233076_))
                      (let ((_e233059233078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233053233076_))))
                        (let ((_hd233058233081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233059233078_)))
                              (_tl233057233083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233059233078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233057233083_))
                              (let ((_e233062233086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233057233083_))))
                                (let ((_hd233061233089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233062233086_)))
                                      (_tl233060233091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233062233086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233060233091_))
                                      (let ((_e233065233094_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233060233091_))))
                                        (let ((_hd233064233097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233065233094_)))
                                              (_tl233063233099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233065233094_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233063233099_))
                                              (let ((_e233068233102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233063233099_))))
                                                (let ((_hd233067233105_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233068233102_)))
                                                      (_tl233066233107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233068233102_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233066233107_))
                                                      ((lambda (_L233110_
                                                                _L233111_
                                                                _L233112_)
                                                         (let ((__tmp241305
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L233112_)))
                       (__tmp241304
                        (let () (declare (not safe)) (gx#stx-e _L233111_)))
                       (__tmp241303
                        (let () (declare (not safe)) (gx#stx-e _L233110_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp241305
                    __tmp241304
                    __tmp241303)))
               _hd233067233105_
               _hd233064233097_
               _hd233061233089_)
              (let ()
                (declare (not safe))
                (_g233052233073_ _g233053233076_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233052233073_
                                                 _g233053233076_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233052233073_ _g233053233076_)))))
                              (let ()
                                (declare (not safe))
                                (_g233052233073_ _g233053233076_)))))
                      (let ()
                        (declare (not safe))
                        (_g233052233073_ _g233053233076_))))))
          (declare (not safe))
          (_g233051233130_ _ann233050_))))
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
      (lambda (_stx232169_)
        (let* ((___stx239586239587_ _stx232169_)
               (_g232175232371_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239586239587_)))))
          (let ((___kont239588239589_
                 (lambda (_L233037_)
                   (let ((__obj241256
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241256
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L233037_))
                      '#f)
                     __obj241256)))
                (___kont239590239591_
                 (lambda (_L232964_
                          _L232965_
                          _L232966_
                          _L232967_
                          _L232968_
                          _L232969_)
                   (let* ((_tab233019_
                           (let () (declare (not safe)) (gx#stx-e _L232966_)))
                          (_keys233021_
                           (if _tab233019_
                               (let ((__tmp241306 (vector->list _tab233019_)))
                                 (declare (not safe))
                                 (filter values __tmp241306))
                               '#f)))
                     (let ((__tmp241307
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L232965_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys233021_
                        __tmp241307)))))
                (___kont239592239593_
                 (lambda (_L232697_
                          _L232698_
                          _L232699_
                          _L232700_
                          _L232701_
                          _L232702_
                          _L232703_
                          _L232704_
                          _L232705_
                          _L232706_)
                   (let ((__tmp241309
                          (map gx#stx-e
                               (let ((__tmp241310
                                      (lambda (_g232799232802_ _g232800232804_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g232799232802_
                                                _g232800232804_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp241310 '() _L232699_))))
                         (__tmp241308
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L232703_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp241309
                      __tmp241308))))
                (___kont239596239597_
                 (lambda (_L232407_)
                   (let ((__obj241257
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241257
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232407_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L232407_)))
                     __obj241257)))
                (___kont239598239599_
                 (lambda (_L232384_)
                   (let ((__obj241258
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241258
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232384_))
                      '#f)
                     __obj241258))))
            (let* ((___match239905239906_
                    (lambda (_e232362232399_ _hd232361232402_ _tl232360232404_)
                      (let ((_L232407_ _tl232360232404_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L232407_))
                            (___kont239596239597_ _L232407_)
                            (___kont239598239599_ _tl232360232404_)))))
                   (___match239899239900_
                    (lambda (_e232256232421_
                             _hd232255232424_
                             _tl232254232426_
                             _e232259232429_
                             _hd232258232432_
                             _tl232257232434_
                             _e232262232437_
                             _hd232261232440_
                             _tl232260232442_
                             _e232265232445_
                             _hd232264232448_
                             _tl232263232450_
                             _e232268232453_
                             _hd232267232456_
                             _tl232266232458_
                             _e232271232461_
                             _hd232270232464_
                             _tl232269232466_
                             _e232274232469_
                             _hd232273232472_
                             _tl232272232474_
                             _e232277232477_
                             _hd232276232480_
                             _tl232275232482_
                             _e232280232485_
                             _hd232279232488_
                             _tl232278232490_
                             _e232283232493_
                             _hd232282232496_
                             _tl232281232498_
                             _e232286232501_
                             _hd232285232504_
                             _tl232284232506_
                             _e232289232509_
                             _hd232288232512_
                             _tl232287232514_
                             _e232292232517_
                             _hd232291232520_
                             _tl232290232522_
                             _e232295232525_
                             _hd232294232528_
                             _tl232293232530_
                             ___splice239594239595_
                             _target232296232533_
                             _tl232298232535_
                             _e232313232538_
                             _hd232312232541_
                             _tl232311232543_
                             _e232316232546_
                             _hd232315232549_
                             _tl232314232551_
                             _e232319232554_
                             _hd232318232557_
                             _tl232317232559_)
                      (letrec ((_loop232299232562_
                                (lambda (_hd232297232565_
                                         _-absent-value232303232567_
                                         _key232304232569_
                                         _-xkwvar232305232571_
                                         _-hash-ref232306232573_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232297232565_))
                                      (let ((_e232300232576_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232297232565_))))
                                        (let ((_lp-tl232302232581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232300232576_)))
                                              (_lp-hd232301232579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232300232576_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd232301232579_))
                                              (let ((_e232322232584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd232301232579_))))
                                                (let ((_tl232320232589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232322232584_)))
                                                      (_hd232321232587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232322232584_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd232321232587_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd232321232587_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl232320232589_))
                      (let ((_e232325232592_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232320232589_))))
                        (let ((_tl232323232597_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232325232592_)))
                              (_hd232324232595_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232325232592_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd232324232595_))
                              (let ((_e232328232600_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd232324232595_))))
                                (let ((_tl232326232605_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232328232600_)))
                                      (_hd232327232603_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232328232600_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd232327232603_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd232327232603_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232326232605_))
                                              (let ((_e232331232608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232326232605_))))
                                                (let ((_tl232329232613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232331232608_)))
                                                      (_hd232330232611_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232331232608_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232329232613_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232323232597_))
                                                          (let ((_e232334232616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232323232597_))))
                    (let ((_tl232332232621_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232334232616_)))
                          (_hd232333232619_
                           (let ()
                             (declare (not safe))
                             (##car _e232334232616_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232333232619_))
                          (let ((_e232337232624_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232333232619_))))
                            (let ((_tl232335232629_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232337232624_)))
                                  (_hd232336232627_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232337232624_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232336232627_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232336232627_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232335232629_))
                                          (let ((_e232340232632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232335232629_))))
                                            (let ((_tl232338232637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232340232632_)))
                                                  (_hd232339232635_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232340232632_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232338232637_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232332232621_))
                                                      (let ((_e232343232640_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232332232621_))))
                (let ((_tl232341232645_
                       (let () (declare (not safe)) (##cdr _e232343232640_)))
                      (_hd232342232643_
                       (let () (declare (not safe)) (##car _e232343232640_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232342232643_))
                      (let ((_e232346232648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232342232643_))))
                        (let ((_tl232344232653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232346232648_)))
                              (_hd232345232651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232346232648_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232345232651_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd232345232651_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232344232653_))
                                      (let ((_e232349232656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232344232653_))))
                                        (let ((_tl232347232661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232349232656_)))
                                              (_hd232348232659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232349232656_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232347232661_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232341232645_))
                                                  (let ((_e232352232664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232341232645_))))
                                                    (let ((_tl232350232669_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232352232664_)))
                                                          (_hd232351232667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232352232664_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232351232667_))
                                                          (let ((_e232355232672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232351232667_))))
                    (let ((_tl232353232677_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232355232672_)))
                          (_hd232354232675_
                           (let ()
                             (declare (not safe))
                             (##car _e232355232672_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232354232675_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232354232675_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232353232677_))
                                  (let ((_e232358232680_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232353232677_))))
                                    (let ((_tl232356232685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232358232680_)))
                                          (_hd232357232683_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232358232680_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232356232685_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232350232669_))
                                              (let ((__tmp241325
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232357232683_
                                                             _-absent-value232303232567_)))
                                                    (__tmp241324
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232348232659_
                                                             _key232304232569_)))
                                                    (__tmp241323
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232339232635_
                                                             _-xkwvar232305232571_)))
                                                    (__tmp241322
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232330232611_
                                                             _-hash-ref232306232573_))))
                                                (declare (not safe))
                                                (_loop232299232562_
                                                 _lp-tl232302232581_
                                                 __tmp241325
                                                 __tmp241324
                                                 __tmp241323
                                                 __tmp241322))
                                              (___match239905239906_
                                               _e232256232421_
                                               _hd232255232424_
                                               _tl232254232426_))
                                          (___match239905239906_
                                           _e232256232421_
                                           _hd232255232424_
                                           _tl232254232426_))))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))
                              (___match239905239906_
                               _e232256232421_
                               _hd232255232424_
                               _tl232254232426_))
                          (___match239905239906_
                           _e232256232421_
                           _hd232255232424_
                           _tl232254232426_))))
                  (___match239905239906_
                   _e232256232421_
                   _hd232255232424_
                   _tl232254232426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_))
                                              (___match239905239906_
                                               _e232256232421_
                                               _hd232255232424_
                                               _tl232254232426_))))
                                      (___match239905239906_
                                       _e232256232421_
                                       _hd232255232424_
                                       _tl232254232426_))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))
                              (___match239905239906_
                               _e232256232421_
                               _hd232255232424_
                               _tl232254232426_))))
                      (___match239905239906_
                       _e232256232421_
                       _hd232255232424_
                       _tl232254232426_))))
              (___match239905239906_
               _e232256232421_
               _hd232255232424_
               _tl232254232426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_))))
                                          (___match239905239906_
                                           _e232256232421_
                                           _hd232255232424_
                                           _tl232254232426_))
                                      (___match239905239906_
                                       _e232256232421_
                                       _hd232255232424_
                                       _tl232254232426_))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))))
                          (___match239905239906_
                           _e232256232421_
                           _hd232255232424_
                           _tl232254232426_))))
                  (___match239905239906_
                   _e232256232421_
                   _hd232255232424_
                   _tl232254232426_))
              (___match239905239906_
               _e232256232421_
               _hd232255232424_
               _tl232254232426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239905239906_
                                               _e232256232421_
                                               _hd232255232424_
                                               _tl232254232426_))
                                          (___match239905239906_
                                           _e232256232421_
                                           _hd232255232424_
                                           _tl232254232426_))
                                      (___match239905239906_
                                       _e232256232421_
                                       _hd232255232424_
                                       _tl232254232426_))))
                              (___match239905239906_
                               _e232256232421_
                               _hd232255232424_
                               _tl232254232426_))))
                      (___match239905239906_
                       _e232256232421_
                       _hd232255232424_
                       _tl232254232426_))
                  (___match239905239906_
                   _e232256232421_
                   _hd232255232424_
                   _tl232254232426_))
              (___match239905239906_
               _e232256232421_
               _hd232255232424_
               _tl232254232426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239905239906_
                                               _e232256232421_
                                               _hd232255232424_
                                               _tl232254232426_))))
                                      (let ((_-hash-ref232310232694_
                                             (reverse _-hash-ref232306232573_))
                                            (_-xkwvar232309232692_
                                             (reverse _-xkwvar232305232571_))
                                            (_key232308232690_
                                             (reverse _key232304232569_))
                                            (_-absent-value232307232688_
                                             (reverse _-absent-value232303232567_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232263232450_))
                                            (let ((_L232697_ _hd232318232557_)
                                                  (_L232698_
                                                   _-absent-value232307232688_)
                                                  (_L232699_ _key232308232690_)
                                                  (_L232700_
                                                   _-xkwvar232309232692_)
                                                  (_L232701_
                                                   _-hash-ref232310232694_)
                                                  (_L232702_ _hd232294232528_)
                                                  (_L232703_ _hd232285232504_)
                                                  (_L232704_ _hd232276232480_)
                                                  (_L232705_ _tl232260232442_)
                                                  (_L232706_ _hd232261232440_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232706_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232705_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L232704_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L232706_
                                                          _L232702_))
                                                       (let ((__tmp241320
                                                              (let ((__tmp241321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g232759232762_ _g232760232764_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232759232762_ _g232760232764_)))))
                        (declare (not safe))
                        (foldr1 __tmp241321 '() _L232699_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp241320))
               (let ((__tmp241319
                      (lambda (_g232766232768_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232766232768_
                           'hash-ref))))
                     (__tmp241317
                      (let ((__tmp241318
                             (lambda (_g232770232773_ _g232771232775_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232770232773_ _g232771232775_)))))
                        (declare (not safe))
                        (foldr1 __tmp241318 '() _L232701_))))
                 (declare (not safe))
                 (andmap1 __tmp241319 __tmp241317))
               (let ((__tmp241316
                      (lambda (_g232777232779_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232777232779_
                           'absent-value))))
                     (__tmp241314
                      (let ((__tmp241315
                             (lambda (_g232781232784_ _g232782232786_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232781232784_ _g232782232786_)))))
                        (declare (not safe))
                        (foldr1 __tmp241315 '() _L232698_))))
                 (declare (not safe))
                 (andmap1 __tmp241316 __tmp241314))
               (let ((__tmp241313
                      (lambda (_g232788232790_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g232788232790_ _L232706_))))
                     (__tmp241311
                      (let ((__tmp241312
                             (lambda (_g232792232795_ _g232793232797_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232792232795_ _g232793232797_)))))
                        (declare (not safe))
                        (foldr1 __tmp241312 '() _L232700_))))
                 (declare (not safe))
                 (andmap1 __tmp241313 __tmp241311)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239592239593_
                                                   _L232697_
                                                   _L232698_
                                                   _L232699_
                                                   _L232700_
                                                   _L232701_
                                                   _L232702_
                                                   _L232703_
                                                   _L232704_
                                                   _L232705_
                                                   _L232706_)
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_)))
                                            (___match239905239906_
                                             _e232256232421_
                                             _hd232255232424_
                                             _tl232254232426_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232299232562_
                           _target232296232533_
                           '()
                           '()
                           '()
                           '())))))
                   (___match239771239772_
                    (lambda (_e232256232421_
                             _hd232255232424_
                             _tl232254232426_
                             _e232259232429_
                             _hd232258232432_
                             _tl232257232434_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232258232432_))
                          (let ((_e232262232437_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232258232432_))))
                            (let ((_tl232260232442_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232262232437_)))
                                  (_hd232261232440_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232262232437_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232257232434_))
                                  (let ((_e232265232445_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232257232434_))))
                                    (let ((_tl232263232450_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232265232445_)))
                                          (_hd232264232448_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232265232445_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232264232448_))
                                          (let ((_e232268232453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232264232448_))))
                                            (let ((_tl232266232458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232268232453_)))
                                                  (_hd232267232456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232268232453_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232267232456_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232267232456_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232266232458_))
                                                          (let ((_e232271232461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232266232458_))))
                    (let ((_tl232269232466_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232271232461_)))
                          (_hd232270232464_
                           (let ()
                             (declare (not safe))
                             (##car _e232271232461_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232270232464_))
                          (let ((_e232274232469_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232270232464_))))
                            (let ((_tl232272232474_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232274232469_)))
                                  (_hd232273232472_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232274232469_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232273232472_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232273232472_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232272232474_))
                                          (let ((_e232277232477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232272232474_))))
                                            (let ((_tl232275232482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232277232477_)))
                                                  (_hd232276232480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232277232477_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232275232482_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232269232466_))
                                                      (let ((_e232280232485_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232269232466_))))
                (let ((_tl232278232490_
                       (let () (declare (not safe)) (##cdr _e232280232485_)))
                      (_hd232279232488_
                       (let () (declare (not safe)) (##car _e232280232485_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232279232488_))
                      (let ((_e232283232493_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232279232488_))))
                        (let ((_tl232281232498_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232283232493_)))
                              (_hd232282232496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232283232493_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232282232496_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232282232496_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232281232498_))
                                      (let ((_e232286232501_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232281232498_))))
                                        (let ((_tl232284232506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232286232501_)))
                                              (_hd232285232504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232286232501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232284232506_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232278232490_))
                                                  (let ((_e232289232509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232278232490_))))
                                                    (let ((_tl232287232514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232289232509_)))
                                                          (_hd232288232512_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232289232509_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232288232512_))
                                                          (let ((_e232292232517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232288232512_))))
                    (let ((_tl232290232522_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232292232517_)))
                          (_hd232291232520_
                           (let ()
                             (declare (not safe))
                             (##car _e232292232517_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232291232520_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232291232520_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232290232522_))
                                  (let ((_e232295232525_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232290232522_))))
                                    (let ((_tl232293232530_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232295232525_)))
                                          (_hd232294232528_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232295232525_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232293232530_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl232287232514_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl232287232514_))
                                                        '1)
                                                  (let ((___splice239594239595_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl232287232514_
                                                            '1))))
                                                    (let ((_tl232298232535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239594239595_
                                                              '1)))
                                                          (_target232296232533_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239594239595_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232298232535_))
                                                          (let ((_e232313232538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232298232535_))))
                    (let ((_tl232311232543_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232313232538_)))
                          (_hd232312232541_
                           (let ()
                             (declare (not safe))
                             (##car _e232313232538_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232312232541_))
                          (let ((_e232316232546_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232312232541_))))
                            (let ((_tl232314232551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232316232546_)))
                                  (_hd232315232549_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232316232546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232315232549_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232315232549_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232314232551_))
                                          (let ((_e232319232554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232314232551_))))
                                            (let ((_tl232317232559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232319232554_)))
                                                  (_hd232318232557_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232319232554_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232317232559_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232311232543_))
                                                      (___match239899239900_
                                                       _e232256232421_
                                                       _hd232255232424_
                                                       _tl232254232426_
                                                       _e232259232429_
                                                       _hd232258232432_
                                                       _tl232257232434_
                                                       _e232262232437_
                                                       _hd232261232440_
                                                       _tl232260232442_
                                                       _e232265232445_
                                                       _hd232264232448_
                                                       _tl232263232450_
                                                       _e232268232453_
                                                       _hd232267232456_
                                                       _tl232266232458_
                                                       _e232271232461_
                                                       _hd232270232464_
                                                       _tl232269232466_
                                                       _e232274232469_
                                                       _hd232273232472_
                                                       _tl232272232474_
                                                       _e232277232477_
                                                       _hd232276232480_
                                                       _tl232275232482_
                                                       _e232280232485_
                                                       _hd232279232488_
                                                       _tl232278232490_
                                                       _e232283232493_
                                                       _hd232282232496_
                                                       _tl232281232498_
                                                       _e232286232501_
                                                       _hd232285232504_
                                                       _tl232284232506_
                                                       _e232289232509_
                                                       _hd232288232512_
                                                       _tl232287232514_
                                                       _e232292232517_
                                                       _hd232291232520_
                                                       _tl232290232522_
                                                       _e232295232525_
                                                       _hd232294232528_
                                                       _tl232293232530_
                                                       ___splice239594239595_
                                                       _target232296232533_
                                                       _tl232298232535_
                                                       _e232313232538_
                                                       _hd232312232541_
                                                       _tl232311232543_
                                                       _e232316232546_
                                                       _hd232315232549_
                                                       _tl232314232551_
                                                       _e232319232554_
                                                       _hd232318232557_
                                                       _tl232317232559_)
                                                      (___match239905239906_
                                                       _e232256232421_
                                                       _hd232255232424_
                                                       _tl232254232426_))
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_))))
                                          (___match239905239906_
                                           _e232256232421_
                                           _hd232255232424_
                                           _tl232254232426_))
                                      (___match239905239906_
                                       _e232256232421_
                                       _hd232255232424_
                                       _tl232254232426_))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))))
                          (___match239905239906_
                           _e232256232421_
                           _hd232255232424_
                           _tl232254232426_))))
                  (___match239905239906_
                   _e232256232421_
                   _hd232255232424_
                   _tl232254232426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_))
                                              (___match239905239906_
                                               _e232256232421_
                                               _hd232255232424_
                                               _tl232254232426_))
                                          (___match239905239906_
                                           _e232256232421_
                                           _hd232255232424_
                                           _tl232254232426_))))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))
                              (___match239905239906_
                               _e232256232421_
                               _hd232255232424_
                               _tl232254232426_))
                          (___match239905239906_
                           _e232256232421_
                           _hd232255232424_
                           _tl232254232426_))))
                  (___match239905239906_
                   _e232256232421_
                   _hd232255232424_
                   _tl232254232426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_))
                                              (___match239905239906_
                                               _e232256232421_
                                               _hd232255232424_
                                               _tl232254232426_))))
                                      (___match239905239906_
                                       _e232256232421_
                                       _hd232255232424_
                                       _tl232254232426_))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))
                              (___match239905239906_
                               _e232256232421_
                               _hd232255232424_
                               _tl232254232426_))))
                      (___match239905239906_
                       _e232256232421_
                       _hd232255232424_
                       _tl232254232426_))))
              (___match239905239906_
               _e232256232421_
               _hd232255232424_
               _tl232254232426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_))))
                                          (___match239905239906_
                                           _e232256232421_
                                           _hd232255232424_
                                           _tl232254232426_))
                                      (___match239905239906_
                                       _e232256232421_
                                       _hd232255232424_
                                       _tl232254232426_))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))))
                          (___match239905239906_
                           _e232256232421_
                           _hd232255232424_
                           _tl232254232426_))))
                  (___match239905239906_
                   _e232256232421_
                   _hd232255232424_
                   _tl232254232426_))
              (___match239905239906_
               _e232256232421_
               _hd232255232424_
               _tl232254232426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239905239906_
                                                   _e232256232421_
                                                   _hd232255232424_
                                                   _tl232254232426_))))
                                          (___match239905239906_
                                           _e232256232421_
                                           _hd232255232424_
                                           _tl232254232426_))))
                                  (___match239905239906_
                                   _e232256232421_
                                   _hd232255232424_
                                   _tl232254232426_))))
                          (___match239905239906_
                           _e232256232421_
                           _hd232255232424_
                           _tl232254232426_))))
                   (___match239759239760_
                    (lambda (_e232189232812_
                             _hd232188232815_
                             _tl232187232817_
                             _e232192232820_
                             _hd232191232823_
                             _tl232190232825_
                             _e232195232828_
                             _hd232194232831_
                             _tl232193232833_
                             _e232198232836_
                             _hd232197232839_
                             _tl232196232841_
                             _e232201232844_
                             _hd232200232847_
                             _tl232199232849_
                             _e232204232852_
                             _hd232203232855_
                             _tl232202232857_
                             _e232207232860_
                             _hd232206232863_
                             _tl232205232865_
                             _e232210232868_
                             _hd232209232871_
                             _tl232208232873_
                             _e232213232876_
                             _hd232212232879_
                             _tl232211232881_
                             _e232216232884_
                             _hd232215232887_
                             _tl232214232889_
                             _e232219232892_
                             _hd232218232895_
                             _tl232217232897_
                             _e232222232900_
                             _hd232221232903_
                             _tl232220232905_
                             _e232225232908_
                             _hd232224232911_
                             _tl232223232913_
                             _e232228232916_
                             _hd232227232919_
                             _tl232226232921_
                             _e232231232924_
                             _hd232230232927_
                             _tl232229232929_
                             _e232234232932_
                             _hd232233232935_
                             _tl232232232937_
                             _e232237232940_
                             _hd232236232943_
                             _tl232235232945_
                             _e232240232948_
                             _hd232239232951_
                             _tl232238232953_
                             _e232243232956_
                             _hd232242232959_
                             _tl232241232961_)
                      (let ((_L232964_ _hd232242232959_)
                            (_L232965_ _hd232233232935_)
                            (_L232966_ _hd232224232911_)
                            (_L232967_ _hd232215232887_)
                            (_L232968_ _hd232206232863_)
                            (_L232969_ _hd232191232823_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L232969_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L232968_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L232967_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L232969_ _L232964_)))
                            (___kont239590239591_
                             _L232964_
                             _L232965_
                             _L232966_
                             _L232967_
                             _L232968_
                             _L232969_)
                            (___match239771239772_
                             _e232189232812_
                             _hd232188232815_
                             _tl232187232817_
                             _e232192232820_
                             _hd232191232823_
                             _tl232190232825_)))))
                   (___match239613239614_
                    (lambda (_e232189232812_ _hd232188232815_ _tl232187232817_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232187232817_))
                          (let ((_e232192232820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232187232817_))))
                            (let ((_tl232190232825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232192232820_)))
                                  (_hd232191232823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232192232820_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232190232825_))
                                  (let ((_e232195232828_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232190232825_))))
                                    (let ((_tl232193232833_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232195232828_)))
                                          (_hd232194232831_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232195232828_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232194232831_))
                                          (let ((_e232198232836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232194232831_))))
                                            (let ((_tl232196232841_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232198232836_)))
                                                  (_hd232197232839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232198232836_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232197232839_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232197232839_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232196232841_))
                                                          (let ((_e232201232844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232196232841_))))
                    (let ((_tl232199232849_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232201232844_)))
                          (_hd232200232847_
                           (let ()
                             (declare (not safe))
                             (##car _e232201232844_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232200232847_))
                          (let ((_e232204232852_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232200232847_))))
                            (let ((_tl232202232857_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232204232852_)))
                                  (_hd232203232855_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232204232852_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232203232855_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232203232855_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232202232857_))
                                          (let ((_e232207232860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232202232857_))))
                                            (let ((_tl232205232865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232207232860_)))
                                                  (_hd232206232863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232207232860_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232205232865_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232199232849_))
                                                      (let ((_e232210232868_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232199232849_))))
                (let ((_tl232208232873_
                       (let () (declare (not safe)) (##cdr _e232210232868_)))
                      (_hd232209232871_
                       (let () (declare (not safe)) (##car _e232210232868_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232209232871_))
                      (let ((_e232213232876_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232209232871_))))
                        (let ((_tl232211232881_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232213232876_)))
                              (_hd232212232879_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232213232876_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232212232879_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232212232879_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232211232881_))
                                      (let ((_e232216232884_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232211232881_))))
                                        (let ((_tl232214232889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232216232884_)))
                                              (_hd232215232887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232216232884_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232214232889_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232208232873_))
                                                  (let ((_e232219232892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232208232873_))))
                                                    (let ((_tl232217232897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232219232892_)))
                                                          (_hd232218232895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232219232892_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232218232895_))
                                                          (let ((_e232222232900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232218232895_))))
                    (let ((_tl232220232905_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232222232900_)))
                          (_hd232221232903_
                           (let ()
                             (declare (not safe))
                             (##car _e232222232900_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232221232903_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd232221232903_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232220232905_))
                                  (let ((_e232225232908_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232220232905_))))
                                    (let ((_tl232223232913_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232225232908_)))
                                          (_hd232224232911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232225232908_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232223232913_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232217232897_))
                                              (let ((_e232228232916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232217232897_))))
                                                (let ((_tl232226232921_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232228232916_)))
                                                      (_hd232227232919_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232228232916_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd232227232919_))
                                                      (let ((_e232231232924_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd232227232919_))))
                (let ((_tl232229232929_
                       (let () (declare (not safe)) (##cdr _e232231232924_)))
                      (_hd232230232927_
                       (let () (declare (not safe)) (##car _e232231232924_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd232230232927_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd232230232927_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232229232929_))
                              (let ((_e232234232932_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232229232929_))))
                                (let ((_tl232232232937_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232234232932_)))
                                      (_hd232233232935_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232234232932_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232232232937_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232226232921_))
                                          (let ((_e232237232940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232226232921_))))
                                            (let ((_tl232235232945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232237232940_)))
                                                  (_hd232236232943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232237232940_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd232236232943_))
                                                  (let ((_e232240232948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd232236232943_))))
                                                    (let ((_tl232238232953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232240232948_)))
                                                          (_hd232239232951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232240232948_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd232239232951_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd232239232951_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232238232953_))
                          (let ((_e232243232956_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232238232953_))))
                            (let ((_tl232241232961_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232243232956_)))
                                  (_hd232242232959_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232243232956_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232241232961_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232235232945_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232193232833_))
                                          (___match239759239760_
                                           _e232189232812_
                                           _hd232188232815_
                                           _tl232187232817_
                                           _e232192232820_
                                           _hd232191232823_
                                           _tl232190232825_
                                           _e232195232828_
                                           _hd232194232831_
                                           _tl232193232833_
                                           _e232198232836_
                                           _hd232197232839_
                                           _tl232196232841_
                                           _e232201232844_
                                           _hd232200232847_
                                           _tl232199232849_
                                           _e232204232852_
                                           _hd232203232855_
                                           _tl232202232857_
                                           _e232207232860_
                                           _hd232206232863_
                                           _tl232205232865_
                                           _e232210232868_
                                           _hd232209232871_
                                           _tl232208232873_
                                           _e232213232876_
                                           _hd232212232879_
                                           _tl232211232881_
                                           _e232216232884_
                                           _hd232215232887_
                                           _tl232214232889_
                                           _e232219232892_
                                           _hd232218232895_
                                           _tl232217232897_
                                           _e232222232900_
                                           _hd232221232903_
                                           _tl232220232905_
                                           _e232225232908_
                                           _hd232224232911_
                                           _tl232223232913_
                                           _e232228232916_
                                           _hd232227232919_
                                           _tl232226232921_
                                           _e232231232924_
                                           _hd232230232927_
                                           _tl232229232929_
                                           _e232234232932_
                                           _hd232233232935_
                                           _tl232232232937_
                                           _e232237232940_
                                           _hd232236232943_
                                           _tl232235232945_
                                           _e232240232948_
                                           _hd232239232951_
                                           _tl232238232953_
                                           _e232243232956_
                                           _hd232242232959_
                                           _tl232241232961_)
                                          (___match239771239772_
                                           _e232189232812_
                                           _hd232188232815_
                                           _tl232187232817_
                                           _e232192232820_
                                           _hd232191232823_
                                           _tl232190232825_))
                                      (___match239771239772_
                                       _e232189232812_
                                       _hd232188232815_
                                       _tl232187232817_
                                       _e232192232820_
                                       _hd232191232823_
                                       _tl232190232825_))
                                  (___match239771239772_
                                   _e232189232812_
                                   _hd232188232815_
                                   _tl232187232817_
                                   _e232192232820_
                                   _hd232191232823_
                                   _tl232190232825_))))
                          (___match239771239772_
                           _e232189232812_
                           _hd232188232815_
                           _tl232187232817_
                           _e232192232820_
                           _hd232191232823_
                           _tl232190232825_))
                      (___match239771239772_
                       _e232189232812_
                       _hd232188232815_
                       _tl232187232817_
                       _e232192232820_
                       _hd232191232823_
                       _tl232190232825_))
                  (___match239771239772_
                   _e232189232812_
                   _hd232188232815_
                   _tl232187232817_
                   _e232192232820_
                   _hd232191232823_
                   _tl232190232825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239771239772_
                                                   _e232189232812_
                                                   _hd232188232815_
                                                   _tl232187232817_
                                                   _e232192232820_
                                                   _hd232191232823_
                                                   _tl232190232825_))))
                                          (___match239771239772_
                                           _e232189232812_
                                           _hd232188232815_
                                           _tl232187232817_
                                           _e232192232820_
                                           _hd232191232823_
                                           _tl232190232825_))
                                      (___match239771239772_
                                       _e232189232812_
                                       _hd232188232815_
                                       _tl232187232817_
                                       _e232192232820_
                                       _hd232191232823_
                                       _tl232190232825_))))
                              (___match239771239772_
                               _e232189232812_
                               _hd232188232815_
                               _tl232187232817_
                               _e232192232820_
                               _hd232191232823_
                               _tl232190232825_))
                          (___match239771239772_
                           _e232189232812_
                           _hd232188232815_
                           _tl232187232817_
                           _e232192232820_
                           _hd232191232823_
                           _tl232190232825_))
                      (___match239771239772_
                       _e232189232812_
                       _hd232188232815_
                       _tl232187232817_
                       _e232192232820_
                       _hd232191232823_
                       _tl232190232825_))))
              (___match239771239772_
               _e232189232812_
               _hd232188232815_
               _tl232187232817_
               _e232192232820_
               _hd232191232823_
               _tl232190232825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239771239772_
                                               _e232189232812_
                                               _hd232188232815_
                                               _tl232187232817_
                                               _e232192232820_
                                               _hd232191232823_
                                               _tl232190232825_))
                                          (___match239771239772_
                                           _e232189232812_
                                           _hd232188232815_
                                           _tl232187232817_
                                           _e232192232820_
                                           _hd232191232823_
                                           _tl232190232825_))))
                                  (___match239771239772_
                                   _e232189232812_
                                   _hd232188232815_
                                   _tl232187232817_
                                   _e232192232820_
                                   _hd232191232823_
                                   _tl232190232825_))
                              (___match239771239772_
                               _e232189232812_
                               _hd232188232815_
                               _tl232187232817_
                               _e232192232820_
                               _hd232191232823_
                               _tl232190232825_))
                          (___match239771239772_
                           _e232189232812_
                           _hd232188232815_
                           _tl232187232817_
                           _e232192232820_
                           _hd232191232823_
                           _tl232190232825_))))
                  (___match239771239772_
                   _e232189232812_
                   _hd232188232815_
                   _tl232187232817_
                   _e232192232820_
                   _hd232191232823_
                   _tl232190232825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239771239772_
                                                   _e232189232812_
                                                   _hd232188232815_
                                                   _tl232187232817_
                                                   _e232192232820_
                                                   _hd232191232823_
                                                   _tl232190232825_))
                                              (___match239771239772_
                                               _e232189232812_
                                               _hd232188232815_
                                               _tl232187232817_
                                               _e232192232820_
                                               _hd232191232823_
                                               _tl232190232825_))))
                                      (___match239771239772_
                                       _e232189232812_
                                       _hd232188232815_
                                       _tl232187232817_
                                       _e232192232820_
                                       _hd232191232823_
                                       _tl232190232825_))
                                  (___match239771239772_
                                   _e232189232812_
                                   _hd232188232815_
                                   _tl232187232817_
                                   _e232192232820_
                                   _hd232191232823_
                                   _tl232190232825_))
                              (___match239771239772_
                               _e232189232812_
                               _hd232188232815_
                               _tl232187232817_
                               _e232192232820_
                               _hd232191232823_
                               _tl232190232825_))))
                      (___match239771239772_
                       _e232189232812_
                       _hd232188232815_
                       _tl232187232817_
                       _e232192232820_
                       _hd232191232823_
                       _tl232190232825_))))
              (___match239771239772_
               _e232189232812_
               _hd232188232815_
               _tl232187232817_
               _e232192232820_
               _hd232191232823_
               _tl232190232825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239771239772_
                                                   _e232189232812_
                                                   _hd232188232815_
                                                   _tl232187232817_
                                                   _e232192232820_
                                                   _hd232191232823_
                                                   _tl232190232825_))))
                                          (___match239771239772_
                                           _e232189232812_
                                           _hd232188232815_
                                           _tl232187232817_
                                           _e232192232820_
                                           _hd232191232823_
                                           _tl232190232825_))
                                      (___match239771239772_
                                       _e232189232812_
                                       _hd232188232815_
                                       _tl232187232817_
                                       _e232192232820_
                                       _hd232191232823_
                                       _tl232190232825_))
                                  (___match239771239772_
                                   _e232189232812_
                                   _hd232188232815_
                                   _tl232187232817_
                                   _e232192232820_
                                   _hd232191232823_
                                   _tl232190232825_))))
                          (___match239771239772_
                           _e232189232812_
                           _hd232188232815_
                           _tl232187232817_
                           _e232192232820_
                           _hd232191232823_
                           _tl232190232825_))))
                  (___match239771239772_
                   _e232189232812_
                   _hd232188232815_
                   _tl232187232817_
                   _e232192232820_
                   _hd232191232823_
                   _tl232190232825_))
              (___match239771239772_
               _e232189232812_
               _hd232188232815_
               _tl232187232817_
               _e232192232820_
               _hd232191232823_
               _tl232190232825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239771239772_
                                                   _e232189232812_
                                                   _hd232188232815_
                                                   _tl232187232817_
                                                   _e232192232820_
                                                   _hd232191232823_
                                                   _tl232190232825_))))
                                          (___match239771239772_
                                           _e232189232812_
                                           _hd232188232815_
                                           _tl232187232817_
                                           _e232192232820_
                                           _hd232191232823_
                                           _tl232190232825_))))
                                  (___match239771239772_
                                   _e232189232812_
                                   _hd232188232815_
                                   _tl232187232817_
                                   _e232192232820_
                                   _hd232191232823_
                                   _tl232190232825_))))
                          (___match239905239906_
                           _e232189232812_
                           _hd232188232815_
                           _tl232187232817_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239586239587_))
                  (let ((_e232180233029_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239586239587_))))
                    (let ((_tl232178233034_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232180233029_)))
                          (_hd232179233032_
                           (let ()
                             (declare (not safe))
                             (##car _e232180233029_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L233037_ _tl232178233034_))
                            (___kont239588239589_ _L233037_))
                          (___match239613239614_
                           _e232180233029_
                           _hd232179233032_
                           _tl232178233034_))))
                  (let () (declare (not safe)) (_g232175232371_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx232124_)
        (letrec ((_clause-e232126_
                  (lambda (_form232167_)
                    (let ((__obj241259
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
                       __obj241259
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form232167_))
                       (if (let ((__tmp241326
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp241326))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form232167_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form232167_))
                               '#f)
                           '#f))
                      __obj241259))))
          (let* ((_g232128232138_
                  (lambda (_g232129232135_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g232129232135_))))
                 (_g232127232164_
                  (lambda (_g232129232141_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g232129232141_))
                        (let ((_e232133232143_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g232129232141_))))
                          (let ((_hd232132232146_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232133232143_)))
                                (_tl232131232148_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232133232143_))))
                            ((lambda (_L232151_)
                               (let ((_clauses232162_
                                      (map _clause-e232126_ _L232151_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses232162_)))
                             _tl232131232148_)))
                        (let ()
                          (declare (not safe))
                          (_g232128232138_ _g232129232141_))))))
            (declare (not safe))
            (_g232127232164_ _stx232124_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx232056_)
        (let* ((_g232058232075_
                (lambda (_g232059232072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232059232072_))))
               (_g232057232121_
                (lambda (_g232059232078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232059232078_))
                      (let ((_e232064232080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232059232078_))))
                        (let ((_hd232063232083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232064232080_)))
                              (_tl232062232085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232064232080_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232062232085_))
                              (let ((_e232067232088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232062232085_))))
                                (let ((_hd232066232091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232067232088_)))
                                      (_tl232065232093_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232067232088_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232065232093_))
                                      (let ((_e232070232096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232065232093_))))
                                        (let ((_hd232069232099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232070232096_)))
                                              (_tl232068232101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232070232096_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232068232101_))
                                              ((lambda (_L232104_ _L232105_)
                                                 (let ((__tmp241327
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L232104_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp241327
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd232069232099_
                                               _hd232066232091_)
                                              (let ()
                                                (declare (not safe))
                                                (_g232058232075_
                                                 _g232059232078_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232058232075_ _g232059232078_)))))
                              (let ()
                                (declare (not safe))
                                (_g232058232075_ _g232059232078_)))))
                      (let ()
                        (declare (not safe))
                        (_g232058232075_ _g232059232078_))))))
          (declare (not safe))
          (_g232057232121_ _stx232056_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx231961_)
        (let* ((___stx239914239915_ _stx231961_)
               (_g231964231984_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239914239915_)))))
          (let ((___kont239916239917_
                 (lambda (_L232028_ _L232029_)
                   (let ((_type-e232046232048_
                          (let ((__tmp241328
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L232029_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp241328
                             '#f))))
                     (if _type-e232046232048_
                         (let ((_type-e232051_ _type-e232046232048_))
                           (_type-e232051_ _stx231961_ _L232028_))
                         '#f))))
                (___kont239918239919_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239914239915_))
                (let ((_e231970231996_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239914239915_))))
                  (let ((_tl231968232001_
                         (let () (declare (not safe)) (##cdr _e231970231996_)))
                        (_hd231969231999_
                         (let ()
                           (declare (not safe))
                           (##car _e231970231996_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231968232001_))
                        (let ((_e231973232004_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231968232001_))))
                          (let ((_tl231971232009_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231973232004_)))
                                (_hd231972232007_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231973232004_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231972232007_))
                                (let ((_e231976232012_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231972232007_))))
                                  (let ((_tl231974232017_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231976232012_)))
                                        (_hd231975232015_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231976232012_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231975232015_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231975232015_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231974232017_))
                                                (let ((_e231979232020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231974232017_))))
                                                  (let ((_tl231977232025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231979232020_)))
                                                        (_hd231978232023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231979232020_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231977232025_))
                                                        (___kont239916239917_
                                                         _tl231971232009_
                                                         _hd231978232023_)
                                                        (___kont239918239919_))))
                                                (___kont239918239919_))
                                            (___kont239918239919_))
                                        (___kont239918239919_))))
                                (___kont239918239919_))))
                        (___kont239918239919_))))
                (___kont239918239919_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx231910_)
        (let* ((_g231912231925_
                (lambda (_g231913231922_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231913231922_))))
               (_g231911231958_
                (lambda (_g231913231928_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231913231928_))
                      (let ((_e231917231930_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231913231928_))))
                        (let ((_hd231916231933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231917231930_)))
                              (_tl231915231935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231917231930_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231915231935_))
                              (let ((_e231920231938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231915231935_))))
                                (let ((_hd231919231941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231920231938_)))
                                      (_tl231918231943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231920231938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231918231943_))
                                      ((lambda (_L231946_)
                                         (let ((__tmp241329
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L231946_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp241329)))
                                       _hd231919231941_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231912231925_ _g231913231928_)))))
                              (let ()
                                (declare (not safe))
                                (_g231912231925_ _g231913231928_)))))
                      (let ()
                        (declare (not safe))
                        (_g231912231925_ _g231913231928_))))))
          (declare (not safe))
          (_g231911231958_ _stx231910_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form231144_)
        (let* ((___stx239952239953_ _form231144_)
               (_g231149231306_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239952239953_)))))
          (let ((___kont239954239955_
                 (lambda (_L231830_ _L231831_ _L231832_) '#t))
                (___kont239960239961_
                 (lambda (_L231618_
                          _L231619_
                          _L231620_
                          _L231621_
                          _L231622_
                          _L231623_)
                   '#t))
                (___kont239966239967_
                 (lambda (_L231414_ _L231415_ _L231416_ _L231417_) '#t))
                (___kont239968239969_ (lambda () '#f)))
            (let* ((___match240093240094_
                    (lambda (_e231268231318_
                             _hd231267231321_
                             _tl231266231323_
                             _e231271231326_
                             _hd231270231329_
                             _tl231269231331_
                             _e231274231334_
                             _hd231273231337_
                             _tl231272231339_
                             _e231277231342_
                             _hd231276231345_
                             _tl231275231347_
                             _e231280231350_
                             _hd231279231353_
                             _tl231278231355_
                             _e231283231358_
                             _hd231282231361_
                             _tl231281231363_
                             _e231286231366_
                             _hd231285231369_
                             _tl231284231371_
                             _e231289231374_
                             _hd231288231377_
                             _tl231287231379_
                             _e231292231382_
                             _hd231291231385_
                             _tl231290231387_
                             _e231295231390_
                             _hd231294231393_
                             _tl231293231395_
                             _e231298231398_
                             _hd231297231401_
                             _tl231296231403_
                             _e231301231406_
                             _hd231300231409_
                             _tl231299231411_)
                      (let ((_L231414_ _hd231300231409_)
                            (_L231415_ _hd231291231385_)
                            (_L231416_ _hd231282231361_)
                            (_L231417_ _hd231267231321_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L231417_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L231416_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L231417_ _L231414_))
                                 (let ((__tmp241330
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L231415_
                                           _L231417_))))
                                   (declare (not safe))
                                   (not __tmp241330)))
                            (___kont239966239967_
                             _L231414_
                             _L231415_
                             _L231416_
                             _L231417_)
                            (___kont239968239969_)))))
                   (___match240065240066_
                    (lambda (_e231268231318_
                             _hd231267231321_
                             _tl231266231323_
                             _e231271231326_
                             _hd231270231329_
                             _tl231269231331_
                             _e231274231334_
                             _hd231273231337_
                             _tl231272231339_
                             _e231277231342_
                             _hd231276231345_
                             _tl231275231347_
                             _e231280231350_
                             _hd231279231353_
                             _tl231278231355_
                             _e231283231358_
                             _hd231282231361_
                             _tl231281231363_
                             _e231286231366_
                             _hd231285231369_
                             _tl231284231371_
                             _e231289231374_
                             _hd231288231377_
                             _tl231287231379_
                             _e231292231382_
                             _hd231291231385_
                             _tl231290231387_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231284231371_))
                          (let ((_e231295231390_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231284231371_))))
                            (let ((_tl231293231395_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231295231390_)))
                                  (_hd231294231393_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231295231390_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231294231393_))
                                  (let ((_e231298231398_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231294231393_))))
                                    (let ((_tl231296231403_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231298231398_)))
                                          (_hd231297231401_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231298231398_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd231297231401_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd231297231401_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231296231403_))
                                                  (let ((_e231301231406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231296231403_))))
                                                    (let ((_tl231299231411_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231301231406_)))
                                                          (_hd231300231409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231301231406_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231299231411_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231293231395_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231269231331_))
                          (___match240093240094_
                           _e231268231318_
                           _hd231267231321_
                           _tl231266231323_
                           _e231271231326_
                           _hd231270231329_
                           _tl231269231331_
                           _e231274231334_
                           _hd231273231337_
                           _tl231272231339_
                           _e231277231342_
                           _hd231276231345_
                           _tl231275231347_
                           _e231280231350_
                           _hd231279231353_
                           _tl231278231355_
                           _e231283231358_
                           _hd231282231361_
                           _tl231281231363_
                           _e231286231366_
                           _hd231285231369_
                           _tl231284231371_
                           _e231289231374_
                           _hd231288231377_
                           _tl231287231379_
                           _e231292231382_
                           _hd231291231385_
                           _tl231290231387_
                           _e231295231390_
                           _hd231294231393_
                           _tl231293231395_
                           _e231298231398_
                           _hd231297231401_
                           _tl231296231403_
                           _e231301231406_
                           _hd231300231409_
                           _tl231299231411_)
                          (___kont239968239969_))
                      (___kont239968239969_))
                  (___kont239968239969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239968239969_))
                                              (___kont239968239969_))
                                          (___kont239968239969_))))
                                  (___kont239968239969_))))
                          (___kont239968239969_))))
                   (___match239995239996_
                    (lambda (_e231204231458_
                             _hd231203231461_
                             _tl231202231463_
                             ___splice239962239963_
                             _target231205231466_
                             _tl231207231468_)
                      (letrec ((_loop231208231471_
                                (lambda (_hd231206231474_ _arg231212231476_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231206231474_))
                                      (let ((_e231209231479_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231206231474_))))
                                        (let ((_lp-tl231211231484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231209231479_)))
                                              (_lp-hd231210231482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231209231479_))))
                                          (let ((__tmp241345
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd231210231482_
                                                         _arg231212231476_))))
                                            (declare (not safe))
                                            (_loop231208231471_
                                             _lp-tl231211231484_
                                             __tmp241345))))
                                      (let ((_arg231213231487_
                                             (reverse _arg231212231476_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231202231463_))
                                            (let ((_e231216231490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231202231463_))))
                                              (let ((_tl231214231495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231216231490_)))
                                                    (_hd231215231493_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231216231490_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231215231493_))
                                                    (let ((_e231219231498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231215231493_))))
                                                      (let ((_tl231217231503_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231219231498_)))
                    (_hd231218231501_
                     (let () (declare (not safe)) (##car _e231219231498_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231218231501_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231218231501_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231217231503_))
                            (let ((_e231222231506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231217231503_))))
                              (let ((_tl231220231511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231222231506_)))
                                    (_hd231221231509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231222231506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231221231509_))
                                    (let ((_e231225231514_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231221231509_))))
                                      (let ((_tl231223231519_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231225231514_)))
                                            (_hd231224231517_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231225231514_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231224231517_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231224231517_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231223231519_))
                                                    (let ((_e231228231522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231223231519_))))
                                                      (let ((_tl231226231527_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231228231522_)))
                    (_hd231227231525_
                     (let () (declare (not safe)) (##car _e231228231522_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231226231527_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231220231511_))
                        (let ((_e231231231530_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231220231511_))))
                          (let ((_tl231229231535_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231231231530_)))
                                (_hd231230231533_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231231231530_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231230231533_))
                                (let ((_e231234231538_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231230231533_))))
                                  (let ((_tl231232231543_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231234231538_)))
                                        (_hd231233231541_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231234231538_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231233231541_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231233231541_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231232231543_))
                                                (let ((_e231237231546_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231232231543_))))
                                                  (let ((_tl231235231551_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231237231546_)))
                                                        (_hd231236231549_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231237231546_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231235231551_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl231229231535_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl231229231535_))
                              '1)
                        (let ((___splice239964239965_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl231229231535_
                                  '1))))
                          (let ((_tl231240231556_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239964239965_ '1)))
                                (_target231238231554_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239964239965_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231240231556_))
                                (let ((_e231249231559_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231240231556_))))
                                  (let ((_tl231247231564_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231249231559_)))
                                        (_hd231248231562_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231249231559_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231248231562_))
                                        (let ((_e231252231567_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231248231562_))))
                                          (let ((_tl231250231572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231252231567_)))
                                                (_hd231251231570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231252231567_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd231251231570_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd231251231570_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231250231572_))
                                                        (let ((_e231255231575_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231250231572_))))
                  (let ((_tl231253231580_
                         (let () (declare (not safe)) (##cdr _e231255231575_)))
                        (_hd231254231578_
                         (let ()
                           (declare (not safe))
                           (##car _e231255231575_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231253231580_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl231247231564_))
                            (letrec ((_loop231241231583_
                                      (lambda (_hd231239231586_
                                               _xarg231245231588_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd231239231586_))
                                            (let ((_e231242231591_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd231239231586_))))
                                              (let ((_lp-tl231244231596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231242231591_)))
                                                    (_lp-hd231243231594_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231242231591_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd231243231594_))
                                                    (let ((_e231258231599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd231243231594_))))
                                                      (let ((_tl231256231604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231258231599_)))
                    (_hd231257231602_
                     (let () (declare (not safe)) (##car _e231258231599_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231257231602_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231257231602_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231256231604_))
                            (let ((_e231261231607_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231256231604_))))
                              (let ((_tl231259231612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231261231607_)))
                                    (_hd231260231610_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231261231607_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231259231612_))
                                    (let ((__tmp241344
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd231260231610_
                                                   _xarg231245231588_))))
                                      (declare (not safe))
                                      (_loop231241231583_
                                       _lp-tl231244231596_
                                       __tmp241344))
                                    (___match240065240066_
                                     _e231204231458_
                                     _hd231203231461_
                                     _tl231202231463_
                                     _e231216231490_
                                     _hd231215231493_
                                     _tl231214231495_
                                     _e231219231498_
                                     _hd231218231501_
                                     _tl231217231503_
                                     _e231222231506_
                                     _hd231221231509_
                                     _tl231220231511_
                                     _e231225231514_
                                     _hd231224231517_
                                     _tl231223231519_
                                     _e231228231522_
                                     _hd231227231525_
                                     _tl231226231527_
                                     _e231231231530_
                                     _hd231230231533_
                                     _tl231229231535_
                                     _e231234231538_
                                     _hd231233231541_
                                     _tl231232231543_
                                     _e231237231546_
                                     _hd231236231549_
                                     _tl231235231551_))))
                            (___match240065240066_
                             _e231204231458_
                             _hd231203231461_
                             _tl231202231463_
                             _e231216231490_
                             _hd231215231493_
                             _tl231214231495_
                             _e231219231498_
                             _hd231218231501_
                             _tl231217231503_
                             _e231222231506_
                             _hd231221231509_
                             _tl231220231511_
                             _e231225231514_
                             _hd231224231517_
                             _tl231223231519_
                             _e231228231522_
                             _hd231227231525_
                             _tl231226231527_
                             _e231231231530_
                             _hd231230231533_
                             _tl231229231535_
                             _e231234231538_
                             _hd231233231541_
                             _tl231232231543_
                             _e231237231546_
                             _hd231236231549_
                             _tl231235231551_))
                        (___match240065240066_
                         _e231204231458_
                         _hd231203231461_
                         _tl231202231463_
                         _e231216231490_
                         _hd231215231493_
                         _tl231214231495_
                         _e231219231498_
                         _hd231218231501_
                         _tl231217231503_
                         _e231222231506_
                         _hd231221231509_
                         _tl231220231511_
                         _e231225231514_
                         _hd231224231517_
                         _tl231223231519_
                         _e231228231522_
                         _hd231227231525_
                         _tl231226231527_
                         _e231231231530_
                         _hd231230231533_
                         _tl231229231535_
                         _e231234231538_
                         _hd231233231541_
                         _tl231232231543_
                         _e231237231546_
                         _hd231236231549_
                         _tl231235231551_))
                    (___match240065240066_
                     _e231204231458_
                     _hd231203231461_
                     _tl231202231463_
                     _e231216231490_
                     _hd231215231493_
                     _tl231214231495_
                     _e231219231498_
                     _hd231218231501_
                     _tl231217231503_
                     _e231222231506_
                     _hd231221231509_
                     _tl231220231511_
                     _e231225231514_
                     _hd231224231517_
                     _tl231223231519_
                     _e231228231522_
                     _hd231227231525_
                     _tl231226231527_
                     _e231231231530_
                     _hd231230231533_
                     _tl231229231535_
                     _e231234231538_
                     _hd231233231541_
                     _tl231232231543_
                     _e231237231546_
                     _hd231236231549_
                     _tl231235231551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240065240066_
                                                     _e231204231458_
                                                     _hd231203231461_
                                                     _tl231202231463_
                                                     _e231216231490_
                                                     _hd231215231493_
                                                     _tl231214231495_
                                                     _e231219231498_
                                                     _hd231218231501_
                                                     _tl231217231503_
                                                     _e231222231506_
                                                     _hd231221231509_
                                                     _tl231220231511_
                                                     _e231225231514_
                                                     _hd231224231517_
                                                     _tl231223231519_
                                                     _e231228231522_
                                                     _hd231227231525_
                                                     _tl231226231527_
                                                     _e231231231530_
                                                     _hd231230231533_
                                                     _tl231229231535_
                                                     _e231234231538_
                                                     _hd231233231541_
                                                     _tl231232231543_
                                                     _e231237231546_
                                                     _hd231236231549_
                                                     _tl231235231551_))))
                                            (let ((_xarg231246231615_
                                                   (reverse _xarg231245231588_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231214231495_))
                                                  (let ((_L231618_
                                                         _hd231254231578_)
                                                        (_L231619_
                                                         _xarg231246231615_)
                                                        (_L231620_
                                                         _hd231236231549_)
                                                        (_L231621_
                                                         _hd231227231525_)
                                                        (_L231622_
                                                         _tl231207231468_)
                                                        (_L231623_
                                                         _arg231213231487_))
                                                    (if (and (let ((__tmp241342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241343
                                   (lambda (_g231666231669_ _g231667231671_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231666231669_
                                             _g231667231671_)))))
                              (declare (not safe))
                              (foldr1 __tmp241343 '() _L231623_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp241342))
                     (let () (declare (not safe)) (gx#identifier? _L231622_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L231621_ 'apply))
                     (fx= (length (let ((__tmp241340
                                         (lambda (_g231673231676_
                                                  _g231674231678_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231673231676_
                                                   _g231674231678_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241340 '() _L231623_)))
                          (length (let ((__tmp241341
                                         (lambda (_g231680231683_
                                                  _g231681231685_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231680231683_
                                                   _g231681231685_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241341 '() _L231619_))))
                     (let ((__tmp241338
                            (let ((__tmp241339
                                   (lambda (_g231687231690_ _g231688231692_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231687231690_
                                             _g231688231692_)))))
                              (declare (not safe))
                              (foldr1 __tmp241339 '() _L231623_)))
                           (__tmp241336
                            (let ((__tmp241337
                                   (lambda (_g231694231697_ _g231695231699_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231694231697_
                                             _g231695231699_)))))
                              (declare (not safe))
                              (foldr1 __tmp241337 '() _L231619_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp241338 __tmp241336))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L231622_ _L231618_))
                     (let ((__tmp241331
                            (let ((__tmp241335
                                   (lambda (_g231701231703_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g231701231703_
                                        _L231620_))))
                                  (__tmp241332
                                   (let ((__tmp241334
                                          (lambda (_g231705231708_
                                                   _g231706231710_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g231705231708_
                                                    _g231706231710_))))
                                         (__tmp241333
                                          (let ()
                                            (declare (not safe))
                                            (cons _L231622_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp241334
                                             __tmp241333
                                             _L231623_))))
                              (declare (not safe))
                              (find __tmp241335 __tmp241332))))
                       (declare (not safe))
                       (not __tmp241331)))
                (___kont239960239961_
                 _L231618_
                 _L231619_
                 _L231620_
                 _L231621_
                 _L231622_
                 _L231623_)
                (___match240065240066_
                 _e231204231458_
                 _hd231203231461_
                 _tl231202231463_
                 _e231216231490_
                 _hd231215231493_
                 _tl231214231495_
                 _e231219231498_
                 _hd231218231501_
                 _tl231217231503_
                 _e231222231506_
                 _hd231221231509_
                 _tl231220231511_
                 _e231225231514_
                 _hd231224231517_
                 _tl231223231519_
                 _e231228231522_
                 _hd231227231525_
                 _tl231226231527_
                 _e231231231530_
                 _hd231230231533_
                 _tl231229231535_
                 _e231234231538_
                 _hd231233231541_
                 _tl231232231543_
                 _e231237231546_
                 _hd231236231549_
                 _tl231235231551_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match240065240066_
                                                   _e231204231458_
                                                   _hd231203231461_
                                                   _tl231202231463_
                                                   _e231216231490_
                                                   _hd231215231493_
                                                   _tl231214231495_
                                                   _e231219231498_
                                                   _hd231218231501_
                                                   _tl231217231503_
                                                   _e231222231506_
                                                   _hd231221231509_
                                                   _tl231220231511_
                                                   _e231225231514_
                                                   _hd231224231517_
                                                   _tl231223231519_
                                                   _e231228231522_
                                                   _hd231227231525_
                                                   _tl231226231527_
                                                   _e231231231530_
                                                   _hd231230231533_
                                                   _tl231229231535_
                                                   _e231234231538_
                                                   _hd231233231541_
                                                   _tl231232231543_
                                                   _e231237231546_
                                                   _hd231236231549_
                                                   _tl231235231551_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop231241231583_ _target231238231554_ '())))
                            (___match240065240066_
                             _e231204231458_
                             _hd231203231461_
                             _tl231202231463_
                             _e231216231490_
                             _hd231215231493_
                             _tl231214231495_
                             _e231219231498_
                             _hd231218231501_
                             _tl231217231503_
                             _e231222231506_
                             _hd231221231509_
                             _tl231220231511_
                             _e231225231514_
                             _hd231224231517_
                             _tl231223231519_
                             _e231228231522_
                             _hd231227231525_
                             _tl231226231527_
                             _e231231231530_
                             _hd231230231533_
                             _tl231229231535_
                             _e231234231538_
                             _hd231233231541_
                             _tl231232231543_
                             _e231237231546_
                             _hd231236231549_
                             _tl231235231551_))
                        (___match240065240066_
                         _e231204231458_
                         _hd231203231461_
                         _tl231202231463_
                         _e231216231490_
                         _hd231215231493_
                         _tl231214231495_
                         _e231219231498_
                         _hd231218231501_
                         _tl231217231503_
                         _e231222231506_
                         _hd231221231509_
                         _tl231220231511_
                         _e231225231514_
                         _hd231224231517_
                         _tl231223231519_
                         _e231228231522_
                         _hd231227231525_
                         _tl231226231527_
                         _e231231231530_
                         _hd231230231533_
                         _tl231229231535_
                         _e231234231538_
                         _hd231233231541_
                         _tl231232231543_
                         _e231237231546_
                         _hd231236231549_
                         _tl231235231551_))))
                (___match240065240066_
                 _e231204231458_
                 _hd231203231461_
                 _tl231202231463_
                 _e231216231490_
                 _hd231215231493_
                 _tl231214231495_
                 _e231219231498_
                 _hd231218231501_
                 _tl231217231503_
                 _e231222231506_
                 _hd231221231509_
                 _tl231220231511_
                 _e231225231514_
                 _hd231224231517_
                 _tl231223231519_
                 _e231228231522_
                 _hd231227231525_
                 _tl231226231527_
                 _e231231231530_
                 _hd231230231533_
                 _tl231229231535_
                 _e231234231538_
                 _hd231233231541_
                 _tl231232231543_
                 _e231237231546_
                 _hd231236231549_
                 _tl231235231551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240065240066_
                                                     _e231204231458_
                                                     _hd231203231461_
                                                     _tl231202231463_
                                                     _e231216231490_
                                                     _hd231215231493_
                                                     _tl231214231495_
                                                     _e231219231498_
                                                     _hd231218231501_
                                                     _tl231217231503_
                                                     _e231222231506_
                                                     _hd231221231509_
                                                     _tl231220231511_
                                                     _e231225231514_
                                                     _hd231224231517_
                                                     _tl231223231519_
                                                     _e231228231522_
                                                     _hd231227231525_
                                                     _tl231226231527_
                                                     _e231231231530_
                                                     _hd231230231533_
                                                     _tl231229231535_
                                                     _e231234231538_
                                                     _hd231233231541_
                                                     _tl231232231543_
                                                     _e231237231546_
                                                     _hd231236231549_
                                                     _tl231235231551_))
                                                (___match240065240066_
                                                 _e231204231458_
                                                 _hd231203231461_
                                                 _tl231202231463_
                                                 _e231216231490_
                                                 _hd231215231493_
                                                 _tl231214231495_
                                                 _e231219231498_
                                                 _hd231218231501_
                                                 _tl231217231503_
                                                 _e231222231506_
                                                 _hd231221231509_
                                                 _tl231220231511_
                                                 _e231225231514_
                                                 _hd231224231517_
                                                 _tl231223231519_
                                                 _e231228231522_
                                                 _hd231227231525_
                                                 _tl231226231527_
                                                 _e231231231530_
                                                 _hd231230231533_
                                                 _tl231229231535_
                                                 _e231234231538_
                                                 _hd231233231541_
                                                 _tl231232231543_
                                                 _e231237231546_
                                                 _hd231236231549_
                                                 _tl231235231551_))))
                                        (___match240065240066_
                                         _e231204231458_
                                         _hd231203231461_
                                         _tl231202231463_
                                         _e231216231490_
                                         _hd231215231493_
                                         _tl231214231495_
                                         _e231219231498_
                                         _hd231218231501_
                                         _tl231217231503_
                                         _e231222231506_
                                         _hd231221231509_
                                         _tl231220231511_
                                         _e231225231514_
                                         _hd231224231517_
                                         _tl231223231519_
                                         _e231228231522_
                                         _hd231227231525_
                                         _tl231226231527_
                                         _e231231231530_
                                         _hd231230231533_
                                         _tl231229231535_
                                         _e231234231538_
                                         _hd231233231541_
                                         _tl231232231543_
                                         _e231237231546_
                                         _hd231236231549_
                                         _tl231235231551_))))
                                (___match240065240066_
                                 _e231204231458_
                                 _hd231203231461_
                                 _tl231202231463_
                                 _e231216231490_
                                 _hd231215231493_
                                 _tl231214231495_
                                 _e231219231498_
                                 _hd231218231501_
                                 _tl231217231503_
                                 _e231222231506_
                                 _hd231221231509_
                                 _tl231220231511_
                                 _e231225231514_
                                 _hd231224231517_
                                 _tl231223231519_
                                 _e231228231522_
                                 _hd231227231525_
                                 _tl231226231527_
                                 _e231231231530_
                                 _hd231230231533_
                                 _tl231229231535_
                                 _e231234231538_
                                 _hd231233231541_
                                 _tl231232231543_
                                 _e231237231546_
                                 _hd231236231549_
                                 _tl231235231551_))))
                        (___match240065240066_
                         _e231204231458_
                         _hd231203231461_
                         _tl231202231463_
                         _e231216231490_
                         _hd231215231493_
                         _tl231214231495_
                         _e231219231498_
                         _hd231218231501_
                         _tl231217231503_
                         _e231222231506_
                         _hd231221231509_
                         _tl231220231511_
                         _e231225231514_
                         _hd231224231517_
                         _tl231223231519_
                         _e231228231522_
                         _hd231227231525_
                         _tl231226231527_
                         _e231231231530_
                         _hd231230231533_
                         _tl231229231535_
                         _e231234231538_
                         _hd231233231541_
                         _tl231232231543_
                         _e231237231546_
                         _hd231236231549_
                         _tl231235231551_))
                    (___match240065240066_
                     _e231204231458_
                     _hd231203231461_
                     _tl231202231463_
                     _e231216231490_
                     _hd231215231493_
                     _tl231214231495_
                     _e231219231498_
                     _hd231218231501_
                     _tl231217231503_
                     _e231222231506_
                     _hd231221231509_
                     _tl231220231511_
                     _e231225231514_
                     _hd231224231517_
                     _tl231223231519_
                     _e231228231522_
                     _hd231227231525_
                     _tl231226231527_
                     _e231231231530_
                     _hd231230231533_
                     _tl231229231535_
                     _e231234231538_
                     _hd231233231541_
                     _tl231232231543_
                     _e231237231546_
                     _hd231236231549_
                     _tl231235231551_))
                (___kont239968239969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239968239969_))
                                            (___kont239968239969_))
                                        (___kont239968239969_))))
                                (___kont239968239969_))))
                        (___kont239968239969_))
                    (___kont239968239969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239968239969_))
                                                (___kont239968239969_))
                                            (___kont239968239969_))))
                                    (___kont239968239969_))))
                            (___kont239968239969_))
                        (___kont239968239969_))
                    (___kont239968239969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239968239969_))))
                                            (___kont239968239969_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231208231471_ _target231205231466_ '())))))
                   (___match239983239984_
                    (lambda (_e231156231718_
                             _hd231155231721_
                             _tl231154231723_
                             ___splice239956239957_
                             _target231157231726_
                             _tl231159231728_)
                      (letrec ((_loop231160231731_
                                (lambda (_hd231158231734_ _arg231164231736_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231158231734_))
                                      (let ((_e231161231739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231158231734_))))
                                        (let ((_lp-tl231163231744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231161231739_)))
                                              (_lp-hd231162231742_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231161231739_))))
                                          (let ((__tmp241359
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd231162231742_
                                                         _arg231164231736_))))
                                            (declare (not safe))
                                            (_loop231160231731_
                                             _lp-tl231163231744_
                                             __tmp241359))))
                                      (let ((_arg231165231747_
                                             (reverse _arg231164231736_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231154231723_))
                                            (let ((_e231168231750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231154231723_))))
                                              (let ((_tl231166231755_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231168231750_)))
                                                    (_hd231167231753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231168231750_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231167231753_))
                                                    (let ((_e231171231758_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231167231753_))))
                                                      (let ((_tl231169231763_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231171231758_)))
                    (_hd231170231761_
                     (let () (declare (not safe)) (##car _e231171231758_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231170231761_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231170231761_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231169231763_))
                            (let ((_e231174231766_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231169231763_))))
                              (let ((_tl231172231771_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231174231766_)))
                                    (_hd231173231769_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231174231766_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231173231769_))
                                    (let ((_e231177231774_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231173231769_))))
                                      (let ((_tl231175231779_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231177231774_)))
                                            (_hd231176231777_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231177231774_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231176231777_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231176231777_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231175231779_))
                                                    (let ((_e231180231782_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231175231779_))))
                                                      (let ((_tl231178231787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231180231782_)))
                    (_hd231179231785_
                     (let () (declare (not safe)) (##car _e231180231782_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231178231787_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl231172231771_))
                        (let ((___splice239958239959_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl231172231771_
                                  '0))))
                          (let ((_tl231183231792_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239958239959_ '1)))
                                (_target231181231790_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239958239959_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231183231792_))
                                (letrec ((_loop231184231795_
                                          (lambda (_hd231182231798_
                                                   _xarg231188231800_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231182231798_))
                                                (let ((_e231185231803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231182231798_))))
                                                  (let ((_lp-tl231187231808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231185231803_)))
                                                        (_lp-hd231186231806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231185231803_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd231186231806_))
                                                        (let ((_e231192231811_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd231186231806_))))
                  (let ((_tl231190231816_
                         (let () (declare (not safe)) (##cdr _e231192231811_)))
                        (_hd231191231814_
                         (let ()
                           (declare (not safe))
                           (##car _e231192231811_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231191231814_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231191231814_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231190231816_))
                                (let ((_e231195231819_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231190231816_))))
                                  (let ((_tl231193231824_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231195231819_)))
                                        (_hd231194231822_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231195231819_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231193231824_))
                                        (let ((__tmp241358
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd231194231822_
                                                       _xarg231188231800_))))
                                          (declare (not safe))
                                          (_loop231184231795_
                                           _lp-tl231187231808_
                                           __tmp241358))
                                        (___match239995239996_
                                         _e231156231718_
                                         _hd231155231721_
                                         _tl231154231723_
                                         ___splice239956239957_
                                         _target231157231726_
                                         _tl231159231728_))))
                                (___match239995239996_
                                 _e231156231718_
                                 _hd231155231721_
                                 _tl231154231723_
                                 ___splice239956239957_
                                 _target231157231726_
                                 _tl231159231728_))
                            (___match239995239996_
                             _e231156231718_
                             _hd231155231721_
                             _tl231154231723_
                             ___splice239956239957_
                             _target231157231726_
                             _tl231159231728_))
                        (___match239995239996_
                         _e231156231718_
                         _hd231155231721_
                         _tl231154231723_
                         ___splice239956239957_
                         _target231157231726_
                         _tl231159231728_))))
                (___match239995239996_
                 _e231156231718_
                 _hd231155231721_
                 _tl231154231723_
                 ___splice239956239957_
                 _target231157231726_
                 _tl231159231728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg231189231827_
                                                       (reverse _xarg231188231800_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl231166231755_))
                                                      (let ((_L231830_
                                                             _xarg231189231827_)
                                                            (_L231831_
                                                             _hd231179231785_)
                                                            (_L231832_
                                                             _arg231165231747_))
                                                        (if (and (let ((__tmp241356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp241357
                                       (lambda (_g231860231863_
                                                _g231861231865_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231860231863_
                                                 _g231861231865_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241357 '() _L231832_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp241356))
                         (fx= (length (let ((__tmp241354
                                             (lambda (_g231867231870_
                                                      _g231868231872_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231867231870_
                                                       _g231868231872_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241354 '() _L231832_)))
                              (length (let ((__tmp241355
                                             (lambda (_g231874231877_
                                                      _g231875231879_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231874231877_
                                                       _g231875231879_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241355 '() _L231830_))))
                         (let ((__tmp241352
                                (let ((__tmp241353
                                       (lambda (_g231881231884_
                                                _g231882231886_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231881231884_
                                                 _g231882231886_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241353 '() _L231832_)))
                               (__tmp241350
                                (let ((__tmp241351
                                       (lambda (_g231888231891_
                                                _g231889231893_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231888231891_
                                                 _g231889231893_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241351 '() _L231830_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp241352
                                    __tmp241350))
                         (let ((__tmp241346
                                (let ((__tmp241349
                                       (lambda (_g231895231897_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g231895231897_
                                            _L231831_))))
                                      (__tmp241347
                                       (let ((__tmp241348
                                              (lambda (_g231899231902_
                                                       _g231900231904_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g231899231902_
                                                        _g231900231904_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp241348 '() _L231832_))))
                                  (declare (not safe))
                                  (find __tmp241349 __tmp241347))))
                           (declare (not safe))
                           (not __tmp241346)))
                    (___kont239954239955_ _L231830_ _L231831_ _L231832_)
                    (___match239995239996_
                     _e231156231718_
                     _hd231155231721_
                     _tl231154231723_
                     ___splice239956239957_
                     _target231157231726_
                     _tl231159231728_)))
              (___match239995239996_
               _e231156231718_
               _hd231155231721_
               _tl231154231723_
               ___splice239956239957_
               _target231157231726_
               _tl231159231728_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop231184231795_
                                     _target231181231790_
                                     '())))
                                (___match239995239996_
                                 _e231156231718_
                                 _hd231155231721_
                                 _tl231154231723_
                                 ___splice239956239957_
                                 _target231157231726_
                                 _tl231159231728_))))
                        (___match239995239996_
                         _e231156231718_
                         _hd231155231721_
                         _tl231154231723_
                         ___splice239956239957_
                         _target231157231726_
                         _tl231159231728_))
                    (___match239995239996_
                     _e231156231718_
                     _hd231155231721_
                     _tl231154231723_
                     ___splice239956239957_
                     _target231157231726_
                     _tl231159231728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239995239996_
                                                     _e231156231718_
                                                     _hd231155231721_
                                                     _tl231154231723_
                                                     ___splice239956239957_
                                                     _target231157231726_
                                                     _tl231159231728_))
                                                (___match239995239996_
                                                 _e231156231718_
                                                 _hd231155231721_
                                                 _tl231154231723_
                                                 ___splice239956239957_
                                                 _target231157231726_
                                                 _tl231159231728_))
                                            (___match239995239996_
                                             _e231156231718_
                                             _hd231155231721_
                                             _tl231154231723_
                                             ___splice239956239957_
                                             _target231157231726_
                                             _tl231159231728_))))
                                    (___match239995239996_
                                     _e231156231718_
                                     _hd231155231721_
                                     _tl231154231723_
                                     ___splice239956239957_
                                     _target231157231726_
                                     _tl231159231728_))))
                            (___match239995239996_
                             _e231156231718_
                             _hd231155231721_
                             _tl231154231723_
                             ___splice239956239957_
                             _target231157231726_
                             _tl231159231728_))
                        (___match239995239996_
                         _e231156231718_
                         _hd231155231721_
                         _tl231154231723_
                         ___splice239956239957_
                         _target231157231726_
                         _tl231159231728_))
                    (___match239995239996_
                     _e231156231718_
                     _hd231155231721_
                     _tl231154231723_
                     ___splice239956239957_
                     _target231157231726_
                     _tl231159231728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239995239996_
                                                     _e231156231718_
                                                     _hd231155231721_
                                                     _tl231154231723_
                                                     ___splice239956239957_
                                                     _target231157231726_
                                                     _tl231159231728_))))
                                            (___match239995239996_
                                             _e231156231718_
                                             _hd231155231721_
                                             _tl231154231723_
                                             ___splice239956239957_
                                             _target231157231726_
                                             _tl231159231728_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231160231731_ _target231157231726_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239952239953_))
                  (let ((_e231156231718_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239952239953_))))
                    (let ((_tl231154231723_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231156231718_)))
                          (_hd231155231721_
                           (let ()
                             (declare (not safe))
                             (##car _e231156231718_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd231155231721_))
                          (let ((___splice239956239957_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd231155231721_
                                    '0))))
                            (let ((_tl231159231728_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239956239957_ '1)))
                                  (_target231157231726_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239956239957_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231159231728_))
                                  (___match239983239984_
                                   _e231156231718_
                                   _hd231155231721_
                                   _tl231154231723_
                                   ___splice239956239957_
                                   _target231157231726_
                                   _tl231159231728_)
                                  (___match239995239996_
                                   _e231156231718_
                                   _hd231155231721_
                                   _tl231154231723_
                                   ___splice239956239957_
                                   _target231157231726_
                                   _tl231159231728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231154231723_))
                              (let ((_e231271231326_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231154231723_))))
                                (let ((_tl231269231331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231271231326_)))
                                      (_hd231270231329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231271231326_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231270231329_))
                                      (let ((_e231274231334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231270231329_))))
                                        (let ((_tl231272231339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231274231334_)))
                                              (_hd231273231337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231274231334_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd231273231337_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd231273231337_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231272231339_))
                                                      (let ((_e231277231342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231272231339_))))
                (let ((_tl231275231347_
                       (let () (declare (not safe)) (##cdr _e231277231342_)))
                      (_hd231276231345_
                       (let () (declare (not safe)) (##car _e231277231342_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231276231345_))
                      (let ((_e231280231350_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231276231345_))))
                        (let ((_tl231278231355_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231280231350_)))
                              (_hd231279231353_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231280231350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231279231353_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231279231353_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231278231355_))
                                      (let ((_e231283231358_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231278231355_))))
                                        (let ((_tl231281231363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231283231358_)))
                                              (_hd231282231361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231283231358_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231281231363_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231275231347_))
                                                  (let ((_e231286231366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231275231347_))))
                                                    (let ((_tl231284231371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231286231366_)))
                                                          (_hd231285231369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231286231366_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231285231369_))
                                                          (let ((_e231289231374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231285231369_))))
                    (let ((_tl231287231379_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231289231374_)))
                          (_hd231288231377_
                           (let ()
                             (declare (not safe))
                             (##car _e231289231374_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231288231377_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231288231377_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231287231379_))
                                  (let ((_e231292231382_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231287231379_))))
                                    (let ((_tl231290231387_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231292231382_)))
                                          (_hd231291231385_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231292231382_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231290231387_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231284231371_))
                                              (let ((_e231295231390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231284231371_))))
                                                (let ((_tl231293231395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231295231390_)))
                                                      (_hd231294231393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231295231390_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231294231393_))
                                                      (let ((_e231298231398_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231294231393_))))
                (let ((_tl231296231403_
                       (let () (declare (not safe)) (##cdr _e231298231398_)))
                      (_hd231297231401_
                       (let () (declare (not safe)) (##car _e231298231398_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231297231401_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231297231401_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231296231403_))
                              (let ((_e231301231406_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231296231403_))))
                                (let ((_tl231299231411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231301231406_)))
                                      (_hd231300231409_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231301231406_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231299231411_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231293231395_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231269231331_))
                                              (___match240093240094_
                                               _e231156231718_
                                               _hd231155231721_
                                               _tl231154231723_
                                               _e231271231326_
                                               _hd231270231329_
                                               _tl231269231331_
                                               _e231274231334_
                                               _hd231273231337_
                                               _tl231272231339_
                                               _e231277231342_
                                               _hd231276231345_
                                               _tl231275231347_
                                               _e231280231350_
                                               _hd231279231353_
                                               _tl231278231355_
                                               _e231283231358_
                                               _hd231282231361_
                                               _tl231281231363_
                                               _e231286231366_
                                               _hd231285231369_
                                               _tl231284231371_
                                               _e231289231374_
                                               _hd231288231377_
                                               _tl231287231379_
                                               _e231292231382_
                                               _hd231291231385_
                                               _tl231290231387_
                                               _e231295231390_
                                               _hd231294231393_
                                               _tl231293231395_
                                               _e231298231398_
                                               _hd231297231401_
                                               _tl231296231403_
                                               _e231301231406_
                                               _hd231300231409_
                                               _tl231299231411_)
                                              (___kont239968239969_))
                                          (___kont239968239969_))
                                      (___kont239968239969_))))
                              (___kont239968239969_))
                          (___kont239968239969_))
                      (___kont239968239969_))))
              (___kont239968239969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont239968239969_))
                                          (___kont239968239969_))))
                                  (___kont239968239969_))
                              (___kont239968239969_))
                          (___kont239968239969_))))
                  (___kont239968239969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239968239969_))
                                              (___kont239968239969_))))
                                      (___kont239968239969_))
                                  (___kont239968239969_))
                              (___kont239968239969_))))
                      (___kont239968239969_))))
              (___kont239968239969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239968239969_))
                                              (___kont239968239969_))))
                                      (___kont239968239969_))))
                              (___kont239968239969_)))))
                  (___kont239968239969_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form230612_)
        (let* ((___stx240096240097_ _form230612_)
               (_g230616230740_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240096240097_)))))
          (let ((___kont240098240099_
                 (lambda (_L231110_ _L231111_ _L231112_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L231111_))))
                (___kont240104240105_
                 (lambda (_L230958_ _L230959_ _L230960_ _L230961_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230958_))))
                (___kont240108240109_
                 (lambda (_L230825_ _L230826_ _L230827_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230825_)))))
            (let* ((___match240205240206_
                    (lambda (_e230708230745_
                             _hd230707230748_
                             _tl230706230750_
                             _e230711230753_
                             _hd230710230756_
                             _tl230709230758_
                             _e230714230761_
                             _hd230713230764_
                             _tl230712230766_
                             _e230717230769_
                             _hd230716230772_
                             _tl230715230774_
                             _e230720230777_
                             _hd230719230780_
                             _tl230718230782_
                             _e230723230785_
                             _hd230722230788_
                             _tl230721230790_
                             _e230726230793_
                             _hd230725230796_
                             _tl230724230798_
                             _e230729230801_
                             _hd230728230804_
                             _tl230727230806_
                             _e230732230809_
                             _hd230731230812_
                             _tl230730230814_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230724230798_))
                          (let ((_e230735230817_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230724230798_))))
                            (let ((_tl230733230822_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230735230817_)))
                                  (_hd230734230820_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230735230817_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230733230822_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230709230758_))
                                      (___kont240108240109_
                                       _hd230731230812_
                                       _hd230722230788_
                                       _hd230707230748_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230616230740_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230616230740_)))))
                          (let () (declare (not safe)) (_g230616230740_)))))
                   (___match240135240136_
                    (lambda (_e230669230862_
                             _hd230668230865_
                             _tl230667230867_
                             ___splice240106240107_
                             _target230670230870_
                             _tl230672230872_)
                      (letrec ((_loop230673230875_
                                (lambda (_hd230671230878_ _arg230677230880_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230671230878_))
                                      (let ((_e230674230883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230671230878_))))
                                        (let ((_lp-tl230676230888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230674230883_)))
                                              (_lp-hd230675230886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230674230883_))))
                                          (let ((__tmp241360
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230675230886_
                                                         _arg230677230880_))))
                                            (declare (not safe))
                                            (_loop230673230875_
                                             _lp-tl230676230888_
                                             __tmp241360))))
                                      (let ((_arg230678230891_
                                             (reverse _arg230677230880_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230667230867_))
                                            (let ((_e230681230894_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230667230867_))))
                                              (let ((_tl230679230899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230681230894_)))
                                                    (_hd230680230897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230681230894_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230680230897_))
                                                    (let ((_e230684230902_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230680230897_))))
                                                      (let ((_tl230682230907_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230684230902_)))
                    (_hd230683230905_
                     (let () (declare (not safe)) (##car _e230684230902_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230683230905_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230683230905_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230682230907_))
                            (let ((_e230687230910_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230682230907_))))
                              (let ((_tl230685230915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230687230910_)))
                                    (_hd230686230913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230687230910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230686230913_))
                                    (let ((_e230690230918_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230686230913_))))
                                      (let ((_tl230688230923_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230690230918_)))
                                            (_hd230689230921_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230690230918_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230689230921_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230689230921_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230688230923_))
                                                    (let ((_e230693230926_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230688230923_))))
                                                      (let ((_tl230691230931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230693230926_)))
                    (_hd230692230929_
                     (let () (declare (not safe)) (##car _e230693230926_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230691230931_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230685230915_))
                        (let ((_e230696230934_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230685230915_))))
                          (let ((_tl230694230939_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230696230934_)))
                                (_hd230695230937_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230696230934_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230695230937_))
                                (let ((_e230699230942_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230695230937_))))
                                  (let ((_tl230697230947_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230699230942_)))
                                        (_hd230698230945_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230699230942_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230698230945_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230698230945_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230697230947_))
                                                (let ((_e230702230950_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230697230947_))))
                                                  (let ((_tl230700230955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230702230950_)))
                                                        (_hd230701230953_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230702230950_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230700230955_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl230679230899_))
                                                            (___kont240104240105_
                                                             _hd230701230953_
                                                             _hd230692230929_
                                                             _tl230672230872_
                                                             _arg230678230891_)
                                                            (___match240205240206_
                                                             _e230669230862_
                                                             _hd230668230865_
                                                             _tl230667230867_
                                                             _e230681230894_
                                                             _hd230680230897_
                                                             _tl230679230899_
                                                             _e230684230902_
                                                             _hd230683230905_
                                                             _tl230682230907_
                                                             _e230687230910_
                                                             _hd230686230913_
                                                             _tl230685230915_
                                                             _e230690230918_
                                                             _hd230689230921_
                                                             _tl230688230923_
                                                             _e230693230926_
                                                             _hd230692230929_
                                                             _tl230691230931_
                                                             _e230696230934_
                                                             _hd230695230937_
                                                             _tl230694230939_
                                                             _e230699230942_
                                                             _hd230698230945_
                                                             _tl230697230947_
                                                             _e230702230950_
                                                             _hd230701230953_
                                                             _tl230700230955_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230616230740_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230616230740_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230616230740_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g230616230740_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230616230740_)))))
                        (let () (declare (not safe)) (_g230616230740_)))
                    (let () (declare (not safe)) (_g230616230740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230616230740_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230616230740_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230616230740_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g230616230740_)))))
                            (let () (declare (not safe)) (_g230616230740_)))
                        (let () (declare (not safe)) (_g230616230740_)))
                    (let () (declare (not safe)) (_g230616230740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230616230740_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g230616230740_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop230673230875_ _target230670230870_ '())))))
                   (___match240123240124_
                    (lambda (_e230623230998_
                             _hd230622231001_
                             _tl230621231003_
                             ___splice240100240101_
                             _target230624231006_
                             _tl230626231008_)
                      (letrec ((_loop230627231011_
                                (lambda (_hd230625231014_ _arg230631231016_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230625231014_))
                                      (let ((_e230628231019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230625231014_))))
                                        (let ((_lp-tl230630231024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230628231019_)))
                                              (_lp-hd230629231022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230628231019_))))
                                          (let ((__tmp241362
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230629231022_
                                                         _arg230631231016_))))
                                            (declare (not safe))
                                            (_loop230627231011_
                                             _lp-tl230630231024_
                                             __tmp241362))))
                                      (let ((_arg230632231027_
                                             (reverse _arg230631231016_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230621231003_))
                                            (let ((_e230635231030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230621231003_))))
                                              (let ((_tl230633231035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230635231030_)))
                                                    (_hd230634231033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230635231030_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230634231033_))
                                                    (let ((_e230638231038_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230634231033_))))
                                                      (let ((_tl230636231043_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230638231038_)))
                    (_hd230637231041_
                     (let () (declare (not safe)) (##car _e230638231038_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230637231041_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230637231041_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230636231043_))
                            (let ((_e230641231046_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230636231043_))))
                              (let ((_tl230639231051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230641231046_)))
                                    (_hd230640231049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230641231046_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230640231049_))
                                    (let ((_e230644231054_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230640231049_))))
                                      (let ((_tl230642231059_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230644231054_)))
                                            (_hd230643231057_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230644231054_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230643231057_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230643231057_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230642231059_))
                                                    (let ((_e230647231062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230642231059_))))
                                                      (let ((_tl230645231067_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230647231062_)))
                    (_hd230646231065_
                     (let () (declare (not safe)) (##car _e230647231062_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230645231067_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230639231051_))
                        (let ((___splice240102240103_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230639231051_
                                  '0))))
                          (let ((_tl230650231072_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice240102240103_ '1)))
                                (_target230648231070_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice240102240103_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230650231072_))
                                (letrec ((_loop230651231075_
                                          (lambda (_hd230649231078_
                                                   _xarg230655231080_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230649231078_))
                                                (let ((_e230652231083_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230649231078_))))
                                                  (let ((_lp-tl230654231088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230652231083_)))
                                                        (_lp-hd230653231086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230652231083_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230653231086_))
                                                        (let ((_e230659231091_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230653231086_))))
                  (let ((_tl230657231096_
                         (let () (declare (not safe)) (##cdr _e230659231091_)))
                        (_hd230658231094_
                         (let ()
                           (declare (not safe))
                           (##car _e230659231091_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230658231094_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230658231094_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230657231096_))
                                (let ((_e230662231099_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230657231096_))))
                                  (let ((_tl230660231104_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230662231099_)))
                                        (_hd230661231102_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230662231099_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230660231104_))
                                        (let ((__tmp241361
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230661231102_
                                                       _xarg230655231080_))))
                                          (declare (not safe))
                                          (_loop230651231075_
                                           _lp-tl230654231088_
                                           __tmp241361))
                                        (___match240135240136_
                                         _e230623230998_
                                         _hd230622231001_
                                         _tl230621231003_
                                         ___splice240100240101_
                                         _target230624231006_
                                         _tl230626231008_))))
                                (___match240135240136_
                                 _e230623230998_
                                 _hd230622231001_
                                 _tl230621231003_
                                 ___splice240100240101_
                                 _target230624231006_
                                 _tl230626231008_))
                            (___match240135240136_
                             _e230623230998_
                             _hd230622231001_
                             _tl230621231003_
                             ___splice240100240101_
                             _target230624231006_
                             _tl230626231008_))
                        (___match240135240136_
                         _e230623230998_
                         _hd230622231001_
                         _tl230621231003_
                         ___splice240100240101_
                         _target230624231006_
                         _tl230626231008_))))
                (___match240135240136_
                 _e230623230998_
                 _hd230622231001_
                 _tl230621231003_
                 ___splice240100240101_
                 _target230624231006_
                 _tl230626231008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230656231107_
                                                       (reverse _xarg230655231080_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230633231035_))
                                                      (___kont240098240099_
                                                       _xarg230656231107_
                                                       _hd230646231065_
                                                       _arg230632231027_)
                                                      (___match240135240136_
                                                       _e230623230998_
                                                       _hd230622231001_
                                                       _tl230621231003_
                                                       ___splice240100240101_
                                                       _target230624231006_
                                                       _tl230626231008_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop230651231075_
                                     _target230648231070_
                                     '())))
                                (___match240135240136_
                                 _e230623230998_
                                 _hd230622231001_
                                 _tl230621231003_
                                 ___splice240100240101_
                                 _target230624231006_
                                 _tl230626231008_))))
                        (___match240135240136_
                         _e230623230998_
                         _hd230622231001_
                         _tl230621231003_
                         ___splice240100240101_
                         _target230624231006_
                         _tl230626231008_))
                    (___match240135240136_
                     _e230623230998_
                     _hd230622231001_
                     _tl230621231003_
                     ___splice240100240101_
                     _target230624231006_
                     _tl230626231008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240135240136_
                                                     _e230623230998_
                                                     _hd230622231001_
                                                     _tl230621231003_
                                                     ___splice240100240101_
                                                     _target230624231006_
                                                     _tl230626231008_))
                                                (___match240135240136_
                                                 _e230623230998_
                                                 _hd230622231001_
                                                 _tl230621231003_
                                                 ___splice240100240101_
                                                 _target230624231006_
                                                 _tl230626231008_))
                                            (___match240135240136_
                                             _e230623230998_
                                             _hd230622231001_
                                             _tl230621231003_
                                             ___splice240100240101_
                                             _target230624231006_
                                             _tl230626231008_))))
                                    (___match240135240136_
                                     _e230623230998_
                                     _hd230622231001_
                                     _tl230621231003_
                                     ___splice240100240101_
                                     _target230624231006_
                                     _tl230626231008_))))
                            (___match240135240136_
                             _e230623230998_
                             _hd230622231001_
                             _tl230621231003_
                             ___splice240100240101_
                             _target230624231006_
                             _tl230626231008_))
                        (___match240135240136_
                         _e230623230998_
                         _hd230622231001_
                         _tl230621231003_
                         ___splice240100240101_
                         _target230624231006_
                         _tl230626231008_))
                    (___match240135240136_
                     _e230623230998_
                     _hd230622231001_
                     _tl230621231003_
                     ___splice240100240101_
                     _target230624231006_
                     _tl230626231008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240135240136_
                                                     _e230623230998_
                                                     _hd230622231001_
                                                     _tl230621231003_
                                                     ___splice240100240101_
                                                     _target230624231006_
                                                     _tl230626231008_))))
                                            (___match240135240136_
                                             _e230623230998_
                                             _hd230622231001_
                                             _tl230621231003_
                                             ___splice240100240101_
                                             _target230624231006_
                                             _tl230626231008_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230627231011_ _target230624231006_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx240096240097_))
                  (let ((_e230623230998_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx240096240097_))))
                    (let ((_tl230621231003_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230623230998_)))
                          (_hd230622231001_
                           (let ()
                             (declare (not safe))
                             (##car _e230623230998_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230622231001_))
                          (let ((___splice240100240101_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230622231001_
                                    '0))))
                            (let ((_tl230626231008_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice240100240101_ '1)))
                                  (_target230624231006_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice240100240101_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230626231008_))
                                  (___match240123240124_
                                   _e230623230998_
                                   _hd230622231001_
                                   _tl230621231003_
                                   ___splice240100240101_
                                   _target230624231006_
                                   _tl230626231008_)
                                  (___match240135240136_
                                   _e230623230998_
                                   _hd230622231001_
                                   _tl230621231003_
                                   ___splice240100240101_
                                   _target230624231006_
                                   _tl230626231008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230621231003_))
                              (let ((_e230711230753_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230621231003_))))
                                (let ((_tl230709230758_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230711230753_)))
                                      (_hd230710230756_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230711230753_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230710230756_))
                                      (let ((_e230714230761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230710230756_))))
                                        (let ((_tl230712230766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230714230761_)))
                                              (_hd230713230764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230714230761_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230713230764_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230713230764_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230712230766_))
                                                      (let ((_e230717230769_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230712230766_))))
                (let ((_tl230715230774_
                       (let () (declare (not safe)) (##cdr _e230717230769_)))
                      (_hd230716230772_
                       (let () (declare (not safe)) (##car _e230717230769_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230716230772_))
                      (let ((_e230720230777_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230716230772_))))
                        (let ((_tl230718230782_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230720230777_)))
                              (_hd230719230780_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230720230777_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230719230780_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230719230780_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230718230782_))
                                      (let ((_e230723230785_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230718230782_))))
                                        (let ((_tl230721230790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230723230785_)))
                                              (_hd230722230788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230723230785_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230721230790_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230715230774_))
                                                  (let ((_e230726230793_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230715230774_))))
                                                    (let ((_tl230724230798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230726230793_)))
                                                          (_hd230725230796_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230726230793_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230725230796_))
                                                          (let ((_e230729230801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230725230796_))))
                    (let ((_tl230727230806_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230729230801_)))
                          (_hd230728230804_
                           (let ()
                             (declare (not safe))
                             (##car _e230729230801_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230728230804_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230728230804_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230727230806_))
                                  (let ((_e230732230809_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230727230806_))))
                                    (let ((_tl230730230814_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230732230809_)))
                                          (_hd230731230812_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230732230809_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230730230814_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230724230798_))
                                              (let ((_e230735230817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230724230798_))))
                                                (let ((_tl230733230822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230735230817_)))
                                                      (_hd230734230820_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230735230817_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230733230822_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230709230758_))
                                                          (___kont240108240109_
                                                           _hd230731230812_
                                                           _hd230722230788_
                                                           _hd230622231001_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g230616230740_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230616230740_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230616230740_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230616230740_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230616230740_)))
                              (let () (declare (not safe)) (_g230616230740_)))
                          (let () (declare (not safe)) (_g230616230740_)))))
                  (let () (declare (not safe)) (_g230616230740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230616230740_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230616230740_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230616230740_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230616230740_)))
                              (let ()
                                (declare (not safe))
                                (_g230616230740_)))))
                      (let () (declare (not safe)) (_g230616230740_)))))
              (let () (declare (not safe)) (_g230616230740_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230616230740_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230616230740_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230616230740_)))))
                              (let ()
                                (declare (not safe))
                                (_g230616230740_))))))
                  (let () (declare (not safe)) (_g230616230740_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form230416_)
        (let* ((_g230418230432_
                (lambda (_g230419230429_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230419230429_))))
               (_g230417230609_
                (lambda (_g230419230435_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230419230435_))
                      (let ((_e230424230437_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230419230435_))))
                        (let ((_hd230423230440_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230424230437_)))
                              (_tl230422230442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230424230437_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230422230442_))
                              (let ((_e230427230445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230422230442_))))
                                (let ((_hd230426230448_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230427230445_)))
                                      (_tl230425230450_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230427230445_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230425230450_))
                                      ((lambda (_L230453_ _L230454_)
                                         (let* ((___stx240218240219_ _L230454_)
                                                (_g230469230497_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx240218240219_)))))
                                           (let ((___kont240220240221_
                                                  (lambda (_L230588_)
                                                    (length (let ((__tmp241363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230598230601_ _g230599230603_)
                             (let ()
                               (declare (not safe))
                               (cons _g230598230601_ _g230599230603_)))))
                      (declare (not safe))
                      (foldr1 __tmp241363 '() _L230588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240224240225_
                                                  (lambda (_L230539_ _L230540_)
                                                    (let ((__tmp241364
                                                           (length (let ((__tmp241365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g230551230554_ _g230552230556_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g230551230554_
                                            _g230552230556_)))))
                             (declare (not safe))
                             (foldr1 __tmp241365 '() _L230540_)))))
              (declare (not safe))
              (cons __tmp241364 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240228240229_
                                                  (lambda (_L230502_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match240243240244_
                                                     (lambda (___splice240226240227_
                                                              _target230483230515_
                                                              _tl230485230517_)
                                                       (letrec ((_loop230486230520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230484230523_ _arg230490230525_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230484230523_))
                               (let ((_e230487230528_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230484230523_))))
                                 (let ((_lp-tl230489230533_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230487230528_)))
                                       (_lp-hd230488230531_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230487230528_))))
                                   (let ((__tmp241366
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230488230531_
                                                  _arg230490230525_))))
                                     (declare (not safe))
                                     (_loop230486230520_
                                      _lp-tl230489230533_
                                      __tmp241366))))
                               (let ((_arg230491230536_
                                      (reverse _arg230490230525_)))
                                 (___kont240224240225_
                                  _tl230485230517_
                                  _arg230491230536_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230486230520_ _target230483230515_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240237240238_
                                                     (lambda (___splice240222240223_
                                                              _target230472230564_
                                                              _tl230474230566_)
                                                       (letrec ((_loop230475230569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230473230572_ _arg230479230574_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230473230572_))
                               (let ((_e230476230577_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230473230572_))))
                                 (let ((_lp-tl230478230582_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230476230577_)))
                                       (_lp-hd230477230580_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230476230577_))))
                                   (let ((__tmp241367
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230477230580_
                                                  _arg230479230574_))))
                                     (declare (not safe))
                                     (_loop230475230569_
                                      _lp-tl230478230582_
                                      __tmp241367))))
                               (let ((_arg230480230585_
                                      (reverse _arg230479230574_)))
                                 (___kont240220240221_ _arg230480230585_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230475230569_ _target230472230564_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx240218240219_))
                                                   (let ((___splice240222240223_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx240218240219_
                                                             '0))))
                                                     (let ((_tl230474230566_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice240222240223_
                                                               '1)))
                                                           (_target230472230564_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice240222240223_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230474230566_))
                                                           (___match240237240238_
                                                            ___splice240222240223_
                                                            _target230472230564_
                                                            _tl230474230566_)
                                                           (___match240243240244_
                                                            ___splice240222240223_
                                                            _target230472230564_
                                                            _tl230474230566_))))
                                                   (___kont240228240229_
                                                    ___stx240218240219_))))))
                                       _hd230426230448_
                                       _hd230423230440_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230418230432_ _g230419230435_)))))
                              (let ()
                                (declare (not safe))
                                (_g230418230432_ _g230419230435_)))))
                      (let ()
                        (declare (not safe))
                        (_g230418230432_ _g230419230435_))))))
          (declare (not safe))
          (_g230417230609_ _form230416_))))
    (define gxc#lambda-expr?
      (lambda (_expr230369_)
        (let* ((___stx240246240247_ _expr230369_)
               (_g230372230382_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240246240247_)))))
          (let ((___kont240248240249_ (lambda (_L230402_) '#t))
                (___kont240250240251_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240246240247_))
                (let ((_e230377230394_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240246240247_))))
                  (let ((_tl230375230399_
                         (let () (declare (not safe)) (##cdr _e230377230394_)))
                        (_hd230376230397_
                         (let ()
                           (declare (not safe))
                           (##car _e230377230394_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230376230397_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd230376230397_))
                            (___kont240248240249_ _tl230375230399_)
                            (___kont240250240251_))
                        (___kont240250240251_))))
                (___kont240250240251_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr230322_)
        (let* ((___stx240264240265_ _expr230322_)
               (_g230325230335_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240264240265_)))))
          (let ((___kont240266240267_ (lambda (_L230355_) '#t))
                (___kont240268240269_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240264240265_))
                (let ((_e230330230347_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240264240265_))))
                  (let ((_tl230328230352_
                         (let () (declare (not safe)) (##cdr _e230330230347_)))
                        (_hd230329230350_
                         (let ()
                           (declare (not safe))
                           (##car _e230330230347_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230329230350_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd230329230350_))
                            (___kont240266240267_ _tl230328230352_)
                            (___kont240268240269_))
                        (___kont240268240269_))))
                (___kont240268240269_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr230191_)
        (let* ((___stx240282240283_ _expr230191_)
               (_g230194230224_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240282240283_)))))
          (let ((___kont240284240285_
                 (lambda (_L230292_ _L230293_ _L230294_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230294_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L230293_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L230292_))
                           '#f)
                       '#f)))
                (___kont240286240287_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240282240283_))
                (let ((_e230201230236_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240282240283_))))
                  (let ((_tl230199230241_
                         (let () (declare (not safe)) (##cdr _e230201230236_)))
                        (_hd230200230239_
                         (let ()
                           (declare (not safe))
                           (##car _e230201230236_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230200230239_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd230200230239_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230199230241_))
                                (let ((_e230204230244_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230199230241_))))
                                  (let ((_tl230202230249_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230204230244_)))
                                        (_hd230203230247_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230204230244_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd230203230247_))
                                        (let ((_e230207230252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd230203230247_))))
                                          (let ((_tl230205230257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230207230252_)))
                                                (_hd230206230255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230207230252_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230206230255_))
                                                (let ((_e230210230260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230206230255_))))
                                                  (let ((_tl230208230265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230210230260_)))
                                                        (_hd230209230263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230210230260_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd230209230263_))
                                                        (let ((_e230213230268_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd230209230263_))))
                  (let ((_tl230211230273_
                         (let () (declare (not safe)) (##cdr _e230213230268_)))
                        (_hd230212230271_
                         (let ()
                           (declare (not safe))
                           (##car _e230213230268_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl230211230273_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230208230265_))
                            (let ((_e230216230276_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230208230265_))))
                              (let ((_tl230214230281_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230216230276_)))
                                    (_hd230215230279_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230216230276_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl230214230281_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230205230257_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230202230249_))
                                            (let ((_e230219230284_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230202230249_))))
                                              (let ((_tl230217230289_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230219230284_)))
                                                    (_hd230218230287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230219230284_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl230217230289_))
                                                    (___kont240284240285_
                                                     _hd230218230287_
                                                     _hd230215230279_
                                                     _hd230212230271_)
                                                    (___kont240286240287_))))
                                            (___kont240286240287_))
                                        (___kont240286240287_))
                                    (___kont240286240287_))))
                            (___kont240286240287_))
                        (___kont240286240287_))))
                (___kont240286240287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240286240287_))))
                                        (___kont240286240287_))))
                                (___kont240286240287_))
                            (___kont240286240287_))
                        (___kont240286240287_))))
                (___kont240286240287_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr229516_)
        (let* ((___stx240344240345_ _expr229516_)
               (_g229519229677_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240344240345_)))))
          (let ((___kont240346240347_
                 (lambda (_L230065_
                          _L230066_
                          _L230067_
                          _L230068_
                          _L230069_
                          _L230070_
                          _L230071_
                          _L230072_
                          _L230073_
                          _L230074_
                          _L230075_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L230072_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L230068_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L230067_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L230075_
                                      _L230066_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L230074_
                                          _L230071_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L230069_
                                              _L230065_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L230073_
                                              _L230070_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont240348240349_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240344240345_))
                (let ((_e229534229689_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240344240345_))))
                  (let ((_tl229532229694_
                         (let () (declare (not safe)) (##cdr _e229534229689_)))
                        (_hd229533229692_
                         (let ()
                           (declare (not safe))
                           (##car _e229534229689_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229533229692_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229533229692_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229532229694_))
                                (let ((_e229537229697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229532229694_))))
                                  (let ((_tl229535229702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229537229697_)))
                                        (_hd229536229700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229537229697_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229536229700_))
                                        (let ((_e229540229705_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229536229700_))))
                                          (let ((_tl229538229710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229540229705_)))
                                                (_hd229539229708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229540229705_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229539229708_))
                                                (let ((_e229543229713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229539229708_))))
                                                  (let ((_tl229541229718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229543229713_)))
                                                        (_hd229542229716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229543229713_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229542229716_))
                                                        (let ((_e229546229721_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229542229716_))))
                  (let ((_tl229544229726_
                         (let () (declare (not safe)) (##cdr _e229546229721_)))
                        (_hd229545229724_
                         (let ()
                           (declare (not safe))
                           (##car _e229546229721_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229544229726_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229541229718_))
                            (let ((_e229549229729_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229541229718_))))
                              (let ((_tl229547229734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229549229729_)))
                                    (_hd229548229732_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229549229729_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229548229732_))
                                    (let ((_e229552229737_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229548229732_))))
                                      (let ((_tl229550229742_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229552229737_)))
                                            (_hd229551229740_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229552229737_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229551229740_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd229551229740_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229550229742_))
                                                    (let ((_e229555229745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229550229742_))))
                                                      (let ((_tl229553229750_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229555229745_)))
                    (_hd229554229748_
                     (let () (declare (not safe)) (##car _e229555229745_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229554229748_))
                    (let ((_e229558229753_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229554229748_))))
                      (let ((_tl229556229758_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229558229753_)))
                            (_hd229557229756_
                             (let ()
                               (declare (not safe))
                               (##car _e229558229753_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229557229756_))
                            (let ((_e229561229761_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229557229756_))))
                              (let ((_tl229559229766_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229561229761_)))
                                    (_hd229560229764_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229561229761_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229560229764_))
                                    (let ((_e229564229769_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229560229764_))))
                                      (let ((_tl229562229774_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229564229769_)))
                                            (_hd229563229772_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229564229769_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229562229774_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229559229766_))
                                                (let ((_e229567229777_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229559229766_))))
                                                  (let ((_tl229565229782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229567229777_)))
                                                        (_hd229566229780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229567229777_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229565229782_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl229556229758_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229553229750_))
                        (let ((_e229570229785_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229553229750_))))
                          (let ((_tl229568229790_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229570229785_)))
                                (_hd229569229788_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229570229785_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229569229788_))
                                (let ((_e229573229793_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229569229788_))))
                                  (let ((_tl229571229798_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229573229793_)))
                                        (_hd229572229796_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229573229793_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229572229796_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd229572229796_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229571229798_))
                                                (let ((_e229576229801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229571229798_))))
                                                  (let ((_tl229574229806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229576229801_)))
                                                        (_hd229575229804_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229576229801_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229575229804_))
                                                        (let ((_e229579229809_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229575229804_))))
                  (let ((_tl229577229814_
                         (let () (declare (not safe)) (##cdr _e229579229809_)))
                        (_hd229578229812_
                         (let ()
                           (declare (not safe))
                           (##car _e229579229809_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229574229806_))
                        (let ((_e229582229817_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229574229806_))))
                          (let ((_tl229580229822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229582229817_)))
                                (_hd229581229820_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229582229817_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229581229820_))
                                (let ((_e229585229825_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229581229820_))))
                                  (let ((_tl229583229830_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229585229825_)))
                                        (_hd229584229828_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229585229825_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229584229828_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd229584229828_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229583229830_))
                                                (let ((_e229588229833_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229583229830_))))
                                                  (let ((_tl229586229838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229588229833_)))
                                                        (_hd229587229836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229588229833_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229587229836_))
                                                        (let ((_e229591229841_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229587229836_))))
                  (let ((_tl229589229846_
                         (let () (declare (not safe)) (##cdr _e229591229841_)))
                        (_hd229590229844_
                         (let ()
                           (declare (not safe))
                           (##car _e229591229841_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229590229844_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd229590229844_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229589229846_))
                                (let ((_e229594229849_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229589229846_))))
                                  (let ((_tl229592229854_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229594229849_)))
                                        (_hd229593229852_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229594229849_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229592229854_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229586229838_))
                                            (let ((_e229597229857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229586229838_))))
                                              (let ((_tl229595229862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229597229857_)))
                                                    (_hd229596229860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229597229857_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229596229860_))
                                                    (let ((_e229600229865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229596229860_))))
                                                      (let ((_tl229598229870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229600229865_)))
                    (_hd229599229868_
                     (let () (declare (not safe)) (##car _e229600229865_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229599229868_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd229599229868_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229598229870_))
                            (let ((_e229603229873_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229598229870_))))
                              (let ((_tl229601229878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229603229873_)))
                                    (_hd229602229876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229603229873_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229601229878_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229595229862_))
                                        (let ((_e229606229881_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229595229862_))))
                                          (let ((_tl229604229886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229606229881_)))
                                                (_hd229605229884_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229606229881_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229605229884_))
                                                (let ((_e229609229889_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229605229884_))))
                                                  (let ((_tl229607229894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229609229889_)))
                                                        (_hd229608229892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229609229889_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd229608229892_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd229608229892_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229607229894_))
                        (let ((_e229612229897_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229607229894_))))
                          (let ((_tl229610229902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229612229897_)))
                                (_hd229611229900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229612229897_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229610229902_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229580229822_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229568229790_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229547229734_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229538229710_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229535229702_))
                                                    (let ((_e229615229905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229535229702_))))
                                                      (let ((_tl229613229910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229615229905_)))
                    (_hd229614229908_
                     (let () (declare (not safe)) (##car _e229615229905_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229614229908_))
                    (let ((_e229618229913_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229614229908_))))
                      (let ((_tl229616229918_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229618229913_)))
                            (_hd229617229916_
                             (let ()
                               (declare (not safe))
                               (##car _e229618229913_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229617229916_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd229617229916_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229616229918_))
                                    (let ((_e229621229921_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229616229918_))))
                                      (let ((_tl229619229926_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229621229921_)))
                                            (_hd229620229924_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229621229921_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229619229926_))
                                            (let ((_e229624229929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229619229926_))))
                                              (let ((_tl229622229934_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229624229929_)))
                                                    (_hd229623229932_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229624229929_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229623229932_))
                                                    (let ((_e229627229937_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229623229932_))))
                                                      (let ((_tl229625229942_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229627229937_)))
                    (_hd229626229940_
                     (let () (declare (not safe)) (##car _e229627229937_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229626229940_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd229626229940_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229625229942_))
                            (let ((_e229630229945_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229625229942_))))
                              (let ((_tl229628229950_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229630229945_)))
                                    (_hd229629229948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229630229945_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229629229948_))
                                    (let ((_e229633229953_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229629229948_))))
                                      (let ((_tl229631229958_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229633229953_)))
                                            (_hd229632229956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229633229953_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229632229956_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd229632229956_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229631229958_))
                                                    (let ((_e229636229961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229631229958_))))
                                                      (let ((_tl229634229966_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229636229961_)))
                    (_hd229635229964_
                     (let () (declare (not safe)) (##car _e229636229961_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl229634229966_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229628229950_))
                        (let ((_e229639229969_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229628229950_))))
                          (let ((_tl229637229974_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229639229969_)))
                                (_hd229638229972_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229639229969_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229638229972_))
                                (let ((_e229642229977_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229638229972_))))
                                  (let ((_tl229640229982_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229642229977_)))
                                        (_hd229641229980_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229642229977_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229641229980_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd229641229980_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229640229982_))
                                                (let ((_e229645229985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229640229982_))))
                                                  (let ((_tl229643229990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229645229985_)))
                                                        (_hd229644229988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229645229985_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229643229990_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl229637229974_))
                                                            (let ((_e229648229993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl229637229974_))))
                      (let ((_tl229646229998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229648229993_)))
                            (_hd229647229996_
                             (let ()
                               (declare (not safe))
                               (##car _e229648229993_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229647229996_))
                            (let ((_e229651230001_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229647229996_))))
                              (let ((_tl229649230006_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229651230001_)))
                                    (_hd229650230004_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229651230001_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd229650230004_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd229650230004_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229649230006_))
                                            (let ((_e229654230009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229649230006_))))
                                              (let ((_tl229652230014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229654230009_)))
                                                    (_hd229653230012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229654230009_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229652230014_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl229646229998_))
                                                        (let ((_e229657230017_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl229646229998_))))
                  (let ((_tl229655230022_
                         (let () (declare (not safe)) (##cdr _e229657230017_)))
                        (_hd229656230020_
                         (let ()
                           (declare (not safe))
                           (##car _e229657230017_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229656230020_))
                        (let ((_e229660230025_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229656230020_))))
                          (let ((_tl229658230030_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229660230025_)))
                                (_hd229659230028_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229660230025_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd229659230028_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd229659230028_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229658230030_))
                                        (let ((_e229663230033_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229658230030_))))
                                          (let ((_tl229661230038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229663230033_)))
                                                (_hd229662230036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229663230033_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229661230038_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229655230022_))
                                                    (let ((_e229666230041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229655230022_))))
                                                      (let ((_tl229664230046_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229666230041_)))
                    (_hd229665230044_
                     (let () (declare (not safe)) (##car _e229666230041_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229665230044_))
                    (let ((_e229669230049_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229665230044_))))
                      (let ((_tl229667230054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229669230049_)))
                            (_hd229668230052_
                             (let ()
                               (declare (not safe))
                               (##car _e229669230049_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229668230052_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd229668230052_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229667230054_))
                                    (let ((_e229672230057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229667230054_))))
                                      (let ((_tl229670230062_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229672230057_)))
                                            (_hd229671230060_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229672230057_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229670230062_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229664230046_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229622229934_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229613229910_))
                                                        (___kont240346240347_
                                                         _hd229671230060_
                                                         _hd229662230036_
                                                         _hd229644229988_
                                                         _hd229635229964_
                                                         _hd229620229924_
                                                         _hd229611229900_
                                                         _hd229602229876_
                                                         _hd229593229852_
                                                         _hd229578229812_
                                                         _hd229563229772_
                                                         _hd229545229724_)
                                                        (___kont240348240349_))
                                                    (___kont240348240349_))
                                                (___kont240348240349_))
                                            (___kont240348240349_))))
                                    (___kont240348240349_))
                                (___kont240348240349_))
                            (___kont240348240349_))))
                    (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240348240349_))
                                                (___kont240348240349_))))
                                        (___kont240348240349_))
                                    (___kont240348240349_))
                                (___kont240348240349_))))
                        (___kont240348240349_))))
                (___kont240348240349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240348240349_))))
                                            (___kont240348240349_))
                                        (___kont240348240349_))
                                    (___kont240348240349_))))
                            (___kont240348240349_))))
                    (___kont240348240349_))
                (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240348240349_))
                                            (___kont240348240349_))
                                        (___kont240348240349_))))
                                (___kont240348240349_))))
                        (___kont240348240349_))
                    (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240348240349_))
                                                (___kont240348240349_))
                                            (___kont240348240349_))))
                                    (___kont240348240349_))))
                            (___kont240348240349_))
                        (___kont240348240349_))
                    (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240348240349_))))
                                            (___kont240348240349_))))
                                    (___kont240348240349_))
                                (___kont240348240349_))
                            (___kont240348240349_))))
                    (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240348240349_))
                                                (___kont240348240349_))
                                            (___kont240348240349_))
                                        (___kont240348240349_))
                                    (___kont240348240349_))
                                (___kont240348240349_))))
                        (___kont240348240349_))
                    (___kont240348240349_))
                (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240348240349_))))
                                        (___kont240348240349_))
                                    (___kont240348240349_))))
                            (___kont240348240349_))
                        (___kont240348240349_))
                    (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240348240349_))))
                                            (___kont240348240349_))
                                        (___kont240348240349_))))
                                (___kont240348240349_))
                            (___kont240348240349_))
                        (___kont240348240349_))))
                (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240348240349_))
                                            (___kont240348240349_))
                                        (___kont240348240349_))))
                                (___kont240348240349_))))
                        (___kont240348240349_))))
                (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240348240349_))
                                            (___kont240348240349_))
                                        (___kont240348240349_))))
                                (___kont240348240349_))))
                        (___kont240348240349_))
                    (___kont240348240349_))
                (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240348240349_))
                                            (___kont240348240349_))))
                                    (___kont240348240349_))))
                            (___kont240348240349_))))
                    (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240348240349_))
                                                (___kont240348240349_))
                                            (___kont240348240349_))))
                                    (___kont240348240349_))))
                            (___kont240348240349_))
                        (___kont240348240349_))))
                (___kont240348240349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240348240349_))))
                                        (___kont240348240349_))))
                                (___kont240348240349_))
                            (___kont240348240349_))
                        (___kont240348240349_))))
                (___kont240348240349_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx229258_ _id229259_ _clauses229260_ _gensym?229261_)
        (let _lp229263_ ((_rest229265_ _clauses229260_)
                         (_ids229266_ '())
                         (_impls229267_ '())
                         (_clauses229268_ '()))
          (let* ((_rest229269229277_ _rest229265_)
                 (_else229271229285_
                  (lambda ()
                    (values (reverse _ids229266_)
                            (reverse _impls229267_)
                            (reverse _clauses229268_))))
                 (_K229273229490_
                  (lambda (_rest229288_ _clause229289_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause229289_))
                        (let ((__tmp241423
                               (let ()
                                 (declare (not safe))
                                 (cons _clause229289_ _clauses229268_))))
                          (declare (not safe))
                          (_lp229263_
                           _rest229288_
                           _ids229266_
                           _impls229267_
                           __tmp241423))
                        (let* ((_g229291229302_
                                (lambda (_g229292229299_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g229292229299_))))
                               (_g229290229487_
                                (lambda (_g229292229305_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g229292229305_))
                                      (let ((_e229297229307_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g229292229305_))))
                                        (let ((_hd229296229310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229297229307_)))
                                              (_tl229295229312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229297229307_))))
                                          ((lambda (_L229315_ _L229316_)
                                             (let* ((_id229333_
                                                     (let ((__tmp241370
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id229259_)))
                                                           (__tmp241369
                                                            (length _clauses229268_))
                                                           (__tmp241368
                                                            (if _gensym?229261_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp241370
                                                        '"__"
                                                        __tmp241369
                                                        __tmp241368)))
                                                    (_id229335_
                                                     (let ((__tmp241371
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx229258_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id229333_
                                                        __tmp241371)))
                                                    (_impl229337_
                                                     (let ((__tmp241372
                                                            (let ((__tmp241374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp241373
                           (let ()
                             (declare (not safe))
                             (cons _L229316_ _L229315_))))
                      (declare (not safe))
                      (cons __tmp241374 __tmp241373))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp241372 _stx229258_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause229484_
                                                     (let* ((___stx240728240729_
                                                             _L229316_)
                                                            (_g229341229369_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx240728240729_)))))
               (let ((___kont240730240731_
                      (lambda (_L229463_)
                        (let ((__tmp241375
                               (let ((__tmp241376
                                      (let ((__tmp241377
                                             (let ((__tmp241378
                                                    (let ((__tmp241384
                                                           (let ((__tmp241385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id229335_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241385)))
                  (__tmp241379
                   (let ((__tmp241380
                          (lambda (_g229473229476_ _g229474229478_)
                            (let ((__tmp241381
                                   (let ((__tmp241383
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp241382
                                          (let ()
                                            (declare (not safe))
                                            (cons _g229473229476_ '()))))
                                     (declare (not safe))
                                     (cons __tmp241383 __tmp241382))))
                              (declare (not safe))
                              (cons __tmp241381 _g229474229478_)))))
                     (declare (not safe))
                     (foldr1 __tmp241380 '() _L229463_))))
              (declare (not safe))
              (cons __tmp241384 __tmp241379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241378))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241377
                                         _stx229258_))))
                                 (declare (not safe))
                                 (cons __tmp241376 '()))))
                          (declare (not safe))
                          (cons _L229316_ __tmp241375))))
                     (___kont240734240735_
                      (lambda (_L229414_ _L229415_)
                        (let ((__tmp241386
                               (let ((__tmp241387
                                      (let ((__tmp241388
                                             (let ((__tmp241389
                                                    (let ((__tmp241403
                                                           (let ((__tmp241404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241404)))
                  (__tmp241390
                   (let ((__tmp241401
                          (let ((__tmp241402
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229335_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241402)))
                         (__tmp241391
                          (let ((__tmp241397
                                 (let ((__tmp241398
                                        (let ((__tmp241400
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp241399
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L229414_ '()))))
                                          (declare (not safe))
                                          (cons __tmp241400 __tmp241399))))
                                   (declare (not safe))
                                   (cons __tmp241398 '())))
                                (__tmp241392
                                 (let ((__tmp241393
                                        (lambda (_g229426229429_
                                                 _g229427229431_)
                                          (let ((__tmp241394
                                                 (let ((__tmp241396
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp241395
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g229426229429_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp241396
                                                         __tmp241395))))
                                            (declare (not safe))
                                            (cons __tmp241394
                                                  _g229427229431_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp241393 '() _L229415_))))
                            (declare (not safe))
                            (foldr1 cons __tmp241397 __tmp241392))))
                     (declare (not safe))
                     (cons __tmp241401 __tmp241391))))
              (declare (not safe))
              (cons __tmp241403 __tmp241390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241389))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241388
                                         _stx229258_))))
                                 (declare (not safe))
                                 (cons __tmp241387 '()))))
                          (declare (not safe))
                          (cons _L229316_ __tmp241386))))
                     (___kont240738240739_
                      (lambda (_L229374_)
                        (let ((__tmp241405
                               (let ((__tmp241406
                                      (let ((__tmp241407
                                             (let ((__tmp241408
                                                    (let ((__tmp241416
                                                           (let ((__tmp241417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241417)))
                  (__tmp241409
                   (let ((__tmp241414
                          (let ((__tmp241415
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229335_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241415)))
                         (__tmp241410
                          (let ((__tmp241411
                                 (let ((__tmp241413
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp241412
                                        (let ()
                                          (declare (not safe))
                                          (cons _L229374_ '()))))
                                   (declare (not safe))
                                   (cons __tmp241413 __tmp241412))))
                            (declare (not safe))
                            (cons __tmp241411 '()))))
                     (declare (not safe))
                     (cons __tmp241414 __tmp241410))))
              (declare (not safe))
              (cons __tmp241416 __tmp241409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241408))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241407
                                         _stx229258_))))
                                 (declare (not safe))
                                 (cons __tmp241406 '()))))
                          (declare (not safe))
                          (cons _L229316_ __tmp241405)))))
                 (let* ((___match240753240754_
                         (lambda (___splice240736240737_
                                  _target229355229390_
                                  _tl229357229392_)
                           (letrec ((_loop229358229395_
                                     (lambda (_hd229356229398_
                                              _arg229362229400_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229356229398_))
                                           (let ((_e229359229403_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229356229398_))))
                                             (let ((_lp-tl229361229408_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229359229403_)))
                                                   (_lp-hd229360229406_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229359229403_))))
                                               (let ((__tmp241418
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229360229406_
                                                              _arg229362229400_))))
                                                 (declare (not safe))
                                                 (_loop229358229395_
                                                  _lp-tl229361229408_
                                                  __tmp241418))))
                                           (let ((_arg229363229411_
                                                  (reverse _arg229362229400_)))
                                             (___kont240734240735_
                                              _tl229357229392_
                                              _arg229363229411_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229358229395_
                                _target229355229390_
                                '())))))
                        (___match240747240748_
                         (lambda (___splice240732240733_
                                  _target229344229439_
                                  _tl229346229441_)
                           (letrec ((_loop229347229444_
                                     (lambda (_hd229345229447_
                                              _arg229351229449_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229345229447_))
                                           (let ((_e229348229452_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229345229447_))))
                                             (let ((_lp-tl229350229457_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229348229452_)))
                                                   (_lp-hd229349229455_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229348229452_))))
                                               (let ((__tmp241419
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229349229455_
                                                              _arg229351229449_))))
                                                 (declare (not safe))
                                                 (_loop229347229444_
                                                  _lp-tl229350229457_
                                                  __tmp241419))))
                                           (let ((_arg229352229460_
                                                  (reverse _arg229351229449_)))
                                             (___kont240730240731_
                                              _arg229352229460_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229347229444_
                                _target229344229439_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx240728240729_))
                       (let ((___splice240732240733_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx240728240729_
                                 '0))))
                         (let ((_tl229346229441_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240732240733_ '1)))
                               (_target229344229439_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240732240733_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229346229441_))
                               (___match240747240748_
                                ___splice240732240733_
                                _target229344229439_
                                _tl229346229441_)
                               (___match240753240754_
                                ___splice240732240733_
                                _target229344229439_
                                _tl229346229441_))))
                       (___kont240738240739_ ___stx240728240729_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp241422
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id229335_
                                                              _ids229266_)))
                                                     (__tmp241421
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl229337_
                                                              _impls229267_)))
                                                     (__tmp241420
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause229484_
                                                              _clauses229268_))))
                                                 (declare (not safe))
                                                 (_lp229263_
                                                  _rest229288_
                                                  __tmp241422
                                                  __tmp241421
                                                  __tmp241420))))
                                           _tl229295229312_
                                           _hd229296229310_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g229291229302_ _g229292229305_))))))
                          (declare (not safe))
                          (_g229290229487_ _clause229289_))))))
            (if (let () (declare (not safe)) (##pair? _rest229269229277_))
                (let ((_hd229274229493_
                       (let ()
                         (declare (not safe))
                         (##car _rest229269229277_)))
                      (_tl229275229495_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest229269229277_))))
                  (let* ((_clause229498_ _hd229274229493_)
                         (_rest229500_ _tl229275229495_))
                    (declare (not safe))
                    (_K229273229490_ _rest229500_ _clause229498_)))
                (let () (declare (not safe)) (_else229271229285_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx229505_ _id229506_ _clauses229507_)
        (let ((_gensym?229509_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx229505_
           _id229506_
           _clauses229507_
           _gensym?229509_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g241425_
        (let ((_g241424_ (let () (declare (not safe)) (##length _g241425_))))
          (cond ((let () (declare (not safe)) (##fx= _g241424_ 3))
                 (apply (lambda (_stx229505_ _id229506_ _clauses229507_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx229505_
                             _id229506_
                             _clauses229507_)))
                        _g241425_))
                ((let () (declare (not safe)) (##fx= _g241424_ 4))
                 (apply (lambda (_stx229511_
                                 _id229512_
                                 _clauses229513_
                                 _gensym?229514_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx229511_
                             _id229512_
                             _clauses229513_
                             _gensym?229514_)))
                        _g241425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g241425_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx228535_)
        (letrec ((_case-lambda-clause-def228537_
                  (lambda (_id229254_ _impl229255_)
                    (let ((__tmp241426
                           (let ((__tmp241427
                                  (let ((__tmp241430
                                         (let ()
                                           (declare (not safe))
                                           (cons _id229254_ '())))
                                        (__tmp241428
                                         (let ((__tmp241429
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl229255_))))
                                           (declare (not safe))
                                           (cons __tmp241429 '()))))
                                    (declare (not safe))
                                    (cons __tmp241430 __tmp241428))))
                             (declare (not safe))
                             (cons '%#define-values __tmp241427))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241426 _stx228535_))))
                 (_opt-lambda-dispatch-name228538_
                  (lambda (_id229250_)
                    (if (uninterned-symbol? _id229250_)
                        (let ((_str229252_ (symbol->string _id229250_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str229252_))
                              '"%"
                              _id229250_))
                        _id229250_)))
                 (_kw-lambda-dispatch-name228539_
                  (lambda (_id229245_ _name229246_)
                    (if (uninterned-symbol? _id229245_)
                        (let ((_str229248_ (symbol->string _id229245_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str229248_))
                              _name229246_
                              _id229245_))
                        _id229245_))))
          (let* ((___stx240776240777_ _stx228535_)
                 (_g228544228603_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240776240777_)))))
            (let ((___kont240778240779_
                   (lambda (_L229154_ _L229155_)
                     (let* ((___stx240756240757_ _L229154_)
                            (_g229172229186_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240756240757_)))))
                       (let ((___kont240758240759_
                              (lambda (_L229230_) _stx228535_))
                             (___kont240760240761_
                              (lambda (_L229199_)
                                (let ((_g241431_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx228535_
                                          _L229155_
                                          _L229199_))))
                                  (begin
                                    (let ((_g241432_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g241431_)
                                                 (##vector-length _g241431_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g241432_ 3)))
                                          (error "Context expects 3 values"
                                                 _g241432_)))
                                    (let ((_ids229209_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241431_ 0)))
                                          (_impls229210_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241431_ 1)))
                                          (_clauses229211_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241431_ 2))))
                                      (let* ((_g241433_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids229209_))
                                             (_defs229214_
                                              (map _case-lambda-clause-def228537_
                                                   _ids229209_
                                                   _impls229210_)))
                                        (let ((__tmp241435
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L229155_)))
                                              (__tmp241434
                                               (map gxc#identifier-symbol
                                                    _ids229209_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp241435
                                           '" => "
                                           __tmp241434))
                                        (let ((__tmp241436
                                               (let ((__tmp241437
                                                      (let ((__tmp241438
                                                             (let ((__tmp241439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241440
                                   (let ((__tmp241441
                                          (let ((__tmp241446
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L229155_ '())))
                                                (__tmp241442
                                                 (let ((__tmp241443
                                                        (let ((__tmp241445
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses229211_)))
                      (__tmp241444
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp241445 __tmp241444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241443 '()))))
                                            (declare (not safe))
                                            (cons __tmp241446 __tmp241442))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp241441))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241440
                               _stx228535_))))
                       (declare (not safe))
                       (cons __tmp241439 '()))))
                (declare (not safe))
                (foldr1 cons __tmp241438 _defs229214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp241437))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp241436
                                           _stx228535_)))))))))
                         (let ((___match240767240768_
                                (lambda (_e229177229222_
                                         _hd229176229225_
                                         _tl229175229227_)
                                  (let ((_L229230_ _tl229175229227_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L229230_))
                                        (___kont240758240759_ _L229230_)
                                        (___kont240760240761_
                                         _tl229175229227_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx240756240757_))
                               (let ((_e229177229222_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx240756240757_))))
                                 (let ((_tl229175229227_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e229177229222_)))
                                       (_hd229176229225_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e229177229222_))))
                                   (___match240767240768_
                                    _e229177229222_
                                    _hd229176229225_
                                    _tl229175229227_)))
                               (let ()
                                 (declare (not safe))
                                 (_g229172229186_))))))))
                  (___kont240780240781_
                   (lambda (_L228972_ _L228973_)
                     (let* ((_g228989229019_
                             (lambda (_g228990229016_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228990229016_))))
                            (_g228988229114_
                             (lambda (_g228990229022_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228990229022_))
                                   (let ((_e228996229024_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228990229022_))))
                                     (let ((_hd228995229027_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228996229024_)))
                                           (_tl228994229029_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228996229024_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228994229029_))
                                           (let ((_e228999229032_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228994229029_))))
                                             (let ((_hd228998229035_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228999229032_)))
                                                   (_tl228997229037_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228999229032_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228998229035_))
                                                   (let ((_e229002229040_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228998229035_))))
                                                     (let ((_hd229001229043_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229002229040_)))
                                                           (_tl229000229045_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229002229040_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd229001229043_))
                                                           (let ((_e229005229048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd229001229043_))))
                     (let ((_hd229004229051_
                            (let ()
                              (declare (not safe))
                              (##car _e229005229048_)))
                           (_tl229003229053_
                            (let ()
                              (declare (not safe))
                              (##cdr _e229005229048_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd229004229051_))
                           (let ((_e229008229056_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd229004229051_))))
                             (let ((_hd229007229059_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e229008229056_)))
                                   (_tl229006229061_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e229008229056_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl229006229061_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl229003229053_))
                                       (let ((_e229011229064_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl229003229053_))))
                                         (let ((_hd229010229067_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229011229064_)))
                                               (_tl229009229069_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229011229064_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl229009229069_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl229000229045_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228997229037_))
                                                       (let ((_e229014229072_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228997229037_))))
                 (let ((_hd229013229075_
                        (let () (declare (not safe)) (##car _e229014229072_)))
                       (_tl229012229077_
                        (let () (declare (not safe)) (##cdr _e229014229072_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229012229077_))
                       ((lambda (_L229080_ _L229081_ _L229082_)
                          (let* ((_lambda-id229106_
                                  (let ((__tmp241449
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L228973_)))
                                        (__tmp241447
                                         (let ((__tmp241448
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L229082_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name228538_
                                            __tmp241448))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp241449
                                     '"__"
                                     __tmp241447)))
                                 (_lambda-id229108_
                                  (let ((__tmp241450
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx228535_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id229106_
                                     __tmp241450)))
                                 (_g241451_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id229108_)))
                                 (_new-case-lambda-expr229111_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L229080_
                                     _L229082_
                                     _lambda-id229108_))))
                            (let ((__tmp241453
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L228973_)))
                                  (__tmp241452
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id229108_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp241453
                               '" => "
                               __tmp241452))
                            (let ((__tmp241454
                                   (let ((__tmp241455
                                          (let ((__tmp241463
                                                 (let ((__tmp241464
                                                        (let ((__tmp241465
                                                               (let ((__tmp241468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id229108_ '())))
                             (__tmp241466
                              (let ((__tmp241467
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L229081_))))
                                (declare (not safe))
                                (cons __tmp241467 '()))))
                         (declare (not safe))
                         (cons __tmp241468 __tmp241466))))
                  (declare (not safe))
                  (cons '%#define-values __tmp241465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp241464
                                                    _stx228535_)))
                                                (__tmp241456
                                                 (let ((__tmp241457
                                                        (let ((__tmp241458
                                                               (let ((__tmp241459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp241460
                                     (let ((__tmp241462
                                            (let ()
                                              (declare (not safe))
                                              (cons _L228973_ '())))
                                           (__tmp241461
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr229111_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp241462 __tmp241461))))
                                (declare (not safe))
                                (cons '%#define-values __tmp241460))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp241459 _stx228535_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp241458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241457 '()))))
                                            (declare (not safe))
                                            (cons __tmp241463 __tmp241456))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp241455))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241454
                               _stx228535_))))
                        _hd229013229075_
                        _hd229010229067_
                        _hd229007229059_)
                       (let ()
                         (declare (not safe))
                         (_g228989229019_ _g228990229022_)))))
               (let () (declare (not safe)) (_g228989229019_ _g228990229022_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228989229019_
                                                      _g228990229022_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228989229019_
                                                  _g228990229022_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228989229019_ _g228990229022_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228989229019_ _g228990229022_)))))
                           (let ()
                             (declare (not safe))
                             (_g228989229019_ _g228990229022_)))))
                   (let ()
                     (declare (not safe))
                     (_g228989229019_ _g228990229022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228989229019_
                                                      _g228990229022_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228989229019_
                                              _g228990229022_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228989229019_ _g228990229022_))))))
                       (declare (not safe))
                       (_g228988229114_ _L228972_))))
                  (___kont240782240783_
                   (lambda (_L228686_ _L228687_)
                     (let* ((_g228703228756_
                             (lambda (_g228704228753_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228704228753_))))
                            (_g228702228932_
                             (lambda (_g228704228759_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228704228759_))
                                   (let ((_e228712228761_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228704228759_))))
                                     (let ((_hd228711228764_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228712228761_)))
                                           (_tl228710228766_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228712228761_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228710228766_))
                                           (let ((_e228715228769_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228710228766_))))
                                             (let ((_hd228714228772_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228715228769_)))
                                                   (_tl228713228774_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228715228769_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228714228772_))
                                                   (let ((_e228718228777_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228714228772_))))
                                                     (let ((_hd228717228780_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228718228777_)))
                                                           (_tl228716228782_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228718228777_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228717228780_))
                                                           (let ((_e228721228785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228717228780_))))
                     (let ((_hd228720228788_
                            (let ()
                              (declare (not safe))
                              (##car _e228721228785_)))
                           (_tl228719228790_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228721228785_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228720228788_))
                           (let ((_e228724228793_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228720228788_))))
                             (let ((_hd228723228796_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228724228793_)))
                                   (_tl228722228798_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228724228793_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228722228798_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228719228790_))
                                       (let ((_e228727228801_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228719228790_))))
                                         (let ((_hd228726228804_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228727228801_)))
                                               (_tl228725228806_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228727228801_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd228726228804_))
                                               (let ((_e228730228809_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd228726228804_))))
                                                 (let ((_hd228729228812_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228730228809_)))
                                                       (_tl228728228814_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228730228809_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228728228814_))
                                                       (let ((_e228733228817_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228728228814_))))
                 (let ((_hd228732228820_
                        (let () (declare (not safe)) (##car _e228733228817_)))
                       (_tl228731228822_
                        (let () (declare (not safe)) (##cdr _e228733228817_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd228732228820_))
                       (let ((_e228736228825_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd228732228820_))))
                         (let ((_hd228735228828_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228736228825_)))
                               (_tl228734228830_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228736228825_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd228735228828_))
                               (let ((_e228739228833_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd228735228828_))))
                                 (let ((_hd228738228836_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228739228833_)))
                                       (_tl228737228838_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228739228833_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228738228836_))
                                       (let ((_e228742228841_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228738228836_))))
                                         (let ((_hd228741228844_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228742228841_)))
                                               (_tl228740228846_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228742228841_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228740228846_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl228737228838_))
                                                   (let ((_e228745228849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl228737228838_))))
                                                     (let ((_hd228744228852_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228745228849_)))
                                                           (_tl228743228854_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228745228849_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228743228854_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl228734228830_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl228731228822_))
                           (let ((_e228748228857_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl228731228822_))))
                             (let ((_hd228747228860_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228748228857_)))
                                   (_tl228746228862_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228748228857_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228746228862_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl228725228806_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl228716228782_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl228713228774_))
                                               (let ((_e228751228865_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl228713228774_))))
                                                 (let ((_hd228750228868_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228751228865_)))
                                                       (_tl228749228870_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228751228865_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl228749228870_))
                                                       ((lambda (_L228873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L228874_
                         _L228875_
                         _L228876_
                         _L228877_)
                  (let* ((_get-kws-id228917_
                          (let ((__tmp241471
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228687_)))
                                (__tmp241469
                                 (let ((__tmp241470
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228877_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228539_
                                    __tmp241470
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241471 '"__" __tmp241469)))
                         (_get-kws-id228919_
                          (let ((__tmp241472
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228535_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id228917_
                             __tmp241472)))
                         (_main-id228921_
                          (let ((__tmp241475
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228687_)))
                                (__tmp241473
                                 (let ((__tmp241474
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228876_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228539_
                                    __tmp241474
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241475 '"__" __tmp241473)))
                         (_main-id228923_
                          (let ((__tmp241476
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228535_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id228921_
                             __tmp241476)))
                         (_g241477_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id228919_)))
                         (_g241478_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id228923_)))
                         (_new-kw-dispatch228927_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228873_
                             _L228877_
                             _get-kws-id228919_)))
                         (_new-get-kws228929_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228874_
                             _L228876_
                             _main-id228923_))))
                    (let ((__tmp241481
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L228687_)))
                          (__tmp241480
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id228919_)))
                          (__tmp241479
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id228923_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp241481
                       '" => "
                       __tmp241480
                       '" => "
                       __tmp241479))
                    (let ((__tmp241482
                           (let ((__tmp241483
                                  (let ((__tmp241496
                                         (let ((__tmp241497
                                                (let ((__tmp241498
                                                       (let ((__tmp241499
                                                              (let ((__tmp241501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id228923_ '())))
                            (__tmp241500
                             (let ()
                               (declare (not safe))
                               (cons _L228875_ '()))))
                        (declare (not safe))
                        (cons __tmp241501 __tmp241500))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241498
                                                   _stx228535_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp241497)))
                                        (__tmp241484
                                         (let ((__tmp241491
                                                (let ((__tmp241492
                                                       (let ((__tmp241493
                                                              (let ((__tmp241495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id228919_ '())))
                            (__tmp241494
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws228929_ '()))))
                        (declare (not safe))
                        (cons __tmp241495 __tmp241494))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241492
                                                   _stx228535_)))
                                               (__tmp241485
                                                (let ((__tmp241486
                                                       (let ((__tmp241487
                                                              (let ((__tmp241488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp241490
                                    (let ()
                                      (declare (not safe))
                                      (cons _L228687_ '())))
                                   (__tmp241489
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch228927_ '()))))
                               (declare (not safe))
                               (cons __tmp241490 __tmp241489))))
                        (declare (not safe))
                        (cons '%#define-values __tmp241488))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp241487 _stx228535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp241486 '()))))
                                           (declare (not safe))
                                           (cons __tmp241491 __tmp241485))))
                                    (declare (not safe))
                                    (cons __tmp241496 __tmp241484))))
                             (declare (not safe))
                             (cons '%#begin __tmp241483))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241482 _stx228535_))))
                _hd228750228868_
                _hd228747228860_
                _hd228744228852_
                _hd228741228844_
                _hd228723228796_)
               (let ()
                 (declare (not safe))
                 (_g228703228756_ _g228704228759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228703228756_
                                                  _g228704228759_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g228703228756_
                                              _g228704228759_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g228703228756_ _g228704228759_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228703228756_ _g228704228759_)))))
                           (let ()
                             (declare (not safe))
                             (_g228703228756_ _g228704228759_)))
                       (let ()
                         (declare (not safe))
                         (_g228703228756_ _g228704228759_)))
                   (let ()
                     (declare (not safe))
                     (_g228703228756_ _g228704228759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228703228756_
                                                      _g228704228759_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228703228756_
                                                  _g228704228759_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228703228756_ _g228704228759_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g228703228756_ _g228704228759_)))))
                       (let ()
                         (declare (not safe))
                         (_g228703228756_ _g228704228759_)))))
               (let ()
                 (declare (not safe))
                 (_g228703228756_ _g228704228759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228703228756_
                                                  _g228704228759_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228703228756_ _g228704228759_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228703228756_ _g228704228759_)))))
                           (let ()
                             (declare (not safe))
                             (_g228703228756_ _g228704228759_)))))
                   (let ()
                     (declare (not safe))
                     (_g228703228756_ _g228704228759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228703228756_
                                                      _g228704228759_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228703228756_
                                              _g228704228759_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228703228756_ _g228704228759_))))))
                       (declare (not safe))
                       (_g228702228932_ _L228686_))))
                  (___kont240784240785_
                   (lambda (_L228632_ _L228633_)
                     (let ((__tmp241502
                            (let ((__tmp241503
                                   (let ((__tmp241504
                                          (let ((__tmp241505
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L228632_))))
                                            (declare (not safe))
                                            (cons __tmp241505 '()))))
                                     (declare (not safe))
                                     (cons _L228633_ __tmp241504))))
                              (declare (not safe))
                              (cons '%#define-values __tmp241503))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp241502 _stx228535_)))))
              (let* ((___match240869240870_
                      (lambda (_e228578228654_
                               _hd228577228657_
                               _tl228576228659_
                               _e228581228662_
                               _hd228580228665_
                               _tl228579228667_
                               _e228584228670_
                               _hd228583228673_
                               _tl228582228675_
                               _e228587228678_
                               _hd228586228681_
                               _tl228585228683_)
                        (let ((_L228686_ _hd228586228681_)
                              (_L228687_ _hd228583228673_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228687_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228686_)))
                              (___kont240782240783_ _L228686_ _L228687_)
                              (___kont240784240785_
                               _hd228586228681_
                               _hd228580228665_)))))
                     (___match240841240842_
                      (lambda (_e228564228940_
                               _hd228563228943_
                               _tl228562228945_
                               _e228567228948_
                               _hd228566228951_
                               _tl228565228953_
                               _e228570228956_
                               _hd228569228959_
                               _tl228568228961_
                               _e228573228964_
                               _hd228572228967_
                               _tl228571228969_)
                        (let ((_L228972_ _hd228572228967_)
                              (_L228973_ _hd228569228959_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228973_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L228972_)))
                              (___kont240780240781_ _L228972_ _L228973_)
                              (___match240869240870_
                               _e228564228940_
                               _hd228563228943_
                               _tl228562228945_
                               _e228567228948_
                               _hd228566228951_
                               _tl228565228953_
                               _e228570228956_
                               _hd228569228959_
                               _tl228568228961_
                               _e228573228964_
                               _hd228572228967_
                               _tl228571228969_)))))
                     (___match240813240814_
                      (lambda (_e228550229122_
                               _hd228549229125_
                               _tl228548229127_
                               _e228553229130_
                               _hd228552229133_
                               _tl228551229135_
                               _e228556229138_
                               _hd228555229141_
                               _tl228554229143_
                               _e228559229146_
                               _hd228558229149_
                               _tl228557229151_)
                        (let ((_L229154_ _hd228558229149_)
                              (_L229155_ _hd228555229141_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L229155_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L229154_)))
                              (___kont240778240779_ _L229154_ _L229155_)
                              (___match240841240842_
                               _e228550229122_
                               _hd228549229125_
                               _tl228548229127_
                               _e228553229130_
                               _hd228552229133_
                               _tl228551229135_
                               _e228556229138_
                               _hd228555229141_
                               _tl228554229143_
                               _e228559229146_
                               _hd228558229149_
                               _tl228557229151_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240776240777_))
                    (let ((_e228550229122_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240776240777_))))
                      (let ((_tl228548229127_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228550229122_)))
                            (_hd228549229125_
                             (let ()
                               (declare (not safe))
                               (##car _e228550229122_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228548229127_))
                            (let ((_e228553229130_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228548229127_))))
                              (let ((_tl228551229135_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228553229130_)))
                                    (_hd228552229133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228553229130_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd228552229133_))
                                    (let ((_e228556229138_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd228552229133_))))
                                      (let ((_tl228554229143_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228556229138_)))
                                            (_hd228555229141_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228556229138_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228554229143_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228551229135_))
                                                (let ((_e228559229146_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228551229135_))))
                                                  (let ((_tl228557229151_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228559229146_)))
                                                        (_hd228558229149_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228559229146_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228557229151_))
                                                        (___match240813240814_
                                                         _e228550229122_
                                                         _hd228549229125_
                                                         _tl228548229127_
                                                         _e228553229130_
                                                         _hd228552229133_
                                                         _tl228551229135_
                                                         _e228556229138_
                                                         _hd228555229141_
                                                         _tl228554229143_
                                                         _e228559229146_
                                                         _hd228558229149_
                                                         _tl228557229151_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228544228603_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228544228603_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228551229135_))
                                                (let ((_e228598228624_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228551229135_))))
                                                  (let ((_tl228596228629_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228598228624_)))
                                                        (_hd228597228627_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228598228624_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228596228629_))
                                                        (___kont240784240785_
                                                         _hd228597228627_
                                                         _hd228552229133_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228544228603_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228544228603_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228551229135_))
                                        (let ((_e228598228624_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228551229135_))))
                                          (let ((_tl228596228629_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228598228624_)))
                                                (_hd228597228627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228598228624_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228596228629_))
                                                (___kont240784240785_
                                                 _hd228597228627_
                                                 _hd228552229133_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228544228603_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228544228603_))))))
                            (let () (declare (not safe)) (_g228544228603_)))))
                    (let () (declare (not safe)) (_g228544228603_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx227467_)
        (letrec* ((_bind-e__239172239173_
                   (lambda (_id228519_ _expr228520_ _compile?228521_)
                     (let ((__tmp241508
                            (let ()
                              (declare (not safe))
                              (cons _id228519_ '())))
                           (__tmp241506
                            (let ((__tmp241507
                                   (if _compile?228521_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr228520_))
                                       _expr228520_)))
                              (declare (not safe))
                              (cons __tmp241507 '()))))
                       (declare (not safe))
                       (cons __tmp241508 __tmp241506))))
                  (_bind-e__0__239174239175_
                   (lambda (_id228526_ _expr228527_)
                     (let ((_compile?228529_ '#t))
                       (declare (not safe))
                       (_bind-e__239172239173_
                        _id228526_
                        _expr228527_
                        _compile?228529_))))
                  (_bind-e227469_
                   (lambda _g241510_
                     (let ((_g241509_
                            (let ()
                              (declare (not safe))
                              (##length _g241510_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241509_ 2))
                              (apply (lambda (_id228526_ _expr228527_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__239174239175_
                                          _id228526_
                                          _expr228527_)))
                                     _g241510_))
                             ((let () (declare (not safe)) (##fx= _g241509_ 3))
                              (apply (lambda (_id228531_
                                              _expr228532_
                                              _compile?228533_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__239172239173_
                                          _id228531_
                                          _expr228532_
                                          _compile?228533_)))
                                     _g241510_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241510_))))))
                  (_compile-bindings227470_
                   (lambda (_bindings228103_)
                     (let _lp228105_ ((_rest228107_ _bindings228103_)
                                      (_lift1228108_ '())
                                      (_lift2228109_ '())
                                      (_bind228110_ '()))
                       (let* ((_rest228111228119_ _rest228107_)
                              (_else228113228127_
                               (lambda ()
                                 (values (reverse _lift1228108_)
                                         (reverse _lift2228109_)
                                         (reverse _bind228110_))))
                              (_K228115228506_
                               (lambda (_rest228130_ _hd228131_)
                                 (let* ((___stx240912240913_ _hd228131_)
                                        (_g228135228171_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240912240913_)))))
                                   (let ((___kont240914240915_
                                          (lambda (_L228413_ _L228414_)
                                            (let* ((___stx240892240893_
                                                    _L228413_)
                                                   (_g228429228443_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240892240893_)))))
                                              (let ((___kont240894240895_
                                                     (lambda (_L228491_)
                                                       (let ((__tmp241511
                                                              (let ((__tmp241512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__239172239173_
                                _L228414_
                                _L228413_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241512 _bind228110_))))
                 (declare (not safe))
                 (_lp228105_
                  _rest228130_
                  _lift1228108_
                  _lift2228109_
                  __tmp241511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240896240897_
                                                     (lambda (_L228456_)
                                                       (let ((_g241513_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx227467_
                         _L228414_
                         _L228456_
                         '#t))))
                 (begin
                   (let ((_g241514_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241513_)
                                (##vector-length _g241513_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241514_ 3)))
                         (error "Context expects 3 values" _g241514_)))
                   (let ((_ids228466_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241513_ 0)))
                         (_impls228467_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241513_ 1)))
                         (_clauses228468_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241513_ 2))))
                     (let* ((_g241515_
                             (for-each gx#core-bind-runtime! _ids228466_))
                            (_xbind228471_
                             (map _bind-e227469_ _ids228466_ _impls228467_))
                            (_expr*228473_
                             (let ((__tmp241517
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses228468_)))
                                   (__tmp241516
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241517
                                __tmp241516)))
                            (_bind*228475_
                             (let ()
                               (declare (not safe))
                               (_bind-e__239172239173_
                                _L228414_
                                _expr*228473_
                                '#f))))
                       (let ((__tmp241519
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L228414_)))
                             (__tmp241518
                              (map gxc#identifier-symbol _ids228466_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241519
                          '" => "
                          __tmp241518))
                       (let ((__tmp241521
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2228109_ _xbind228471_)))
                             (__tmp241520
                              (let ()
                                (declare (not safe))
                                (cons _bind*228475_ _bind228110_))))
                         (declare (not safe))
                         (_lp228105_
                          _rest228130_
                          _lift1228108_
                          __tmp241521
                          __tmp241520)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240903240904_
                                                       (lambda (_e228434228483_
                                                                _hd228433228486_
                                                                _tl228432228488_)
                                                         (let ((_L228491_
                                                                _tl228432228488_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L228491_))
                       (___kont240894240895_ _L228491_)
                       (___kont240896240897_ _tl228432228488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240892240893_))
                                                      (let ((_e228434228483_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240892240893_))))
                (let ((_tl228432228488_
                       (let () (declare (not safe)) (##cdr _e228434228483_)))
                      (_hd228433228486_
                       (let () (declare (not safe)) (##car _e228434228483_))))
                  (___match240903240904_
                   _e228434228483_
                   _hd228433228486_
                   _tl228432228488_)))
              (let () (declare (not safe)) (_g228429228443_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240916240917_
                                          (lambda (_L228241_ _L228242_)
                                            (let* ((_g228256228286_
                                                    (lambda (_g228257228283_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g228257228283_))))
                                                   (_g228255228381_
                                                    (lambda (_g228257228289_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g228257228289_))
                                                          (let ((_e228263228291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g228257228289_))))
                    (let ((_hd228262228294_
                           (let ()
                             (declare (not safe))
                             (##car _e228263228291_)))
                          (_tl228261228296_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228263228291_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228261228296_))
                          (let ((_e228266228299_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228261228296_))))
                            (let ((_hd228265228302_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228266228299_)))
                                  (_tl228264228304_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228266228299_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228265228302_))
                                  (let ((_e228269228307_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228265228302_))))
                                    (let ((_hd228268228310_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228269228307_)))
                                          (_tl228267228312_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228269228307_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228268228310_))
                                          (let ((_e228272228315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228268228310_))))
                                            (let ((_hd228271228318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228272228315_)))
                                                  (_tl228270228320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228272228315_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228271228318_))
                                                  (let ((_e228275228323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228271228318_))))
                                                    (let ((_hd228274228326_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228275228323_)))
                                                          (_tl228273228328_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228275228323_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228273228328_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228270228320_))
                      (let ((_e228278228331_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228270228320_))))
                        (let ((_hd228277228334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228278228331_)))
                              (_tl228276228336_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228278228331_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl228276228336_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228267228312_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228264228304_))
                                      (let ((_e228281228339_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228264228304_))))
                                        (let ((_hd228280228342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228281228339_)))
                                              (_tl228279228344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228281228339_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228279228344_))
                                              ((lambda (_L228347_
                                                        _L228348_
                                                        _L228349_)
                                                 (let* ((_lambda-id228373_
                                                         (let ((__tmp241523
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L228242_)))
                       (__tmp241522 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241523 __tmp241522)))
                (_lambda-id228375_
                 (let ((__tmp241524
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx227467_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id228373_ __tmp241524)))
                (_g241525_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id228375_)))
                (_new-case-lambda-expr228378_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L228347_
                    _L228349_
                    _lambda-id228375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241527
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L228242_)))
                                                         (__tmp241526
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id228375_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241527
                                                      '" => "
                                                      __tmp241526))
                                                   (let ((__tmp241530
                                                          (let ((__tmp241531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__239172239173_
                            _L228242_
                            _new-case-lambda-expr228378_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241531 _rest228130_)))
                 (__tmp241528
                  (let ((__tmp241529
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__239174239175_
                            _lambda-id228375_
                            _L228348_))))
                    (declare (not safe))
                    (cons __tmp241529 _lift1228108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp228105_
                                                      __tmp241530
                                                      __tmp241528
                                                      _lift2228109_
                                                      _bind228110_))))
                                               _hd228280228342_
                                               _hd228277228334_
                                               _hd228274228326_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228256228286_
                                                 _g228257228289_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228256228286_ _g228257228289_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g228256228286_ _g228257228289_)))
                              (let ()
                                (declare (not safe))
                                (_g228256228286_ _g228257228289_)))))
                      (let ()
                        (declare (not safe))
                        (_g228256228286_ _g228257228289_)))
                  (let ()
                    (declare (not safe))
                    (_g228256228286_ _g228257228289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g228256228286_
                                                     _g228257228289_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g228256228286_
                                             _g228257228289_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g228256228286_ _g228257228289_)))))
                          (let ()
                            (declare (not safe))
                            (_g228256228286_ _g228257228289_)))))
                  (let ()
                    (declare (not safe))
                    (_g228256228286_ _g228257228289_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g228255228381_ _L228241_))))
                                         (___kont240918240919_
                                          (lambda (_L228192_ _L228193_)
                                            (let ((__tmp241532
                                                   (let ((__tmp241533
                                                          (let ((__tmp241534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241535
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L228192_))))
                           (declare (not safe))
                           (cons __tmp241535 '()))))
                    (declare (not safe))
                    (cons _L228193_ __tmp241534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241533
                                                           _bind228110_))))
                                              (declare (not safe))
                                              (_lp228105_
                                               _rest228130_
                                               _lift1228108_
                                               _lift2228109_
                                               __tmp241532)))))
                                     (let* ((___match240963240964_
                                             (lambda (_e228152228217_
                                                      _hd228151228220_
                                                      _tl228150228222_
                                                      _e228155228225_
                                                      _hd228154228228_
                                                      _tl228153228230_
                                                      _e228158228233_
                                                      _hd228157228236_
                                                      _tl228156228238_)
                                               (let ((_L228241_
                                                      _hd228157228236_)
                                                     (_L228242_
                                                      _hd228154228228_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228242_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L228241_)))
                                                     (___kont240916240917_
                                                      _L228241_
                                                      _L228242_)
                                                     (___kont240918240919_
                                                      _hd228157228236_
                                                      _hd228151228220_)))))
                                            (___match240941240942_
                                             (lambda (_e228141228389_
                                                      _hd228140228392_
                                                      _tl228139228394_
                                                      _e228144228397_
                                                      _hd228143228400_
                                                      _tl228142228402_
                                                      _e228147228405_
                                                      _hd228146228408_
                                                      _tl228145228410_)
                                               (let ((_L228413_
                                                      _hd228146228408_)
                                                     (_L228414_
                                                      _hd228143228400_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228414_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L228413_)))
                                                     (___kont240914240915_
                                                      _L228413_
                                                      _L228414_)
                                                     (___match240963240964_
                                                      _e228141228389_
                                                      _hd228140228392_
                                                      _tl228139228394_
                                                      _e228144228397_
                                                      _hd228143228400_
                                                      _tl228142228402_
                                                      _e228147228405_
                                                      _hd228146228408_
                                                      _tl228145228410_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240912240913_))
                                           (let ((_e228141228389_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240912240913_))))
                                             (let ((_tl228139228394_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228141228389_)))
                                                   (_hd228140228392_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228141228389_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228140228392_))
                                                   (let ((_e228144228397_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228140228392_))))
                                                     (let ((_tl228142228402_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228144228397_)))
                                                           (_hd228143228400_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228144228397_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228142228402_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl228139228394_))
                       (let ((_e228147228405_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228139228394_))))
                         (let ((_tl228145228410_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228147228405_)))
                               (_hd228146228408_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228147228405_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228145228410_))
                               (___match240941240942_
                                _e228141228389_
                                _hd228140228392_
                                _tl228139228394_
                                _e228144228397_
                                _hd228143228400_
                                _tl228142228402_
                                _e228147228405_
                                _hd228146228408_
                                _tl228145228410_)
                               (let ()
                                 (declare (not safe))
                                 (_g228135228171_)))))
                       (let () (declare (not safe)) (_g228135228171_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl228139228394_))
                       (let ((_e228166228184_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228139228394_))))
                         (let ((_tl228164228189_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228166228184_)))
                               (_hd228165228187_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228166228184_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228164228189_))
                               (___kont240918240919_
                                _hd228165228187_
                                _hd228140228392_)
                               (let ()
                                 (declare (not safe))
                                 (_g228135228171_)))))
                       (let () (declare (not safe)) (_g228135228171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228139228394_))
                                                       (let ((_e228166228184_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228139228394_))))
                 (let ((_tl228164228189_
                        (let () (declare (not safe)) (##cdr _e228166228184_)))
                       (_hd228165228187_
                        (let () (declare (not safe)) (##car _e228166228184_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228164228189_))
                       (___kont240918240919_ _hd228165228187_ _hd228140228392_)
                       (let () (declare (not safe)) (_g228135228171_)))))
               (let () (declare (not safe)) (_g228135228171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g228135228171_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest228111228119_))
                             (let ((_hd228116228509_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest228111228119_)))
                                   (_tl228117228511_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest228111228119_))))
                               (let* ((_hd228514_ _hd228116228509_)
                                      (_rest228516_ _tl228117228511_))
                                 (declare (not safe))
                                 (_K228115228506_ _rest228516_ _hd228514_)))
                             (let ()
                               (declare (not safe))
                               (_else228113228127_)))))))
                  (_lift-kw-lambda?227471_
                   (lambda (_bind228027_)
                     (let* ((___stx240980240981_ _bind228027_)
                            (_g228030228047_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240980240981_)))))
                       (let ((___kont240982240983_
                              (lambda (_L228083_ _L228084_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L228084_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L228083_))
                                    '#f)))
                             (___kont240984240985_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx240980240981_))
                             (let ((_e228036228059_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx240980240981_))))
                               (let ((_tl228034228064_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e228036228059_)))
                                     (_hd228035228062_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e228036228059_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd228035228062_))
                                     (let ((_e228039228067_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd228035228062_))))
                                       (let ((_tl228037228072_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e228039228067_)))
                                             (_hd228038228070_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e228039228067_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl228037228072_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl228034228064_))
                                                 (let ((_e228042228075_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl228034228064_))))
                                                   (let ((_tl228040228080_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e228042228075_)))
                                                         (_hd228041228078_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e228042228075_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl228040228080_))
                                                         (___kont240982240983_
                                                          _hd228041228078_
                                                          _hd228038228070_)
                                                         (___kont240984240985_))))
                                                 (___kont240984240985_))
                                             (___kont240984240985_))))
                                     (___kont240984240985_))))
                             (___kont240984240985_))))))
                  (_lift-kw-lambda-bindings227472_
                   (lambda (_bindings227639_)
                     (let _lp227641_ ((_rest227643_ _bindings227639_)
                                      (_lift1227644_ '())
                                      (_lift2227645_ '())
                                      (_bind227646_ '()))
                       (let* ((_rest227647227655_ _rest227643_)
                              (_else227649227663_
                               (lambda ()
                                 (values (reverse _lift1227644_)
                                         (reverse _lift2227645_)
                                         (reverse _bind227646_))))
                              (_K227651228015_
                               (lambda (_rest227666_ _hd227667_)
                                 (let* ((___stx241010241011_ _hd227667_)
                                        (_g227670227695_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx241010241011_)))))
                                   (let ((___kont241012241013_
                                          (lambda (_L227765_ _L227766_)
                                            (let* ((_g227780227833_
                                                    (lambda (_g227781227830_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227781227830_))))
                                                   (_g227779228009_
                                                    (lambda (_g227781227836_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227781227836_))
                                                          (let ((_e227789227838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227781227836_))))
                    (let ((_hd227788227841_
                           (let ()
                             (declare (not safe))
                             (##car _e227789227838_)))
                          (_tl227787227843_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227789227838_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227787227843_))
                          (let ((_e227792227846_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227787227843_))))
                            (let ((_hd227791227849_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227792227846_)))
                                  (_tl227790227851_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227792227846_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227791227849_))
                                  (let ((_e227795227854_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227791227849_))))
                                    (let ((_hd227794227857_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227795227854_)))
                                          (_tl227793227859_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227795227854_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227794227857_))
                                          (let ((_e227798227862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227794227857_))))
                                            (let ((_hd227797227865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227798227862_)))
                                                  (_tl227796227867_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227798227862_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227797227865_))
                                                  (let ((_e227801227870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227797227865_))))
                                                    (let ((_hd227800227873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227801227870_)))
                                                          (_tl227799227875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227801227870_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227799227875_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227796227867_))
                      (let ((_e227804227878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227796227867_))))
                        (let ((_hd227803227881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227804227878_)))
                              (_tl227802227883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227804227878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd227803227881_))
                              (let ((_e227807227886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd227803227881_))))
                                (let ((_hd227806227889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227807227886_)))
                                      (_tl227805227891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227807227886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227805227891_))
                                      (let ((_e227810227894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227805227891_))))
                                        (let ((_hd227809227897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227810227894_)))
                                              (_tl227808227899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227810227894_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd227809227897_))
                                              (let ((_e227813227902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd227809227897_))))
                                                (let ((_hd227812227905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227813227902_)))
                                                      (_tl227811227907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227813227902_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227812227905_))
                                                      (let ((_e227816227910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227812227905_))))
                (let ((_hd227815227913_
                       (let () (declare (not safe)) (##car _e227816227910_)))
                      (_tl227814227915_
                       (let () (declare (not safe)) (##cdr _e227816227910_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227815227913_))
                      (let ((_e227819227918_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227815227913_))))
                        (let ((_hd227818227921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227819227918_)))
                              (_tl227817227923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227819227918_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227817227923_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227814227915_))
                                  (let ((_e227822227926_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227814227915_))))
                                    (let ((_hd227821227929_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227822227926_)))
                                          (_tl227820227931_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227822227926_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227820227931_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227811227907_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227808227899_))
                                                  (let ((_e227825227934_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227808227899_))))
                                                    (let ((_hd227824227937_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227825227934_)))
                                                          (_tl227823227939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227825227934_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227823227939_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227802227883_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227793227859_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227790227851_))
                              (let ((_e227828227942_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227790227851_))))
                                (let ((_hd227827227945_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227828227942_)))
                                      (_tl227826227947_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227828227942_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227826227947_))
                                      ((lambda (_L227950_
                                                _L227951_
                                                _L227952_
                                                _L227953_
                                                _L227954_)
                                         (let* ((_get-kws-id227994_
                                                 (let ((__tmp241537
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227766_)))
                                                       (__tmp241536
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241537
                                                    __tmp241536)))
                                                (_get-kws-id227996_
                                                 (let ((__tmp241538
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227467_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227994_
                                                    __tmp241538)))
                                                (_main-id227998_
                                                 (let ((__tmp241540
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227766_)))
                                                       (__tmp241539
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241540
                                                    __tmp241539)))
                                                (_main-id228000_
                                                 (let ((__tmp241541
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227467_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227998_
                                                    __tmp241541)))
                                                (_g241542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227996_)))
                                                (_g241543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id228000_)))
                                                (_new-kw-dispatch228004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227950_
                                                    _L227954_
                                                    _get-kws-id227996_)))
                                                (_new-get-kws228006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227951_
                                                    _L227953_
                                                    _main-id228000_))))
                                           (let ((__tmp241546
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L227766_)))
                                                 (__tmp241545
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227996_)))
                                                 (__tmp241544
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id228000_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241546
                                              '" => "
                                              __tmp241545
                                              '" => "
                                              __tmp241544))
                                           (let ((__tmp241551
                                                  (let ((__tmp241552
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239172239173_
                                                            _main-id228000_
                                                            _L227952_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241552
                                                          _lift1227644_)))
                                                 (__tmp241549
                                                  (let ((__tmp241550
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239172239173_
                                                            _get-kws-id227996_
                                                            _new-get-kws228006_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241550
                                                          _lift2227645_)))
                                                 (__tmp241547
                                                  (let ((__tmp241548
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239172239173_
                                                            _L227766_
                                                            _new-kw-dispatch228004_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241548
                                                          _bind227646_))))
                                             (declare (not safe))
                                             (_lp227641_
                                              _rest227666_
                                              __tmp241551
                                              __tmp241549
                                              __tmp241547))))
                                       _hd227827227945_
                                       _hd227824227937_
                                       _hd227821227929_
                                       _hd227818227921_
                                       _hd227800227873_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227780227833_ _g227781227836_)))))
                              (let ()
                                (declare (not safe))
                                (_g227780227833_ _g227781227836_)))
                          (let ()
                            (declare (not safe))
                            (_g227780227833_ _g227781227836_)))
                      (let ()
                        (declare (not safe))
                        (_g227780227833_ _g227781227836_)))
                  (let ()
                    (declare (not safe))
                    (_g227780227833_ _g227781227836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227780227833_
                                                     _g227781227836_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g227780227833_
                                                 _g227781227836_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g227780227833_
                                             _g227781227836_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227780227833_ _g227781227836_)))
                              (let ()
                                (declare (not safe))
                                (_g227780227833_ _g227781227836_)))))
                      (let ()
                        (declare (not safe))
                        (_g227780227833_ _g227781227836_)))))
              (let ()
                (declare (not safe))
                (_g227780227833_ _g227781227836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g227780227833_
                                                 _g227781227836_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227780227833_ _g227781227836_)))))
                              (let ()
                                (declare (not safe))
                                (_g227780227833_ _g227781227836_)))))
                      (let ()
                        (declare (not safe))
                        (_g227780227833_ _g227781227836_)))
                  (let ()
                    (declare (not safe))
                    (_g227780227833_ _g227781227836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227780227833_
                                                     _g227781227836_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227780227833_
                                             _g227781227836_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227780227833_ _g227781227836_)))))
                          (let ()
                            (declare (not safe))
                            (_g227780227833_ _g227781227836_)))))
                  (let ()
                    (declare (not safe))
                    (_g227780227833_ _g227781227836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227779228009_ _L227765_))))
                                         (___kont241014241015_
                                          (lambda (_L227716_ _L227717_)
                                            (let ((__tmp241553
                                                   (let ((__tmp241554
                                                          (let ((__tmp241555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L227716_ '()))))
                    (declare (not safe))
                    (cons _L227717_ __tmp241555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241554
                                                           _bind227646_))))
                                              (declare (not safe))
                                              (_lp227641_
                                               _rest227666_
                                               _lift1227644_
                                               _lift2227645_
                                               __tmp241553)))))
                                     (let ((___match241037241038_
                                            (lambda (_e227676227741_
                                                     _hd227675227744_
                                                     _tl227674227746_
                                                     _e227679227749_
                                                     _hd227678227752_
                                                     _tl227677227754_
                                                     _e227682227757_
                                                     _hd227681227760_
                                                     _tl227680227762_)
                                              (let ((_L227765_
                                                     _hd227681227760_)
                                                    (_L227766_
                                                     _hd227678227752_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L227766_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L227765_)))
                                                    (___kont241012241013_
                                                     _L227765_
                                                     _L227766_)
                                                    (___kont241014241015_
                                                     _hd227681227760_
                                                     _hd227675227744_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx241010241011_))
                                           (let ((_e227676227741_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx241010241011_))))
                                             (let ((_tl227674227746_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227676227741_)))
                                                   (_hd227675227744_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227676227741_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227675227744_))
                                                   (let ((_e227679227749_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227675227744_))))
                                                     (let ((_tl227677227754_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227679227749_)))
                                                           (_hd227678227752_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227679227749_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227677227754_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227674227746_))
                       (let ((_e227682227757_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227674227746_))))
                         (let ((_tl227680227762_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227682227757_)))
                               (_hd227681227760_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227682227757_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227680227762_))
                               (___match241037241038_
                                _e227676227741_
                                _hd227675227744_
                                _tl227674227746_
                                _e227679227749_
                                _hd227678227752_
                                _tl227677227754_
                                _e227682227757_
                                _hd227681227760_
                                _tl227680227762_)
                               (let ()
                                 (declare (not safe))
                                 (_g227670227695_)))))
                       (let () (declare (not safe)) (_g227670227695_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227674227746_))
                       (let ((_e227690227708_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227674227746_))))
                         (let ((_tl227688227713_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227690227708_)))
                               (_hd227689227711_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227690227708_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227688227713_))
                               (___kont241014241015_
                                _hd227689227711_
                                _hd227675227744_)
                               (let ()
                                 (declare (not safe))
                                 (_g227670227695_)))))
                       (let () (declare (not safe)) (_g227670227695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227674227746_))
                                                       (let ((_e227690227708_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227674227746_))))
                 (let ((_tl227688227713_
                        (let () (declare (not safe)) (##cdr _e227690227708_)))
                       (_hd227689227711_
                        (let () (declare (not safe)) (##car _e227690227708_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227688227713_))
                       (___kont241014241015_ _hd227689227711_ _hd227675227744_)
                       (let () (declare (not safe)) (_g227670227695_)))))
               (let () (declare (not safe)) (_g227670227695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227670227695_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227647227655_))
                             (let ((_hd227652228018_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227647227655_)))
                                   (_tl227653228020_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227647227655_))))
                               (let* ((_hd228023_ _hd227652228018_)
                                      (_rest228025_ _tl227653228020_))
                                 (declare (not safe))
                                 (_K227651228015_ _rest228025_ _hd228023_)))
                             (let ()
                               (declare (not safe))
                               (_else227649227663_))))))))
          (let* ((___stx241054241055_ _stx227467_)
                 (_g227475227501_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx241054241055_)))))
            (let ((___kont241056241057_
                   (lambda (_L227561_ _L227562_)
                     (let ((__tmp241557
                            (lambda ()
                              (if (let ((__tmp241584
                                         (let ((__tmp241585
                                                (lambda (_g227590227593_
                                                         _g227591227595_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g227590227593_
                                                          _g227591227595_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp241585
                                                   '()
                                                   _L227562_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?227471_
                                            __tmp241584))
                                  (let ((_g241571_
                                         (let ((__tmp241573
                                                (let ((__tmp241574
                                                       (lambda (_g227597227600_
                                                                _g227598227602_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227597227600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227598227602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241574
                                                          '()
                                                          _L227562_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings227472_
                                            __tmp241573))))
                                    (begin
                                      (let ((_g241572_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241571_)
                                                   (##vector-length _g241571_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241572_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241572_)))
                                      (let ((_lift1227605_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241571_ 0)))
                                            (_lift2227606_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241571_ 1)))
                                            (_hd227607_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241571_ 2))))
                                        (let* ((_expr227609_
                                                (let ((__tmp241575
                                                       (let ((__tmp241576
                                                              (let ((__tmp241577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L227561_ '()))))
                        (declare (not safe))
                        (cons _hd227607_ __tmp241577))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241575
                                                   _stx227467_)))
                                               (_expr227611_
                                                (let ((__tmp241578
                                                       (let ((__tmp241579
                                                              (let ((__tmp241580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227609_ '()))))
                        (declare (not safe))
                        (cons _lift2227606_ __tmp241580))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241578
                                                   _stx227467_)))
                                               (_expr227613_
                                                (let ((__tmp241581
                                                       (let ((__tmp241582
                                                              (let ((__tmp241583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227611_ '()))))
                        (declare (not safe))
                        (cons _lift1227605_ __tmp241583))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241581
                                                   _stx227467_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr227613_))))))
                                  (let ((_g241558_
                                         (let ((__tmp241560
                                                (let ((__tmp241561
                                                       (lambda (_g227615227618_
                                                                _g227616227620_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227615227618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227616227620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241561
                                                          '()
                                                          _L227562_))))
                                           (declare (not safe))
                                           (_compile-bindings227470_
                                            __tmp241560))))
                                    (begin
                                      (let ((_g241559_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241558_)
                                                   (##vector-length _g241558_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241559_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241559_)))
                                      (let ((_lift1227623_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241558_ 0)))
                                            (_lift2227624_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241558_ 1)))
                                            (_hd227625_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241558_ 2))))
                                        (let* ((_body227627_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L227561_)))
                                               (_expr227629_
                                                (let ((__tmp241562
                                                       (let ((__tmp241563
                                                              (let ((__tmp241564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body227627_ '()))))
                        (declare (not safe))
                        (cons _hd227625_ __tmp241564))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241562
                                                   _stx227467_)))
                                               (_expr227631_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2227624_))
                                                    _expr227629_
                                                    (let ((__tmp241565
                                                           (let ((__tmp241566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241567
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227629_ '()))))
                            (declare (not safe))
                            (cons _lift2227624_ __tmp241567))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241566))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241565 _stx227467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr227633_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1227623_))
                                                    _expr227631_
                                                    (let ((__tmp241568
                                                           (let ((__tmp241569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241570
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227631_ '()))))
                            (declare (not safe))
                            (cons _lift1227623_ __tmp241570))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241569))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241568 _stx227467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr227633_)))))))
                           (__tmp241556
                            (let ((__obj241260
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241260)
                              __obj241260)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241557
                        gx#current-expander-context
                        __tmp241556))))
                  (___kont241060241061_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx227467_)))))
              (let ((___match241081241082_
                     (lambda (_e227481227513_
                              _hd227480227516_
                              _tl227479227518_
                              _e227484227521_
                              _hd227483227524_
                              _tl227482227526_
                              ___splice241058241059_
                              _target227485227529_
                              _tl227487227531_)
                       (letrec ((_loop227488227534_
                                 (lambda (_hd227486227537_ _bind227492227539_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd227486227537_))
                                       (let ((_e227489227542_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd227486227537_))))
                                         (let ((_lp-tl227491227547_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e227489227542_)))
                                               (_lp-hd227490227545_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e227489227542_))))
                                           (let ((__tmp241588
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd227490227545_
                                                          _bind227492227539_))))
                                             (declare (not safe))
                                             (_loop227488227534_
                                              _lp-tl227491227547_
                                              __tmp241588))))
                                       (let ((_bind227493227550_
                                              (reverse _bind227492227539_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl227482227526_))
                                             (let ((_e227496227553_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl227482227526_))))
                                               (let ((_tl227494227558_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e227496227553_)))
                                                     (_hd227495227556_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e227496227553_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl227494227558_))
                                                     (let ((_L227561_
                                                            _hd227495227556_)
                                                           (_L227562_
                                                            _bind227493227550_))
                                                       (if (let ((__tmp241586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241587
                                 (lambda (_g227582227585_ _g227583227587_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g227582227585_ _g227583227587_)))))
                            (declare (not safe))
                            (foldr1 __tmp241587 '() _L227562_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241586))
                   (___kont241056241057_ _L227561_ _L227562_)
                   (___kont241060241061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont241060241061_))))
                                             (___kont241060241061_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop227488227534_ _target227485227529_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx241054241055_))
                    (let ((_e227481227513_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx241054241055_))))
                      (let ((_tl227479227518_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227481227513_)))
                            (_hd227480227516_
                             (let ()
                               (declare (not safe))
                               (##car _e227481227513_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227479227518_))
                            (let ((_e227484227521_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227479227518_))))
                              (let ((_tl227482227526_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227484227521_)))
                                    (_hd227483227524_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227484227521_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd227483227524_))
                                    (let ((___splice241058241059_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd227483227524_
                                              '0))))
                                      (let ((_tl227487227531_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241058241059_
                                                '1)))
                                            (_target227485227529_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241058241059_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl227487227531_))
                                            (___match241081241082_
                                             _e227481227513_
                                             _hd227480227516_
                                             _tl227479227518_
                                             _e227484227521_
                                             _hd227483227524_
                                             _tl227482227526_
                                             ___splice241058241059_
                                             _target227485227529_
                                             _tl227487227531_)
                                            (___kont241060241061_))))
                                    (___kont241060241061_))))
                            (___kont241060241061_))))
                    (___kont241060241061_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx226611_)
        (letrec* ((_bind-e__239177239178_
                   (lambda (_id227451_ _expr227452_ _compile?227453_)
                     (let ((__tmp241591
                            (let ()
                              (declare (not safe))
                              (cons _id227451_ '())))
                           (__tmp241589
                            (let ((__tmp241590
                                   (if _compile?227453_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr227452_))
                                       _expr227452_)))
                              (declare (not safe))
                              (cons __tmp241590 '()))))
                       (declare (not safe))
                       (cons __tmp241591 __tmp241589))))
                  (_bind-e__0__239179239180_
                   (lambda (_id227458_ _expr227459_)
                     (let ((_compile?227461_ '#t))
                       (declare (not safe))
                       (_bind-e__239177239178_
                        _id227458_
                        _expr227459_
                        _compile?227461_))))
                  (_bind-e226613_
                   (lambda _g241593_
                     (let ((_g241592_
                            (let ()
                              (declare (not safe))
                              (##length _g241593_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241592_ 2))
                              (apply (lambda (_id227458_ _expr227459_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__239179239180_
                                          _id227458_
                                          _expr227459_)))
                                     _g241593_))
                             ((let () (declare (not safe)) (##fx= _g241592_ 3))
                              (apply (lambda (_id227463_
                                              _expr227464_
                                              _compile?227465_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__239177239178_
                                          _id227463_
                                          _expr227464_
                                          _compile?227465_)))
                                     _g241593_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241593_))))))
                  (_compile-bindings226614_
                   (lambda (_rest226749_)
                     (let _lp226751_ ((_rest226753_ _rest226749_)
                                      (_bind226754_ '()))
                       (let* ((_rest226755226763_ _rest226753_)
                              (_else226757226771_
                               (lambda () (reverse _bind226754_)))
                              (_K226759227438_
                               (lambda (_rest226774_ _hd226775_)
                                 (let* ((___stx241104241105_ _hd226775_)
                                        (_g226780226827_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx241104241105_)))))
                                   (let ((___kont241106241107_
                                          (lambda (_L227345_ _L227346_)
                                            (let* ((___stx241084241085_
                                                    _L227345_)
                                                   (_g227361227375_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx241084241085_)))))
                                              (let ((___kont241086241087_
                                                     (lambda (_L227423_)
                                                       (let ((__tmp241594
                                                              (let ((__tmp241595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__239177239178_
                                _L227346_
                                _L227345_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241595 _bind226754_))))
                 (declare (not safe))
                 (_lp226751_ _rest226774_ __tmp241594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241088241089_
                                                     (lambda (_L227388_)
                                                       (let ((_g241596_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226611_
                         _L227346_
                         _L227388_
                         '#t))))
                 (begin
                   (let ((_g241597_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241596_)
                                (##vector-length _g241596_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241597_ 3)))
                         (error "Context expects 3 values" _g241597_)))
                   (let ((_ids227398_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241596_ 0)))
                         (_impls227399_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241596_ 1)))
                         (_clauses227400_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241596_ 2))))
                     (let* ((_g241598_
                             (for-each gx#core-bind-runtime! _ids227398_))
                            (_xbind227403_
                             (map _bind-e226613_ _ids227398_ _impls227399_))
                            (_expr*227405_
                             (let ((__tmp241600
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses227400_)))
                                   (__tmp241599
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241600
                                __tmp241599)))
                            (_bind*227407_
                             (let ()
                               (declare (not safe))
                               (_bind-e__239177239178_
                                _L227346_
                                _expr*227405_
                                '#f))))
                       (let ((__tmp241602
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L227346_)))
                             (__tmp241601
                              (map gxc#identifier-symbol _ids227398_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241602
                          '" => "
                          __tmp241601))
                       (let ((__tmp241603
                              (let ((__tmp241604
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind226754_
                                               _xbind227403_))))
                                (declare (not safe))
                                (cons _bind*227407_ __tmp241604))))
                         (declare (not safe))
                         (_lp226751_ _rest226774_ __tmp241603)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match241095241096_
                                                       (lambda (_e227366227415_
                                                                _hd227365227418_
                                                                _tl227364227420_)
                                                         (let ((_L227423_
                                                                _tl227364227420_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L227423_))
                       (___kont241086241087_ _L227423_)
                       (___kont241088241089_ _tl227364227420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx241084241085_))
                                                      (let ((_e227366227415_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx241084241085_))))
                (let ((_tl227364227420_
                       (let () (declare (not safe)) (##cdr _e227366227415_)))
                      (_hd227365227418_
                       (let () (declare (not safe)) (##car _e227366227415_))))
                  (___match241095241096_
                   _e227366227415_
                   _hd227365227418_
                   _tl227364227420_)))
              (let () (declare (not safe)) (_g227361227375_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont241108241109_
                                          (lambda (_L227173_ _L227174_)
                                            (let* ((_g227188227218_
                                                    (lambda (_g227189227215_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227189227215_))))
                                                   (_g227187227313_
                                                    (lambda (_g227189227221_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227189227221_))
                                                          (let ((_e227195227223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227189227221_))))
                    (let ((_hd227194227226_
                           (let ()
                             (declare (not safe))
                             (##car _e227195227223_)))
                          (_tl227193227228_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227195227223_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227193227228_))
                          (let ((_e227198227231_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227193227228_))))
                            (let ((_hd227197227234_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227198227231_)))
                                  (_tl227196227236_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227198227231_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227197227234_))
                                  (let ((_e227201227239_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227197227234_))))
                                    (let ((_hd227200227242_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227201227239_)))
                                          (_tl227199227244_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227201227239_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227200227242_))
                                          (let ((_e227204227247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227200227242_))))
                                            (let ((_hd227203227250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227204227247_)))
                                                  (_tl227202227252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227204227247_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227203227250_))
                                                  (let ((_e227207227255_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227203227250_))))
                                                    (let ((_hd227206227258_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227207227255_)))
                                                          (_tl227205227260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227207227255_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227205227260_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227202227252_))
                      (let ((_e227210227263_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227202227252_))))
                        (let ((_hd227209227266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227210227263_)))
                              (_tl227208227268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227210227263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227208227268_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227199227244_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227196227236_))
                                      (let ((_e227213227271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227196227236_))))
                                        (let ((_hd227212227274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227213227271_)))
                                              (_tl227211227276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227213227271_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227211227276_))
                                              ((lambda (_L227279_
                                                        _L227280_
                                                        _L227281_)
                                                 (let* ((_lambda-id227305_
                                                         (let ((__tmp241606
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L227174_)))
                       (__tmp241605 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241606 __tmp241605)))
                (_lambda-id227307_
                 (let ((__tmp241607
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226611_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id227305_ __tmp241607)))
                (_g241608_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id227307_)))
                (_new-case-lambda-expr227310_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L227279_
                    _L227281_
                    _lambda-id227307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241610
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L227174_)))
                                                         (__tmp241609
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id227307_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241610
                                                      '" => "
                                                      __tmp241609))
                                                   (let ((__tmp241613
                                                          (let ((__tmp241614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__239177239178_
                            _L227174_
                            _new-case-lambda-expr227310_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241614 _rest226774_)))
                 (__tmp241611
                  (let ((__tmp241612
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__239179239180_
                            _lambda-id227307_
                            _L227280_))))
                    (declare (not safe))
                    (cons __tmp241612 _bind226754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp226751_
                                                      __tmp241613
                                                      __tmp241611))))
                                               _hd227212227274_
                                               _hd227209227266_
                                               _hd227206227258_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227188227218_
                                                 _g227189227221_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227188227218_ _g227189227221_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g227188227218_ _g227189227221_)))
                              (let ()
                                (declare (not safe))
                                (_g227188227218_ _g227189227221_)))))
                      (let ()
                        (declare (not safe))
                        (_g227188227218_ _g227189227221_)))
                  (let ()
                    (declare (not safe))
                    (_g227188227218_ _g227189227221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227188227218_
                                                     _g227189227221_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227188227218_
                                             _g227189227221_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227188227218_ _g227189227221_)))))
                          (let ()
                            (declare (not safe))
                            (_g227188227218_ _g227189227221_)))))
                  (let ()
                    (declare (not safe))
                    (_g227188227218_ _g227189227221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227187227313_ _L227173_))))
                                         (___kont241110241111_
                                          (lambda (_L226897_ _L226898_)
                                            (let* ((_g226912226965_
                                                    (lambda (_g226913226962_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226913226962_))))
                                                   (_g226911227141_
                                                    (lambda (_g226913226968_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226913226968_))
                                                          (let ((_e226921226970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226913226968_))))
                    (let ((_hd226920226973_
                           (let ()
                             (declare (not safe))
                             (##car _e226921226970_)))
                          (_tl226919226975_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226921226970_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226919226975_))
                          (let ((_e226924226978_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226919226975_))))
                            (let ((_hd226923226981_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226924226978_)))
                                  (_tl226922226983_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226924226978_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226923226981_))
                                  (let ((_e226927226986_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226923226981_))))
                                    (let ((_hd226926226989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226927226986_)))
                                          (_tl226925226991_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226927226986_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226926226989_))
                                          (let ((_e226930226994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226926226989_))))
                                            (let ((_hd226929226997_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226930226994_)))
                                                  (_tl226928226999_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226930226994_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226929226997_))
                                                  (let ((_e226933227002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226929226997_))))
                                                    (let ((_hd226932227005_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226933227002_)))
                                                          (_tl226931227007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226933227002_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226931227007_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226928226999_))
                      (let ((_e226936227010_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226928226999_))))
                        (let ((_hd226935227013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226936227010_)))
                              (_tl226934227015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226936227010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd226935227013_))
                              (let ((_e226939227018_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd226935227013_))))
                                (let ((_hd226938227021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226939227018_)))
                                      (_tl226937227023_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226939227018_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226937227023_))
                                      (let ((_e226942227026_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226937227023_))))
                                        (let ((_hd226941227029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226942227026_)))
                                              (_tl226940227031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226942227026_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd226941227029_))
                                              (let ((_e226945227034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd226941227029_))))
                                                (let ((_hd226944227037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226945227034_)))
                                                      (_tl226943227039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226945227034_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226944227037_))
                                                      (let ((_e226948227042_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd226944227037_))))
                (let ((_hd226947227045_
                       (let () (declare (not safe)) (##car _e226948227042_)))
                      (_tl226946227047_
                       (let () (declare (not safe)) (##cdr _e226948227042_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226947227045_))
                      (let ((_e226951227050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226947227045_))))
                        (let ((_hd226950227053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226951227050_)))
                              (_tl226949227055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226951227050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226949227055_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226946227047_))
                                  (let ((_e226954227058_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226946227047_))))
                                    (let ((_hd226953227061_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226954227058_)))
                                          (_tl226952227063_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226954227058_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226952227063_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226943227039_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226940227031_))
                                                  (let ((_e226957227066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226940227031_))))
                                                    (let ((_hd226956227069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226957227066_)))
                                                          (_tl226955227071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226957227066_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226955227071_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl226934227015_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl226925226991_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226922226983_))
                              (let ((_e226960227074_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226922226983_))))
                                (let ((_hd226959227077_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226960227074_)))
                                      (_tl226958227079_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226960227074_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226958227079_))
                                      ((lambda (_L227082_
                                                _L227083_
                                                _L227084_
                                                _L227085_
                                                _L227086_)
                                         (let* ((_get-kws-id227126_
                                                 (let ((__tmp241616
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226898_)))
                                                       (__tmp241615
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241616
                                                    __tmp241615)))
                                                (_get-kws-id227128_
                                                 (let ((__tmp241617
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226611_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227126_
                                                    __tmp241617)))
                                                (_main-id227130_
                                                 (let ((__tmp241619
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226898_)))
                                                       (__tmp241618
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241619
                                                    __tmp241618)))
                                                (_main-id227132_
                                                 (let ((__tmp241620
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226611_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227130_
                                                    __tmp241620)))
                                                (_g241621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227128_)))
                                                (_g241622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227132_)))
                                                (_new-kw-dispatch227136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227082_
                                                    _L227086_
                                                    _get-kws-id227128_)))
                                                (_new-get-kws227138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227083_
                                                    _L227085_
                                                    _main-id227132_))))
                                           (let ((__tmp241625
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L226898_)))
                                                 (__tmp241624
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227128_)))
                                                 (__tmp241623
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227132_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241625
                                              '" => "
                                              __tmp241624
                                              '" => "
                                              __tmp241623))
                                           (let ((__tmp241626
                                                  (let ((__tmp241631
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239177239178_
                                                            _main-id227132_
                                                            _L227084_
                                                            '#f)))
                                                        (__tmp241627
                                                         (let ((__tmp241630
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__239177239178_
                           _get-kws-id227128_
                           _new-get-kws227138_
                           '#f)))
                       (__tmp241628
                        (let ((__tmp241629
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__239177239178_
                                  _L226898_
                                  _new-kw-dispatch227136_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp241629 _rest226774_))))
                   (declare (not safe))
                   (cons __tmp241630 __tmp241628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp241631
                                                          __tmp241627))))
                                             (declare (not safe))
                                             (_lp226751_
                                              __tmp241626
                                              _bind226754_))))
                                       _hd226959227077_
                                       _hd226956227069_
                                       _hd226953227061_
                                       _hd226950227053_
                                       _hd226932227005_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226912226965_ _g226913226968_)))))
                              (let ()
                                (declare (not safe))
                                (_g226912226965_ _g226913226968_)))
                          (let ()
                            (declare (not safe))
                            (_g226912226965_ _g226913226968_)))
                      (let ()
                        (declare (not safe))
                        (_g226912226965_ _g226913226968_)))
                  (let ()
                    (declare (not safe))
                    (_g226912226965_ _g226913226968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226912226965_
                                                     _g226913226968_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226912226965_
                                                 _g226913226968_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226912226965_
                                             _g226913226968_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226912226965_ _g226913226968_)))
                              (let ()
                                (declare (not safe))
                                (_g226912226965_ _g226913226968_)))))
                      (let ()
                        (declare (not safe))
                        (_g226912226965_ _g226913226968_)))))
              (let ()
                (declare (not safe))
                (_g226912226965_ _g226913226968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g226912226965_
                                                 _g226913226968_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226912226965_ _g226913226968_)))))
                              (let ()
                                (declare (not safe))
                                (_g226912226965_ _g226913226968_)))))
                      (let ()
                        (declare (not safe))
                        (_g226912226965_ _g226913226968_)))
                  (let ()
                    (declare (not safe))
                    (_g226912226965_ _g226913226968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226912226965_
                                                     _g226913226968_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226912226965_
                                             _g226913226968_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226912226965_ _g226913226968_)))))
                          (let ()
                            (declare (not safe))
                            (_g226912226965_ _g226913226968_)))))
                  (let ()
                    (declare (not safe))
                    (_g226912226965_ _g226913226968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226911227141_ _L226897_))))
                                         (___kont241112241113_
                                          (lambda (_L226848_ _L226849_)
                                            (let ((__tmp241632
                                                   (let ((__tmp241633
                                                          (let ((__tmp241634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241635
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L226848_))))
                           (declare (not safe))
                           (cons __tmp241635 '()))))
                    (declare (not safe))
                    (cons _L226849_ __tmp241634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241633
                                                           _bind226754_))))
                                              (declare (not safe))
                                              (_lp226751_
                                               _rest226774_
                                               __tmp241632)))))
                                     (let* ((___match241179241180_
                                             (lambda (_e226808226873_
                                                      _hd226807226876_
                                                      _tl226806226878_
                                                      _e226811226881_
                                                      _hd226810226884_
                                                      _tl226809226886_
                                                      _e226814226889_
                                                      _hd226813226892_
                                                      _tl226812226894_)
                                               (let ((_L226897_
                                                      _hd226813226892_)
                                                     (_L226898_
                                                      _hd226810226884_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226898_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L226897_)))
                                                     (___kont241110241111_
                                                      _L226897_
                                                      _L226898_)
                                                     (___kont241112241113_
                                                      _hd226813226892_
                                                      _hd226807226876_)))))
                                            (___match241157241158_
                                             (lambda (_e226797227149_
                                                      _hd226796227152_
                                                      _tl226795227154_
                                                      _e226800227157_
                                                      _hd226799227160_
                                                      _tl226798227162_
                                                      _e226803227165_
                                                      _hd226802227168_
                                                      _tl226801227170_)
                                               (let ((_L227173_
                                                      _hd226802227168_)
                                                     (_L227174_
                                                      _hd226799227160_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227174_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L227173_)))
                                                     (___kont241108241109_
                                                      _L227173_
                                                      _L227174_)
                                                     (___match241179241180_
                                                      _e226797227149_
                                                      _hd226796227152_
                                                      _tl226795227154_
                                                      _e226800227157_
                                                      _hd226799227160_
                                                      _tl226798227162_
                                                      _e226803227165_
                                                      _hd226802227168_
                                                      _tl226801227170_)))))
                                            (___match241135241136_
                                             (lambda (_e226786227321_
                                                      _hd226785227324_
                                                      _tl226784227326_
                                                      _e226789227329_
                                                      _hd226788227332_
                                                      _tl226787227334_
                                                      _e226792227337_
                                                      _hd226791227340_
                                                      _tl226790227342_)
                                               (let ((_L227345_
                                                      _hd226791227340_)
                                                     (_L227346_
                                                      _hd226788227332_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227346_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L227345_)))
                                                     (___kont241106241107_
                                                      _L227345_
                                                      _L227346_)
                                                     (___match241157241158_
                                                      _e226786227321_
                                                      _hd226785227324_
                                                      _tl226784227326_
                                                      _e226789227329_
                                                      _hd226788227332_
                                                      _tl226787227334_
                                                      _e226792227337_
                                                      _hd226791227340_
                                                      _tl226790227342_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx241104241105_))
                                           (let ((_e226786227321_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx241104241105_))))
                                             (let ((_tl226784227326_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e226786227321_)))
                                                   (_hd226785227324_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e226786227321_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd226785227324_))
                                                   (let ((_e226789227329_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd226785227324_))))
                                                     (let ((_tl226787227334_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e226789227329_)))
                                                           (_hd226788227332_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e226789227329_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226787227334_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl226784227326_))
                       (let ((_e226792227337_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226784227326_))))
                         (let ((_tl226790227342_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226792227337_)))
                               (_hd226791227340_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226792227337_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226790227342_))
                               (___match241135241136_
                                _e226786227321_
                                _hd226785227324_
                                _tl226784227326_
                                _e226789227329_
                                _hd226788227332_
                                _tl226787227334_
                                _e226792227337_
                                _hd226791227340_
                                _tl226790227342_)
                               (let ()
                                 (declare (not safe))
                                 (_g226780226827_)))))
                       (let () (declare (not safe)) (_g226780226827_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl226784227326_))
                       (let ((_e226822226840_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226784227326_))))
                         (let ((_tl226820226845_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226822226840_)))
                               (_hd226821226843_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226822226840_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226820226845_))
                               (___kont241112241113_
                                _hd226821226843_
                                _hd226785227324_)
                               (let ()
                                 (declare (not safe))
                                 (_g226780226827_)))))
                       (let () (declare (not safe)) (_g226780226827_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl226784227326_))
                                                       (let ((_e226822226840_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl226784227326_))))
                 (let ((_tl226820226845_
                        (let () (declare (not safe)) (##cdr _e226822226840_)))
                       (_hd226821226843_
                        (let () (declare (not safe)) (##car _e226822226840_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl226820226845_))
                       (___kont241112241113_ _hd226821226843_ _hd226785227324_)
                       (let () (declare (not safe)) (_g226780226827_)))))
               (let () (declare (not safe)) (_g226780226827_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g226780226827_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest226755226763_))
                             (let ((_hd226760227441_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest226755226763_)))
                                   (_tl226761227443_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest226755226763_))))
                               (let* ((_hd227446_ _hd226760227441_)
                                      (_rest227448_ _tl226761227443_))
                                 (declare (not safe))
                                 (_K226759227438_ _rest227448_ _hd227446_)))
                             (let ()
                               (declare (not safe))
                               (_else226757226771_))))))))
          (let* ((___stx241196241197_ _stx226611_)
                 (_g226617226644_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx241196241197_)))))
            (let ((___kont241198241199_
                   (lambda (_L226704_ _L226705_ _L226706_)
                     (let ((__tmp241637
                            (lambda ()
                              (let ((_hd226743_
                                     (let ((__tmp241638
                                            (let ((__tmp241639
                                                   (lambda (_g226735226738_
                                                            _g226736226740_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226735226738_
                                                             _g226736226740_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241639
                                                      '()
                                                      _L226705_))))
                                       (declare (not safe))
                                       (_compile-bindings226614_ __tmp241638)))
                                    (_body226744_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L226704_))))
                                (let ((__tmp241640
                                       (let ((__tmp241641
                                              (let ((__tmp241642
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body226744_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd226743_
                                                      __tmp241642))))
                                         (declare (not safe))
                                         (cons _L226706_ __tmp241641))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp241640
                                   _stx226611_)))))
                           (__tmp241636
                            (let ((__obj241261
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241261)
                              __obj241261)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241637
                        gx#current-expander-context
                        __tmp241636))))
                  (___kont241202241203_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226611_)))))
              (let ((___match241223241224_
                     (lambda (_e226624226656_
                              _hd226623226659_
                              _tl226622226661_
                              _e226627226664_
                              _hd226626226667_
                              _tl226625226669_
                              ___splice241200241201_
                              _target226628226672_
                              _tl226630226674_)
                       (letrec ((_loop226631226677_
                                 (lambda (_hd226629226680_ _bind226635226682_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226629226680_))
                                       (let ((_e226632226685_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226629226680_))))
                                         (let ((_lp-tl226634226690_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226632226685_)))
                                               (_lp-hd226633226688_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226632226685_))))
                                           (let ((__tmp241645
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226633226688_
                                                          _bind226635226682_))))
                                             (declare (not safe))
                                             (_loop226631226677_
                                              _lp-tl226634226690_
                                              __tmp241645))))
                                       (let ((_bind226636226693_
                                              (reverse _bind226635226682_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226625226669_))
                                             (let ((_e226639226696_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226625226669_))))
                                               (let ((_tl226637226701_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226639226696_)))
                                                     (_hd226638226699_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226639226696_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226637226701_))
                                                     (let ((_L226704_
                                                            _hd226638226699_)
                                                           (_L226705_
                                                            _bind226636226693_)
                                                           (_L226706_
                                                            _hd226623226659_))
                                                       (if (let ((__tmp241643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241644
                                 (lambda (_g226727226730_ _g226728226732_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g226727226730_ _g226728226732_)))))
                            (declare (not safe))
                            (foldr1 __tmp241644 '() _L226705_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241643))
                   (___kont241198241199_ _L226704_ _L226705_ _L226706_)
                   (___kont241202241203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont241202241203_))))
                                             (___kont241202241203_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226631226677_ _target226628226672_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx241196241197_))
                    (let ((_e226624226656_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx241196241197_))))
                      (let ((_tl226622226661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226624226656_)))
                            (_hd226623226659_
                             (let ()
                               (declare (not safe))
                               (##car _e226624226656_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226622226661_))
                            (let ((_e226627226664_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226622226661_))))
                              (let ((_tl226625226669_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226627226664_)))
                                    (_hd226626226667_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226627226664_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226626226667_))
                                    (let ((___splice241200241201_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226626226667_
                                              '0))))
                                      (let ((_tl226630226674_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241200241201_
                                                '1)))
                                            (_target226628226672_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241200241201_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226630226674_))
                                            (___match241223241224_
                                             _e226624226656_
                                             _hd226623226659_
                                             _tl226622226661_
                                             _e226627226664_
                                             _hd226626226667_
                                             _tl226625226669_
                                             ___splice241200241201_
                                             _target226628226672_
                                             _tl226630226674_)
                                            (___kont241202241203_))))
                                    (___kont241202241203_))))
                            (___kont241202241203_))))
                    (___kont241202241203_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind226529_)
        (let* ((___stx241226241227_ _bind226529_)
               (_g226532226549_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241226241227_)))))
          (let ((___kont241228241229_
                 (lambda (_L226585_ _L226586_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226586_))
                       (let ((_$e226602_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L226585_))))
                         (if _$e226602_
                             _$e226602_
                             (let ((_$e226605_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L226585_))))
                               (if _$e226605_
                                   _$e226605_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L226585_))))))
                       '#f)))
                (___kont241230241231_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241226241227_))
                (let ((_e226538226561_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241226241227_))))
                  (let ((_tl226536226566_
                         (let () (declare (not safe)) (##cdr _e226538226561_)))
                        (_hd226537226564_
                         (let ()
                           (declare (not safe))
                           (##car _e226538226561_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd226537226564_))
                        (let ((_e226541226569_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd226537226564_))))
                          (let ((_tl226539226574_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226541226569_)))
                                (_hd226540226572_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226541226569_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226539226574_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl226536226566_))
                                    (let ((_e226544226577_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl226536226566_))))
                                      (let ((_tl226542226582_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226544226577_)))
                                            (_hd226543226580_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226544226577_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226542226582_))
                                            (___kont241228241229_
                                             _hd226543226580_
                                             _hd226540226572_)
                                            (___kont241230241231_))))
                                    (___kont241230241231_))
                                (___kont241230241231_))))
                        (___kont241230241231_))))
                (___kont241230241231_))))))))
